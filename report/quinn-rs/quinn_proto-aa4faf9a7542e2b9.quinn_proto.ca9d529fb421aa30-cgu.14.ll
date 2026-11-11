Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.14?download=true
inline.NumInlined: 504
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState24received_max_stream_data:bb.a
    #dbg_value(ptr %i.fy, !18255, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18888)
    #dbg_value(ptr %i.fz, !18255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18888)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24, !dbg !19054
  %i.gb = load ptr, ptr %i.ga, align 8, !dbg !19054, !invariant.load !1871, !nonnull !1871
  %i.gc = call noundef zeroext i1 %i.gb(ptr noundef %i.fy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) #35, !dbg !19054
  br i1 %i.gc, label %bb.av, label %bb.aw, !dbg !19054

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !19054
  %i.gd = load ptr, ptr @_RNvNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState24received_max_stream_data10___CALLSITE, align 8, !dbg !19055, !nonnull !1871, !align !3909, !noundef !1871
    #dbg_value(ptr %i.gd, !18635, !DIExpression(), !18891)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48, !dbg !19056
    #dbg_value(ptr %i.ge, !18640, !DIExpression(), !18894)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !19054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !19054
    #dbg_value(ptr %i.w, !18257, !DIExpression(), !18895)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !19057
  store ptr %i.w, ptr %i.n, align 8, !dbg !19057
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !19057
  store ptr @_RNvXs2_CshovLROGBtMy_11quinn_protoNtB5_8StreamIdNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.446.0..sroa_idx, align 8, !dbg !19057
    #dbg_value(ptr %i.n, !18404, !DIExpression(), !18432)
  store ptr @60, ptr %i.o, align 8, !dbg !19058
  %i.gf = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !19058
  store ptr %i.n, ptr %i.gf, align 8, !dbg !19058
  store ptr %i.o, ptr %i.p, align 8, !dbg !19054
  %i.gg = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !19054
  store ptr @1, ptr %i.gg, align 8, !dbg !19054
    #dbg_value(ptr %i.p, !18641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18894)
    #dbg_value(i64 1, !18641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18894)
  store i64 1, ptr %i.q, align 8, !dbg !19059
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !19059
  store ptr %i.p, ptr %.sroa.448.0..sroa_idx, align 8, !dbg !19059
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !19059
  store i64 1, ptr %.sroa.549.0..sroa_idx, align 8, !dbg !19059
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !19059
  store ptr %i.ge, ptr %i.gh, align 8, !dbg !19059
  call void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fq, ptr noundef nonnull %i.fy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fz, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q), !dbg !19054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !19054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !19054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !19054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !19054
  br label %bb.aw, !dbg !19054

bb.aw:                                            ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !19052
  br label %bb.ar, !dbg !19050

bb.ax:                                            ; preds = %bb.ar
  %i.gi = load i64, ptr %i.fl, align 8, !dbg !19060
    #dbg_value(i64 %i.fk, !18487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18896)
    #dbg_value(i64 %i.gi, !18487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18896)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.fk, i64 %i.gi) #37, !dbg !19061
  unreachable, !dbg !19061

bb.ay:                                            ; preds = %bb.ar
  %i.gj = load ptr, ptr %i.fl, align 8, !dbg !19062, !nonnull !1871, !noundef !1871 ; 2 uses
    #dbg_value(i64 %i.fk, !18486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18897)
    #dbg_value(ptr %i.gj, !18486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18897)
    #dbg_value(ptr poison, !18450, !DIExpression(), !18898)
  %i.gk = icmp samesign ugt i64 %i.fk, 34, !dbg !19063
    #dbg_value(i1 true, !18741, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18900)
  call void @llvm.assume(i1 %i.gk), !dbg !19064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19065
    #dbg_value(i64 %i.fk, !18473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18901)
    #dbg_value(ptr %i.gj, !18473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18901)
    #dbg_value(i64 0, !18473, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18901)
    #dbg_value(ptr @61, !18675, !DIExpression(), !18857)
    #dbg_value(ptr @61, !18682, !DIExpression(), !18859)
    #dbg_value(ptr %i.gj, !18676, !DIExpression(), !18857)
    #dbg_value(ptr %i.gj, !18683, !DIExpression(), !18859)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.gj, ptr noundef nonnull align 1 dereferenceable(35) @61, i64 35, i1 false), !dbg !19066
    #dbg_value(i64 35, !18473, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18901)
  store i64 0, ptr %0, align 8, !dbg !19067
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19067
  store i64 %i.fk, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !19067
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19067
  store ptr %i.gj, ptr %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !19067
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !19067
  store i64 35, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !19067
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !19067
  store i64 5, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19067
  br label %bb.ab, !dbg !18993
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([456 x i8]) align 8 captures(none) dereferenceable(456) %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !19073 {
_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us.preheader:
    #dbg_value(ptr poison, !19189, !DIExpression(), !19196)
    #dbg_value(ptr poison, !19199, !DIExpression(), !19202)
    #dbg_value(ptr poison, !19197, !DIExpression(), !19203)
  %i.a = alloca [456 x i8], align 8               ; 41 uses
    #dbg_value(i1 %1, !19177, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19204)
    #dbg_value(i64 %2, !19178, !DIExpression(), !19204)
    #dbg_value(i64 %3, !19179, !DIExpression(), !19204)
    #dbg_value(i64 %4, !19180, !DIExpression(), !19204)
    #dbg_value(i64 %5, !19181, !DIExpression(), !19204)
    #dbg_value(i64 %6, !19182, !DIExpression(), !19204)
    #dbg_declare(ptr %i.a, !19183, !DIExpression(), !19205)
    #dbg_value(i64 1, !19206, !DIExpression(), !19210)
    #dbg_value(i64 1, !19211, !DIExpression(), !19215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19231
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 450, !dbg !19232
  %i.c = zext i1 %1 to i8, !dbg !19232
  store i8 %i.c, ptr %i.b, align 2, !dbg !19232
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !19232 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @37, i64 32, i1 false), !dbg !19232
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176, !dbg !19232 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @37, i64 32, i1 false), !dbg !19232
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !19232 ; 3 uses
  store i64 0, ptr %i.f, align 8, !dbg !19232
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !19232 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19232
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !19232 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19232
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 208, !dbg !19232
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 240, !dbg !19232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false), !dbg !19232
  store i64 %3, ptr %i.h, align 8, !dbg !19232
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 248, !dbg !19232 ; 2 uses
  store i64 %2, ptr %.sroa.716.0..sroa_idx, align 8, !dbg !19232
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256, !dbg !19232
  store i64 %3, ptr %i.i, align 8, !dbg !19232
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 264, !dbg !19232
  store i64 %2, ptr %.sroa.716.0..sroa_idx17, align 8, !dbg !19232
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !19232
  store i64 %3, ptr %i.j, align 8, !dbg !19232
  %.sroa.716.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 280, !dbg !19232
  store i64 %2, ptr %.sroa.716.0..sroa_idx19, align 8, !dbg !19232
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 288, !dbg !19232
  store i64 %3, ptr %i.k, align 8, !dbg !19232
  %.sroa.716.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.a, i64 296, !dbg !19232
  store i64 %2, ptr %.sroa.716.0..sroa_idx21, align 8, !dbg !19232
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 451, !dbg !19232
  store i8 0, ptr %i.l, align 1, !dbg !19232
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 304, !dbg !19232
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 448, !dbg !19232
  store i8 0, ptr %i.n, align 8, !dbg !19232
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 449, !dbg !19232
  store i8 0, ptr %.sroa.424.0..sroa_idx, align 1, !dbg !19232
  store i64 0, ptr %i.a, align 8, !dbg !19232
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !19232
  store i64 0, ptr %.sroa.025.sroa.5.0..sroa_idx, align 8, !dbg !19232
  %.sroa.025.sroa.5.sroa.4.0..sroa.025.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !19232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false), !dbg !19232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.025.sroa.5.sroa.4.0..sroa.025.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !19232
  %.sroa.025.sroa.5.sroa.5.0..sroa.025.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !19232
  store i64 0, ptr %.sroa.025.sroa.5.sroa.5.0..sroa.025.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !19232
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !19232
  store i64 -1, ptr %.sroa.526.0..sroa_idx, align 8, !dbg !19232
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !19232
  store i64 0, ptr %i.o, align 8, !dbg !19232
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !19232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.428.0..sroa_idx, align 8, !dbg !19232
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104, !dbg !19232
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !19232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.529.0..sroa_idx, i8 0, i64 24, i1 false), !dbg !19232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.431.0..sroa_idx, align 8, !dbg !19232
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !19232
  store i64 0, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !19232
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 344, !dbg !19232
  store i64 0, ptr %i.p, align 8, !dbg !19232
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 352, !dbg !19232
  store i64 %5, ptr %i.q, align 8, !dbg !19232
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 360, !dbg !19232
  store i64 %5, ptr %i.r, align 8, !dbg !19232
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 368, !dbg !19232
  store i64 %5, ptr %i.s, align 8, !dbg !19232
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 376, !dbg !19232
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 400, !dbg !19232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !dbg !19232
  store i64 %4, ptr %i.u, align 8, !dbg !19232
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 408, !dbg !19232
  store i64 %6, ptr %i.v, align 8, !dbg !19232
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 416, !dbg !19232
    #dbg_value(ptr poison, !19184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19216)
    #dbg_value(ptr poison, !19184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19216)
  %.sroa.040.0 = xor i1 %1, true                  ; 2 uses
    #dbg_value(!DIArgList(ptr poison, i64 1), !19184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19216)
    #dbg_value(i1 false, !19217, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19222)
    #dbg_value(i1 false, !19185, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19223)
    #dbg_value(i64 0, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(i64 %3, !19186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19224)
  %i.x = zext i1 %.sroa.040.0 to i64, !dbg !19233
  %invariant.op = zext i1 %.sroa.040.0 to i64, !dbg !19233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false), !dbg !19232
    #dbg_value(i64 0, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(ptr undef, !19197, !DIExpression(), !19203)
    #dbg_value(ptr undef, !19199, !DIExpression(), !19202)
    #dbg_value(ptr undef, !19189, !DIExpression(), !19196)
    #dbg_value(ptr undef, !19190, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19225)
  %exitcond159.not231 = icmp eq i64 %3, 0, !dbg !19234
  br i1 %exitcond159.not231, label %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.preheader.1, label %.lr.ph, !dbg !19195

_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.preheader.1: ; preds = %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us, %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us.preheader
  %.sroa.716.0..sroa_idx.val.1.pre = load i64, ptr %.sroa.716.0..sroa_idx, align 8, !dbg !19235 ; 2 uses
    #dbg_value(!DIArgList(ptr poison, i64 2), !19184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19216)
    #dbg_value(i1 true, !19217, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19222)
    #dbg_value(i1 true, !19185, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19223)
    #dbg_value(i64 0, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(i64 %.sroa.716.0..sroa_idx.val.1.pre, !19186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19224)
    #dbg_value(ptr undef, !19197, !DIExpression(), !19203)
    #dbg_value(ptr undef, !19199, !DIExpression(), !19202)
    #dbg_value(ptr undef, !19189, !DIExpression(), !19196)
    #dbg_value(ptr undef, !19190, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19225)
  %exitcond.1.not233 = icmp eq i64 %.sroa.716.0..sroa_idx.val.1.pre, 0, !dbg !19234
  br i1 %exitcond.1.not233, label %.loopexit.1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1.preheader, !dbg !19195

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1.preheader: ; preds = %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.preheader.1
  %invariant.op276 = or disjoint i64 %i.x, 2, !dbg !19236
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1, !dbg !19236

_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.1: ; preds = %.noexc95.1
    #dbg_value(i64 %i.y, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(ptr undef, !19197, !DIExpression(), !19203)
    #dbg_value(ptr undef, !19199, !DIExpression(), !19202)
    #dbg_value(ptr undef, !19189, !DIExpression(), !19196)
    #dbg_value(ptr undef, !19190, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19225)
  %exitcond.1.not = icmp eq i64 %i.y, %.sroa.716.0..sroa_idx.val.1.pre, !dbg !19234
  br i1 %exitcond.1.not, label %.loopexit.1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1, !dbg !19195

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1.preheader, %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.1
  %.sroa.035.0.1234 = phi i64 [ %i.y, %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.1 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1.preheader ] ; 2 uses
    #dbg_value(i64 %.sroa.035.0.1234, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(i64 %.sroa.035.0.1234, !19200, !DIExpression(), !19226)
    #dbg_value(i64 %.sroa.035.0.1234, !19207, !DIExpression(), !19210)
    #dbg_value(i64 %.sroa.035.0.1234, !19212, !DIExpression(), !19215)
  %i.y = add i64 %.sroa.035.0.1234, 1, !dbg !19237 ; 2 uses
    #dbg_value(i64 %i.y, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(i64 %.sroa.035.0.1234, !19187, !DIExpression(), !19227)
    #dbg_value(i64 %.sroa.035.0.1234, !19219, !DIExpression(), !19222)
    #dbg_value(i8 poison, !19218, !DIExpression(), !19222)
  %i.z = shl i64 %.sroa.035.0.1234, 2, !dbg !19238
  %.reass.1 = or disjoint i64 %i.z, %invariant.op276
    #dbg_value(ptr %i.a, !7159, !DIExpression(), !19083)
    #dbg_value(i1 true, !7160, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19083)
    #dbg_value(!DIArgList(i64 %i.z, i1 %.sroa.040.0, i8 2), !7161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19083)
    #dbg_value(!DIArgList(i64 %i.z, i1 %.sroa.040.0, i8 2), !7165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19085)
    #dbg_value(!DIArgList(i64 %i.z, i1 %.sroa.040.0, i8 2), !7172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19087)
    #dbg_value(ptr null, !7170, !DIExpression(), !19085)
    #dbg_value(i64 16, !7179, !DIExpression(), !19091)
    #dbg_value(i1 false, !7162, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19092)
    #dbg_value(ptr %i.a, !7156, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19093)
    #dbg_value(ptr %i.a, !7188, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19094)
    #dbg_value(ptr %i.a, !7191, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19096)
    #dbg_value(ptr %i.a, !7196, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19098)
  %i.aa = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19236, !alias.scope !19229, !noundef !1871 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !19236
  br i1 %i.ab, label %bb.b, label %bb.a, !dbg !19236

bb.a:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1
  %i.ac = add nsw i64 %i.aa, -1, !dbg !19239      ; 3 uses
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19239, !alias.scope !19229
  %i.ad = load i64, ptr %i.f, align 8, !dbg !19240, !range !6780, !alias.scope !19229, !noundef !1871
  %i.ae = icmp samesign ult i64 %i.ac, %i.ad, !dbg !19241
    #dbg_value(i1 true, !7199, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19102)
  call void @llvm.assume(i1 %i.ae), !dbg !19242
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19243, !alias.scope !19229, !nonnull !1871, !noundef !1871
    #dbg_value(ptr %i.af, !7201, !DIExpression(), !19107)
    #dbg_value(i64 %i.ac, !7204, !DIExpression(), !19107)
  %i.ag = icmp ult i64 %i.aa, 576460752303423489, !dbg !19244
  call void @llvm.assume(i1 %i.ag), !dbg !19245
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ac, !dbg !19246 ; 2 uses
    #dbg_value(ptr %i.ah, !7206, !DIExpression(), !19109)
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !19247, !range !3835, !noundef !1871
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !19247
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !19247, !noundef !1871
    #dbg_value(i64 %i.ai, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19110)
    #dbg_value(i64 %i.ai, !7177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19087)
    #dbg_value(ptr %i.ak, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19110)
    #dbg_value(ptr %i.ak, !7177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19087)
  br label %bb.b, !dbg !19248

bb.b:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1
  %.sroa.3.0.i.1 = phi ptr [ %i.ak, %bb.a ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1 ], !dbg !19249
  %.sroa.02.0.i.1 = phi i64 [ %i.ai, %bb.a ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.1 ], !dbg !19249
    #dbg_value(i64 %.sroa.02.0.i.1, !7177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19087)
    #dbg_value(i64 %.sroa.02.0.i.1, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19110)
    #dbg_value(ptr %.sroa.3.0.i.1, !7177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19087)
    #dbg_value(ptr %.sroa.3.0.i.1, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19110)
    #dbg_value(ptr %i.a, !7176, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !19111)
  %i.al = invoke { i64, ptr } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtBP_10connection7streams5state10StreamRecvENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %.reass.1, i64 noundef %.sroa.02.0.i.1, ptr %.sroa.3.0.i.1)
          to label %.noexc95.1 unwind label %.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19250 ; 2 uses

.noexc95.1:                                       ; preds = %bb.b
  %i.am = extractvalue { i64, ptr } %i.al, 0, !dbg !19250
  switch i64 %i.am, label %.split135.us [
    i64 -1, label %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.1
    i64 2, label %.noexc96.invoke
  ], !dbg !19251, !prof !19230

.loopexit.1:                                      ; preds = %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.1, %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.preheader.1
    #dbg_value(ptr poison, !19184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19216)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(456) %i.a, i64 456, i1 false), !dbg !19252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19253
  ret void, !dbg !19254

.body:                                            ; preds = %.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.j ], [ %lpad.loopexit.split-lp239, %.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state12StreamsStateEBJ_(ptr noalias nofree noundef align 8 dereferenceable(456) %i.a) #34
          to label %bb.l unwind label %bb.k, !dbg !19253

_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us: ; preds = %.noexc95.us
    #dbg_value(i64 %i.an, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(ptr undef, !19197, !DIExpression(), !19203)
    #dbg_value(ptr undef, !19199, !DIExpression(), !19202)
    #dbg_value(ptr undef, !19189, !DIExpression(), !19196)
    #dbg_value(ptr undef, !19190, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19225)
  %exitcond159.not = icmp eq i64 %i.an, %3, !dbg !19234
  br i1 %exitcond159.not, label %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.preheader.1, label %.lr.ph, !dbg !19195

.lr.ph:                                           ; preds = %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us.preheader, %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us
  %.sroa.035.0.us232 = phi i64 [ %i.an, %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us ], [ 0, %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us.preheader ] ; 2 uses
    #dbg_value(i64 %.sroa.035.0.us232, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(i64 %.sroa.035.0.us232, !19200, !DIExpression(), !19226)
    #dbg_value(i64 %.sroa.035.0.us232, !19207, !DIExpression(), !19210)
    #dbg_value(i64 %.sroa.035.0.us232, !19212, !DIExpression(), !19215)
  %i.an = add i64 %.sroa.035.0.us232, 1, !dbg !19237 ; 2 uses
    #dbg_value(i64 %i.an, !19186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(i64 %.sroa.035.0.us232, !19187, !DIExpression(), !19227)
    #dbg_value(i64 %.sroa.035.0.us232, !19219, !DIExpression(), !19222)
    #dbg_value(i8 poison, !19218, !DIExpression(), !19222)
  %i.ao = shl i64 %.sroa.035.0.us232, 2, !dbg !19238
  %.reass.us = or disjoint i64 %i.ao, %invariant.op ; 2 uses
    #dbg_value(ptr %i.a, !7159, !DIExpression(), !19083)
    #dbg_value(i1 true, !7160, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19083)
    #dbg_value(!DIArgList(i64 %i.ao, i1 %.sroa.040.0, i8 0), !7161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19083)
    #dbg_value(!DIArgList(i64 %i.ao, i1 %.sroa.040.0, i8 0), !7165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19085)
    #dbg_value(!DIArgList(i64 %i.ao, i1 %.sroa.040.0, i8 0), !7172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19087)
    #dbg_value(ptr null, !7170, !DIExpression(), !19085)
    #dbg_value(i64 16, !7179, !DIExpression(), !19091)
    #dbg_value(i1 true, !7162, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19092)
    #dbg_value(ptr %i.a, !7169, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !19112)
  %i.ap = invoke { i64, ptr } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBP_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %.reass.us, ptr noalias noundef align 8 null)
          to label %.noexc.us unwind label %.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19255 ; 2 uses

.noexc.us:                                        ; preds = %.lr.ph
  %i.aq = extractvalue { i64, ptr } %i.ap, 0, !dbg !19255
  %i.ar = extractvalue { i64, ptr } %i.ap, 1, !dbg !19255 ; 9 uses
  switch i64 %i.aq, label %bb.c [
    i64 1, label %.split115.us
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.us
  ], !dbg !19256, !prof !7210

bb.c:                                             ; preds = %.noexc.us
    #dbg_value(ptr poison, !3655, !DIExpression(), !19115)
  %i.as = icmp eq ptr %i.ar, null, !dbg !19257
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.us, label %bb.d, !dbg !19257

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr poison, !3658, !DIExpression(), !19117)
    #dbg_value(ptr %i.ar, !3663, !DIExpression(), !19119)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !19258 ; 3 uses
    #dbg_value(ptr %i.at, !3670, !DIExpression(), !19121)
    #dbg_value(ptr %i.at, !3677, !DIExpression(), !19123)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.at)
          to label %bb.e unwind label %.split118.us, !dbg !19259

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.at, !3684, !DIExpression(), !19125)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsdIYt8sV98we_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto.exit.i.i.i.i.us unwind label %.split123.us, !dbg !19260

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto.exit.i.i.i.i.us: ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 72, !dbg !19261
    #dbg_value(ptr %i.au, !3691, !DIExpression(), !19127)
    #dbg_value(ptr %i.au, !3698, !DIExpression(), !19129)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection11send_buffer10SendBufferEBH_.exit.i.i.i.us unwind label %.split127.us, !dbg !19262

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection11send_buffer10SendBufferEBH_.exit.i.i.i.us: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto.exit.i.i.i.i.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 96, !dbg !19261
    #dbg_value(ptr %i.av, !3691, !DIExpression(), !19131)
    #dbg_value(ptr %i.av, !3698, !DIExpression(), !19133)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEB1i_.exit.i.us unwind label %.split131.us, !dbg !19263

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEB1i_.exit.i.us: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection11send_buffer10SendBufferEBH_.exit.i.i.i.us
    #dbg_value(ptr poison, !3705, !DIExpression(), !19135)
    #dbg_value(ptr %i.ar, !3708, !DIExpression(), !19136)
    #dbg_value(i64 8, !3709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19137)
    #dbg_value(i64 136, !3709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19137)
    #dbg_value(ptr poison, !3727, !DIExpression(), !19139)
    #dbg_value(ptr poison, !3734, !DIExpression(), !19141)
    #dbg_value(ptr %i.ar, !3731, !DIExpression(), !19139)
    #dbg_value(ptr %i.ar, !3737, !DIExpression(), !19141)
    #dbg_value(ptr %i.ar, !3740, !DIExpression(), !19143)
    #dbg_value(ptr %i.ar, !3746, !DIExpression(), !19145)
    #dbg_value(i64 8, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19139)
    #dbg_value(i64 8, !3738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19141)
    #dbg_value(i64 8, !3744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19143)
    #dbg_value(i64 8, !3747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19145)
    #dbg_value(i64 136, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19139)
    #dbg_value(i64 136, !3738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19141)
    #dbg_value(i64 136, !3744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19143)
    #dbg_value(i64 136, !3747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19145)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef 136, i64 noundef 8) #33, !dbg !19264
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.us, !dbg !19257

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.us: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEB1i_.exit.i.us, %bb.c, %.noexc.us
    #dbg_value(ptr %i.a, !7156, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19093)
    #dbg_value(ptr %i.a, !7188, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19094)
    #dbg_value(ptr %i.a, !7191, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19096)
    #dbg_value(ptr %i.a, !7196, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19098)
  %i.aw = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19236, !alias.scope !19229, !noundef !1871 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !19236
  br i1 %i.ax, label %bb.g, label %bb.f, !dbg !19236

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.us
  %i.ay = add nsw i64 %i.aw, -1, !dbg !19239      ; 3 uses
  store i64 %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19239, !alias.scope !19229
  %i.az = load i64, ptr %i.f, align 8, !dbg !19240, !range !6780, !alias.scope !19229, !noundef !1871
  %i.ba = icmp samesign ult i64 %i.ay, %i.az, !dbg !19241
    #dbg_value(i1 true, !7199, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19102)
  call void @llvm.assume(i1 %i.ba), !dbg !19242
  %i.bb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19243, !alias.scope !19229, !nonnull !1871, !noundef !1871
    #dbg_value(ptr %i.bb, !7201, !DIExpression(), !19107)
    #dbg_value(i64 %i.ay, !7204, !DIExpression(), !19107)
  %i.bc = icmp ult i64 %i.aw, 576460752303423489, !dbg !19244
  call void @llvm.assume(i1 %i.bc), !dbg !19245
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.ay, !dbg !19246 ; 2 uses
    #dbg_value(ptr %i.bd, !7206, !DIExpression(), !19109)
  %i.be = load i64, ptr %i.bd, align 8, !dbg !19247, !range !3835, !noundef !1871
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !19247
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !19247, !noundef !1871
    #dbg_value(i64 %i.be, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19110)
    #dbg_value(i64 %i.be, !7177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19087)
    #dbg_value(ptr %i.bg, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19110)
    #dbg_value(ptr %i.bg, !7177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19087)
  br label %bb.g, !dbg !19248

bb.g:                                             ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.us
  %.sroa.3.0.i.us = phi ptr [ %i.bg, %bb.f ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.us ], !dbg !19249
  %.sroa.02.0.i.us = phi i64 [ %i.be, %bb.f ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit.i.us ], !dbg !19249
    #dbg_value(i64 %.sroa.02.0.i.us, !7177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19087)
    #dbg_value(i64 %.sroa.02.0.i.us, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19110)
    #dbg_value(ptr %.sroa.3.0.i.us, !7177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19087)
    #dbg_value(ptr %.sroa.3.0.i.us, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19110)
    #dbg_value(ptr %i.a, !7176, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !19111)
  %i.bh = invoke { i64, ptr } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtBP_10connection7streams5state10StreamRecvENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %.reass.us, i64 noundef %.sroa.02.0.i.us, ptr %.sroa.3.0.i.us)
          to label %.noexc95.us unwind label %.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19250 ; 2 uses

.noexc95.us:                                      ; preds = %bb.g
  %i.bi = extractvalue { i64, ptr } %i.bh, 0, !dbg !19250
  switch i64 %i.bi, label %.split135.us [
    i64 -1, label %_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert.exit.us
    i64 2, label %.noexc96.invoke
  ], !dbg !19251, !prof !19230

.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.g, %.lr.ph, %.noexc96.invoke, %.split115.us, %.split135.us
  %lpad.loopexit.split-lp239 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split118.us:                                     ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.at, !3684, !DIExpression(), !19147)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsdIYt8sV98we_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.at)
          to label %.body.i.i.i.i unwind label %bb.h, !dbg !19265

.split123.us:                                     ; preds = %bb.e
  %lpad.loopexit170 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !19261

.split127.us:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto.exit.i.i.i.i.us
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetEBH_.exit.i.i.i.i

.split131.us:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection11send_buffer10SendBufferEBH_.exit.i.i.i.us
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j, !dbg !19266

.split115.us:                                     ; preds = %.noexc.us
    #dbg_value(ptr poison, !3609, !DIExpression(), !19149)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEB1E_(ptr %i.ar)
          to label %.noexc96.invoke unwind label %.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19267

bb.h:                                             ; preds = %.split118.us
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !19259
  unreachable, !dbg !19259

.body.i.i.i.i:                                    ; preds = %.split123.us, %.split118.us
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit170, %.split123.us ], [ %lpad.loopexit, %.split118.us ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 72, !dbg !19261
    #dbg_value(ptr %i.bk, !3691, !DIExpression(), !19151)
    #dbg_value(ptr %i.bk, !3698, !DIExpression(), !19153)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetEBH_.exit.i.i.i.i unwind label %bb.i, !dbg !19268

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetEBH_.exit.i.i.i.i: ; preds = %.split127.us, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit174, %.split127.us ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 96, !dbg !19261
    #dbg_value(ptr %i.bl, !3691, !DIExpression(), !19155)
    #dbg_value(ptr %i.bl, !3698, !DIExpression(), !19157)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.j unwind label %bb.i, !dbg !19269

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetEBH_.exit.i.i.i.i, %.body.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !19261
  unreachable, !dbg !19261

bb.j:                                             ; preds = %.split131.us, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetEBH_.exit.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit178, %.split131.us ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetEBH_.exit.i.i.i.i ]
    #dbg_value(ptr poison, !3705, !DIExpression(), !19159)
    #dbg_value(ptr %i.ar, !3708, !DIExpression(), !19160)
    #dbg_value(i64 8, !3709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19161)
    #dbg_value(i64 136, !3709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19161)
    #dbg_value(ptr poison, !3727, !DIExpression(), !19163)
    #dbg_value(ptr poison, !3734, !DIExpression(), !19165)
    #dbg_value(ptr %i.ar, !3731, !DIExpression(), !19163)
    #dbg_value(ptr %i.ar, !3737, !DIExpression(), !19165)
    #dbg_value(ptr %i.ar, !3740, !DIExpression(), !19167)
    #dbg_value(ptr %i.ar, !3746, !DIExpression(), !19169)
    #dbg_value(i64 8, !3732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19163)
    #dbg_value(i64 8, !3738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19165)
    #dbg_value(i64 8, !3744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19167)
    #dbg_value(i64 8, !3747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19169)
    #dbg_value(i64 136, !3732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19163)
    #dbg_value(i64 136, !3738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19165)
    #dbg_value(i64 136, !3744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19167)
    #dbg_value(i64 136, !3747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19169)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef 136, i64 noundef 8) #33, !dbg !19270
  br label %.body, !dbg !19266

.split135.us:                                     ; preds = %.noexc95.us, %.noexc95.1
  %.us-phi136 = phi { i64, ptr } [ %i.al, %.noexc95.1 ], [ %i.bh, %.noexc95.us ], !dbg !19250
  %i.bn = extractvalue { i64, ptr } %.us-phi136, 1, !dbg !19250 ; 2 uses
    #dbg_value(ptr poison, !3630, !DIExpression(), !19173)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4recv4RecvEEB1i_(ptr nonnull %i.bn)
          to label %.noexc96.invoke unwind label %.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19271

.noexc96.invoke:                                  ; preds = %.noexc95.us, %.noexc95.1, %.split135.us, %.split115.us
  %i.bo = phi ptr [ @64, %.split115.us ], [ @66, %.noexc95.1 ], [ @66, %.split135.us ], [ @66, %.noexc95.us ]
  %i.bp = phi ptr [ @65, %.split115.us ], [ @67, %.noexc95.1 ], [ @67, %.split135.us ], [ @67, %.noexc95.us ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp) #36
          to label %.noexc96.cont unwind label %.loopexit103.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19272

.noexc96.cont:                                    ; preds = %.noexc96.invoke
  unreachable

bb.k:                                             ; preds = %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !19273
  unreachable, !dbg !19273

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !19273
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState4poll(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(456) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !19282 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !19370, !DIExpression(), !19302)
    #dbg_value(ptr %1, !19364, !DIExpression(), !19432)
    #dbg_declare(ptr %i.a, !19366, !DIExpression(), !19433)
    #dbg_value(i64 8, !19434, !DIExpression(), !19441)
    #dbg_value(ptr undef, !19426, !DIExpression(), !19462)
    #dbg_value(ptr undef, !19416, !DIExpression(), !19463)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 448, !dbg !19578 ; 2 uses
    #dbg_value(ptr %i.b, !19427, !DIExpression(), !19464)
    #dbg_value(ptr %i.b, !19418, !DIExpression(), !19465)
    #dbg_value(ptr %i.b, !19395, !DIExpression(), !19302)
    #dbg_value(ptr undef, !19370, !DIExpression(), !19302)
    #dbg_value(!DIArgList(ptr poison, i64 0), !19397, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !19311)
    #dbg_value(ptr poison, !19466, !DIExpression(DW_OP_deref), !19314)
    #dbg_value(ptr poison, !19471, !DIExpression(), !19314)
    #dbg_value(i8 0, !19475, !DIExpression(), !19317)
    #dbg_value(ptr poison, !19479, !DIExpression(DW_OP_deref), !19317)
    #dbg_value(ptr poison, !19484, !DIExpression(DW_OP_deref, DW_OP_deref), !19321)
    #dbg_value(ptr poison, !19489, !DIExpression(), !19321)
    #dbg_value(i8 0, !19491, !DIExpression(), !19324)
    #dbg_value(i8 0, !19488, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19325)
    #dbg_value(ptr %i.b, !19495, !DIExpression(), !19324)
  %i.c = load i8, ptr %i.b, align 8, !dbg !19579, !range !3910, !alias.scope !19497, !noundef !1871
  %i.d = trunc nuw i8 %i.c to i1, !dbg !19579
  store i8 0, ptr %i.b, align 8, !dbg !19580, !alias.scope !19497
  br i1 %i.d, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1n_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1h_4find5checkBJ_NCNvMs_NtNtNtBL_10connection7streams5stateNtB48_12StreamsState4poll0E0E0B2T_EBL_.exit, label %bb.b, !dbg !19581

bb.b:                                             ; preds = %bb.a
    #dbg_value(!DIArgList(ptr poison, i64 1), !19397, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !19311)
    #dbg_value(ptr poison, !19466, !DIExpression(DW_OP_deref), !19314)
    #dbg_value(ptr poison, !19471, !DIExpression(), !19314)
    #dbg_value(i8 1, !19475, !DIExpression(), !19317)
    #dbg_value(ptr poison, !19479, !DIExpression(DW_OP_deref), !19317)
    #dbg_value(ptr poison, !19484, !DIExpression(DW_OP_deref, DW_OP_deref), !19321)
    #dbg_value(ptr poison, !19489, !DIExpression(), !19321)
    #dbg_value(i8 0, !19491, !DIExpression(), !19324)
    #dbg_value(i8 1, !19488, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19325)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 449, !dbg !19582 ; 2 uses
    #dbg_value(ptr %i.e, !19495, !DIExpression(), !19324)
  %i.f = load i8, ptr %i.e, align 1, !dbg !19579, !range !3910, !alias.scope !19497, !noundef !1871
  %i.g = trunc nuw i8 %i.f to i1, !dbg !19579
  store i8 0, ptr %i.e, align 1, !dbg !19580, !alias.scope !19497
  br i1 %i.g, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1n_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1h_4find5checkBJ_NCNvMs_NtNtNtBL_10connection7streams5stateNtB48_12StreamsState4poll0E0E0B2T_EBL_.exit, label %bb.c, !dbg !19581

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1n_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1h_4find5checkBJ_NCNvMs_NtNtNtBL_10connection7streams5stateNtB48_12StreamsState4poll0E0E0B2T_EBL_.exit: ; preds = %bb.b, %bb.a
  %.lcssa48 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], !dbg !19581
    #dbg_value(i8 %.lcssa48, !19365, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19498)
  store i8 0, ptr %0, align 8, !dbg !19583
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !19583
  store i8 %.lcssa48, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !19583
  br label %bb.e, !dbg !19584

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !6586, !DIExpression(), !19329)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !19585
  %i.i = load i64, ptr %i.h, align 8, !dbg !19585, !alias.scope !19500, !noundef !1871
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 376, !dbg !19586
  %i.k = load i64, ptr %i.j, align 8, !dbg !19586, !alias.scope !19500, !noundef !1871
  %i.l = sub i64 %i.i, %i.k, !dbg !19587
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !19588
  %i.n = load i64, ptr %i.m, align 8, !dbg !19588, !alias.scope !19500, !noundef !1871
    #dbg_value(i64 %i.n, !6588, !DIExpression(), !19333)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 392, !dbg !19589
  %i.p = load i64, ptr %i.o, align 8, !dbg !19589, !alias.scope !19500, !noundef !1871
    #dbg_value(i64 %i.p, !6589, !DIExpression(), !19333)
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 %i.p), !dbg !19590
    #dbg_value(ptr undef, !6237, !DIExpression(DW_OP_deref), !19335)
    #dbg_value(ptr undef, !6240, !DIExpression(DW_OP_deref), !19335)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 %i.l), !dbg !19591
  %.not40 = icmp eq i64 %..i.i, 0, !dbg !19592
  br i1 %.not40, label %.loopexit, label %.preheader, !dbg !19592

.preheader:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
    #dbg_value(ptr %1, !19452, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !19501)
    #dbg_value(ptr %1, !19458, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !19502)
    #dbg_value(ptr %1, !19503, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !19509)
    #dbg_value(ptr %1, !19510, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !19514)
  %i.s = load i64, ptr %i.r, align 8, !dbg !19593, !noundef !1871 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0, !dbg !19593
  br i1 %i.t, label %.loopexit, label %.lr.ph, !dbg !19593

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %bb.d, !dbg !19593

.loopexit:                                        ; preds = %.backedge, %.preheader, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !19594
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams11StreamEventE9pop_frontB1b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x), !dbg !19595
  br label %bb.e, !dbg !19596

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %i.y = phi i64 [ %i.s, %.lr.ph ], [ %i.ai, %.backedge ] ; 2 uses
  %i.z = add nsw i64 %i.y, -1, !dbg !19597        ; 3 uses
  store i64 %i.z, ptr %i.r, align 8, !dbg !19597
  %i.aa = load i64, ptr %i.u, align 8, !dbg !19598, !range !6780, !noundef !1871
  %i.ab = icmp samesign ult i64 %i.z, %i.aa, !dbg !19599
    #dbg_value(i1 true, !19515, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19518)
  call void @llvm.assume(i1 %i.ab), !dbg !19600
  %i.ac = load ptr, ptr %i.v, align 8, !dbg !19601, !nonnull !1871, !noundef !1871
    #dbg_value(ptr %i.ac, !19522, !DIExpression(), !19528)
    #dbg_value(i64 %i.z, !19525, !DIExpression(), !19528)
  %i.ad = icmp samesign ult i64 %i.y, 1152921504606846977, !dbg !19602
  call void @llvm.assume(i1 %i.ad), !dbg !19603
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z, !dbg !19604
    #dbg_value(ptr %i.ae, !19529, !DIExpression(), !19534)
  %i.af = load i64, ptr %i.ae, align 8, !dbg !19605, !noundef !1871 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19433
  store i64 %i.af, ptr %i.a, align 8, !dbg !19433
    #dbg_value(ptr %1, !19535, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !19539)
    #dbg_value(ptr %i.a, !19536, !DIExpression(), !19540)
  %i.ag = call noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBQ_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE7get_mutBO_EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !dbg !19606 ; 3 uses
    #dbg_value(ptr %i.ag, !19541, !DIExpression(), !19551)
  %.not41 = icmp eq ptr %i.ag, null, !dbg !19607
  br i1 %.not41, label %.backedge, label %bb.f, !dbg !19608

bb.e:                                             ; preds = %bb.i, %.loopexit, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1n_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1h_4find5checkBJ_NCNvMs_NtNtNtBL_10connection7streams5stateNtB48_12StreamsState4poll0E0E0B2T_EBL_.exit
  ret void, !dbg !19596

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr %i.ag, !19548, !DIExpression(), !19552)
    #dbg_value(ptr %i.ag, !19553, !DIExpression(), !19558)
    #dbg_value(ptr %i.ag, !19559, !DIExpression(), !19563)
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !19609, !align !3909, !noundef !1871 ; 2 uses
  %.not42 = icmp eq ptr %i.ah, null, !dbg !19609
  br i1 %.not42, label %.backedge, label %bb.g, !dbg !19610

.backedge:                                        ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19611
    #dbg_value(ptr %1, !19452, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !19501)
    #dbg_value(ptr %1, !19458, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !19502)
    #dbg_value(ptr %1, !19503, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !19509)
    #dbg_value(ptr %1, !19510, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !19514)
  %i.ai = load i64, ptr %i.r, align 8, !dbg !19593, !noundef !1871 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0, !dbg !19593
  br i1 %i.aj, label %.loopexit, label %bb.d, !dbg !19593

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.ag, !19367, !DIExpression(), !19564)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 133, !dbg !19612
  store i8 0, ptr %i.ak, align 1, !dbg !19612
  %i.al = load ptr, ptr %i.ag, align 8, !dbg !19613, !nonnull !1871, !noundef !1871 ; 3 uses
    #dbg_value(ptr %i.al, !19565, !DIExpression(), !19569)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 134, !dbg !19614
  %i.an = load i8, ptr %i.am, align 2, !dbg !19614, !range !6495, !noundef !1871 ; 2 uses
  %i.ao = icmp ne i8 %i.an, 3, !dbg !19614
  call void @llvm.assume(i1 %i.ao), !dbg !19614
  %i.ap = icmp eq i8 %i.an, 2, !dbg !19615
  br i1 %i.ap, label %bb.h, label %.backedge, !dbg !19613

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 120, !dbg !19616
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !19616, !noundef !1871
    #dbg_value(ptr %i.al, !19570, !DIExpression(), !19573)
    #dbg_value(ptr %i.al, !19574, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !19577)
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 56, !dbg !19617
  %i.at = load i64, ptr %i.as, align 8, !dbg !19617, !noundef !1871
  %i.au = icmp ugt i64 %i.ar, %i.at, !dbg !19616
  br i1 %i.au, label %bb.i, label %.backedge, !dbg !19616

bb.i:                                             ; preds = %bb.h
  store i8 2, ptr %0, align 8, !dbg !19618
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19618
  store i64 %i.af, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !19618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19611
  br label %bb.e, !dbg !19584
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert(ptr noalias nofree noundef align 8 dereferenceable(456) %0, i1 noundef zeroext %1, i64 noundef %2) unnamed_addr #3 !dbg !1419 {
bb.a:
    #dbg_value(ptr poison, !19627, !DIExpression(), !19635)
    #dbg_value(ptr poison, !19637, !DIExpression(), !19639)
    #dbg_value(ptr poison, !19640, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !19649)
    #dbg_value(ptr %0, !7159, !DIExpression(), !19650)
    #dbg_value(i1 %1, !7160, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19650)
    #dbg_value(i64 %2, !7161, !DIExpression(), !19650)
    #dbg_value(i64 %2, !7165, !DIExpression(), !19652)
    #dbg_value(i64 %2, !7172, !DIExpression(), !19654)
    #dbg_value(ptr poison, !19644, !DIExpression(), !19655)
    #dbg_value(i64 0, !19646, !DIExpression(), !19656)
    #dbg_value(ptr null, !7170, !DIExpression(), !19652)
    #dbg_value(i64 16, !7179, !DIExpression(), !19661)
    #dbg_value(i64 %2, !19662, !DIExpression(), !19665)
  %i.a = and i64 %2, 2, !dbg !19687
    #dbg_value(ptr undef, !19640, !DIExpression(), !19649)
    #dbg_value(i64 %i.a, !19645, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !19667)
  %i.b = icmp eq i64 %i.a, 0, !dbg !19688         ; 2 uses
    #dbg_value(i1 %i.b, !7162, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19668)
  %.not = xor i1 %1, true, !dbg !19689
  %brmerge = or i1 %i.b, %.not, !dbg !19689
  br i1 %brmerge, label %bb.b, label %bb.c, !dbg !19689

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7169, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !19669)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !19690
  %i.d = tail call { i64, ptr } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBP_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %2, ptr noalias noundef align 8 null), !dbg !19691 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0, !dbg !19691
  %i.f = extractvalue { i64, ptr } %i.d, 1, !dbg !19691 ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit
  ], !dbg !19692, !prof !7210

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit, %bb.a
    #dbg_value(ptr %0, !7156, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19670)
    #dbg_value(ptr %0, !7188, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19671)
    #dbg_value(ptr %0, !7191, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19673)
    #dbg_value(ptr %0, !7196, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !19675)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !19693 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !19693, !noundef !1871 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !19693
  br i1 %i.i, label %bb.g, label %bb.f, !dbg !19693

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_(i64 1, ptr %i.f), !dbg !19694
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #36, !dbg !19694
  unreachable, !dbg !19694

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEB1E_(ptr %i.f), !dbg !19695
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit, !dbg !19695

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit: ; preds = %bb.b, %bb.e
  %brmerge1 = or i1 %1, %i.b, !dbg !19696
  br i1 %brmerge1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEEEB19_.exit, !dbg !19696

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEEEB19_.exit: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEEB1I_.exit
  ret void, !dbg !19697

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !19693
  %i.k = add nsw i64 %i.h, -1, !dbg !19698        ; 3 uses
  store i64 %i.k, ptr %i.g, align 8, !dbg !19698
  %i.l = load i64, ptr %i.j, align 8, !dbg !19699, !range !6780, !noundef !1871
  %i.m = icmp samesign ult i64 %i.k, %i.l, !dbg !19700
    #dbg_value(i1 true, !7199, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19677)
  tail call void @llvm.assume(i1 %i.m), !dbg !19701
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !19702
  %i.o = load ptr, ptr %i.n, align 8, !dbg !19702, !nonnull !1871, !noundef !1871
    #dbg_value(ptr %i.o, !7201, !DIExpression(), !19682)
    #dbg_value(i64 %i.k, !7204, !DIExpression(), !19682)
  %i.p = icmp ult i64 %i.h, 576460752303423489, !dbg !19703
  tail call void @llvm.assume(i1 %i.p), !dbg !19704
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k, !dbg !19705 ; 2 uses
    #dbg_value(ptr %i.q, !7206, !DIExpression(), !19684)
  %i.r = load i64, ptr %i.q, align 8, !dbg !19706, !range !3835, !noundef !1871
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !19706
  %i.t = load ptr, ptr %i.s, align 8, !dbg !19706, !noundef !1871
    #dbg_value(i64 %i.r, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19685)
    #dbg_value(i64 %i.r, !7177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19654)
    #dbg_value(ptr %i.t, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19685)
    #dbg_value(ptr %i.t, !7177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19654)
  br label %bb.g, !dbg !19707

bb.g:                                             ; preds = %bb.c, %bb.f
  %.sroa.3.0 = phi ptr [ %i.t, %bb.f ], [ undef, %bb.c ], !dbg !19708
  %.sroa.02.0 = phi i64 [ %i.r, %bb.f ], [ 2, %bb.c ], !dbg !19708
    #dbg_value(i64 %.sroa.02.0, !7177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19654)
    #dbg_value(i64 %.sroa.02.0, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19685)
    #dbg_value(ptr %.sroa.3.0, !7177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19654)
    #dbg_value(ptr %.sroa.3.0, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19685)
    #dbg_value(ptr %0, !7176, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !19686)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !19709
  %i.v = tail call { i64, ptr } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtBP_10connection7streams5state10StreamRecvENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %2, i64 noundef %.sroa.02.0, ptr %.sroa.3.0), !dbg !19710 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0, !dbg !19710 ; 2 uses
    #dbg_value(ptr undef, !19637, !DIExpression(), !19639)
    #dbg_value(ptr undef, !19627, !DIExpression(), !19635)
  %.not20 = icmp eq i64 %i.w, -1, !dbg !19711
  br i1 %.not20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEEEB19_.exit, label %bb.h, !dbg !19712, !prof !3981

bb.h:                                             ; preds = %bb.g
  %i.x = extractvalue { i64, ptr } %i.v, 1, !dbg !19710
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEEEB19_(i64 %i.w, ptr %i.x), !dbg !19713
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #36, !dbg !19713
  unreachable, !dbg !19713
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState8received(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(456) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !19736 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !20257, !DIExpression(), !19753)
    #dbg_value(ptr poison, !20259, !DIExpression(), !19754)
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !20289, !DIExpression(DW_OP_LLVM_fragment, 136, 248), !20295)
    #dbg_declare(ptr poison, !20296, !DIExpression(DW_OP_LLVM_fragment, 136, 248), !20325)
    #dbg_declare(ptr poison, !20291, !DIExpression(DW_OP_LLVM_fragment, 64, 320), !20328)
    #dbg_declare(ptr poison, !20329, !DIExpression(DW_OP_LLVM_fragment, 64, 320), !20334)
    #dbg_declare(ptr poison, !20290, !DIExpression(DW_OP_LLVM_fragment, 136, 248), !20335)
    #dbg_declare(ptr poison, !20253, !DIExpression(DW_OP_LLVM_fragment, 136, 248), !20336)
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !20337, !DIExpression(), !20343)
    #dbg_value(ptr poison, !20344, !DIExpression(), !20346)
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !20347, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20351)
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !20337, !DIExpression(), !20355)
    #dbg_value(ptr poison, !20344, !DIExpression(), !20356)
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
    #dbg_value(ptr poison, !20347, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20359)
    #dbg_declare(ptr poison, !20290, !DIExpression(DW_OP_LLVM_fragment, 64, 320), !20360)
    #dbg_declare(ptr poison, !20223, !DIExpression(DW_OP_LLVM_fragment, 64, 320), !20361)
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
    #dbg_declare(ptr %.sroa.7, !20330, !DIExpression(DW_OP_LLVM_fragment, 64, 320), !20362)
  %i.ad = alloca [8 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !20219, !DIExpression(), !20363)
    #dbg_value(ptr %1, !20364, !DIExpression(), !20370)
    #dbg_declare(ptr %2, !20220, !DIExpression(), !20371)
    #dbg_value(i64 %3, !20221, !DIExpression(), !20363)
    #dbg_declare(ptr %i.ad, !20222, !DIExpression(), !20372)
    #dbg_declare(ptr %i.y, !20236, !DIExpression(), !20373)
    #dbg_declare(ptr %i.r, !20248, !DIExpression(), !20374)
    #dbg_declare(ptr %i.n, !20321, !DIExpression(), !20375)
    #dbg_value(i8 0, !20376, !DIExpression(), !20382)
    #dbg_value(i8 0, !20383, !DIExpression(), !20389)
    #dbg_value(ptr @_RNvNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState8received10___CALLSITE, !20392, !DIExpression(), !20397)
    #dbg_value(ptr poison, !20398, !DIExpression(), !20404)
    #dbg_value(i8 0, !20405, !DIExpression(), !20411)
    #dbg_value(i8 0, !20376, !DIExpression(), !20415)
    #dbg_value(ptr @_RNvNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState8received10___CALLSITE, !20392, !DIExpression(), !20418)
    #dbg_value(i8 0, !20376, !DIExpression(), !20423)
    #dbg_value(i8 0, !20383, !DIExpression(), !20428)
    #dbg_value(ptr @_RNvNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState8receiveds_10___CALLSITE, !20392, !DIExpression(), !20431)
    #dbg_value(ptr poison, !20398, !DIExpression(), !20434)
    #dbg_value(i8 0, !20405, !DIExpression(), !20439)
    #dbg_value(i8 0, !20376, !DIExpression(), !20444)
    #dbg_value(ptr @_RNvNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState8receiveds_10___CALLSITE, !20392, !DIExpression(), !20447)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !20880
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !20881
  %i.af = load i64, ptr %i.ae, align 8, !dbg !20881, !noundef !1871 ; 8 uses
  store i64 %i.af, ptr %i.ad, align 8, !dbg !20881
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !20333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !20333
  invoke fastcc void @_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState19validate_receive_id(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(456) %1, i64 noundef %i.af)
          to label %bb.b unwind label %.body.thread213, !dbg !20882

.body.thread213:                                  ; preds = %bb.bh, %bb.bf, %bb.be, %bb.az, %.noexc189, %bb.ba, %bb.au, %bb.at, %bb.a, %bb.ac, %bb.v, %bb.am, %bb.ak, %bb.aj, %bb.ae, %.noexc184, %bb.af, %bb.z, %bb.y, %bb.s, %bb.ax
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !20883

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20448), !dbg !20884
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20449), !dbg !20884
    #dbg_declare(ptr %i.ac, !20284, !DIExpression(), !19790)
  %i.ag = load i64, ptr %i.ac, align 8, !dbg !20885, !range !3760, !alias.scope !20449, !noundef !1871 ; 2 uses
  %.not.i = icmp eq i64 %i.ag, 2, !dbg !20885
  br i1 %.not.i, label %bb.s, label %bb.c, !dbg !20886

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.ac, !20286, !DIExpression(), !19791)
    #dbg_value(ptr poison, !20450, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !19794)
    #dbg_value(ptr poison, !20265, !DIExpression(), !19795)
    #dbg_declare(ptr %i.i, !20274, !DIExpression(), !19796)
    #dbg_value(i8 0, !20453, !DIExpression(), !19801)
    #dbg_value(i8 0, !20457, !DIExpression(), !19806)
    #dbg_value(ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, !20463, !DIExpression(), !19809)
    #dbg_value(ptr poison, !20467, !DIExpression(), !19812)
    #dbg_value(i8 0, !20472, !DIExpression(), !19817)
    #dbg_value(i8 0, !20453, !DIExpression(), !19821)
    #dbg_value(ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, !20463, !DIExpression(), !19823)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !20454, !DIExpression(), !19801)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !3976, !DIExpression(), !19825)
    #dbg_value(i8 0, !3979, !DIExpression(), !19825)
  %i.ah = load atomic i64, ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !20887, !noalias !20478
  %i.ai = icmp ult i64 %i.ah, 2, !dbg !20888
  br i1 %i.ai, label %bb.d, label %bb.k, !dbg !20889

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, !20460, !DIExpression(), !19826)
    #dbg_value(ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, !20458, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !19827)
    #dbg_value(ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, i64 16), !6051, !DIExpression(), !19829)
    #dbg_value(i8 0, !6054, !DIExpression(), !19829)
  %i.aj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, i64 16) monotonic, align 8, !dbg !20890, !noalias !20478 ; 3 uses
  switch i8 %i.aj, label %bb.e [
    i8 0, label %bb.k
    i8 1, label %bb.f
    i8 2, label %bb.f
  ], !dbg !20891, !prof !6273

bb.e:                                             ; preds = %bb.d
  %i.ak = invoke noundef i8 @_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE) #31
          to label %.noexc.i unwind label %bb.p, !dbg !20892, !noalias !20478 ; 2 uses

.noexc.i:                                         ; preds = %bb.e
    #dbg_value(i8 %i.ak, !20269, !DIExpression(), !19830)
    #dbg_value(ptr undef, !20450, !DIExpression(), !19794)
  %i.al = icmp eq i8 %i.ak, 0, !dbg !20893
  br i1 %i.al, label %bb.k, label %bb.f, !dbg !20894

bb.f:                                             ; preds = %bb.d, %.noexc.i, %bb.d
  %.sroa.02.0.i.i = phi i8 [ %i.ak, %.noexc.i ], [ %i.aj, %bb.d ], [ %i.aj, %bb.d ], !dbg !20895
    #dbg_value(i8 %.sroa.02.0.i.i, !20269, !DIExpression(), !19830)
  %i.am = load ptr, ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, align 8, !dbg !20896, !noalias !20478, !nonnull !1871, !align !3909, !noundef !1871
  %i.an = invoke noundef zeroext i1 @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.am, i8 noundef %.sroa.02.0.i.i)
          to label %.noexc3.i unwind label %bb.p, !dbg !20894, !noalias !20478

.noexc3.i:                                        ; preds = %bb.f
    #dbg_value(i1 %i.an, !20267, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19831)
  br i1 %i.an, label %bb.g, label %bb.k, !dbg !20897

bb.g:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !20897, !noalias !20478
    #dbg_value(ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, !20464, !DIExpression(), !19833)
  %i.ao = load ptr, ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, align 8, !dbg !20898, !noalias !20478, !nonnull !1871, !align !3909, !noundef !1871 ; 2 uses
    #dbg_value(ptr %i.ao, !20480, !DIExpression(), !19836)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48, !dbg !20899
    #dbg_value(ptr %i.ap, !20483, !DIExpression(), !19843)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !20897, !noalias !20478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !20897, !noalias !20478
    #dbg_value(ptr @4, !20497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19846)
    #dbg_value(i64 29, !20497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19846)
  store ptr @4, ptr %i.j, align 8, !dbg !20900, !noalias !20478
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !20900
  store ptr inttoptr (i64 59 to ptr), ptr %i.aq, align 8, !dbg !20900, !noalias !20478
  store ptr %i.j, ptr %i.k, align 8, !dbg !20897, !noalias !20478
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !20897
  store ptr @1, ptr %i.ar, align 8, !dbg !20897, !noalias !20478
    #dbg_value(ptr %i.k, !20484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19843)
    #dbg_value(i64 1, !20484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19843)
  store i64 1, ptr %i.l, align 8, !dbg !20897, !noalias !20478
  %.sroa.04.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !20897
  store ptr %i.k, ptr %.sroa.04.sroa.4.0..sroa_idx.i.i, align 8, !dbg !20897, !noalias !20478
  %.sroa.04.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !20897
  store i64 1, ptr %.sroa.04.sroa.5.0..sroa_idx.i.i, align 8, !dbg !20897, !noalias !20478
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !20897
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !20897, !noalias !20478
    #dbg_value(ptr poison, !20500, !DIExpression(), !19859)
    #dbg_value(ptr poison, !20502, !DIExpression(), !19860)
    #dbg_value(ptr poison, !20514, !DIExpression(), !19861)
    #dbg_declare(ptr %i.l, !20508, !DIExpression(), !19862)
    #dbg_declare(ptr %i.e, !20512, !DIExpression(), !19863)
    #dbg_value(ptr poison, !20516, !DIExpression(), !19866)
    #dbg_value(i8 0, !20520, !DIExpression(), !19871)
    #dbg_value(i8 0, !20524, !DIExpression(), !19876)
    #dbg_value(ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, !20528, !DIExpression(), !19879)
    #dbg_value(ptr @_RNvNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received010___CALLSITE, !20529, !DIExpression(), !19881)
    #dbg_value(ptr %i.ao, !20509, !DIExpression(), !19882)
  invoke void @_RNvMNtCsgb4gPAseikh_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!1217 = distinct !DISubprogram(name: "map<core::ops::range::Range<u32>, lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>, lru_slab::{impl#0}::with_capacity::{closure_env#0}<quinn_proto::token_memory_cache::CacheEntry>>", linkageName: "_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangemENtNtNtNtBa_4iter6traits8iterator8Iterator3mapINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryENCNvMB1x_INtB1x_7LruSlabB1Z_E13with_capacity0EB23_", scope: !4323, file: !4378, line: 831, type: !6159, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6164, retainedNodes: !6161)
!1218 = distinct !DISubprogram(name: "new<core::ops::range::Range<u32>, lru_slab::{impl#0}::with_capacity::{closure_env#0}<quinn_proto::token_memory_cache::CacheEntry>>", linkageName: "_RNvMNtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB2_3MapINtNtNtB8_3ops5range5RangemENCNvMCs9JJQt12aL8S_8lru_slabINtB1q_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE13with_capacity0E3newB26_", scope: !1210, file: !4312, line: 68, type: !6159, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6136, declaration: !6166)
!1219 = distinct !DISubprogram(name: "drop_glue<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, u32, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCsexYYUdYSQU6_5alloc4sync3ArceEmEECshovLROGBtMy_11quinn_proto", scope: !1959, file: !3596, line: 848, type: !6170, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6173, retainedNodes: !6171)
!1220 = distinct !DISubprogram(name: "drop_glue<hashbrown::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, u32, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapINtNtCsexYYUdYSQU6_5alloc4sync3ArceEmNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEECshovLROGBtMy_11quinn_proto", scope: !1959, file: !3596, line: 848, type: !6177, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6180, retainedNodes: !6178)
!1221 = distinct !DISubprogram(name: "drop_glue<hashbrown::raw::RawTable<(alloc::sync::Arc<str, alloc::alloc::Global>, u32), alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc4sync3ArceEmEEECshovLROGBtMy_11quinn_proto", scope: !1959, file: !3596, line: 848, type: !6184, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6187, retainedNodes: !6185)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2893, line: 132, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !2893, line: 130, column: 5)
!1224 = distinct !DISubprogram(name: "optimal_capacity", linkageName: "_RNvNtNtCshovLROGBtMy_11quinn_proto10connection6pacing16optimal_capacity", scope: !2888, file: !2893, line: 129, type: !6198, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6203)
!1225 = distinct !DISubprogram(name: "as_nanos", linkageName: "_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration8as_nanos", scope: !731, file: !6204, line: 631, type: !6208, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6209, retainedNodes: !6210)
!1226 = distinct !DISubprogram(name: "max<u128>", linkageName: "_RNvYoNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCshovLROGBtMy_11quinn_proto", scope: !5856, file: !4291, line: 1094, type: !6213, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6217, retainedNodes: !6215)
!1227 = distinct !DISubprogram(name: "clamp", linkageName: "_RNvXs13_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_3Ord5clamp", scope: !6220, file: !4291, line: 2292, type: !6222, scopeLine: 2292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6225)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Interest", scope: !1761, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !6227, templateParams: !1871, identifier: "497aa0516b735fb134d4a63a8d5419")
!1229 = distinct !DISubprogram(name: "min<u64>", linkageName: "_RNvYyNtNtCskKLDkoKarTP_4core3cmp3Ord3minCshovLROGBtMy_11quinn_proto", scope: !5856, file: !4291, line: 1133, type: !6239, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6243, retainedNodes: !6241)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1233, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6258, templateParams: !6260, identifier: "ec7ac56bdb5cb307a531a6ce383cd54c")
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1233, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !6260, identifier: "85fc1b32d89211e5df67146d77b3b6cc")
!1232 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1233, file: !1530, size: 64, align: 64, elements: !6256, templateParams: !1871, identifier: "fc77d522d9eb54717940839e1f732974", discriminator: !6261)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<tracing_core::metadata::Level>", scope: !1861, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6253, templateParams: !1871, identifier: "eea9d308b6c07140954de43ce31015eb")
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LevelFilter", scope: !1742, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6252, templateParams: !1871, identifier: "f7d4369195c0daef68428b71241aeec8")
!1235 = distinct !DISubprogram(name: "max<u64>", linkageName: "_RNvYyNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCshovLROGBtMy_11quinn_proto", scope: !5856, file: !4291, line: 1094, type: !6239, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6243, retainedNodes: !6293)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, bool)", file: !1530, size: 128, align: 64, elements: !6298, templateParams: !1871, identifier: "492dbfd26001d36735727f2695d51c0")
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !1240, file: !1530, size: 64, align: 32, flags: DIFlagPublic, elements: !6311, templateParams: !6313, identifier: "ce26a5ebfff24c92353010c5d62c0597")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !1240, file: !1530, size: 64, align: 32, flags: DIFlagPublic, elements: !6315, templateParams: !6313, identifier: "b1e33bdcf1e6a9bf161346d2e9bdae4")
!1239 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1240, file: !1530, size: 64, align: 32, elements: !6309, templateParams: !1871, identifier: "d42042cba303c5135a514d03fed37912", discriminator: !6316)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<u32, u32>", scope: !2195, file: !1530, size: 64, align: 32, flags: DIFlagPublic, elements: !6306, templateParams: !1871, identifier: "e7acc18386da34455ce15d185d7c28a8")
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3592, line: 4078, column: 5)
!1242 = distinct !DISubprogram(name: "atomic_compare_exchange<u32>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic23atomic_compare_exchangemECshovLROGBtMy_11quinn_proto", scope: !1587, file: !3592, line: 4070, type: !6321, scopeLine: 4070, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !2847, retainedNodes: !6328)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PoisonError<std::sync::poison::Guard>", scope: !2928, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !6340, templateParams: !6342, identifier: "d6171263c0df5b66a95f67c534580e2c")
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !1247, file: !1530, size: 16, align: 8, flags: DIFlagPublic, elements: !6338, templateParams: !6344, identifier: "cd1e01d4116d33cf651612c06f7c9797")
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !1247, file: !1530, size: 16, align: 8, flags: DIFlagPublic, elements: !6346, templateParams: !6344, identifier: "608dc2b5600c2ef479b6d74ec0584203")
!1246 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1247, file: !1530, size: 16, align: 8, elements: !6336, templateParams: !1871, identifier: "5b0c25ca6d95e3ab4771095c3e60bbe3", discriminator: !6347)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<std::sync::poison::Guard, std::sync::poison::PoisonError<std::sync::poison::Guard>>", scope: !2195, file: !1530, size: 16, align: 8, flags: DIFlagPublic, elements: !6333, templateParams: !1871, identifier: "862614659ee587305271f678aed8d124")
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3942, line: 116, column: 9)
!1249 = distinct !DISubprogram(name: "guard", linkageName: "_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard", scope: !419, file: !3942, line: 115, type: !6332, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6348, retainedNodes: !6350)
!1250 = distinct !DISubprogram(name: "get", linkageName: "_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag3get", scope: !419, file: !3942, line: 137, type: !6353, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6354, retainedNodes: !6355)
!1251 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !146, file: !3592, line: 2919, type: !3955, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !3956, retainedNodes: !6358)
!1252 = distinct !DISubprogram(name: "count_is_zero", linkageName: "_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count13count_is_zero", scope: !3961, file: !3959, line: 461, type: !3963, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!1253 = distinct !DISubprogram(name: "panicking", linkageName: "_RNvNtCsG258MDvU3F_3std9panicking9panicking", scope: !3960, file: !3959, line: 602, type: !3963, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!1254 = distinct !DISubprogram(name: "panicking", linkageName: "_RNvNtNtCsG258MDvU3F_3std6thread9functions9panicking", scope: !3966, file: !3964, line: 220, type: !3963, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!1255 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !418, file: !3592, line: 760, type: !6031, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6032, retainedNodes: !6361)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1259, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6372, templateParams: !6374, identifier: "38ec8b4823e8be82687dd258b338b54f")
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1259, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !6374, identifier: "3dd43dcdcb5cb0f350d3945638016836")
!1258 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1259, file: !1530, size: 64, align: 64, elements: !6370, templateParams: !1871, identifier: "cbe7b5010bcec8fa61dd5e768eeb95e5", discriminator: !6375)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>>", scope: !1861, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6367, templateParams: !1871, identifier: "ec2198c2ce8b72061b9f3bd775fba03e")
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1263, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6384, templateParams: !6386, identifier: "f8f7f699040bfde353e5172e2dc0d70c")
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1263, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !6386, identifier: "6e7b66b64fe5aec08f27cc99d2e7b1d7")
!1262 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1263, file: !1530, size: 64, align: 64, elements: !6382, templateParams: !1871, identifier: "514c8a7b2070d4fd65e22a34d3eb8fcf", discriminator: !6387)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>", scope: !1861, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6379, templateParams: !1871, identifier: "67c392677e9ab28c22bc9bd8e40bc813")
!1264 = distinct !DISubprogram(name: "received_max_data", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState17received_max_data", scope: !711, file: !2875, line: 725, type: !6435, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6436, retainedNodes: !6438)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<(quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>)>", scope: !1964, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6449, templateParams: !3390, identifier: "684dc3a5c596666963a8cd2999ab6686")
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Bucket<(quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>)>", scope: !3072, file: !1530, size: 64, align: 64, flags: DIFlagProtected, elements: !6446, templateParams: !3390, identifier: "97f8b16f7206cb73fb033e2f91f67320")
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RustcOccupiedEntry<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !6441, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !6444, templateParams: !6450, identifier: "7c5e0d82ba3dd8aade18704e9e3abb9")
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OccupiedEntry<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !3064, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !6440, templateParams: !6450, identifier: "40e8659834005f992b2dce99efaafbb4")
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RustcVacantEntry<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !6441, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !6464, templateParams: !6450, identifier: "6ba969655b04b8edafb049073533cb13")
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VacantEntry<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !3064, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !6460, templateParams: !6450, identifier: "a2f8629b5b43c6bbc67d1bbf24ab12c")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vacant", scope: !1274, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !6458, templateParams: !6450, identifier: "56e4c2b20d2814baa4974db638a307f1")
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Occupied", scope: !1274, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !6466, templateParams: !6450, identifier: "c7d2645baf32d1382f2c65d68d24af75")
!1273 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1274, file: !1530, size: 192, align: 64, elements: !6456, templateParams: !1871, identifier: "2853c18c531b6afbc5f5026cf2bf0b42", discriminator: !6467)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Entry<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !3064, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !6453, templateParams: !1871, identifier: "e2be32626036dba61339017e1753eeb")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vacant", scope: !1278, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !6474, templateParams: !6450, identifier: "233eb1f4c6284e25c00a96c2670e7305")
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Occupied", scope: !1278, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !6476, templateParams: !6450, identifier: "419a1009ba11bc518fb3aa496ca64088")
!1277 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1278, file: !1530, size: 192, align: 64, elements: !6472, templateParams: !1871, identifier: "c92f9c28c96e903e2b968d2ebafa19b", discriminator: !6477)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RustcEntry<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !6441, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !6469, templateParams: !1871, identifier: "d8799380277d0e6ca81be151c251f581")
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1282, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6490, templateParams: !6492, identifier: "49ec821928a03fb439e69e60029dd1dd")
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1282, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !6492, identifier: "594c5be71aa0457d959e1d8228f4f341")
!1281 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1282, file: !1530, size: 64, align: 64, elements: !6487, templateParams: !1871, identifier: "a32d224280bf45caf407211ccec94888", discriminator: !6493)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>", scope: !1861, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6484, templateParams: !1871, identifier: "2a9dddf4ef83b7ac3e34ca724da2c8b1")
!1283 = distinct !DISubprogram(name: "drop_glue<(quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBE_10connection7streams4send4SendEEEEBE_", scope: !1959, file: !3596, line: 848, type: !6506, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3390, retainedNodes: !6507)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !6429, line: 172, column: 34)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !6429, line: 172, column: 34)
!1286 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXse_CshovLROGBtMy_11quinn_protoNtB5_4SideNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !6510, file: !6429, line: 172, type: !6512, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6517)
!1287 = distinct !DISubprogram(name: "ne<quinn_proto::Side, quinn_proto::Side>", linkageName: "_RNvYNtCshovLROGBtMy_11quinn_proto4SideNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neB4_", scope: !6518, file: !4291, line: 275, type: !6512, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6524, retainedNodes: !6521)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !2875, line: 930, column: 13)
!1289 = distinct !DISubprogram(name: "stream_freed", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState12stream_freed", scope: !711, file: !2875, line: 928, type: !6526, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6527, retainedNodes: !6532)
!1290 = distinct !DISubprogram(name: "dir", linkageName: "_RNvMs3_CshovLROGBtMy_11quinn_protoNtB5_8StreamId3dir", scope: !377, file: !6429, line: 269, type: !6535, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6536, retainedNodes: !6537)
!1291 = distinct !DISubprogram(name: "contains_key<quinn_proto::StreamId, core::option::Option<quinn_proto::connection::streams::state::StreamRecv>, rustc_hash::FxBuildHasher, alloc::alloc::Global, quinn_proto::StreamId>", linkageName: "_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtB15_10connection7streams5state10StreamRecvENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE12contains_keyB13_EB15_", scope: !708, file: !6099, line: 1268, type: !6543, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6544, declaration: !6545, retainedNodes: !6547)
!1292 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt", scope: !6416, file: !4291, line: 2192, type: !6418, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6551)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !4293, line: 1101, column: 13)
!1294 = distinct !DISubprogram(name: "spec_next<u64>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangeyENtB5_17RangeIteratorImpl9spec_nextCshovLROGBtMy_11quinn_proto", scope: !4295, file: !4293, line: 1099, type: !6421, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3304, retainedNodes: !6554)
!1295 = distinct !DISubprogram(name: "next<u64>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangeyENtNtNtB7_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto", scope: !4303, file: !4293, line: 1184, type: !6421, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6423, retainedNodes: !6556)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !2875, line: 216, column: 13)
!1297 = distinct !DILexicalBlock(scope: !1300, file: !2875, line: 215, column: 9)
!1298 = distinct !DISubprogram(name: "ensure_remote_streams", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState21ensure_remote_streams", scope: !711, file: !2875, line: 212, type: !6559, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6560, retainedNodes: !6567)
!1299 = distinct !DILexicalBlock(scope: !1298, file: !2875, line: 213, column: 9)
!1300 = distinct !DILexicalBlock(scope: !1299, file: !2875, line: 215, column: 9)
!1301 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs3_CshovLROGBtMy_11quinn_protoNtB5_8StreamId3new", scope: !377, file: !6429, line: 257, type: !6431, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6432, retainedNodes: !6572)
!1302 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsJ_NtNtCskKLDkoKarTP_4core4iter5rangeyNtB5_4Step17forward_unchecked", scope: !6424, file: !4293, line: 263, type: !6426, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6575)
!1303 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy13unchecked_add", scope: !6290, file: !4307, line: 1031, type: !6428, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6578)
!1304 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy14saturating_sub", scope: !6290, file: !4307, line: 2569, type: !6239, scopeLine: 2569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6581)
!1305 = distinct !DISubprogram(name: "write_limit", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState11write_limit", scope: !711, file: !2875, line: 771, type: !6584, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6585, retainedNodes: !6587)
!1306 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy14saturating_sub", scope: !6290, file: !4307, line: 2569, type: !6239, scopeLine: 2569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6590)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ShouldTransmit", scope: !1775, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !6600, templateParams: !1871, identifier: "1a6ba5ac2744341059eef75afa25d63f")
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !1311, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6596, templateParams: !6598, identifier: "d5371c90507574d7a6595befc22dccd6")
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !1311, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6602, templateParams: !6598, identifier: "a9c3c73043e484148eeb9d389b8133b9")
!1310 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1311, file: !1530, size: 384, align: 64, elements: !6594, templateParams: !1871, identifier: "cbd395aa0ba6b9dc89995e47be36cbfd", discriminator: !6603)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<quinn_proto::connection::streams::ShouldTransmit, quinn_proto::transport_error::Error>", scope: !2195, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6591, templateParams: !1871, identifier: "9efbc6854ee0c9b5bc7d7b1fee32e62e")
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !1315, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6609, templateParams: !6610, identifier: "807772f0f37a2fbd1c79a5f9d249ce21")
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !1315, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6612, templateParams: !6610, identifier: "b8c86fcfa786343180cf4a5a2362df37")
!1314 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1315, file: !1530, size: 384, align: 64, elements: !6607, templateParams: !1871, identifier: "32eebb3f9245acd5f781cc490233ef")
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<!, quinn_proto::transport_error::Error>", scope: !2195, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6604, templateParams: !1871, identifier: "8475c9f5d0b390c37e96daf77ea12ff4")
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !1319, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6629, templateParams: !6630, identifier: "8c81675a0287230647242a75b853d570")
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !1319, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6632, templateParams: !6630, identifier: "4016df4622d454cddd15d0fcd20eca3a")
!1318 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1319, file: !1530, size: 384, align: 64, elements: !6627, templateParams: !1871, identifier: "5593d6f1d718ff0e8a87744de498bf81", discriminator: !6633)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::result::Result<!, quinn_proto::transport_error::Error>, ()>", scope: !5842, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !6624, templateParams: !1871, identifier: "3b2b07af8442059e3ad7d7c156d9e62")
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1323, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6644, templateParams: !6646, identifier: "67090c7d8971bc0f34fa208dd2599320")
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1323, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !6646, identifier: "f9726bdf8a39029a30ce9c32c1c32d23")
!1322 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1323, file: !1530, size: 64, align: 64, elements: !6642, templateParams: !1871, identifier: "c8bed04bfa5ff6817b0b41017b3b9387", discriminator: !6647)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut core::option::Option<quinn_proto::connection::streams::state::StreamRecv>>", scope: !1861, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6639, templateParams: !1871, identifier: "7a8ac578b33e94f6860244922da30634")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !6651, file: !1530, size: 64, align: 64, elements: !6653, templateParams: !1871, identifier: "d918933e08d9722bdb33a58415efc8f3")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1328, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6659, templateParams: !6661, identifier: "2451784582d54674f2f14050e306b54d")
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1328, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !6661, identifier: "55ff57723543b3e6d6ab491fc6825cdc")
!1327 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1328, file: !1530, size: 64, align: 64, elements: !6657, templateParams: !1871, identifier: "998c34c22c5ea85614d540e9304e1920", discriminator: !6662)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut quinn_proto::connection::streams::recv::Recv>", scope: !1861, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6654, templateParams: !1871, identifier: "784d599cf8b39564b9b6d74658125a4f")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&mut core::option::Option<quinn_proto::connection::streams::state::StreamRecv>)", file: !1530, size: 64, align: 64, elements: !6673, templateParams: !1871, identifier: "1f4045f75b1509571b11e2e7657d3f21")
!1330 = distinct !DISubprogram(name: "call_once<quinn_proto::connection::streams::state::get_or_insert_recv::{closure_env#0}, (&mut core::option::Option<quinn_proto::connection::streams::state::StreamRecv>)>", linkageName: "_RNvYNCNvNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state18get_or_insert_recv0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtB1v_6option6OptionNtB6_10StreamRecvEEE9call_onceBc_", scope: !3595, file: !3593, line: 250, type: !6669, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6676, retainedNodes: !6671)
!1331 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state18get_or_insert_recv0B9_", scope: !6651, file: !2875, line: 973, type: !6680, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6682)
!1332 = distinct !DISubprogram(name: "take<quinn_proto::connection::streams::state::StreamRecv>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE4takeBP_", scope: !501, file: !3455, line: 1902, type: !6685, scopeLine: 1902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3368, declaration: !6686, retainedNodes: !6687)
!1333 = distinct !DISubprogram(name: "replace<core::option::Option<quinn_proto::connection::streams::state::StreamRecv>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEEB13_", scope: !1650, file: !6071, line: 961, type: !6690, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3623, retainedNodes: !6691)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !6695, file: !1530, align: 8, elements: !1871, identifier: "cfc5037ad1191c98ceb48472866198c5")
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3455, line: 1165, column: 13)
!1336 = distinct !DISubprogram(name: "map<quinn_proto::connection::streams::state::StreamRecv, quinn_proto::connection::streams::state::StreamRecv, quinn_proto::connection::streams::state::get_or_insert_recv::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE3mapBI_NCNCNvBK_18get_or_insert_recv00EBQ_", scope: !501, file: !3455, line: 1160, type: !6694, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6698, declaration: !6699, retainedNodes: !6702)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}", scope: !6695, file: !1530, size: 64, align: 64, elements: !6707, templateParams: !1871, identifier: "39b7123ec88a17c3fafef1ff53901ad8")
!1338 = distinct !DISubprogram(name: "get_or_insert_with<quinn_proto::connection::streams::state::StreamRecv, quinn_proto::connection::streams::state::get_or_insert_recv::{closure#0}::{closure_env#1}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE18get_or_insert_withNCNCNvBK_18get_or_insert_recv0s_0EBQ_", scope: !501, file: !3455, line: 1807, type: !6705, scopeLine: 1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6710, declaration: !6711, retainedNodes: !6713)
!1339 = distinct !DISubprogram(name: "replace<quinn_proto::connection::streams::state::StreamRecv>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE7replaceBP_", scope: !501, file: !3455, line: 1962, type: !6716, scopeLine: 1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3368, declaration: !6717, retainedNodes: !6719)
!1340 = distinct !DISubprogram(name: "replace<core::option::Option<quinn_proto::connection::streams::state::StreamRecv>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEEB13_", scope: !1650, file: !6071, line: 961, type: !6690, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3623, retainedNodes: !6721)
!1341 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNCNvNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state18get_or_insert_recv0s_0Bb_", scope: !6695, file: !2875, line: 978, type: !6724, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6725)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !6429, line: 172, column: 34)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !6429, line: 172, column: 34)
!1344 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXse_CshovLROGBtMy_11quinn_protoNtB5_4SideNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !6510, file: !6429, line: 172, type: !6512, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6742)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !2875, line: 628, column: 9)
!1346 = distinct !DISubprogram(name: "on_stream_frame", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState15on_stream_frame", scope: !711, file: !2875, line: 620, type: !6744, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6745, retainedNodes: !6751)
!1347 = distinct !DISubprogram(name: "push_back<quinn_proto::connection::streams::StreamEvent, alloc::alloc::Global>", linkageName: "_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams11StreamEventE9push_backB1b_", scope: !671, file: !6752, line: 2339, type: !6755, scopeLine: 2339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !4024, declaration: !6756, retainedNodes: !6758)
!1348 = distinct !DISubprogram(name: "dir", linkageName: "_RNvMs3_CshovLROGBtMy_11quinn_protoNtB5_8StreamId3dir", scope: !377, file: !6429, line: 269, type: !6535, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6536, retainedNodes: !6760)
!1349 = distinct !DISubprogram(name: "index", linkageName: "_RNvMs3_CshovLROGBtMy_11quinn_protoNtB5_8StreamId5index", scope: !377, file: !6429, line: 273, type: !6763, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6764, retainedNodes: !6765)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<quinn_proto::connection::streams::state::StreamRecv>", scope: !1964, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6785, templateParams: !3368, identifier: "49d3b866ef30be17e5382a685767b96f")
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&quinn_proto::Dir>", scope: !1947, file: !1530, align: 8, flags: DIFlagPublic, elements: !1871, templateParams: !6804, identifier: "10c10686ed1ee482515a53941e72ba6d")
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<quinn_proto::Dir>", scope: !1964, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !6806, templateParams: !6808, identifier: "58d1af292008fbed9f1fe3901fe0bff6")
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<quinn_proto::Dir>", scope: !4337, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !6801, templateParams: !6808, identifier: "216a6b707bb66bab270f31b82fc0c684")
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Cloned<core::slice::iter::Iter<quinn_proto::Dir>>", scope: !4319, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !6796, templateParams: !6810, identifier: "cd8a1ac155551f0be84672d7dbb54215")
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AllocError", scope: !1358, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !6861, templateParams: !1871, identifier: "ab97582a003a99f62b18f5a036c76a20")
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CapacityOverflow", scope: !1358, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !1871, identifier: "7394dda58914de5785a4d880d00b5097")
!1357 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1358, file: !1530, size: 128, align: 64, elements: !6858, templateParams: !1871, identifier: "d5e19bfad95accd9c01bc00dc22f233", discriminator: !6862)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TryReserveErrorKind", scope: !1990, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !6855, templateParams: !1871, identifier: "fea41fbe24bed6b4f674c2a4410d78bf")
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TryReserveError", scope: !1990, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !6854, templateParams: !1871, identifier: "3d40d7d7b533f23b5d747736b028e342")
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !6890, file: !1530, size: 64, align: 64, elements: !6892, templateParams: !1871, identifier: "195e3d5ecc5fba10624ab7307acd2753")
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&quinn_proto::Dir)", file: !1530, size: 64, align: 64, elements: !6894, templateParams: !1871, identifier: "81cbc83a06e56afd8ecae6c51dbf1293")
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::ops::function::FnMut<(usize), Output=bool>", file: !1530, align: 8, elements: !1871, identifier: "c9d733f4efb174828f13bc7b8f20c0bc")
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::ops::function::FnMut<(usize), Output=bool>", file: !1530, size: 128, align: 64, elements: !6921, templateParams: !1871, identifier: "3377f04259f0c8547ec52a447dff87")
!1364 = distinct !DILexicalBlock(scope: !1365, file: !6916, line: 2032, column: 17)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !6916, line: 2029, column: 13)
!1366 = distinct !DILexicalBlock(scope: !1369, file: !6916, line: 2029, column: 13)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__m128i", scope: !6940, file: !1530, size: 128, align: 128, flags: DIFlagPublic, elements: !6943, templateParams: !1871, identifier: "9f30d5388a20f7d7e04d2e89740bea20")
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Group", scope: !6936, file: !1530, size: 128, align: 128, flags: DIFlagProtected, elements: !6938, templateParams: !1871, identifier: "e9065d7761680c059027ede3a04bbb81")
!1369 = distinct !DILexicalBlock(scope: !1371, file: !6916, line: 2027, column: 13)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProbeSeq", scope: !3072, file: !1530, size: 128, align: 64, flags: DIFlagPrivate, elements: !6946, templateParams: !1871, identifier: "ab7d44985982bb1888232768f859d38c")
!1371 = distinct !DILexicalBlock(scope: !1373, file: !6916, line: 2010, column: 9)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tag", scope: !6947, file: !1530, size: 8, align: 8, flags: DIFlagProtected, elements: !6949, templateParams: !1871, identifier: "4d623e0f4875d3269510b7452d327181")
!1373 = distinct !DILexicalBlock(scope: !1374, file: !6916, line: 2009, column: 9)
!1374 = distinct !DISubprogram(name: "find_inner", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner", scope: !411, file: !6916, line: 2008, type: !6924, scopeLine: 2008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6925, retainedNodes: !6934)
!1375 = distinct !DILexicalBlock(scope: !1378, file: !6951, line: 103, column: 42)
!1376 = distinct !DILexicalBlock(scope: !1378, file: !6951, line: 103, column: 42)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !6951, line: 103, column: 9)
!1378 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs0_NtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB5_11BitMaskIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next", scope: !6954, file: !6951, line: 102, type: !6956, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !6960)
!1379 = distinct !DISubprogram(name: "move_next", linkageName: "_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_8ProbeSeq9move_next", scope: !1370, file: !6916, line: 82, type: !6965, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6966, retainedNodes: !6968)
!1380 = distinct !DISubprogram(name: "probe_seq", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner9probe_seq", scope: !411, file: !6916, line: 2448, type: !6971, scopeLine: 2448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6972, retainedNodes: !6974)
!1381 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !411, file: !6916, line: 2621, type: !6978, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6979, retainedNodes: !6981)
!1382 = distinct !DISubprogram(name: "full", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB2_3Tag4full", scope: !1372, file: !6982, line: 35, type: !6985, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6986, retainedNodes: !6987)
!1383 = distinct !DILexicalBlock(scope: !1385, file: !6988, line: 83, column: 13)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !6988, line: 83, column: 13)
!1385 = distinct !DISubprogram(name: "match_tag", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group9match_tag", scope: !1368, file: !6988, line: 73, type: !6991, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6992, retainedNodes: !6996)
!1386 = distinct !DISubprogram(name: "match_empty", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group11match_empty", scope: !1368, file: !6988, line: 91, type: !6998, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6999, retainedNodes: !7001)
!1387 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCshovLROGBtMy_11quinn_proto", scope: !4306, file: !4304, line: 937, type: !6886, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1949)
!1388 = distinct !DISubprogram(name: "load", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group4load", scope: !1368, file: !6988, line: 48, type: !7006, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !7007, retainedNodes: !7008)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !7009, line: 1340, column: 5)
!1390 = distinct !DISubprogram(name: "_mm_loadu_si128", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128", scope: !7012, file: !7009, line: 1339, type: !7014, scopeLine: 1339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7016)
!1391 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappinghECshovLROGBtMy_11quinn_proto", scope: !1959, file: !3596, line: 553, type: !6866, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1949, retainedNodes: !7020)
!1392 = distinct !DISubprogram(name: "_mm_cmpeq_epi8", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8", scope: !7012, file: !7009, line: 919, type: !7023, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7025)
!1393 = distinct !DILexicalBlock(scope: !1395, file: !7009, line: 1569, column: 9)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Simd<i8, 16>", scope: !7032, file: !1530, size: 128, align: 128, flags: DIFlagProtected, elements: !7035, templateParams: !7037, identifier: "e24720f085eec74724e42c73ea0181fb")
!1395 = distinct !DILexicalBlock(scope: !1396, file: !7009, line: 1568, column: 9)
!1396 = distinct !DISubprogram(name: "_mm_movemask_epi8", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8", scope: !7012, file: !7009, line: 1566, type: !7028, scopeLine: 1566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7031)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonZeroU16Inner", scope: !1956, file: !1530, size: 16, align: 16, flags: DIFlagPublic, elements: !7049, templateParams: !1871, identifier: "43ecc30753d26cd9da02061c47a288b1")
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonZero<u16>", scope: !7045, file: !1530, size: 16, align: 16, flags: DIFlagPublic, elements: !7047, templateParams: !2083, identifier: "a1789a3b893a8f6e88abd8ff25c077c8")
!1399 = distinct !DILexicalBlock(scope: !1400, file: !6951, line: 40, column: 64)
!1400 = distinct !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !1164, file: !6951, line: 39, type: !7041, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !7042, retainedNodes: !7044)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !6951, line: 67, column: 13)
!1402 = distinct !DISubprogram(name: "nonzero_trailing_zeros", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask22nonzero_trailing_zeros", scope: !1164, file: !6951, line: 64, type: !7052, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !7053, retainedNodes: !7055)
!1403 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMsN_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE14trailing_zeros", scope: !1398, file: !7056, line: 625, type: !7059, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !7060, retainedNodes: !7061)
!1404 = distinct !DISubprogram(name: "get<u16>", linkageName: "_RNvMse_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE3getCshovLROGBtMy_11quinn_proto", scope: !1398, file: !7056, line: 467, type: !7064, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !2083, declaration: !7065, retainedNodes: !7067)
!1405 = distinct !DISubprogram(name: "remove_lowest_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask17remove_lowest_bit", scope: !1164, file: !6951, line: 27, type: !7070, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !7071, retainedNodes: !7072)
!1406 = distinct !DISubprogram(name: "likely", linkageName: "_RNvNtCskKLDkoKarTP_4core10intrinsics6likely", scope: !6300, file: !6299, line: 459, type: !6302, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7077)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !7087, file: !1530, size: 64, align: 64, elements: !7089, templateParams: !1871, identifier: "f12352ce767d538df61a1a2032ac10d4")
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&mut core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>)", file: !1530, size: 64, align: 64, elements: !7099, templateParams: !1871, identifier: "187b24371c2fb62ed7c28329e6f9b5fc")
!1409 = distinct !DISubprogram(name: "call_once<quinn_proto::connection::streams::state::get_or_insert_send::{closure_env#0}, (&mut core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>)>", linkageName: "_RNvYNCNvNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state18get_or_insert_send0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtB1v_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB8_4send4SendEEEE9call_onceBc_", scope: !3595, file: !3593, line: 250, type: !7095, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !7102, retainedNodes: !7097)
!1410 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state18get_or_insert_send0B9_", scope: !7087, file: !2875, line: 966, type: !7106, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7108)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !7112, file: !1530, size: 64, align: 64, elements: !7114, templateParams: !1871, identifier: "c05009f4d611a1dcbe0d8d1110ca418")
!1412 = distinct !DISubprogram(name: "get_or_insert_with<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>, quinn_proto::connection::streams::state::get_or_insert_send::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEE18get_or_insert_withNCNCNvNtB1l_5state18get_or_insert_send00EB1p_", scope: !523, file: !3455, line: 1807, type: !7111, scopeLine: 1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !7117, declaration: !7118, retainedNodes: !7120)
!1413 = distinct !DISubprogram(name: "replace<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEE7replaceB1o_", scope: !523, file: !3455, line: 1962, type: !7123, scopeLine: 1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3437, declaration: !7124, retainedNodes: !7126)
!1414 = distinct !DISubprogram(name: "replace<core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem7replaceINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEEB1C_", scope: !1650, file: !6071, line: 961, type: !7129, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3607, retainedNodes: !7130)
!1415 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state18get_or_insert_send00Bb_", scope: !7112, file: !2875, line: 966, type: !7133, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7134)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<quinn_proto::StreamId>", scope: !1964, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !7144, templateParams: !3773, identifier: "ad05d6d652ea0695ba7d4a10d3bbccc3")
!1417 = distinct !DISubprogram(name: "pop<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE3popBM_", scope: !622, file: !4290, line: 2871, type: !7154, scopeLine: 2871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3795, declaration: !7155, retainedNodes: !7157)
!1418 = distinct !DILexicalBlock(scope: !1420, file: !2875, line: 892, column: 13)
!1419 = distinct !DISubprogram(name: "insert", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert", scope: !711, file: !2875, line: 884, type: !6744, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !7158, retainedNodes: !7164)
!1420 = distinct !DILexicalBlock(scope: !1419, file: !2875, line: 885, column: 9)
!1421 = distinct !DISubprogram(name: "insert<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, rustc_hash::FxBuildHasher, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtB14_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertB14_", scope: !710, file: !6099, line: 1332, type: !7167, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !4257, declaration: !7168, retainedNodes: !7171)
!1422 = distinct !DISubprogram(name: "insert<quinn_proto::StreamId, core::option::Option<quinn_proto::connection::streams::state::StreamRecv>, rustc_hash::FxBuildHasher, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtB14_10connection7streams5state10StreamRecvENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertB14_", scope: !708, file: !6099, line: 1332, type: !7174, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !4250, declaration: !7175, retainedNodes: !7178)
!1423 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner8capacityCshovLROGBtMy_11quinn_proto", scope: !32, file: !4317, line: 615, type: !6774, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1969, declaration: !6775, retainedNodes: !7181)
!1424 = distinct !DISubprogram(name: "capacity<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE8capacityBU_", scope: !621, file: !4317, line: 308, type: !6778, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3795, declaration: !6779, retainedNodes: !7183)
!1425 = distinct !DISubprogram(name: "capacity<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE8capacityBM_", scope: !622, file: !4290, line: 1436, type: !7186, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3795, declaration: !7187, retainedNodes: !7189)
!1426 = distinct !DISubprogram(name: "as_ptr<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE6as_ptrBM_", scope: !622, file: !4290, line: 1965, type: !7193, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3795, declaration: !7194, retainedNodes: !7195)
!1427 = distinct !DISubprogram(name: "len<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE3lenBM_", scope: !622, file: !4290, line: 3099, type: !7186, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3795, declaration: !7197, retainedNodes: !7198)
!1428 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCskKLDkoKarTP_4core4hint16assert_unchecked", scope: !6869, file: !6868, line: 202, type: !6871, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7200)
!1429 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, quinn_proto::connection::streams::state::StreamRecv>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEB19_", scope: !32, file: !4317, line: 610, type: !6782, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6786, declaration: !6787)
!1430 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, quinn_proto::connection::streams::state::StreamRecv>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEB14_", scope: !32, file: !4317, line: 605, type: !6789, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6786, declaration: !6790)
!1431 = distinct !DISubprogram(name: "ptr<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE3ptrBU_", scope: !621, file: !4317, line: 295, type: !6792, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3795, declaration: !6793)
!1432 = distinct !DISubprogram(name: "add<quinn_proto::connection::streams::state::StreamRecv>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecv3addBM_", scope: !4363, file: !4361, line: 838, type: !7203, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3368, retainedNodes: !7205)
!1433 = distinct !DISubprogram(name: "read<quinn_proto::connection::streams::state::StreamRecv>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEBE_", scope: !1959, file: !3596, line: 1717, type: !7208, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3368, retainedNodes: !7209)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1437, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !7218, templateParams: !6808, identifier: "b9bc180bd9af9862a27c2a5757a2d107")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1437, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !1871, templateParams: !6808, identifier: "4d02644d67fd7d74afc8e00abbf82eaa")
!1436 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1437, file: !1530, size: 8, align: 8, elements: !7216, templateParams: !1871, identifier: "856f0d6a57151364c4fc75d04181ed45", discriminator: !7219)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quinn_proto::Dir>", scope: !1861, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !7213, templateParams: !1871, identifier: "de8071e49550bc0f68304a2127c0555d")
!1438 = distinct !DISubprogram(name: "drop_glue<bytes::bytes::Bytes>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECshovLROGBtMy_11quinn_proto", scope: !1959, file: !3596, line: 848, type: !7223, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !2982, retainedNodes: !7224)
!1439 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs1_NtCsdIYt8sV98we_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop", scope: !7227, file: !7225, line: 682, type: !7223, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7228)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TypeId", scope: !7230, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !7235, templateParams: !1871, identifier: "cd8b920d299534075eb7c3f32699528b")
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1444, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !7250, templateParams: !3104, identifier: "496098fc2b53e0c1e882ebf80cc79744")
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1444, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !1871, templateParams: !3104, identifier: "716f8dd56ed6283db15e0d2b1847483d")
!1443 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1444, file: !1530, size: 8, align: 8, elements: !7248, templateParams: !1871, identifier: "3e1692194c258a458629d819f48370f4", discriminator: !7251)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<bool>", scope: !1861, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !7245, templateParams: !1871, identifier: "afae70d0b35094624d61f55a3f719955")
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControllerMetrics", scope: !2346, file: !1530, size: 320, align: 64, flags: DIFlagPublic, elements: !7267, templateParams: !1871, identifier: "930303fd370c3b264a38dd6b46ff4e89")
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::any::Any", file: !1530, align: 8, elements: !1871, identifier: "35d588274d692b393cf02f7dd794c1")
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc::boxed::Box<dyn core::any::Any, alloc::alloc::Global>", file: !1530, size: 128, align: 64, elements: !7272, templateParams: !1871, identifier: "8b6e76f9b908ae0c416ed3275d4783d0")
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3704, line: 290, column: 9)
!1449 = distinct !DISubprogram(name: "new<quinn_proto::congestion::cubic::Cubic>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicE3newBK_", scope: !7276, file: !3704, line: 288, type: !7278, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !4088, retainedNodes: !7281)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3704, line: 252, column: 9)
!1451 = distinct !DISubprogram(name: "box_new_uninit", linkageName: "_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit", scope: !3706, file: !3704, line: 250, type: !7284, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7286)
!1452 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate", scope: !3728, file: !3725, line: 540, type: !7289, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7291)
!1453 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global10alloc_impl", scope: !28, file: !3725, line: 423, type: !7294, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !7295, retainedNodes: !7298)
!1454 = distinct !DILexicalBlock(scope: !1461, file: !3725, line: 303, column: 66)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !1458, file: !1530, align: 8, flags: DIFlagPublic, elements: !7315, templateParams: !7316, identifier: "89e00445ecceb7c564087f4f75666742")
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !1458, file: !1530, align: 8, flags: DIFlagPublic, elements: !7318, templateParams: !7316, identifier: "3167919fa9f694e1cf285d06ccf437e9")
!1457 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1458, file: !1530, align: 8, elements: !7313, templateParams: !1871, identifier: "743d0dcda4f00f72f2678970a4b10f9c")
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<!, core::alloc::AllocError>", scope: !2195, file: !1530, align: 8, flags: DIFlagPublic, elements: !7310, templateParams: !1871, identifier: "f6b7583277cf88356722d7634b232e52")
!1459 = distinct !DILexicalBlock(scope: !1461, file: !3725, line: 303, column: 66)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3725, line: 303, column: 17)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3725, line: 302, column: 17)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3725, line: 301, column: 13)
!1463 = distinct !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime", scope: !28, file: !3725, line: 297, type: !7301, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !7302, retainedNodes: !7309)
!1464 = distinct !DISubprogram(name: "alloc", linkageName: "_RNvNtCsexYYUdYSQU6_5alloc5alloc5alloc", scope: !1954, file: !3725, line: 124, type: !7284, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7320)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1468, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !7329, templateParams: !4349, identifier: "ac6b55df1d1d2b844b213497620f4922")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1468, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !4349, identifier: "7cf0fd7536b00a8d3da972e366f45cf8")
!1467 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1468, file: !1530, size: 192, align: 64, elements: !7327, templateParams: !1871, identifier: "a22f7eb68d8d586932b487d3a0cf8cd1", discriminator: !7330)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ops::range::Range<u64>>", scope: !1861, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !7324, templateParams: !1871, identifier: "44db8c5394fbd90642d45b3b9ea21b5")
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1472, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !7340, templateParams: !4345, identifier: "e27f68168447e37496b411040547bfea")
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1472, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !4345, identifier: "8755bf1e33b0cd9c10137a82d49e7a0")
!1471 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1472, file: !1530, size: 64, align: 64, elements: !7338, templateParams: !1871, identifier: "d6696b504dc53079b8b373c7bd907266", discriminator: !7341)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&core::ops::range::Range<u64>>", scope: !1861, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !7335, templateParams: !1871, identifier: "6ef636c915204c70c2fff6a026d41c1f")
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&core::ops::range::Range<u64>)", file: !1530, size: 64, align: 64, elements: !7356, templateParams: !1871, identifier: "e05ab3449871b46eac6224bf70a4bd37")
!1474 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs1X_CseEeXhZwqjpo_16rustls_pki_typesNtB6_8UnixTimeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt", scope: !7358, file: !7357, line: 952, type: !7360, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !7363)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}<quinn_proto::token_memory_cache::CacheEntry>", scope: !7381, file: !1530, size: 64, align: 64, elements: !7383, templateParams: !1871, identifier: "7ebb8f5712a2b001fcedfa9c846eae9")
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::ops::range::Range<u32>, lru_slab::{impl#0}::insert::{closure_env#1}<quinn_proto::token_memory_cache::CacheEntry>>", scope: !4263, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !7380, templateParams: !7385, identifier: "8290187f6f051ef7feed10f0903998ca")
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1480, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !7377, templateParams: !7387, identifier: "8522e2b16e9f23816f3e26ffb500b707")
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1480, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !7387, identifier: "3adce6209cd97a2b9dad85d74ec2bfc1")
!1479 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1480, file: !1530, size: 128, align: 64, elements: !7375, templateParams: !1871, identifier: "4e1274c721c21ff61ff5d1522fd29143", discriminator: !7388)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::iter::adapters::map::Map<core::ops::range::Range<u32>, lru_slab::{impl#0}::insert::{closure_env#1}<quinn_proto::token_memory_cache::CacheEntry>>>", scope: !1861, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !7372, templateParams: !1871, identifier: "b159f7baa480ef0df12ad2d789935fcd")
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<quinn_proto::token_memory_cache::CacheEntry>", scope: !7381, file: !1530, align: 8, elements: !1871, identifier: "208cdff5f3de95485d8a9c26722a09b8")
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>>", scope: !1947, file: !1530, align: 8, flags: DIFlagPublic, elements: !1871, templateParams: !7404, identifier: "7440a6fb79eb56501e74b4b4c7e15d14")
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>>", scope: !1964, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !7407, templateParams: !7408, identifier: "1a1e655d7b7a35291cf47e267787b8a9")
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IterMut<lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>>", scope: !4337, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !7401, templateParams: !7408, identifier: "cf2e451cdbc764767c557e4aa344022a")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::slice::iter::IterMut<lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>>, lru_slab::{impl#0}::insert::{closure_env#0}<quinn_proto::token_memory_cache::CacheEntry>>", scope: !4263, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !7397, templateParams: !7411, identifier: "2e5aaa343476bb97b3eaac3355fb6247")
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1489, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !7394, templateParams: !7413, identifier: "e882596d62e5083a4286ca46c3d5b2b")
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1489, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !7413, identifier: "48507c78cbd0b59485982946ddb26c79")
!1488 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1489, file: !1530, size: 128, align: 64, elements: !7392, templateParams: !1871, identifier: "a1b4f22c87ce0fc380b5f56a17cdd369", discriminator: !7414)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::iter::adapters::map::Map<core::slice::iter::IterMut<lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>>, lru_slab::{impl#0}::insert::{closure_env#0}<quinn_proto::token_memory_cache::CacheEntry>>>", scope: !1861, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !7389, templateParams: !1871, identifier: "17daa35d8c72d4df80ae88df5376a8c3")
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Chain<core::iter::adapters::map::Map<core::slice::iter::IterMut<lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>>, lru_slab::{impl#0}::insert::{closure_env#0}<quinn_proto::token_memory_cache::CacheEntry>>, core::iter::adapters::map::Map<core::ops::range::Range<u32>, lru_slab::{impl#0}::insert::{closure_env#1}<quinn_proto::token_memory_cache::CacheEntry>>>", scope: !6887, file: !1530, size: 256, align: 64, flags: DIFlagPublic, elements: !7371, templateParams: !7417, identifier: "c0e244516d41584dbb6e13f5a0d1ca94")
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Borrowed", scope: !1494, file: !1530, size: 1216, align: 64, flags: DIFlagPublic, elements: !7430, templateParams: !1871, identifier: "96ba7cbe349b91e15dcab616b9d3bc1c")
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Owned", scope: !1494, file: !1530, size: 1216, align: 64, flags: DIFlagPublic, elements: !7432, templateParams: !1871, identifier: "9cb95ea6557c3e29e69cdbdccb88d8d3")
!1493 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1494, file: !1530, size: 1216, align: 64, elements: !7428, templateParams: !1871, identifier: "98691381a0ab885e49180db46ad15c88", discriminator: !7433)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CertRevocationList", scope: !1626, file: !1530, size: 1216, align: 64, flags: DIFlagPublic, elements: !7425, templateParams: !1871, identifier: "f8a1f7939d03335d5f39562da6efa19b")
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3704, line: 290, column: 9)
!1496 = distinct !DISubprogram(name: "new<quinn_proto::congestion::new_reno::NewReno>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoE3newBK_", scope: !7276, file: !3704, line: 288, type: !7440, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !4121, retainedNodes: !7443)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !1500, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !7457, templateParams: !7459, identifier: "83bea75888b794a17401d078d43c7e9")
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !1500, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !7461, templateParams: !7459, identifier: "4d2bb604e0a7bec3b8e7c2dfced17f97")
!1499 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1500, file: !1530, size: 192, align: 64, elements: !7455, templateParams: !1871, identifier: "c32b9a88d3dc9bf5789b156177b916e8", discriminator: !7462)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<std::sync::poison::mutex::MutexGuard<quinn_proto::token_memory_cache::State>, std::sync::poison::PoisonError<std::sync::poison::mutex::MutexGuard<quinn_proto::token_memory_cache::State>>>", scope: !2195, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !7452, templateParams: !1871, identifier: "cae1622a696982587d5d43cd28d06e5c")
!1501 = distinct !DISubprogram(name: "lock<quinn_proto::token_memory_cache::State>", linkageName: "_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache5StateE4lockB10_", scope: !424, file: !3916, line: 490, type: !7451, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3098, declaration: !7463, retainedNodes: !7464)
!1502 = distinct !DISubprogram(name: "new<quinn_proto::token_memory_cache::State>", linkageName: "_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache5StateE3newB16_", scope: !425, file: !3916, line: 719, type: !7451, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3098, declaration: !7466, retainedNodes: !7467)
!1503 = distinct !DISubprogram(name: "compare_exchange", linkageName: "_RNvMsQ_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicmE16compare_exchange", scope: !422, file: !3592, line: 3118, type: !6305, scopeLine: 3118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6317, retainedNodes: !7473)
!1504 = distinct !DISubprogram(name: "lock", linkageName: "_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4lock", scope: !423, file: !3928, line: 31, type: !3931, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6318, retainedNodes: !7475)
!1505 = distinct !DILexicalBlock(scope: !1507, file: !6614, line: 1232, column: 13)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !6614, line: 1231, column: 13)
!1507 = distinct !DISubprogram(name: "unwrap<std::sync::poison::mutex::MutexGuard<quinn_proto::token_memory_cache::State>, std::sync::poison::PoisonError<std::sync::poison::mutex::MutexGuard<quinn_proto::token_memory_cache::State>>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_", scope: !1500, file: !6614, line: 1226, type: !7478, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !7459, declaration: !7479, retainedNodes: !7482)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<(alloc::sync::Arc<str, alloc::alloc::Global>, u32)>", scope: !1964, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !7496, templateParams: !3078, identifier: "2f19abe132ffc3ebcf3dc4a5ab474b0c")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Bucket<(alloc::sync::Arc<str, alloc::alloc::Global>, u32)>", scope: !3072, file: !1530, size: 64, align: 64, flags: DIFlagProtected, elements: !7493, templateParams: !3078, identifier: "404456fb6e702007e9c20e6031d71c4d")
!1510 = distinct !DILexicalBlock(scope: !1511, file: !4272, line: 61, column: 21)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !4272, line: 59, column: 13)
!1512 = distinct !DISubprogram(name: "freshen<quinn_proto::token_memory_cache::CacheEntry>", linkageName: "_RNvMCs9JJQt12aL8S_8lru_slabINtB2_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE7freshenBH_", scope: !408, file: !6060, line: 182, type: !6063, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3060, declaration: !7501, retainedNodes: !7508)
!1513 = distinct !DISubprogram(name: "peek_mut<quinn_proto::token_memory_cache::CacheEntry>", linkageName: "_RNvMCs9JJQt12aL8S_8lru_slabINtB2_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE8peek_mutBH_", scope: !408, file: !6060, line: 148, type: !7510, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3060, declaration: !7511, retainedNodes: !7513)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1517, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !7522, templateParams: !7524, identifier: "500d58d84a91c5fe7a5988837a052885")
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1517, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !7524, identifier: "289ca61181d637cc3d68ba94009eb04b")
!1516 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !1517, file: !1530, size: 64, align: 64, elements: !7520, templateParams: !1871, identifier: "38ce6e192e81d834e30f6fdb9c7c2ba3", discriminator: !7525)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut quinn_proto::token_memory_cache::CacheEntry>", scope: !1861, file: !1530, size: 64, align: 64, flags: DIFlagPublic, elements: !7517, templateParams: !1871, identifier: "dc7efa1b6a4bead3631bd5368e6fcada")
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3455, line: 768, column: 13)
!1519 = distinct !DISubprogram(name: "as_mut<quinn_proto::token_memory_cache::CacheEntry>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE6as_mutBL_", scope: !405, file: !3455, line: 766, type: !7516, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3060, declaration: !7526, retainedNodes: !7528)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3455, line: 1015, column: 13)
!1521 = distinct !DISubprogram(name: "unwrap<&mut quinn_proto::token_memory_cache::CacheEntry>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionQNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE6unwrapBM_", scope: !1517, file: !3455, line: 1013, type: !7531, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !7524, declaration: !7532, retainedNodes: !7534)
!1522 = distinct !{null}
!1523 = !{i32 8, !"PIC Level", i32 2}
!1524 = !{i32 2, !"RtLibUseGOT", i32 1}
!1525 = !{i32 7, !"uwtable", i32 2}
!1526 = !{i32 7, !"Dwarf Version", i32 4}
!1527 = !{i32 2, !"Debug Info Version", i32 3}
!1528 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!1529 = !DIFile(filename: "quinn-proto/src/lib.rs/@/quinn_proto.ca9d529fb421aa30-cgu.14", directory: "/opt-bench/work/quinn-rs/quinn")
!1530 = !DIFile(filename: "<unknown>", directory: "")
!1531 = !DINamespace(name: "core", scope: null)
!1532 = !DINamespace(name: "io", scope: !1531)
!1533 = !DINamespace(name: "error", scope: !1532)
!1534 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!1535 = !DIEnumerator(name: "NotFound", value: 0, isUnsigned: true)
!1536 = !DIEnumerator(name: "PermissionDenied", value: 1, isUnsigned: true)
!1537 = !DIEnumerator(name: "ConnectionRefused", value: 2, isUnsigned: true)
!1538 = !DIEnumerator(name: "ConnectionReset", value: 3, isUnsigned: true)
!1539 = !DIEnumerator(name: "HostUnreachable", value: 4, isUnsigned: true)
!1540 = !DIEnumerator(name: "NetworkUnreachable", value: 5, isUnsigned: true)
!1541 = !DIEnumerator(name: "ConnectionAborted", value: 6, isUnsigned: true)
!1542 = !DIEnumerator(name: "NotConnected", value: 7, isUnsigned: true)
!1543 = !DIEnumerator(name: "AddrInUse", value: 8, isUnsigned: true)
!1544 = !DIEnumerator(name: "AddrNotAvailable", value: 9, isUnsigned: true)
!1545 = !DIEnumerator(name: "NetworkDown", value: 10, isUnsigned: true)
!1546 = !DIEnumerator(name: "BrokenPipe", value: 11, isUnsigned: true)
!1547 = !DIEnumerator(name: "AlreadyExists", value: 12, isUnsigned: true)
!1548 = !DIEnumerator(name: "WouldBlock", value: 13, isUnsigned: true)
!1549 = !DIEnumerator(name: "NotADirectory", value: 14, isUnsigned: true)
!1550 = !DIEnumerator(name: "IsADirectory", value: 15, isUnsigned: true)
!1551 = !DIEnumerator(name: "DirectoryNotEmpty", value: 16, isUnsigned: true)
!1552 = !DIEnumerator(name: "ReadOnlyFilesystem", value: 17, isUnsigned: true)
!1553 = !DIEnumerator(name: "FilesystemLoop", value: 18, isUnsigned: true)
!1554 = !DIEnumerator(name: "StaleNetworkFileHandle", value: 19, isUnsigned: true)
!1555 = !DIEnumerator(name: "InvalidInput", value: 20, isUnsigned: true)
!1556 = !DIEnumerator(name: "InvalidData", value: 21, isUnsigned: true)
!1557 = !DIEnumerator(name: "TimedOut", value: 22, isUnsigned: true)
!1558 = !DIEnumerator(name: "WriteZero", value: 23, isUnsigned: true)
!1559 = !DIEnumerator(name: "StorageFull", value: 24, isUnsigned: true)
!1560 = !DIEnumerator(name: "NotSeekable", value: 25, isUnsigned: true)
!1561 = !DIEnumerator(name: "QuotaExceeded", value: 26, isUnsigned: true)
!1562 = !DIEnumerator(name: "FileTooLarge", value: 27, isUnsigned: true)
!1563 = !DIEnumerator(name: "ResourceBusy", value: 28, isUnsigned: true)
!1564 = !DIEnumerator(name: "ExecutableFileBusy", value: 29, isUnsigned: true)
!1565 = !DIEnumerator(name: "Deadlock", value: 30, isUnsigned: true)
!1566 = !DIEnumerator(name: "CrossesDevices", value: 31, isUnsigned: true)
!1567 = !DIEnumerator(name: "TooManyLinks", value: 32, isUnsigned: true)
!1568 = !DIEnumerator(name: "InvalidFilename", value: 33, isUnsigned: true)
!1569 = !DIEnumerator(name: "ArgumentListTooLong", value: 34, isUnsigned: true)
!1570 = !DIEnumerator(name: "Interrupted", value: 35, isUnsigned: true)
!1571 = !DIEnumerator(name: "Unsupported", value: 36, isUnsigned: true)
!1572 = !DIEnumerator(name: "UnexpectedEof", value: 37, isUnsigned: true)
!1573 = !DIEnumerator(name: "OutOfMemory", value: 38, isUnsigned: true)
!1574 = !DIEnumerator(name: "InProgress", value: 39, isUnsigned: true)
!1575 = !DIEnumerator(name: "TooManyOpenFiles", value: 40, isUnsigned: true)
!1576 = !DIEnumerator(name: "InputOutputError", value: 41, isUnsigned: true)
!1577 = !DIEnumerator(name: "Other", value: 42, isUnsigned: true)
!1578 = !DIEnumerator(name: "Uncategorized", value: 43, isUnsigned: true)
!1579 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578}
!1580 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ErrorKind", scope: !1533, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagEnumClass, elements: !1579)
!1581 = !DINamespace(name: "ffi", scope: !1531)
!1582 = !DIEnumerator(name: "__variant1", value: 0, isUnsigned: true)
!1583 = !DIEnumerator(name: "__variant2", value: 1, isUnsigned: true)
!1584 = !{!1582, !1583}
!1585 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_void", scope: !1581, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagEnumClass, elements: !1584)
!1586 = !DINamespace(name: "sync", scope: !1531)
!1587 = !DINamespace(name: "atomic", scope: !1586)
!1588 = !DIEnumerator(name: "Relaxed", value: 0, isUnsigned: true)
!1589 = !DIEnumerator(name: "Release", value: 1, isUnsigned: true)
!1590 = !DIEnumerator(name: "Acquire", value: 2, isUnsigned: true)
!1591 = !DIEnumerator(name: "AcqRel", value: 3, isUnsigned: true)
!1592 = !DIEnumerator(name: "SeqCst", value: 4, isUnsigned: true)
!1593 = !{!1588, !1589, !1590, !1591, !1592}
!1594 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Ordering", scope: !1587, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagEnumClass, elements: !1593)
!1595 = !DINamespace(name: "ring", scope: null)
!1596 = !DINamespace(name: "digest", scope: !1595)
!1597 = !DIEnumerator(name: "_160", value: 20, isUnsigned: true)
!1598 = !DIEnumerator(name: "_256", value: 32, isUnsigned: true)
!1599 = !DIEnumerator(name: "_384", value: 48, isUnsigned: true)
!1600 = !DIEnumerator(name: "_512", value: 64, isUnsigned: true)
!1601 = !{!1597, !1598, !1599, !1600}
!1602 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "OutputLen", scope: !1596, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagEnumClass, elements: !1601)
!1603 = !DIEnumerator(name: "_1024", value: 128, isUnsigned: true)
!1604 = !{!1600, !1603}
!1605 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "BlockLen", scope: !1596, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagEnumClass, elements: !1604)
!1606 = !DIEnumerator(name: "SHA1", value: 0, isUnsigned: true)
!1607 = !DIEnumerator(name: "SHA256", value: 1, isUnsigned: true)
!1608 = !DIEnumerator(name: "SHA384", value: 2, isUnsigned: true)
!1609 = !DIEnumerator(name: "SHA512", value: 3, isUnsigned: true)
!1610 = !DIEnumerator(name: "SHA512_256", value: 4, isUnsigned: true)
!1611 = !{!1606, !1607, !1608, !1609, !1610}
!1612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AlgorithmID", scope: !1596, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagEnumClass, elements: !1611)
!1613 = !DINamespace(name: "panicking", scope: !1531)
!1614 = !DIEnumerator(name: "Eq", value: 0, isUnsigned: true)
!1615 = !DIEnumerator(name: "Ne", value: 1, isUnsigned: true)
!1616 = !DIEnumerator(name: "Match", value: 2, isUnsigned: true)
!1617 = !{!1614, !1615, !1616}
!1618 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AssertKind", scope: !1613, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagEnumClass, elements: !1617)
!1619 = !DINamespace(name: "quinn_proto", scope: null)
!1620 = !DIEnumerator(name: "Bi", value: 0, isUnsigned: true)
!1621 = !DIEnumerator(name: "Uni", value: 1, isUnsigned: true)
!1622 = !{!1620, !1621}
!1623 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Dir", scope: !1619, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagEnumClass, elements: !1622)
!1624 = !DINamespace(name: "webpki", scope: null)
!1625 = !DINamespace(name: "crl", scope: !1624)
!1626 = !DINamespace(name: "types", scope: !1625)
!1627 = !DIEnumerator(name: "Unspecified", value: 0, isUnsigned: true)
end_hunk_1
begin_hunk_2_@llvm.umax.i32
!6943 = !{!6942}
!6944 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1370, file: !1530, baseType: !1855, size: 64, align: 64, flags: DIFlagPrivate)
!6945 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1370, file: !1530, baseType: !1855, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!6946 = !{!6944, !6945}
!6947 = !DINamespace(name: "tag", scope: !5948)
!6948 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1372, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagProtected)
!6949 = !{!6948}
!6951 = !DIFile(filename: "src/control/bitmask.rs", directory: "/rust/deps/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "4bfe2da8b901544625d31611905e7d64")
!6952 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::control::bitmask::BitMaskIter", baseType: !1165, size: 64, align: 64, dwarfAddressSpace: 0)
!6953 = !DILocalVariable(name: "self", arg: 1, scope: !1378, file: !6951, line: 102, type: !6952)
!6954 = !DINamespace(name: "{impl#2}", scope: !5949)
!6955 = !{!725, !6952}
!6956 = !DISubroutineType(types: !6955)
!6957 = !DILocalVariable(name: "bit", scope: !1377, file: !6951, line: 103, type: !1855, align: 64)
!6958 = !DILocalVariable(name: "residual", scope: !1376, file: !6951, line: 103, type: !1145, align: 8)
!6959 = !DILocalVariable(name: "val", scope: !1375, file: !6951, line: 103, type: !1855, align: 64)
!6960 = !{!6953, !6957, !6958, !6959}
!6961 = !DILexicalBlockFile(scope: !1366, file: !6916, discriminator: 2)
!6962 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::raw::ProbeSeq", baseType: !1370, size: 64, align: 64, dwarfAddressSpace: 0)
!6963 = !DILocalVariable(name: "self", arg: 1, scope: !1379, file: !6916, line: 82, type: !6962)
!6964 = !{null, !6962, !1855}
!6965 = !DISubroutineType(types: !6964)
!6966 = !DISubprogram(name: "move_next", linkageName: "_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_8ProbeSeq9move_next", scope: !1370, file: !6916, line: 82, type: !6965, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!6967 = !DILocalVariable(name: "bucket_mask", arg: 2, scope: !1379, file: !6916, line: 82, type: !1855)
!6968 = !{!6963, !6967}
!6969 = !DILocalVariable(name: "self", arg: 1, scope: !1380, file: !6916, line: 2448, type: !6922)
!6970 = !{!1370, !6922, !1652}
!6971 = !DISubroutineType(types: !6970)
!6972 = !DISubprogram(name: "probe_seq", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner9probe_seq", scope: !411, file: !6916, line: 2448, type: !6971, scopeLine: 2448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!6973 = !DILocalVariable(name: "hash", arg: 2, scope: !1380, file: !6916, line: 2448, type: !1652)
!6974 = !{!6969, !6973}
!6975 = !DILocalVariable(name: "self", arg: 1, scope: !1381, file: !6916, line: 2621, type: !6922)
!6976 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut hashbrown::control::tag::Tag", baseType: !1372, size: 64, align: 64, dwarfAddressSpace: 0)
!6977 = !{!6976, !6922, !1855}
!6978 = !DISubroutineType(types: !6977)
!6979 = !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !411, file: !6916, line: 2621, type: !6978, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!6980 = !DILocalVariable(name: "index", arg: 2, scope: !1381, file: !6916, line: 2621, type: !1855)
!6981 = !{!6975, !6980}
!6982 = !DIFile(filename: "src/control/tag.rs", directory: "/rust/deps/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "29b020448e8b8abbc21013f051b65e9a")
!6983 = !DILocalVariable(name: "hash", arg: 1, scope: !1382, file: !6982, line: 35, type: !1652)
!6984 = !{!1372, !1652}
!6985 = !DISubroutineType(types: !6984)
!6986 = !DISubprogram(name: "full", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB2_3Tag4full", scope: !1372, file: !6982, line: 35, type: !6985, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!6987 = !{!6983}
!6988 = !DIFile(filename: "src/control/group/sse2.rs", directory: "/rust/deps/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "2929934c6ce36f6fa8d33fef84d89a6d")
!6989 = !DILocalVariable(name: "tag", scope: !1385, file: !6988, line: 73, type: !1372, align: 8)
!6990 = !{!1164, !1368, !1372}
!6991 = !DISubroutineType(types: !6990)
!6992 = !DISubprogram(name: "match_tag", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group9match_tag", scope: !1368, file: !6988, line: 73, type: !6991, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!6993 = !DILocalVariable(name: "self", scope: !1385, file: !6988, line: 73, type: !1368, align: 128)
!6994 = !DILocalVariable(name: "cmp", scope: !1384, file: !6988, line: 83, type: !1367, align: 128)
!6995 = !DILocalVariable(name: "cmp", scope: !1383, file: !6988, line: 83, type: !1367, align: 128)
!6996 = !{!6993, !6989, !6994, !6995}
!6997 = !{!1164, !1368}
!6998 = !DISubroutineType(types: !6997)
!6999 = !DISubprogram(name: "match_empty", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group11match_empty", scope: !1368, file: !6988, line: 91, type: !6998, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7000 = !DILocalVariable(name: "self", scope: !1386, file: !6988, line: 91, type: !1368, align: 128)
!7001 = !{!7000}
!7003 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const hashbrown::control::tag::Tag", baseType: !1372, size: 64, align: 64, dwarfAddressSpace: 0)
!7004 = !DILocalVariable(name: "ptr", arg: 1, scope: !1388, file: !6988, line: 48, type: !7003)
!7005 = !{!1368, !7003}
!7006 = !DISubroutineType(types: !7005)
!7007 = !DISubprogram(name: "load", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group4load", scope: !1368, file: !6988, line: 48, type: !7006, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7008 = !{!7004}
!7009 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/sse2.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "a89287f283068e28d0b36d471913228b")
!7010 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::core_arch::x86::__m128i", baseType: !1367, size: 64, align: 64, dwarfAddressSpace: 0)
!7011 = !DILocalVariable(name: "mem_addr", arg: 1, scope: !1390, file: !7009, line: 1339, type: !7010)
!7012 = !DINamespace(name: "sse2", scope: !6940)
!7013 = !{!1367, !7010}
!7014 = !DISubroutineType(types: !7013)
!7015 = !DILocalVariable(name: "dst", scope: !1389, file: !7009, line: 1340, type: !1367, align: 128)
!7016 = !{!7011, !7015}
!7017 = !DILocalVariable(name: "src", arg: 1, scope: !1391, file: !3596, line: 553, type: !1965)
!7018 = !DILocalVariable(name: "dst", arg: 2, scope: !1391, file: !3596, line: 553, type: !3982)
!7019 = !DILocalVariable(name: "count", arg: 3, scope: !1391, file: !3596, line: 553, type: !1855)
!7020 = !{!7017, !7018, !7019}
!7021 = !DILocalVariable(name: "a", arg: 1, scope: !1392, file: !7009, line: 919, type: !1367)
!7022 = !{!1367, !1367, !1367}
!7023 = !DISubroutineType(cc: DW_CC_nocall, types: !7022)
!7024 = !DILocalVariable(name: "b", arg: 2, scope: !1392, file: !7009, line: 919, type: !1367)
!7025 = !{!7021, !7024}
!7026 = !DILocalVariable(name: "a", arg: 1, scope: !1396, file: !7009, line: 1566, type: !1367)
!7027 = !{!3405, !1367}
!7028 = !DISubroutineType(cc: DW_CC_nocall, types: !7027)
!7029 = !DILocalVariable(name: "z", scope: !1395, file: !7009, line: 1568, type: !1394, align: 128)
!7030 = !DILocalVariable(name: "m", scope: !1393, file: !7009, line: 1569, type: !1394, align: 128)
!7031 = !{!7026, !7029, !7030}
!7032 = !DINamespace(name: "simd", scope: !6939)
!7033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1644, size: 128, align: 8, elements: !2208)
!7034 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1394, file: !1530, baseType: !7033, size: 128, align: 8, flags: DIFlagPrivate)
!7035 = !{!7034}
!7036 = !DITemplateTypeParameter(name: "T", type: !1644)
!7037 = !{!7036}
!7039 = !DILocalVariable(name: "self", scope: !1400, file: !6951, line: 39, type: !1164, align: 16)
!7040 = !{!725, !1164}
!7041 = !DISubroutineType(types: !7040)
!7042 = !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !1164, file: !6951, line: 39, type: !7041, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7043 = !DILocalVariable(name: "nonzero", scope: !1399, file: !6951, line: 40, type: !1398, align: 16)
!7044 = !{!7039, !7043}
!7045 = !DINamespace(name: "nonzero", scope: !1955)
!7046 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1398, file: !1530, baseType: !1397, size: 16, align: 16, flags: DIFlagPrivate)
!7047 = !{!7046}
!7048 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1397, file: !1530, baseType: !2043, size: 16, align: 16, flags: DIFlagPrivate)
!7049 = !{!7048}
!7050 = !DILocalVariable(name: "nonzero", arg: 1, scope: !1402, file: !6951, line: 64, type: !1398)
!7051 = !{!1855, !1398}
!7052 = !DISubroutineType(types: !7051)
!7053 = !DISubprogram(name: "nonzero_trailing_zeros", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask22nonzero_trailing_zeros", scope: !1164, file: !6951, line: 64, type: !7052, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7054 = !DILocalVariable(name: "swapped", scope: !1401, file: !6951, line: 67, type: !1398, align: 16)
!7055 = !{!7050, !7054}
!7056 = !DIFile(filename: "library/core/src/num/nonzero.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "9f2faea11e0227f402ea1f4bd08ebc40")
!7057 = !DILocalVariable(name: "self", arg: 1, scope: !1403, file: !7056, line: 625, type: !1398)
!7058 = !{!2247, !1398}
!7059 = !DISubroutineType(types: !7058)
!7060 = !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMsN_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE14trailing_zeros", scope: !1398, file: !7056, line: 625, type: !7059, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7061 = !{!7057}
!7062 = !DILocalVariable(name: "self", arg: 1, scope: !1404, file: !7056, line: 467, type: !1398)
!7063 = !{!2043, !1398}
!7064 = !DISubroutineType(types: !7063)
!7065 = !DISubprogram(name: "get<u16>", linkageName: "_RNvMse_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE3getCshovLROGBtMy_11quinn_proto", scope: !1398, file: !7056, line: 467, type: !7064, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2083)
!7066 = !DILocalVariable(name: "self", scope: !1404, file: !7056, line: 467, type: !1398, align: 16)
!7067 = !{!7066, !7062}
!7068 = !DILocalVariable(name: "self", scope: !1405, file: !6951, line: 27, type: !1164, align: 16)
!7069 = !{!1164, !1164}
!7070 = !DISubroutineType(types: !7069)
!7071 = !DISubprogram(name: "remove_lowest_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask17remove_lowest_bit", scope: !1164, file: !6951, line: 27, type: !7070, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7072 = !{!7068}
!7076 = !DILocalVariable(name: "b", arg: 1, scope: !1406, file: !6299, line: 459, type: !2412)
!7077 = !{!7076}
!7080 = !{!484, !6582, !377}
!7081 = !DISubroutineType(types: !7080)
!7082 = !DISubprogram(name: "max_send_data", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState13max_send_data", scope: !711, file: !2875, line: 950, type: !7081, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7085 = !{!1263, !1259, !1407}
!7086 = !DISubroutineType(types: !7085)
!7087 = !DINamespace(name: "get_or_insert_send", scope: !2871)
!7088 = !DIDerivedType(tag: DW_TAG_member, name: "max_data", scope: !1407, file: !1530, baseType: !484, size: 64, align: 64)
!7089 = !{!7088}
!7090 = !DITemplateTypeParameter(name: "F", type: !1407)
!7091 = !{!6373, !6388, !7090}
!7092 = !DISubprogram(name: "map<&mut core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, &mut alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>, quinn_proto::connection::streams::state::get_or_insert_send::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQIBw_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEE3mapQBN_NCNvNtB1q_5state18get_or_insert_send0EB1u_", scope: !1259, file: !3455, line: 1160, type: !7086, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7091)
!7093 = !DILocalVariable(arg: 1, scope: !1409, file: !3593, line: 250, type: !1407)
!7094 = !{!3657, !1407, !3652}
!7095 = !DISubroutineType(types: !7094)
!7096 = !DILocalVariable(arg: 2, scope: !1409, file: !3593, line: 250, type: !1408)
!7097 = !{!7093, !7096}
!7098 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1408, file: !1530, baseType: !3652, size: 64, align: 64)
!7099 = !{!7098}
!7100 = !DITemplateTypeParameter(name: "Self", type: !1407)
!7101 = !DITemplateTypeParameter(name: "Args", type: !1408)
!7102 = !{!7100, !7101}
!7103 = !DILocalVariable(name: "max_data", scope: !1410, file: !2875, line: 964, type: !484, align: 64)
!7104 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&quinn_proto::connection::streams::state::get_or_insert_send::{closure_env#0}", baseType: !1407, size: 64, align: 64, dwarfAddressSpace: 0)
!7105 = !{!3657, !7104, !3652}
!7106 = !DISubroutineType(cc: DW_CC_nocall, types: !7105)
!7107 = !DILocalVariable(name: "opt", arg: 2, scope: !1410, file: !2875, line: 966, type: !3652)
!7108 = !{!7107, !7103}
!7109 = !DILocalVariable(name: "self", arg: 1, scope: !1412, file: !3455, line: 1807, type: !3652)
!7110 = !{!3657, !3652, !1411}
!7111 = !DISubroutineType(cc: DW_CC_nocall, types: !7110)
!7112 = !DINamespace(name: "{closure#0}", scope: !7087)
!7113 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__max_data", scope: !1411, file: !1530, baseType: !6895, size: 64, align: 64)
!7114 = !{!7113}
!7115 = !DISubroutineType(types: !7110)
!7116 = !DITemplateTypeParameter(name: "F", type: !1411)
!7117 = !{!3436, !7116}
!7118 = !DISubprogram(name: "get_or_insert_with<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>, quinn_proto::connection::streams::state::get_or_insert_send::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEE18get_or_insert_withNCNCNvNtB1l_5state18get_or_insert_send00EB1p_", scope: !523, file: !3455, line: 1807, type: !7115, scopeLine: 1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7117)
!7119 = !DILocalVariable(name: "f", arg: 2, scope: !1412, file: !3455, line: 1807, type: !1411)
!7120 = !{!7109, !7119}
!7121 = !DILocalVariable(name: "self", arg: 1, scope: !1413, file: !3455, line: 1962, type: !3652)
!7122 = !{!523, !3652, !3398}
!7123 = !DISubroutineType(types: !7122)
!7124 = !DISubprogram(name: "replace<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEE7replaceB1o_", scope: !523, file: !3455, line: 1962, type: !7123, scopeLine: 1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3437)
!7125 = !DILocalVariable(name: "value", arg: 2, scope: !1413, file: !3455, line: 1962, type: !3398)
!7126 = !{!7121, !7125}
!7127 = !DILocalVariable(name: "dest", arg: 1, scope: !1414, file: !6071, line: 961, type: !3652)
!7128 = !{!523, !3652, !523}
!7129 = !DISubroutineType(types: !7128)
!7130 = !{!7127}
!7131 = !DILocalVariable(name: "max_data", scope: !1415, file: !2875, line: 964, type: !484, align: 64)
!7132 = !{!3398, !1411}
!7133 = !DISubroutineType(cc: DW_CC_nocall, types: !7132)
!7134 = !{!7131}
!7135 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut quinn_proto::StreamId", baseType: !377, size: 64, align: 64, dwarfAddressSpace: 0)
!7136 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<quinn_proto::StreamId, alloc::alloc::Global>", baseType: !616, size: 64, align: 64, dwarfAddressSpace: 0)
!7137 = !{!1855, !7136}
!7138 = !DISubroutineType(types: !7137)
!7139 = !DISubprogram(name: "capacity<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCshovLROGBtMy_11quinn_proto8StreamIdE8capacityBO_", scope: !616, file: !4317, line: 308, type: !7138, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3774)
!7140 = !{!1416, !6772}
!7141 = !DISubroutineType(types: !7140)
!7142 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const quinn_proto::StreamId", baseType: !377, size: 64, align: 64, dwarfAddressSpace: 0)
!7143 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1416, file: !1530, baseType: !7142, size: 64, align: 64, flags: DIFlagPrivate)
!7144 = !{!7143}
!7145 = !{!1968, !3772}
!7146 = !DISubprogram(name: "non_null<alloc::alloc::Global, quinn_proto::StreamId>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtCshovLROGBtMy_11quinn_proto8StreamIdEB13_", scope: !32, file: !4317, line: 610, type: !7141, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7145)
!7147 = !{!7135, !6772}
!7148 = !DISubroutineType(types: !7147)
!7149 = !DISubprogram(name: "ptr<alloc::alloc::Global, quinn_proto::StreamId>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrNtCshovLROGBtMy_11quinn_proto8StreamIdEBY_", scope: !32, file: !4317, line: 605, type: !7148, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7145)
!7150 = !{!7135, !7136}
!7151 = !DISubroutineType(types: !7150)
!7152 = !DISubprogram(name: "ptr<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCshovLROGBtMy_11quinn_proto8StreamIdE3ptrBO_", scope: !616, file: !4317, line: 295, type: !7151, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3774)
!7153 = !{!501, !3786}
!7154 = !DISubroutineType(types: !7153)
!7155 = !DISubprogram(name: "pop<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE3popBM_", scope: !622, file: !4290, line: 2871, type: !7154, scopeLine: 2871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3795)
!7156 = !DILocalVariable(name: "self", arg: 1, scope: !1417, file: !4290, line: 2871, type: !3786)
!7157 = !{!7156}
!7158 = !DISubprogram(name: "insert", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert", scope: !711, file: !2875, line: 884, type: !6744, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7159 = !DILocalVariable(name: "self", arg: 1, scope: !1419, file: !2875, line: 884, type: !4202)
!7160 = !DILocalVariable(name: "remote", arg: 2, scope: !1419, file: !2875, line: 884, type: !2412)
!7161 = !DILocalVariable(name: "id", arg: 3, scope: !1419, file: !2875, line: 884, type: !377)
!7162 = !DILocalVariable(name: "bi", scope: !1420, file: !2875, line: 885, type: !2412, align: 8)
!7163 = !DILocalVariable(name: "recv", scope: !1418, file: !2875, line: 892, type: !501, align: 64)
!7164 = !{!7159, !7160, !7161, !7162, !7163}
!7165 = !DILocalVariable(name: "k", arg: 2, scope: !1421, file: !6099, line: 1332, type: !377)
!7166 = !{!580, !4258, !377, !523}
!7167 = !DISubroutineType(types: !7166)
!7168 = !DISubprogram(name: "insert<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, rustc_hash::FxBuildHasher, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtB14_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertB14_", scope: !710, file: !6099, line: 1332, type: !7167, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4257)
!7169 = !DILocalVariable(name: "self", arg: 1, scope: !1421, file: !6099, line: 1332, type: !4258)
!7170 = !DILocalVariable(name: "v", scope: !1421, file: !6099, line: 1332, type: !523, align: 64)
!7171 = !{!7169, !7165, !7170}
!7172 = !DILocalVariable(name: "k", arg: 2, scope: !1422, file: !6099, line: 1332, type: !377)
!7173 = !{!585, !4260, !377, !501}
!7174 = !DISubroutineType(types: !7173)
!7175 = !DISubprogram(name: "insert<quinn_proto::StreamId, core::option::Option<quinn_proto::connection::streams::state::StreamRecv>, rustc_hash::FxBuildHasher, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtB14_10connection7streams5state10StreamRecvENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertB14_", scope: !708, file: !6099, line: 1332, type: !7174, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4250)
!7176 = !DILocalVariable(name: "self", arg: 1, scope: !1422, file: !6099, line: 1332, type: !4260)
!7177 = !DILocalVariable(name: "v", arg: 3, scope: !1422, file: !6099, line: 1332, type: !501)
!7178 = !{!7176, !7172, !7177}
!7179 = !DILocalVariable(name: "elem_size", scope: !1423, file: !4317, line: 615, type: !1855, align: 64)
!7180 = !DILocalVariable(name: "self", arg: 1, scope: !1423, file: !4317, line: 615, type: !6772)
!7181 = !{!7180, !7179}
!7182 = !DILocalVariable(name: "self", arg: 1, scope: !1424, file: !4317, line: 308, type: !6776)
!7183 = !{!7182}
!7184 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", baseType: !622, size: 64, align: 64, dwarfAddressSpace: 0)
!7185 = !{!1855, !7184}
!7186 = !DISubroutineType(types: !7185)
!7187 = !DISubprogram(name: "capacity<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE8capacityBM_", scope: !622, file: !4290, line: 1436, type: !7186, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3795)
!7188 = !DILocalVariable(name: "self", arg: 1, scope: !1425, file: !4290, line: 1436, type: !3786)
!7189 = !{!7188}
!7191 = !DILocalVariable(name: "self", arg: 1, scope: !1426, file: !4290, line: 1965, type: !3786)
!7192 = !{!6783, !7184}
!7193 = !DISubroutineType(types: !7192)
!7194 = !DISubprogram(name: "as_ptr<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE6as_ptrBM_", scope: !622, file: !4290, line: 1965, type: !7193, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3795)
!7195 = !{!7191}
!7196 = !DILocalVariable(name: "self", arg: 1, scope: !1427, file: !4290, line: 3099, type: !3786)
!7197 = !DISubprogram(name: "len<quinn_proto::connection::streams::state::StreamRecv, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvE3lenBM_", scope: !622, file: !4290, line: 3099, type: !7186, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3795)
!7198 = !{!7196}
!7199 = !DILocalVariable(name: "cond", arg: 1, scope: !1428, file: !6868, line: 202, type: !2412)
!7200 = !{!7199}
!7201 = !DILocalVariable(name: "self", arg: 1, scope: !1432, file: !4361, line: 838, type: !6783)
!7202 = !{!6783, !6783, !1855, !3566}
!7203 = !DISubroutineType(types: !7202)
!7204 = !DILocalVariable(name: "count", arg: 2, scope: !1432, file: !4361, line: 838, type: !1855)
!7205 = !{!7201, !7204}
!7206 = !DILocalVariable(name: "src", arg: 1, scope: !1433, file: !3596, line: 1717, type: !6783)
!7207 = !{!497, !6783, !3566}
!7208 = !DISubroutineType(types: !7207)
!7209 = !{!7206}
!7210 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!7211 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::Iter<quinn_proto::Dir>", baseType: !1353, size: 64, align: 64, dwarfAddressSpace: 0)
!7212 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<quinn_proto::Dir>>", baseType: !1354, size: 64, align: 64, dwarfAddressSpace: 0)
!7213 = !{!1436}
!7214 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1436, file: !1530, baseType: !1435, size: 8, align: 8, extraData: i8 2)
!7215 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1436, file: !1530, baseType: !1434, size: 8, align: 8)
!7216 = !{!7214, !7215}
!7217 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1434, file: !1530, baseType: !1623, size: 8, align: 8, flags: DIFlagPublic)
!7218 = !{!7217}
!7219 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagArtificial)
!7220 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut bytes::bytes::Bytes", baseType: !391, size: 64, align: 64, dwarfAddressSpace: 0)
!7221 = !DILocalVariable(arg: 1, scope: !1438, file: !3596, line: 848, type: !7220)
!7222 = !{null, !7220}
!7223 = !DISubroutineType(types: !7222)
!7224 = !{!7221}
!7225 = !DIFile(filename: "src/bytes.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.11.1", checksumkind: CSK_MD5, checksum: "c804ad2dc45cb3753ebf24ea8c58963b")
!7226 = !DILocalVariable(name: "self", arg: 1, scope: !1439, file: !7225, line: 682, type: !7220)
!7227 = !DINamespace(name: "{impl#3}", scope: !2984)
!7228 = !{!7226}
!7229 = !DIFile(filename: "library/core/src/any.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "753c1cc828856d6f55702964457a348b")
!7230 = !DINamespace(name: "any", scope: !1531)
!7231 = !DINamespace(name: "{impl#0}", scope: !7230)
!7232 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&quinn_proto::congestion::cubic::Cubic", baseType: !313, size: 64, align: 64, dwarfAddressSpace: 0)
!7233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1853, size: 128, align: 64, elements: !4210)
!7234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1440, file: !1530, baseType: !7233, size: 128, align: 64, flags: DIFlagProtected)
!7235 = !{!7234}
!7236 = !{!1440}
!7237 = !DISubroutineType(types: !7236)
!7238 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&quinn_proto::congestion::new_reno::NewReno", baseType: !151, size: 64, align: 64, dwarfAddressSpace: 0)
!7239 = !DIFile(filename: "quinn-proto/src/congestion/cubic.rs", directory: "/opt-bench/work/quinn-rs/quinn", checksumkind: CSK_MD5, checksum: "7a65df9fecc7127589ae5382c7eb6e38")
!7240 = !DINamespace(name: "{impl#2}", scope: !2745)
!7241 = !{!1652, !7232}
!7242 = !DISubroutineType(types: !7241)
!7243 = !DISubprogram(name: "minimum_window", linkageName: "_RNvMs_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB4_5Cubic14minimum_window", scope: !313, file: !7239, line: 88, type: !7242, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7244 = !DINamespace(name: "{impl#35}", scope: !2373)
!7245 = !{!1443}
!7246 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1443, file: !1530, baseType: !1442, size: 8, align: 8, extraData: i8 2)
!7247 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1443, file: !1530, baseType: !1441, size: 8, align: 8)
!7248 = !{!7246, !7247}
!7249 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1441, file: !1530, baseType: !2412, size: 8, align: 8, flags: DIFlagPublic)
!7250 = !{!7249}
!7251 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagArtificial)
!7252 = !DITemplateTypeParameter(name: "U", type: !2412)
!7253 = !DISubroutineType(types: !5859)
!7254 = !DISubroutineType(types: !5865)
!7255 = !DISubroutineType(types: !5886)
!7256 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&quinn_proto::congestion::cubic::State", baseType: !303, size: 64, align: 64, dwarfAddressSpace: 0)
!7257 = !DIFile(filename: "library/std/src/num/f64.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "90285b65697b7aee488f33478ad168a5")
!7258 = !DINamespace(name: "f64", scope: !2355)
!7259 = !DINamespace(name: "{impl#0}", scope: !7258)
!7260 = !DIFile(filename: "library/core/src/num/f64.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "d0532e744f3e3ddd23b6447ee735eeeb")
!7261 = !DINamespace(name: "f64", scope: !1531)
!7262 = !DINamespace(name: "math", scope: !7261)
!7263 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&quinn_proto::connection::paths::RttEstimator", baseType: !1023, size: 64, align: 64, dwarfAddressSpace: 0)
!7264 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_window", scope: !1445, file: !1530, baseType: !1652, size: 64, align: 64, offset: 256, flags: DIFlagPublic)
!7265 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !1445, file: !1530, baseType: !489, size: 128, align: 64, flags: DIFlagPublic)
!7266 = !DIDerivedType(tag: DW_TAG_member, name: "pacing_rate", scope: !1445, file: !1530, baseType: !489, size: 128, align: 64, offset: 128, flags: DIFlagPublic)
!7267 = !{!7264, !7265, !7266}
!7268 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<quinn_proto::congestion::cubic::Cubic, alloc::alloc::Global>", baseType: !313, size: 64, align: 64, dwarfAddressSpace: 0)
!7269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64, align: 64, dwarfAddressSpace: 0)
!7270 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1447, file: !1530, baseType: !7269, size: 64, align: 64)
!7271 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1447, file: !1530, baseType: !5173, size: 64, align: 64, offset: 64)
!7272 = !{!7270, !7271}
!7273 = !DISubprogram(name: "fetch_add", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !146, file: !3592, line: 3223, type: !4059, scopeLine: 3223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7274 = !DINamespace(name: "{impl#32}", scope: !2373)
!7275 = !DILocalVariable(name: "x", arg: 1, scope: !1449, file: !3704, line: 288, type: !313)
!7276 = !DINamespace(name: "{impl#0}", scope: !3706)
!7277 = !{!7268, !313}
!7278 = !DISubroutineType(types: !7277)
!7279 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut quinn_proto::congestion::cubic::Cubic", baseType: !313, size: 64, align: 64, dwarfAddressSpace: 0)
!7280 = !DILocalVariable(name: "ptr", scope: !1448, file: !3704, line: 290, type: !7279, align: 64)
!7281 = !{!7275, !7280}
!7282 = !DILocalVariable(name: "layout", arg: 1, scope: !1451, file: !3704, line: 250, type: !600)
!7283 = !{!3982, !600}
!7284 = !DISubroutineType(types: !7283)
!7285 = !DILocalVariable(name: "ptr", scope: !1450, file: !3704, line: 252, type: !716, align: 64)
!7286 = !{!7282, !7285}
!7287 = !DILocalVariable(name: "layout", arg: 2, scope: !1452, file: !3725, line: 540, type: !600)
!7288 = !{!721, !3726, !600}
!7289 = !DISubroutineType(types: !7288)
!7290 = !DILocalVariable(name: "self", scope: !1452, file: !3725, line: 540, type: !3726, align: 64)
!7291 = !{!7290, !7287}
!7292 = !DILocalVariable(name: "layout", arg: 2, scope: !1453, file: !3725, line: 423, type: !600)
!7293 = !{!721, !3726, !600, !2412}
!7294 = !DISubroutineType(types: !7293)
!7295 = !DISubprogram(name: "alloc_impl", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global10alloc_impl", scope: !28, file: !3725, line: 423, type: !7294, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7296 = !DILocalVariable(name: "self", scope: !1453, file: !3725, line: 423, type: !3726, align: 64)
!7297 = !DILocalVariable(name: "zeroed", scope: !1453, file: !3725, line: 423, type: !2412, align: 8)
!7298 = !{!7296, !7292, !7297}
!7299 = !DILocalVariable(name: "layout", arg: 1, scope: !1463, file: !3725, line: 297, type: !600)
!7300 = !{!721, !600, !2412}
!7301 = !DISubroutineType(types: !7300)
!7302 = !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime", scope: !28, file: !3725, line: 297, type: !7301, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!7303 = !DILocalVariable(name: "zeroed", arg: 2, scope: !1463, file: !3725, line: 297, type: !2412)
!7304 = !DILocalVariable(name: "size", scope: !1462, file: !3725, line: 301, type: !1855, align: 64)
!7305 = !DILocalVariable(name: "raw_ptr", scope: !1461, file: !3725, line: 302, type: !3982, align: 64)
!7306 = !DILocalVariable(name: "ptr", scope: !1460, file: !3725, line: 303, type: !30, align: 64)
!7307 = !DILocalVariable(name: "residual", scope: !1459, file: !3725, line: 303, type: !1458, align: 8)
!7308 = !DILocalVariable(name: "val", scope: !1454, file: !3725, line: 303, type: !30, align: 64)
!7309 = !{!7299, !7303, !7304, !7305, !7306, !7307, !7308}
!7310 = !{!1457}
!7311 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !1457, file: !1530, baseType: !1456, align: 8)
!7312 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !1457, file: !1530, baseType: !1455, align: 8)
!7313 = !{!7311, !7312}
!7314 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1455, file: !1530, baseType: !717, align: 8, flags: DIFlagPublic)
!7315 = !{!7314}
!7316 = !{!3591, !4285}
!7317 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1456, file: !1530, baseType: !3590, align: 8, flags: DIFlagPublic)
!7318 = !{!7317}
!7319 = !DILocalVariable(name: "layout", arg: 1, scope: !1464, file: !3725, line: 124, type: !600)
!7320 = !{!7319}
!7321 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<core::ops::range::Range<u64>>>", baseType: !730, size: 64, align: 64, dwarfAddressSpace: 0)
!7322 = !{!1468, !7321}
!7323 = !DISubroutineType(types: !7322)
!7324 = !{!1467}
!7325 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1467, file: !1530, baseType: !1466, size: 192, align: 64, extraData: i64 0)
!7326 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1467, file: !1530, baseType: !1465, size: 192, align: 64, extraData: i64 1)
!7327 = !{!7325, !7326}
!7328 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1465, file: !1530, baseType: !638, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!7329 = !{!7328}
!7330 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1530, baseType: !1652, size: 64, align: 64, flags: DIFlagArtificial)
!7331 = !{!4350, !4348}
!7332 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::Iter<core::ops::range::Range<u64>>", baseType: !729, size: 64, align: 64, dwarfAddressSpace: 0)
!7333 = !{!1472, !7332}
!7334 = !DISubroutineType(types: !7333)
!7335 = !{!1471}
!7336 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1471, file: !1530, baseType: !1470, size: 64, align: 64, extraData: i64 0)
!7337 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1471, file: !1530, baseType: !1469, size: 64, align: 64)
!7338 = !{!7336, !7337}
!7339 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1469, file: !1530, baseType: !4343, size: 64, align: 64, flags: DIFlagPublic)
!7340 = !{!7339}
!7341 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1530, baseType: !1652, size: 64, align: 64, flags: DIFlagArtificial)
!7342 = !{!1468, !1472}
!7343 = !DISubroutineType(types: !7342)
!7344 = !DISubprogram(name: "cloned<core::ops::range::Range<u64>>", linkageName: "_RNvMs1_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRINtNtNtB7_3ops5range5RangeyEE6clonedCshovLROGBtMy_11quinn_proto", scope: !1472, file: !3455, line: 2162, type: !7343, scopeLine: 2162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4349)
!7345 = !{!1468, !1472, !4355}
!7346 = !DISubroutineType(types: !7345)
!7347 = !DITemplateTypeParameter(name: "U", type: !638)
!7348 = !{!4344, !7347, !4356}
!7349 = !DISubprogram(name: "map<&core::ops::range::Range<u64>, core::ops::range::Range<u64>, fn(&core::ops::range::Range<u64>) -> core::ops::range::Range<u64>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangeyEE3mapBJ_NvYBJ_NtNtB5_5clone5Clone5cloneECshovLROGBtMy_11quinn_proto", scope: !1472, file: !3455, line: 1160, type: !7346, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7348)
!7350 = !{!638, !4355, !4343}
!7351 = !DISubroutineType(types: !7350)
!7352 = !DITemplateTypeParameter(name: "Self", type: !4355)
!7353 = !DITemplateTypeParameter(name: "Args", type: !1473)
!7354 = !{!7352, !7353}
!7355 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1473, file: !1530, baseType: !4343, size: 64, align: 64)
!7356 = !{!7355}
!7357 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rustls-pki-types-1.14.1", checksumkind: CSK_MD5, checksum: "0193d372ec7ee211f2dbefdc1f07ff09")
!7358 = !DINamespace(name: "{impl#123}", scope: !1868)
!7359 = !{!441, !2496, !3147}
!7360 = !DISubroutineType(types: !7359)
!7361 = !DILocalVariable(name: "self", arg: 1, scope: !1474, file: !7357, line: 952, type: !2496)
!7362 = !DILocalVariable(name: "f", arg: 2, scope: !1474, file: !7357, line: 952, type: !3147)
!7363 = !{!7361, !7362}
!7364 = !DIFile(filename: "quinn-proto/src/congestion/new_reno.rs", directory: "/opt-bench/work/quinn-rs/quinn", checksumkind: CSK_MD5, checksum: "60a9fbf321af74d113e5de1b3e08323c")
!7365 = !DINamespace(name: "impls", scope: !3594)
!7366 = !DINamespace(name: "{impl#3}", scope: !7365)
!7367 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>", baseType: !406, size: 64, align: 64, dwarfAddressSpace: 0)
!7368 = !DITemplateTypeParameter(name: "T", type: !406)
!7369 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1490, file: !1530, baseType: !1489, size: 128, align: 64, flags: DIFlagPrivate)
!7370 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1490, file: !1530, baseType: !1480, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!7371 = !{!7369, !7370}
!7372 = !{!1479}
!7373 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1479, file: !1530, baseType: !1478, size: 128, align: 64, extraData: i64 0)
!7374 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1479, file: !1530, baseType: !1477, size: 128, align: 64)
!7375 = !{!7373, !7374}
!7376 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1477, file: !1530, baseType: !1476, size: 128, align: 64, flags: DIFlagPublic)
!7377 = !{!7376}
!7378 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1476, file: !1530, baseType: !1209, size: 64, align: 32, offset: 64, flags: DIFlagProtected)
!7379 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1476, file: !1530, baseType: !1475, size: 64, align: 64, flags: DIFlagPrivate)
!7380 = !{!7378, !7379}
!7381 = !DINamespace(name: "insert", scope: !6124)
!7382 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__cap", scope: !1475, file: !1530, baseType: !6126, size: 64, align: 64)
!7383 = !{!7382}
!7384 = !DITemplateTypeParameter(name: "F", type: !1475)
!7385 = !{!6134, !7384}
!7386 = !DITemplateTypeParameter(name: "T", type: !1476)
!7387 = !{!7386}
!7388 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1530, baseType: !1652, size: 64, align: 64, flags: DIFlagArtificial)
!7389 = !{!1488}
!7390 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1488, file: !1530, baseType: !1487, size: 128, align: 64, extraData: i64 0)
!7391 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1488, file: !1530, baseType: !1486, size: 128, align: 64)
!7392 = !{!7390, !7391}
!7393 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1486, file: !1530, baseType: !1485, size: 128, align: 64, flags: DIFlagPublic)
!7394 = !{!7393}
!7395 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1485, file: !1530, baseType: !1484, size: 128, align: 64, flags: DIFlagProtected)
!7396 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1485, file: !1530, baseType: !1481, align: 8, offset: 128, flags: DIFlagPrivate)
!7397 = !{!7395, !7396}
end_hunk_2
begin_hunk_3_@llvm.umax.i32
!18882 = !DILocation(line: 735, column: 13, scope: !18881)
!18883 = !DILocation(line: 0, scope: !18017, inlinedAt: !18882)
!18884 = !DILocation(line: 0, scope: !18250)
!18885 = !DILexicalBlockFile(scope: !18250, file: !2875, discriminator: 36)
!18886 = !DILocation(line: 735, column: 13, scope: !18885)
!18887 = !DILocation(line: 0, scope: !18126, inlinedAt: !18886)
!18888 = !DILocation(line: 0, scope: !18254)
!18889 = !DILexicalBlockFile(scope: !18254, file: !2875, discriminator: 44)
!18890 = !DILocation(line: 735, column: 13, scope: !18889)
!18891 = !DILocation(line: 0, scope: !18103, inlinedAt: !18890)
!18892 = !DILexicalBlockFile(scope: !18254, file: !2875, discriminator: 50)
!18893 = !DILocation(line: 735, column: 13, scope: !18892)
!18894 = !DILocation(line: 0, scope: !18112, inlinedAt: !18893)
!18895 = !DILocation(line: 0, scope: !18256)
!18896 = !DILocation(line: 0, scope: !18040, inlinedAt: !18460)
!18897 = !DILocation(line: 0, scope: !18042, inlinedAt: !18460)
!18898 = !DILocation(line: 763, column: 28, scope: !18027, inlinedAt: !18461)
!18899 = !DILocation(line: 439, column: 21, scope: !18042, inlinedAt: !18460)
!18900 = !DILocation(line: 0, scope: !18127, inlinedAt: !18899)
!18901 = !DILocation(line: 0, scope: !18033, inlinedAt: !18457)
!18902 = !DILocation(line: 172, column: 34, scope: !18000, inlinedAt: !18334)
!18903 = !DILocation(line: 172, column: 34, scope: !17999, inlinedAt: !18334)
!18904 = !DILocation(line: 772, column: 10, scope: !1305, inlinedAt: !18051)
!18905 = !DILocation(line: 772, column: 26, scope: !1305, inlinedAt: !18051)
!18906 = !DILocation(line: 772, column: 9, scope: !1305, inlinedAt: !18051)
!18907 = !DILocation(line: 774, column: 18, scope: !1305, inlinedAt: !18051)
!18908 = !DILocation(line: 774, column: 50, scope: !1305, inlinedAt: !18051)
!18909 = !DILocation(line: 2570, column: 13, scope: !1306, inlinedAt: !18055)
!18910 = !DILocation(line: 1138, column: 5, scope: !1229, inlinedAt: !18057)
!18911 = !DILocation(line: 270, column: 12, scope: !18049, inlinedAt: !18591)
!18912 = !DILocation(line: 1301, column: 9, scope: !18059, inlinedAt: !18610)
!18913 = !DILocation(line: 1301, column: 19, scope: !18059, inlinedAt: !18610)
!18914 = !DILocation(line: 1164, column: 15, scope: !18061, inlinedAt: !18617)
!18915 = !DILocation(line: 1164, column: 9, scope: !18061, inlinedAt: !18617)
!18916 = !DILocation(line: 4001, column: 24, scope: !659, inlinedAt: !18062)
!18917 = !DILocation(line: 705, column: 9, scope: !18014, inlinedAt: !18378)
!18918 = !DILocation(line: 735, column: 13, scope: !17994)
!18919 = !DILocation(line: 1165, column: 29, scope: !18060, inlinedAt: !18617)
!18920 = !DILocation(line: 250, column: 5, scope: !1409, inlinedAt: !18066)
!18921 = !DILocation(line: 966, column: 20, scope: !1410, inlinedAt: !18070)
!18922 = !DILocation(line: 1811, column: 23, scope: !1412, inlinedAt: !18074)
!18923 = !DILocation(line: 1811, column: 16, scope: !1412, inlinedAt: !18074)
!18924 = !DILocation(line: 966, column: 42, scope: !1415, inlinedAt: !18080)
!18925 = !DILocation(line: 976, column: 49, scope: !1414, inlinedAt: !18078)
!18926 = !DILocation(line: 1834, column: 5, scope: !1412, inlinedAt: !18074)
!18927 = !DILocation(line: 748, column: 16, scope: !17980)
!18928 = !DILocation(line: 125, column: 22, scope: !18011, inlinedAt: !18361)
!18929 = !DILocation(line: 125, column: 12, scope: !18011, inlinedAt: !18361)
!18930 = !DILocation(line: 172, column: 34, scope: !17996, inlinedAt: !18323)
!18931 = !DILocation(line: 172, column: 34, scope: !17995, inlinedAt: !18323)
!18932 = !DILocation(line: 274, column: 9, scope: !18050, inlinedAt: !18595)
!18933 = !DILocation(line: 849, column: 33, scope: !18008, inlinedAt: !18343)
!18934 = !DILocation(line: 849, column: 23, scope: !18008, inlinedAt: !18343)
!18935 = !DILocation(line: 849, column: 9, scope: !18008, inlinedAt: !18343)
!18936 = !DILocation(line: 759, column: 50, scope: !17981)
!18937 = !DILocation(line: 4001, column: 24, scope: !659, inlinedAt: !18082)
!18938 = !DILocation(line: 705, column: 9, scope: !18014, inlinedAt: !18516)
!18939 = !DILocation(line: 760, column: 13, scope: !17981)
!18940 = !DILocation(line: 766, column: 9, scope: !17981)
!18941 = !DILocation(line: 172, column: 34, scope: !1344, inlinedAt: !18085)
!18942 = !DILocation(line: 172, column: 34, scope: !1343, inlinedAt: !18085)
!18943 = !DILocation(line: 172, column: 34, scope: !1342, inlinedAt: !18085)
!18944 = !DILocation(line: 621, column: 12, scope: !1346, inlinedAt: !18084)
!18945 = !DILocation(line: 270, column: 12, scope: !1348, inlinedAt: !18088)
!18946 = !DILocation(line: 274, column: 9, scope: !1349, inlinedAt: !18096)
!18947 = !DILocation(line: 628, column: 20, scope: !1346, inlinedAt: !18084)
!18948 = !DILocation(line: 629, column: 30, scope: !1345, inlinedAt: !18084)
!18949 = !DILocation(line: 629, column: 12, scope: !1345, inlinedAt: !18084)
!18950 = !DILocation(line: 630, column: 13, scope: !1345, inlinedAt: !18084)
!18951 = !DILocation(line: 270, column: 9, scope: !1348, inlinedAt: !18090)
!18952 = !DILocation(line: 631, column: 25, scope: !1345, inlinedAt: !18084)
!18953 = !DILocation(line: 631, column: 13, scope: !1345, inlinedAt: !18084)
!18954 = !DILocation(line: 629, column: 9, scope: !1345, inlinedAt: !18084)
!18955 = !DILocation(line: 767, column: 9, scope: !17981)
!18956 = !DILocation(line: 768, column: 6, scope: !17994)
!18957 = !DILocation(line: 4001, column: 24, scope: !1193, inlinedAt: !18101)
!18958 = !DILocation(line: 348, column: 9, scope: !18016, inlinedAt: !18521)
!18959 = !DILocation(line: 352, column: 23, scope: !18016, inlinedAt: !18521)
!18960 = !DILocation(line: 635, column: 9, scope: !18007, inlinedAt: !18321)
!18961 = !DILocation(line: 760, column: 13, scope: !18265)
!18962 = !DILocation(line: 369, column: 9, scope: !18017, inlinedAt: !18525)
!18963 = !DILocation(line: 760, column: 13, scope: !18263)
!18964 = !DILocation(line: 369, column: 9, scope: !18017, inlinedAt: !18633)
!18965 = !DILocation(line: 277, column: 9, scope: !18103, inlinedAt: !18638)
!18966 = !DILocation(line: 760, column: 13, scope: !18267)
!18967 = !DILocation(line: 734, column: 18, scope: !18048, inlinedAt: !18538)
!18968 = !DILocation(line: 435, column: 15, scope: !18041, inlinedAt: !18584)
!18969 = !DILocation(line: 435, column: 9, scope: !18041, inlinedAt: !18584)
!18970 = !DILocation(line: 4001, column: 24, scope: !1193, inlinedAt: !18122)
!18971 = !DILocation(line: 764, column: 13, scope: !18020, inlinedAt: !18546)
!18972 = !DILocation(line: 4001, column: 24, scope: !659, inlinedAt: !18124)
!18973 = !DILocation(line: 1403, column: 14, scope: !18022, inlinedAt: !18550)
!18974 = !DILocation(line: 532, column: 9, scope: !18115, inlinedAt: !18718)
!18975 = !DILocation(line: 760, column: 13, scope: !18271)
!18976 = !DILocation(line: 369, column: 9, scope: !18017, inlinedAt: !18722)
!18977 = !DILocation(line: 760, column: 13, scope: !18273)
!18978 = !DILocation(line: 296, column: 9, scope: !18126, inlinedAt: !18728)
!18979 = !DILocation(line: 760, column: 13, scope: !18277)
!18980 = !DILocation(line: 369, column: 9, scope: !18017, inlinedAt: !18554)
!18981 = !DILocation(line: 277, column: 9, scope: !18103, inlinedAt: !18732)
!18982 = !DILocation(line: 760, column: 13, scope: !18279)
!18983 = !DILocation(line: 734, column: 18, scope: !18048, inlinedAt: !18557)
!18984 = !DILocation(line: 946, column: 9, scope: !18112, inlinedAt: !18735)
!18985 = !DILocation(line: 443, column: 17, scope: !18041, inlinedAt: !18584)
!18986 = !DILocation(line: 443, column: 25, scope: !18038, inlinedAt: !18584)
!18987 = !DILocation(line: 436, column: 16, scope: !18041, inlinedAt: !18584)
!18988 = !DILocation(line: 764, column: 9, scope: !18027, inlinedAt: !18585)
!18989 = !DILocation(line: 210, column: 9, scope: !18127, inlinedAt: !18743)
!18990 = !DILocation(line: 444, column: 9, scope: !18041, inlinedAt: !18584)
!18991 = !DILocation(line: 574, column: 14, scope: !18114, inlinedAt: !18686)
!18992 = !DILocation(line: 761, column: 20, scope: !17981)
!18993 = !DILocation(line: 0, scope: !18746)
!18994 = !DILocation(line: 281, column: 34, scope: !18045, inlinedAt: !18511)
!18995 = !DILocation(line: 172, column: 9, scope: !18128, inlinedAt: !18753)
!18996 = !DILocation(line: 128, column: 27, scope: !18011, inlinedAt: !18361)
!18997 = !DILocation(line: 129, column: 9, scope: !18010, inlinedAt: !18361)
!18998 = !DILocation(line: 749, column: 20, scope: !17980)
!18999 = !DILocation(line: 751, column: 28, scope: !17980)
!19000 = !DILocation(line: 750, column: 21, scope: !17980)
!19001 = !DILocation(line: 750, column: 43, scope: !17980)
!19002 = !DILocation(line: 2340, column: 22, scope: !18012, inlinedAt: !18369)
!19003 = !DILocation(line: 750, column: 71, scope: !17980)
!19004 = !DILocation(line: 749, column: 17, scope: !17980)
!19005 = !DILocation(line: 755, column: 21, scope: !17980)
!19006 = !DILocation(line: 756, column: 21, scope: !17980)
!19007 = !DILocation(line: 996, column: 17, scope: !18009, inlinedAt: !18352)
!19008 = !DILocation(line: 1029, column: 19, scope: !18131, inlinedAt: !18132)
!19009 = !DILocation(line: 616, column: 49, scope: !18137, inlinedAt: !18140)
!19010 = !DILocation(line: 1032, column: 12, scope: !18130, inlinedAt: !18132)
!19011 = !DILocation(line: 1033, column: 22, scope: !18130, inlinedAt: !18132)
!19012 = !DILocation(line: 1032, column: 9, scope: !18130, inlinedAt: !18132)
!19013 = !DILocation(line: 611, column: 9, scope: !18149, inlinedAt: !18154)
!19014 = !DILocation(line: 971, column: 18, scope: !18145, inlinedAt: !18146)
!19015 = !DILocation(line: 1964, column: 41, scope: !18156, inlinedAt: !18157)
!19016 = !DILocation(line: 1038, column: 13, scope: !18129, inlinedAt: !18132)
!19017 = !DILocation(line: 751, column: 24, scope: !17980)
!19018 = !DILocation(line: 4001, column: 24, scope: !1193, inlinedAt: !18159)
!19019 = !DILocation(line: 348, column: 9, scope: !18016, inlinedAt: !18385)
!19020 = !DILocation(line: 352, column: 23, scope: !18016, inlinedAt: !18385)
!19021 = !DILocation(line: 635, column: 9, scope: !18007, inlinedAt: !18331)
!19022 = !DILocation(line: 735, column: 13, scope: !18242)
!19023 = !DILocation(line: 369, column: 9, scope: !18017, inlinedAt: !18394)
!19024 = !DILocation(line: 735, column: 13, scope: !18240)
!19025 = !DILocation(line: 369, column: 9, scope: !18017, inlinedAt: !18793)
!19026 = !DILocation(line: 277, column: 9, scope: !18103, inlinedAt: !18796)
!19027 = !DILocation(line: 735, column: 13, scope: !18244)
!19028 = !DILocation(line: 734, column: 18, scope: !18018, inlinedAt: !18407)
!19029 = !DILocation(line: 905, column: 17, scope: !18167, inlinedAt: !18170)
!19030 = !DILocation(line: 4001, column: 24, scope: !1193, inlinedAt: !18208)
!19031 = !DILocation(line: 764, column: 13, scope: !18181, inlinedAt: !18184)
!19032 = !DILocation(line: 909, column: 17, scope: !18167, inlinedAt: !18170)
!19033 = !DILocation(line: 4001, column: 24, scope: !659, inlinedAt: !18215)
!19034 = !DILocation(line: 1403, column: 14, scope: !18187, inlinedAt: !18188)
!19035 = !DILocation(line: 532, column: 9, scope: !18198, inlinedAt: !18221)
!19036 = !DILocation(line: 909, column: 17, scope: !18168, inlinedAt: !18170)
!19037 = !DILocation(line: 369, column: 9, scope: !18191, inlinedAt: !18192)
!19038 = !DILocation(line: 909, column: 17, scope: !18169, inlinedAt: !18170)
!19039 = !DILocation(line: 296, column: 9, scope: !18225, inlinedAt: !18226)
!19040 = !DILocation(line: 1157, column: 10, scope: !18161, inlinedAt: !18172)
!19041 = !DILocation(line: 909, column: 17, scope: !18165, inlinedAt: !18170)
!19042 = !DILocation(line: 909, column: 17, scope: !18164, inlinedAt: !18170)
!19043 = !DILocation(line: 435, column: 15, scope: !18041, inlinedAt: !18460)
!19044 = !DILocation(line: 435, column: 9, scope: !18041, inlinedAt: !18460)
!19045 = !DILocation(line: 4001, column: 24, scope: !1193, inlinedAt: !18230)
!19046 = !DILocation(line: 764, column: 13, scope: !18020, inlinedAt: !18421)
!19047 = !DILocation(line: 4001, column: 24, scope: !659, inlinedAt: !18232)
!19048 = !DILocation(line: 1403, column: 14, scope: !18022, inlinedAt: !18424)
!19049 = !DILocation(line: 532, column: 9, scope: !18115, inlinedAt: !18878)
!19050 = !DILocation(line: 735, column: 13, scope: !18248)
!19051 = !DILocation(line: 369, column: 9, scope: !18017, inlinedAt: !18882)
!19052 = !DILocation(line: 735, column: 13, scope: !18250)
!19053 = !DILocation(line: 296, column: 9, scope: !18126, inlinedAt: !18886)
!19054 = !DILocation(line: 735, column: 13, scope: !18254)
!19055 = !DILocation(line: 369, column: 9, scope: !18017, inlinedAt: !18428)
!19056 = !DILocation(line: 277, column: 9, scope: !18103, inlinedAt: !18890)
!19057 = !DILocation(line: 735, column: 13, scope: !18256)
!19058 = !DILocation(line: 734, column: 18, scope: !18018, inlinedAt: !18431)
!19059 = !DILocation(line: 946, column: 9, scope: !18112, inlinedAt: !18893)
!19060 = !DILocation(line: 443, column: 17, scope: !18041, inlinedAt: !18460)
!19061 = !DILocation(line: 443, column: 25, scope: !18040, inlinedAt: !18460)
!19062 = !DILocation(line: 436, column: 16, scope: !18041, inlinedAt: !18460)
!19063 = !DILocation(line: 764, column: 9, scope: !18027, inlinedAt: !18461)
!19064 = !DILocation(line: 210, column: 9, scope: !18127, inlinedAt: !18899)
!19065 = !DILocation(line: 444, column: 9, scope: !18041, inlinedAt: !18460)
!19066 = !DILocation(line: 574, column: 14, scope: !18114, inlinedAt: !18858)
!19067 = !DILocation(line: 736, column: 20, scope: !17994)
!19068 = distinct !DILexicalBlock(scope: !19069, file: !2875, line: 187, column: 13)
!19069 = distinct !DILexicalBlock(scope: !19070, file: !2875, line: 187, column: 13)
!19070 = distinct !DILexicalBlock(scope: !19071, file: !2875, line: 186, column: 9)
!19071 = distinct !DILexicalBlock(scope: !19072, file: !2875, line: 186, column: 9)
!19072 = distinct !DILexicalBlock(scope: !19073, file: !2875, line: 152, column: 9)
!19073 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState3new", scope: !711, file: !2875, line: 144, type: !19175, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !19176, retainedNodes: !19188)
!19074 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt", scope: !6416, file: !4291, line: 2192, type: !6418, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !19191)
!19075 = distinct !DISubprogram(name: "next<u64>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangeyENtNtNtB7_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto", scope: !4303, file: !4293, line: 1184, type: !6421, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6423, retainedNodes: !19198)
!19076 = distinct !DILexicalBlock(scope: !19077, file: !4293, line: 1101, column: 13)
!19077 = distinct !DISubprogram(name: "spec_next<u64>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangeyENtB5_17RangeIteratorImpl9spec_nextCshovLROGBtMy_11quinn_proto", scope: !4295, file: !4293, line: 1099, type: !6421, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3304, retainedNodes: !19201)
!19078 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsJ_NtNtCskKLDkoKarTP_4core4iter5rangeyNtB5_4Step17forward_unchecked", scope: !6424, file: !4293, line: 263, type: !6426, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !19208)
!19079 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy13unchecked_add", scope: !6290, file: !4307, line: 1031, type: !6428, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !19213)
!19080 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs3_CshovLROGBtMy_11quinn_protoNtB5_8StreamId3new", scope: !377, file: !6429, line: 257, type: !6431, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6432, retainedNodes: !19220)
!19081 = distinct !DILocation(line: 188, column: 22, scope: !19068)
!19082 = distinct !DILocation(line: 892, column: 39, scope: !1420, inlinedAt: !19081)
!19083 = distinct !DILocation(line: 0, scope: !1419, inlinedAt: !19081)
!19084 = distinct !DILocation(line: 888, column: 31, scope: !1420, inlinedAt: !19081)
!19085 = distinct !DILocation(line: 0, scope: !1421, inlinedAt: !19084)
!19086 = distinct !DILocation(line: 893, column: 31, scope: !1418, inlinedAt: !19081)
!19087 = distinct !DILocation(line: 0, scope: !1422, inlinedAt: !19086)
!19088 = distinct !DILocation(line: 2877, column: 62, scope: !1417, inlinedAt: !19082)
!19089 = distinct !DILocation(line: 1437, column: 18, scope: !1425, inlinedAt: !19088)
!19090 = distinct !DILocation(line: 309, column: 20, scope: !1424, inlinedAt: !19089)
!19091 = distinct !DILocation(line: 0, scope: !1423, inlinedAt: !19090)
!19092 = distinct !DILocation(line: 0, scope: !1420, inlinedAt: !19081)
!19093 = distinct !DILocation(line: 2871, column: 16, scope: !1417, inlinedAt: !19082)
!19094 = distinct !DILocation(line: 1436, column: 27, scope: !1425, inlinedAt: !19088)
!19095 = distinct !DILocation(line: 2878, column: 37, scope: !1417, inlinedAt: !19082)
!19096 = distinct !DILocation(line: 1965, column: 25, scope: !1426, inlinedAt: !19095)
!19097 = distinct !DILocation(line: 2878, column: 55, scope: !1417, inlinedAt: !19082)
!19098 = distinct !DILocation(line: 3099, column: 22, scope: !1427, inlinedAt: !19097)
!19099 = distinct !{!19099, i1 true, !"_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert"}
!19100 = distinct !{!19100, !19099, !"_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState6insert: argument 0"}
!19101 = distinct !DILocation(line: 2877, column: 17, scope: !1417, inlinedAt: !19082)
!19102 = distinct !DILocation(line: 0, scope: !1428, inlinedAt: !19101)
!19103 = distinct !DILocation(line: 1968, column: 18, scope: !1426, inlinedAt: !19095)
!19104 = distinct !DILocation(line: 296, column: 20, scope: !1431, inlinedAt: !19103)
!19105 = distinct !DILocation(line: 606, column: 14, scope: !1430, inlinedAt: !19104)
!19106 = distinct !DILocation(line: 2878, column: 46, scope: !1417, inlinedAt: !19082)
!19107 = distinct !DILocation(line: 0, scope: !1432, inlinedAt: !19106)
!19108 = distinct !DILocation(line: 2878, column: 22, scope: !1417, inlinedAt: !19082)
!19109 = distinct !DILocation(line: 0, scope: !1433, inlinedAt: !19108)
!19110 = distinct !DILocation(line: 0, scope: !1418, inlinedAt: !19081)
!19111 = distinct !DILocation(line: 1332, column: 19, scope: !1422, inlinedAt: !19086)
!19112 = distinct !DILocation(line: 1332, column: 19, scope: !1421, inlinedAt: !19084)
!19113 = distinct !DILocation(line: 888, column: 13, scope: !1420, inlinedAt: !19081)
!19114 = distinct !DILocation(line: 848, column: 1, scope: !581, inlinedAt: !19113)
!19115 = distinct !DILocation(line: 0, scope: !591, inlinedAt: !19114)
!19116 = distinct !DILocation(line: 848, column: 1, scope: !591, inlinedAt: !19114)
!19117 = distinct !DILocation(line: 0, scope: !592, inlinedAt: !19116)
!19118 = distinct !DILocation(line: 848, column: 1, scope: !592, inlinedAt: !19116)
!19119 = distinct !DILocation(line: 0, scope: !593, inlinedAt: !19118)
!19120 = distinct !DILocation(line: 848, column: 1, scope: !593, inlinedAt: !19118)
!19121 = distinct !DILocation(line: 0, scope: !594, inlinedAt: !19120)
!19122 = distinct !DILocation(line: 848, column: 1, scope: !594, inlinedAt: !19120)
!19123 = distinct !DILocation(line: 0, scope: !595, inlinedAt: !19122)
!19124 = distinct !DILocation(line: 848, column: 1, scope: !595, inlinedAt: !19122)
!19125 = distinct !DILocation(line: 0, scope: !596, inlinedAt: !19124)
!19126 = distinct !DILocation(line: 848, column: 1, scope: !594, inlinedAt: !19120)
!19127 = distinct !DILocation(line: 0, scope: !597, inlinedAt: !19126)
!19128 = distinct !DILocation(line: 848, column: 1, scope: !597, inlinedAt: !19126)
!19129 = distinct !DILocation(line: 0, scope: !598, inlinedAt: !19128)
!19130 = distinct !DILocation(line: 848, column: 1, scope: !594, inlinedAt: !19120)
!19131 = distinct !DILocation(line: 0, scope: !597, inlinedAt: !19130)
!19132 = distinct !DILocation(line: 848, column: 1, scope: !597, inlinedAt: !19130)
!19133 = distinct !DILocation(line: 0, scope: !598, inlinedAt: !19132)
!19134 = distinct !DILocation(line: 848, column: 1, scope: !592, inlinedAt: !19116)
!19135 = distinct !DILocation(line: 0, scope: !606, inlinedAt: !19134)
!19136 = distinct !DILocation(line: 0, scope: !605, inlinedAt: !19134)
!19137 = distinct !DILocation(line: 0, scope: !601, inlinedAt: !19134)
!19138 = distinct !DILocation(line: 1992, column: 24, scope: !601, inlinedAt: !19134)
!19139 = distinct !DILocation(line: 0, scope: !607, inlinedAt: !19138)
!19140 = distinct !DILocation(line: 554, column: 23, scope: !607, inlinedAt: !19138)
!19141 = distinct !DILocation(line: 0, scope: !608, inlinedAt: !19140)
!19142 = distinct !DILocation(line: 436, column: 9, scope: !608, inlinedAt: !19140)
!19143 = distinct !DILocation(line: 0, scope: !609, inlinedAt: !19142)
!19144 = distinct !DILocation(line: 321, column: 22, scope: !609, inlinedAt: !19142)
!19145 = distinct !DILocation(line: 0, scope: !610, inlinedAt: !19144)
!19146 = distinct !DILocation(line: 848, column: 1, scope: !595, inlinedAt: !19122)
!19147 = distinct !DILocation(line: 0, scope: !596, inlinedAt: !19146)
!19148 = distinct !DILocation(line: 888, column: 13, scope: !1420, inlinedAt: !19081)
!19149 = distinct !DILocation(line: 0, scope: !581, inlinedAt: !19148)
!19150 = distinct !DILocation(line: 848, column: 1, scope: !594, inlinedAt: !19120)
!19151 = distinct !DILocation(line: 0, scope: !597, inlinedAt: !19150)
!19152 = distinct !DILocation(line: 848, column: 1, scope: !597, inlinedAt: !19150)
!19153 = distinct !DILocation(line: 0, scope: !598, inlinedAt: !19152)
!19154 = distinct !DILocation(line: 848, column: 1, scope: !594, inlinedAt: !19120)
!19155 = distinct !DILocation(line: 0, scope: !597, inlinedAt: !19154)
!19156 = distinct !DILocation(line: 848, column: 1, scope: !597, inlinedAt: !19154)
!19157 = distinct !DILocation(line: 0, scope: !598, inlinedAt: !19156)
!19158 = distinct !DILocation(line: 848, column: 1, scope: !592, inlinedAt: !19116)
!19159 = distinct !DILocation(line: 0, scope: !606, inlinedAt: !19158)
!19160 = distinct !DILocation(line: 0, scope: !605, inlinedAt: !19158)
!19161 = distinct !DILocation(line: 0, scope: !601, inlinedAt: !19158)
!19162 = distinct !DILocation(line: 1992, column: 24, scope: !601, inlinedAt: !19158)
!19163 = distinct !DILocation(line: 0, scope: !607, inlinedAt: !19162)
!19164 = distinct !DILocation(line: 554, column: 23, scope: !607, inlinedAt: !19162)
!19165 = distinct !DILocation(line: 0, scope: !608, inlinedAt: !19164)
!19166 = distinct !DILocation(line: 436, column: 9, scope: !608, inlinedAt: !19164)
!19167 = distinct !DILocation(line: 0, scope: !609, inlinedAt: !19166)
!19168 = distinct !DILocation(line: 321, column: 22, scope: !609, inlinedAt: !19166)
!19169 = distinct !DILocation(line: 0, scope: !610, inlinedAt: !19168)
!19170 = distinct !DILocation(line: 893, column: 13, scope: !1418, inlinedAt: !19081)
!19171 = distinct !DILocation(line: 848, column: 1, scope: !586, inlinedAt: !19170)
!19172 = distinct !DILocation(line: 848, column: 1, scope: !588, inlinedAt: !19171)
!19173 = distinct !DILocation(line: 0, scope: !587, inlinedAt: !19172)
!19174 = !{!711, !1642, !484, !484, !1652, !484, !484}
!19175 = !DISubroutineType(types: !19174)
!19176 = !DISubprogram(name: "new", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState3new", scope: !711, file: !2875, line: 144, type: !19175, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!19177 = !DILocalVariable(name: "side", arg: 1, scope: !19073, file: !2875, line: 145, type: !1642)
!19178 = !DILocalVariable(name: "max_remote_uni", arg: 2, scope: !19073, file: !2875, line: 146, type: !484)
!19179 = !DILocalVariable(name: "max_remote_bi", arg: 3, scope: !19073, file: !2875, line: 147, type: !484)
!19180 = !DILocalVariable(name: "send_window", arg: 4, scope: !19073, file: !2875, line: 148, type: !1652)
!19181 = !DILocalVariable(name: "receive_window", arg: 5, scope: !19073, file: !2875, line: 149, type: !484)
!19182 = !DILocalVariable(name: "stream_receive_window", arg: 6, scope: !19073, file: !2875, line: 150, type: !484)
!19183 = !DILocalVariable(name: "this", scope: !19072, file: !2875, line: 152, type: !711, align: 64)
!19184 = !DILocalVariable(name: "iter", scope: !19071, file: !2875, line: 186, type: !1354, align: 64)
!19185 = !DILocalVariable(name: "dir", scope: !19070, file: !2875, line: 186, type: !1623, align: 8)
!19186 = !DILocalVariable(name: "iter", scope: !19069, file: !2875, line: 187, type: !638, align: 64)
!19187 = !DILocalVariable(name: "i", scope: !19068, file: !2875, line: 187, type: !1652, align: 64)
!19188 = !{!19177, !19178, !19179, !19180, !19181, !19182, !19183, !19184, !19185, !19186, !19187}
!19189 = !DILocalVariable(name: "self", arg: 1, scope: !19074, file: !4291, line: 2192, type: !2730)
!19190 = !DILocalVariable(name: "other", arg: 2, scope: !19074, file: !4291, line: 2192, type: !2730)
!19191 = !{!19189, !19190}
!19192 = !DILexicalBlockFile(scope: !19069, file: !2875, discriminator: 2)
!19193 = !DILocation(line: 187, column: 22, scope: !19192)
!19194 = !DILocation(line: 1185, column: 14, scope: !19075, inlinedAt: !19193)
!19195 = !DILocation(line: 1100, column: 12, scope: !19077, inlinedAt: !19194)
!19196 = !DILocation(line: 2192, column: 19, scope: !19074, inlinedAt: !19195)
!19197 = !DILocalVariable(name: "self", arg: 1, scope: !19075, file: !4293, line: 1184, type: !6419)
!19198 = !{!19197}
!19199 = !DILocalVariable(name: "self", arg: 1, scope: !19077, file: !4293, line: 1099, type: !6419)
!19200 = !DILocalVariable(name: "old", scope: !19076, file: !4293, line: 1101, type: !1652, align: 64)
!19201 = !{!19199, !19200}
!19202 = !DILocation(line: 1099, column: 18, scope: !19077, inlinedAt: !19194)
!19203 = !DILocation(line: 1184, column: 13, scope: !19075, inlinedAt: !19193)
!19204 = !DILocation(line: 0, scope: !19073)
!19205 = !DILocation(line: 152, column: 13, scope: !19072)
!19206 = !DILocalVariable(name: "n", scope: !19078, file: !4293, line: 263, type: !1855, align: 64)
!19207 = !DILocalVariable(name: "start", arg: 1, scope: !19078, file: !4293, line: 263, type: !1652)
!19208 = !{!19207, !19206}
!19209 = !DILocation(line: 1103, column: 35, scope: !19076, inlinedAt: !19194)
!19210 = !DILocation(line: 0, scope: !19078, inlinedAt: !19209)
!19211 = !DILocalVariable(name: "rhs", scope: !19079, file: !4307, line: 1031, type: !1652, align: 64)
!19212 = !DILocalVariable(name: "self", arg: 1, scope: !19079, file: !4307, line: 1031, type: !1652)
!19213 = !{!19212, !19211}
!19214 = !DILocation(line: 265, column: 28, scope: !19078, inlinedAt: !19209)
!19215 = !DILocation(line: 0, scope: !19079, inlinedAt: !19214)
!19216 = !DILocation(line: 0, scope: !19071)
!19217 = !DILocalVariable(name: "dir", arg: 2, scope: !19080, file: !6429, line: 257, type: !1623)
!19218 = !DILocalVariable(name: "initiator", arg: 1, scope: !19080, file: !6429, line: 257, type: !1642)
!19219 = !DILocalVariable(name: "index", arg: 3, scope: !19080, file: !6429, line: 257, type: !1652)
!19220 = !{!19218, !19217, !19219}
!19221 = !DILocation(line: 188, column: 35, scope: !19068)
!19222 = !DILocation(line: 0, scope: !19080, inlinedAt: !19221)
!19223 = !DILocation(line: 0, scope: !19070)
!19224 = !DILocation(line: 0, scope: !19069)
!19225 = !DILocation(line: 2192, column: 26, scope: !19074, inlinedAt: !19195)
!19226 = !DILocation(line: 0, scope: !19076, inlinedAt: !19194)
!19227 = !DILocation(line: 0, scope: !19068)
!19229 = !{!19100}
!19230 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!19231 = !DILocation(line: 152, column: 13, scope: !19073)
!19232 = !DILocation(line: 152, column: 24, scope: !19073)
!19233 = !DILocation(line: 187, column: 13, scope: !19069)
!19234 = !DILocation(line: 2192, column: 50, scope: !19074, inlinedAt: !19195)
!19235 = !DILocation(line: 187, column: 25, scope: !19070)
!19236 = !DILocation(line: 2872, column: 12, scope: !1417, inlinedAt: !19082)
!19237 = !DILocation(line: 1043, column: 17, scope: !19079, inlinedAt: !19214)
!19238 = !DILocation(line: 258, column: 14, scope: !19080, inlinedAt: !19221)
!19239 = !DILocation(line: 2876, column: 17, scope: !1417, inlinedAt: !19082)
!19240 = !DILocation(line: 616, column: 49, scope: !1423, inlinedAt: !19090)
!19241 = !DILocation(line: 2877, column: 46, scope: !1417, inlinedAt: !19082)
!19242 = !DILocation(line: 210, column: 9, scope: !1428, inlinedAt: !19101)
!19243 = !DILocation(line: 611, column: 9, scope: !1429, inlinedAt: !19105)
!19244 = !DILocation(line: 3105, column: 37, scope: !1427, inlinedAt: !19097)
!19245 = !DILocation(line: 3105, column: 18, scope: !1427, inlinedAt: !19097)
!19246 = !DILocation(line: 872, column: 18, scope: !1432, inlinedAt: !19106)
!19247 = !DILocation(line: 1756, column: 9, scope: !1433, inlinedAt: !19108)
!19248 = !DILocation(line: 2872, column: 9, scope: !1417, inlinedAt: !19082)
!19249 = !DILocation(line: 0, scope: !1417, inlinedAt: !19082)
!19250 = !DILocation(line: 1333, column: 19, scope: !1422, inlinedAt: !19086)
!19251 = !DILocation(line: 893, column: 21, scope: !1418, inlinedAt: !19081)
!19252 = !DILocation(line: 192, column: 9, scope: !19072)
!19253 = !DILocation(line: 193, column: 5, scope: !19073)
!19254 = !DILocation(line: 193, column: 6, scope: !19073)
!19255 = !DILocation(line: 1333, column: 19, scope: !1421, inlinedAt: !19084)
!19256 = !DILocation(line: 888, column: 21, scope: !1420, inlinedAt: !19081)
!19257 = !DILocation(line: 848, column: 1, scope: !591, inlinedAt: !19114)
!19258 = !DILocation(line: 848, column: 1, scope: !593, inlinedAt: !19118)
!19259 = !DILocation(line: 848, column: 1, scope: !595, inlinedAt: !19122)
!19260 = !DILocation(line: 848, column: 1, scope: !596, inlinedAt: !19124)
!19261 = !DILocation(line: 848, column: 1, scope: !594, inlinedAt: !19120)
!19262 = !DILocation(line: 848, column: 1, scope: !598, inlinedAt: !19128)
!19263 = !DILocation(line: 848, column: 1, scope: !598, inlinedAt: !19132)
!19264 = !DILocation(line: 175, column: 14, scope: !610, inlinedAt: !19144)
!19265 = !DILocation(line: 848, column: 1, scope: !596, inlinedAt: !19146)
!19266 = !DILocation(line: 848, column: 1, scope: !592, inlinedAt: !19116)
!19267 = !DILocation(line: 848, column: 1, scope: !581, inlinedAt: !19148)
!19268 = !DILocation(line: 848, column: 1, scope: !598, inlinedAt: !19152)
!19269 = !DILocation(line: 848, column: 1, scope: !598, inlinedAt: !19156)
!19270 = !DILocation(line: 175, column: 14, scope: !610, inlinedAt: !19168)
!19271 = !DILocation(line: 848, column: 1, scope: !587, inlinedAt: !19172)
!19272 = !DILocation(line: 0, scope: !1420, inlinedAt: !19081)
!19273 = !DILocation(line: 144, column: 5, scope: !19073)
!19274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !19277, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !19361, templateParams: !4001, identifier: "c730f5a3b809fa515fa76383e07b1981")
!19275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !19277, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !4001, identifier: "73fd570c06c179e3ba26c815519430a4")
!19276 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19277, file: !1530, size: 192, align: 64, elements: !19359, templateParams: !1871, identifier: "97342163c87d1caac0dd6e58cf6da968", discriminator: !19362)
!19277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quinn_proto::connection::streams::StreamEvent>", scope: !1861, file: !1530, size: 192, align: 64, flags: DIFlagPublic, elements: !19356, templateParams: !1871, identifier: "a561a906708a3017971d690fa9ee5358")
!19278 = distinct !DILexicalBlock(scope: !19280, file: !2875, line: 788, column: 21)
!19279 = distinct !DILexicalBlock(scope: !19280, file: !2875, line: 786, column: 17)
!19280 = distinct !DILexicalBlock(scope: !19282, file: !2875, line: 785, column: 64)
!19281 = distinct !DILexicalBlock(scope: !19282, file: !2875, line: 780, column: 9)
!19282 = distinct !DISubprogram(name: "poll", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState4poll", scope: !711, file: !2875, line: 778, type: !19355, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !19363, retainedNodes: !19369)
!19283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !19379, file: !1530, size: 64, align: 64, elements: !19382, templateParams: !1871, identifier: "28184a8b85f87743c4e5e246239515a5")
!19284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<quinn_proto::Dir, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>", scope: !19376, file: !1530, size: 64, align: 64, elements: !19378, templateParams: !1871, identifier: "4e7ea8e76617c8ada8ea958d8b0cca03")
!19285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<quinn_proto::Dir, (), core::ops::control_flow::ControlFlow<quinn_proto::Dir, ()>, core::iter::traits::iterator::Iterator::find::check::{closure_env#0}<quinn_proto::Dir, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>>", scope: !5898, file: !1530, size: 64, align: 64, elements: !19374, templateParams: !1871, identifier: "5086b648139b2cf25db63df7558bfd5")
!19286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !19289, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !19388, templateParams: !19390, identifier: "771ef9ffa2a2ec09d52edf5618ad06e")
!19287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !19289, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !19392, templateParams: !19390, identifier: "dc04738fdd0b54aa1959d9b335152551")
!19288 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19289, file: !1530, size: 8, align: 8, elements: !19386, templateParams: !1871, identifier: "ccdb2580dc20225273dff893ce7549e5", discriminator: !19393)
!19289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<quinn_proto::Dir, ()>", scope: !5842, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !19383, templateParams: !1871, identifier: "f1d7828f48c273fdaa35337ca3ea9763")
!19290 = distinct !DILexicalBlock(scope: !19296, file: !4378, line: 2490, column: 32)
!19291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !19294, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !19406, templateParams: !19407, identifier: "4b6f12e0a506506a659007b023987d33")
!19292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !19294, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !19409, templateParams: !19407, identifier: "43ff5a38d1a02c9e957e52713b14b565")
!19293 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19294, file: !1530, size: 8, align: 8, elements: !19404, templateParams: !1871, identifier: "5618afe827d1c4d9da8b26dedcf60fb2")
!19294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<quinn_proto::Dir, !>", scope: !5842, file: !1530, size: 8, align: 8, flags: DIFlagPublic, elements: !19401, templateParams: !1871, identifier: "2f87e78605678b404e6ae7777d23a174")
!19295 = distinct !DILexicalBlock(scope: !19296, file: !4378, line: 2490, column: 32)
!19296 = distinct !DILexicalBlock(scope: !19297, file: !4378, line: 2489, column: 41)
!19297 = distinct !DILexicalBlock(scope: !19298, file: !4378, line: 2488, column: 9)
!19298 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<quinn_proto::Dir>, (), core::iter::adapters::cloned::clone_try_fold::{closure_env#0}<quinn_proto::Dir, (), core::ops::control_flow::ControlFlow<quinn_proto::Dir, ()>, core::iter::traits::iterator::Iterator::find::check::{closure_env#0}<quinn_proto::Dir, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>>, core::ops::control_flow::ControlFlow<quinn_proto::Dir, ()>>", linkageName: "_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1n_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1h_4find5checkBJ_NCNvMs_NtNtNtBL_10connection7streams5stateNtB48_12StreamsState4poll0E0E0B2T_EBL_", scope: !4323, file: !4378, line: 2482, type: !19372, scopeLine: 2482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !19413, retainedNodes: !19400)
!19299 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<quinn_proto::Dir>, quinn_proto::Dir, (), core::iter::traits::iterator::Iterator::find::check::{closure_env#0}<quinn_proto::Dir, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>, core::ops::control_flow::ControlFlow<quinn_proto::Dir, ()>>", linkageName: "_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB21_4find5checkB1s_NCNvMs_NtNtNtB1u_10connection7streams5stateNtB3g_12StreamsState4poll0E0INtNtNtBb_3ops12control_flow11ControlFlowB1s_EEB1u_", scope: !4320, file: !4318, line: 48, type: !19415, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !19421, retainedNodes: !19419)
!19300 = distinct !DISubprogram(name: "find<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<quinn_proto::Dir>>, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>", linkageName: "_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirEENtNtNtBa_6traits8iterator8Iterator4findNCNvMs_NtNtNtB1p_10connection7streams5stateNtB2G_12StreamsState4poll0EB1p_", scope: !4323, file: !4378, line: 2955, type: !19425, scopeLine: 2955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !19431, retainedNodes: !19428)
!19301 = distinct !DILocation(line: 54, column: 17, scope: !19299, inlinedAt: !19423)
!19302 = distinct !DILocation(line: 0, scope: !19298, inlinedAt: !19301)
!19303 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner8capacityCshovLROGBtMy_11quinn_proto", scope: !32, file: !4317, line: 615, type: !6774, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1969, declaration: !6775, retainedNodes: !19436)
!19304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !19307, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !19449, templateParams: !3773, identifier: "25f6dc3e149804683bd1f5ba3471cdc6")
!19305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !19307, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !1871, templateParams: !3773, identifier: "a4290126945e786a2ad810d4358318fb")
!19306 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19307, file: !1530, size: 128, align: 64, elements: !19447, templateParams: !1871, identifier: "8b5029df39770fa66dfa97ddcbe6f1f6", discriminator: !19450)
!19307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quinn_proto::StreamId>", scope: !1861, file: !1530, size: 128, align: 64, flags: DIFlagPublic, elements: !19444, templateParams: !1871, identifier: "1a34932aa08a6fe93ad3bd1529b407a2")
!19308 = distinct !DISubprogram(name: "pop<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCshovLROGBtMy_11quinn_proto8StreamIdE3popBG_", scope: !617, file: !4290, line: 2871, type: !19443, scopeLine: 2871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3774, declaration: !19451, retainedNodes: !19453)
!19309 = distinct !DISubprogram(name: "capacity<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCshovLROGBtMy_11quinn_proto8StreamIdE8capacityBG_", scope: !617, file: !4290, line: 1436, type: !19456, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3774, declaration: !19457, retainedNodes: !19459)
!19310 = distinct !DISubprogram(name: "capacity<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCshovLROGBtMy_11quinn_proto8StreamIdE8capacityBO_", scope: !616, file: !4317, line: 308, type: !7138, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3774, declaration: !7139, retainedNodes: !19461)
!19311 = distinct !DILocation(line: 0, scope: !19296, inlinedAt: !19301)
!19312 = distinct !DISubprogram(name: "{closure#0}<quinn_proto::Dir, (), core::ops::control_flow::ControlFlow<quinn_proto::Dir, ()>, core::iter::traits::iterator::Iterator::find::check::{closure_env#0}<quinn_proto::Dir, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldNtCshovLROGBtMy_11quinn_proto3DiruINtNtNtBa_3ops12control_flow11ControlFlowB14_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB14_NCNvMs_NtNtNtB16_10connection7streams5stateNtB3n_12StreamsState4poll0E0E0B16_", scope: !5898, file: !4318, line: 29, type: !19469, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !19474, retainedNodes: !19472)
!19313 = distinct !DILocation(line: 2490, column: 21, scope: !19296, inlinedAt: !19301)
!19314 = distinct !DILocation(line: 0, scope: !19312, inlinedAt: !19313)
!19315 = distinct !DISubprogram(name: "{closure#0}<quinn_proto::Dir, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCshovLROGBtMy_11quinn_proto3DirNCNvMs_NtNtNtB1e_10connection7streams5stateNtB1Q_12StreamsState4poll0E0B1e_", scope: !19376, file: !4378, line: 2962, type: !19478, scopeLine: 2962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !19483, retainedNodes: !19481)
!19316 = distinct !DILocation(line: 29, column: 21, scope: !19312, inlinedAt: !19313)
!19317 = distinct !DILocation(line: 0, scope: !19315, inlinedAt: !19316)
!19318 = distinct !DILexicalBlock(scope: !19319, file: !2875, line: 779, column: 50)
!19319 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState4poll0Bc_", scope: !19379, file: !2875, line: 779, type: !19487, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !19490)
!19320 = distinct !DILocation(line: 2963, column: 20, scope: !19315, inlinedAt: !19316)
!19321 = distinct !DILocation(line: 0, scope: !19319, inlinedAt: !19320)
!19322 = distinct !DISubprogram(name: "replace<bool>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem7replacebECshovLROGBtMy_11quinn_proto", scope: !1650, file: !6071, line: 961, type: !19494, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3104, retainedNodes: !19496)
!19323 = distinct !DILocation(line: 779, column: 50, scope: !19318, inlinedAt: !19320)
!19324 = distinct !DILocation(line: 0, scope: !19322, inlinedAt: !19323)
!19325 = distinct !DILocation(line: 0, scope: !19318, inlinedAt: !19320)
!19326 = distinct !{!19326, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1n_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1h_4find5checkBJ_NCNvMs_NtNtNtBL_10connection7streams5stateNtB48_12StreamsState4poll0E0E0B2T_EBL_"}
!19327 = distinct !{!19327, !19326, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1n_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1h_4find5checkBJ_NCNvMs_NtNtNtBL_10connection7streams5stateNtB48_12StreamsState4poll0E0E0B2T_EBL_: argument 1"}
!19328 = distinct !DILocation(line: 784, column: 17, scope: !19282)
!19329 = distinct !DILocation(line: 0, scope: !1305, inlinedAt: !19328)
!19330 = distinct !{!19330, i1 true, !"_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState11write_limit"}
!19331 = distinct !{!19331, !19330, !"_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState11write_limit: argument 0"}
!19332 = distinct !DILocation(line: 774, column: 35, scope: !1305, inlinedAt: !19328)
!19333 = distinct !DILocation(line: 0, scope: !1306, inlinedAt: !19332)
!19334 = distinct !DILocation(line: 774, column: 14, scope: !1305, inlinedAt: !19328)
!19335 = distinct !DILocation(line: 0, scope: !1229, inlinedAt: !19334)
!19336 = distinct !DISubprogram(name: "as_ptr<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCshovLROGBtMy_11quinn_proto8StreamIdE6as_ptrBG_", scope: !617, file: !4290, line: 1965, type: !19505, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3774, declaration: !19506, retainedNodes: !19507)
!19337 = distinct !DISubprogram(name: "len<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCshovLROGBtMy_11quinn_proto8StreamIdE3lenBG_", scope: !617, file: !4290, line: 3099, type: !19456, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3774, declaration: !19511, retainedNodes: !19512)
!19338 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCskKLDkoKarTP_4core4hint16assert_unchecked", scope: !6869, file: !6868, line: 202, type: !6871, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !19516)
!19339 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, quinn_proto::StreamId>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtCshovLROGBtMy_11quinn_proto8StreamIdEB13_", scope: !32, file: !4317, line: 610, type: !7141, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !7145, declaration: !7146)
!19340 = distinct !DISubprogram(name: "ptr<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCshovLROGBtMy_11quinn_proto8StreamIdE3ptrBO_", scope: !616, file: !4317, line: 295, type: !7151, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3774, declaration: !7152)
!19341 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, quinn_proto::StreamId>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrNtCshovLROGBtMy_11quinn_proto8StreamIdEBY_", scope: !32, file: !4317, line: 605, type: !7148, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !7145, declaration: !7149)
!19342 = distinct !DISubprogram(name: "add<quinn_proto::StreamId>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPNtCshovLROGBtMy_11quinn_proto8StreamId3addBG_", scope: !4363, file: !4361, line: 838, type: !19524, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3773, retainedNodes: !19526)
!19343 = distinct !DISubprogram(name: "read<quinn_proto::StreamId>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readNtCshovLROGBtMy_11quinn_proto8StreamIdEBy_", scope: !1959, file: !3596, line: 1717, type: !19531, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3773, retainedNodes: !19532)
!19344 = distinct !DISubprogram(name: "get_mut<quinn_proto::StreamId, core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, rustc_hash::FxBuildHasher, alloc::alloc::Global, quinn_proto::StreamId>", linkageName: "_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtB15_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE7get_mutB13_EB15_", scope: !710, file: !6099, line: 1296, type: !6366, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6377, declaration: !6378, retainedNodes: !19537)
!19345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}", scope: !19379, file: !1530, align: 8, elements: !1871, identifier: "1107fc9e0a1552e660ea8846c0257484")
!19346 = distinct !DILexicalBlock(scope: !19347, file: !3455, line: 1544, column: 13)
!19347 = distinct !DISubprogram(name: "and_then<&mut core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, &mut alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#1}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQIBw_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEE8and_thenQBN_NCNvMs_NtB1q_5stateNtB2M_12StreamsState4polls_0EB1u_", scope: !1259, file: !3455, line: 1539, type: !19543, scopeLine: 1539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !19545, declaration: !19546, retainedNodes: !19549)
!19348 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState4polls_0Bc_", scope: !19379, file: !2875, line: 786, type: !19555, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !19556)
!19349 = distinct !DILexicalBlock(scope: !19350, file: !3455, line: 768, column: 13)
!19350 = distinct !DISubprogram(name: "as_mut<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEE6as_mutB1o_", scope: !523, file: !3455, line: 766, type: !6390, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3437, declaration: !6391, retainedNodes: !19561)
!19351 = distinct !DISubprogram(name: "is_writable", linkageName: "_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4sendNtB2_4Send11is_writable", scope: !519, file: !6392, line: 141, type: !6395, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !19566, retainedNodes: !19567)
!19352 = distinct !DISubprogram(name: "offset", linkageName: "_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4sendNtB2_4Send6offset", scope: !519, file: !6392, line: 133, type: !6908, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6909, retainedNodes: !19571)
!19353 = distinct !DISubprogram(name: "offset", linkageName: "_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection11send_bufferNtB2_10SendBuffer6offset", scope: !513, file: !6397, line: 171, type: !6878, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6879, retainedNodes: !19575)
!19354 = !{!19277, !4202}
!19355 = !DISubroutineType(types: !19354)
!19356 = !{!19276}
!19357 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !19276, file: !1530, baseType: !19275, size: 192, align: 64, extraData: i8 -1)
!19358 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !19276, file: !1530, baseType: !19274, size: 192, align: 64)
!19359 = !{!19357, !19358}
!19360 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19274, file: !1530, baseType: !668, size: 192, align: 64, flags: DIFlagPublic)
!19361 = !{!19360}
!19362 = !DIDerivedType(tag: DW_TAG_member, scope: !19277, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagArtificial)
!19363 = !DISubprogram(name: "poll", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState4poll", scope: !711, file: !2875, line: 778, type: !19355, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!19364 = !DILocalVariable(name: "self", arg: 1, scope: !19282, file: !2875, line: 778, type: !4202)
!19365 = !DILocalVariable(name: "dir", scope: !19281, file: !2875, line: 779, type: !1623, align: 8)
!19366 = !DILocalVariable(name: "id", scope: !19280, file: !2875, line: 785, type: !377, align: 64)
!19367 = !DILocalVariable(name: "stream", scope: !19279, file: !2875, line: 786, type: !3657, align: 64)
!19368 = !DILocalVariable(name: "s", scope: !19278, file: !2875, line: 788, type: !3657, align: 64)
!19369 = !{!19364, !19365, !19366, !19367, !19368}
!19370 = !DILocalVariable(name: "self", arg: 1, scope: !19298, file: !4378, line: 2482, type: !7211)
!19371 = !{!19289, !7211, !1852, !19285}
!19372 = !DISubroutineType(types: !19371)
!19373 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !19285, file: !1530, baseType: !19284, size: 64, align: 64)
!19374 = !{!19373}
!19375 = !DINamespace(name: "find", scope: !4323)
!19376 = !DINamespace(name: "check", scope: !19375)
!19377 = !DIDerivedType(tag: DW_TAG_member, name: "predicate", scope: !19284, file: !1530, baseType: !19283, size: 64, align: 64)
!19378 = !{!19377}
!19379 = !DINamespace(name: "poll", scope: !2872)
!19380 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [bool; 2]", baseType: !4220, size: 64, align: 64, dwarfAddressSpace: 0)
!19381 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__self__opened", scope: !19283, file: !1530, baseType: !19380, size: 64, align: 64)
!19382 = !{!19381}
!19383 = !{!19288}
!19384 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !19288, file: !1530, baseType: !19287, size: 8, align: 8, extraData: i8 2)
!19385 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !19288, file: !1530, baseType: !19286, size: 8, align: 8)
!19386 = !{!19384, !19385}
!19387 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19286, file: !1530, baseType: !1623, size: 8, align: 8, flags: DIFlagPublic)
!19388 = !{!19387}
!19389 = !DITemplateTypeParameter(name: "B", type: !1623)
!19390 = !{!19389, !5895}
!19391 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19287, file: !1530, baseType: !1852, align: 8, flags: DIFlagPublic)
!19392 = !{!19391}
!19393 = !DIDerivedType(tag: DW_TAG_member, scope: !19289, file: !1530, baseType: !1534, size: 8, align: 8, flags: DIFlagArtificial)
!19394 = !DILocalVariable(name: "init", arg: 2, scope: !19298, file: !4378, line: 2482, type: !1852)
!19395 = !DILocalVariable(name: "f", arg: 3, scope: !19298, file: !4378, line: 2482, type: !19285)
!19396 = !DILocalVariable(name: "accum", scope: !19297, file: !4378, line: 2488, type: !1852, align: 8)
!19397 = !DILocalVariable(name: "x", scope: !19296, file: !4378, line: 2489, type: !6802, align: 64)
!19398 = !DILocalVariable(name: "residual", scope: !19295, file: !4378, line: 2490, type: !19294, align: 8)
!19399 = !DILocalVariable(name: "val", scope: !19290, file: !4378, line: 2490, type: !1852, align: 8)
!19400 = !{!19370, !19394, !19395, !19396, !19397, !19398, !19399}
!19401 = !{!19293}
!19402 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !19293, file: !1530, baseType: !19292, size: 8, align: 8)
!19403 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !19293, file: !1530, baseType: !19291, size: 8, align: 8)
!19404 = !{!19402, !19403}
!19405 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19291, file: !1530, baseType: !1623, size: 8, align: 8, flags: DIFlagPublic)
!19406 = !{!19405}
!19407 = !{!19389, !5896}
!19408 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19292, file: !1530, baseType: !3590, align: 8, flags: DIFlagPublic)
!19409 = !{!19408}
!19410 = !DITemplateTypeParameter(name: "Self", type: !1353)
!19411 = !DITemplateTypeParameter(name: "F", type: !19285)
!19412 = !DITemplateTypeParameter(name: "R", type: !19289)
!19413 = !{!19410, !4360, !19411, !19412}
!19414 = !{!19289, !7212, !1852, !19284}
!19415 = !DISubroutineType(types: !19414)
!19416 = !DILocalVariable(name: "self", arg: 1, scope: !19299, file: !4318, line: 48, type: !7212)
!19417 = !DILocalVariable(name: "init", scope: !19299, file: !4318, line: 48, type: !1852, align: 8)
!19418 = !DILocalVariable(name: "f", arg: 3, scope: !19299, file: !4318, line: 48, type: !19284)
!19419 = !{!19416, !19417, !19418}
!19420 = !DITemplateTypeParameter(name: "F", type: !19284)
!19421 = !{!6809, !6807, !4360, !19420, !19412}
!19422 = !DILocation(line: 779, column: 40, scope: !19281)
!19423 = !DILocation(line: 2967, column: 14, scope: !19300, inlinedAt: !19422)
!19424 = !{!1437, !7212, !19283}
!19425 = !DISubroutineType(types: !19424)
!19426 = !DILocalVariable(name: "self", arg: 1, scope: !19300, file: !4378, line: 2955, type: !7212)
!19427 = !DILocalVariable(name: "predicate", arg: 2, scope: !19300, file: !4378, line: 2955, type: !19283)
!19428 = !{!19426, !19427}
!19429 = !DITemplateTypeParameter(name: "Self", type: !1354)
!19430 = !DITemplateTypeParameter(name: "P", type: !19283)
!19431 = !{!19429, !19430}
!19432 = !DILocation(line: 0, scope: !19282)
!19433 = !DILocation(line: 785, column: 28, scope: !19280)
!19434 = !DILocalVariable(name: "elem_size", scope: !19303, file: !4317, line: 615, type: !1855, align: 64)
!19435 = !DILocalVariable(name: "self", arg: 1, scope: !19303, file: !4317, line: 615, type: !6772)
!19436 = !{!19435, !19434}
!19437 = !DILocation(line: 785, column: 58, scope: !19280)
!19438 = !DILocation(line: 2877, column: 62, scope: !19308, inlinedAt: !19437)
!19439 = !DILocation(line: 1437, column: 18, scope: !19309, inlinedAt: !19438)
!19440 = !DILocation(line: 309, column: 20, scope: !19310, inlinedAt: !19439)
!19441 = !DILocation(line: 0, scope: !19303, inlinedAt: !19440)
!19442 = !{!19307, !3763}
!19443 = !DISubroutineType(types: !19442)
!19444 = !{!19306}
!19445 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !19306, file: !1530, baseType: !19305, size: 128, align: 64, extraData: i64 0)
!19446 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !19306, file: !1530, baseType: !19304, size: 128, align: 64, extraData: i64 1)
!19447 = !{!19445, !19446}
!19448 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19304, file: !1530, baseType: !377, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!19449 = !{!19448}
!19450 = !DIDerivedType(tag: DW_TAG_member, scope: !19307, file: !1530, baseType: !1652, size: 64, align: 64, flags: DIFlagArtificial)
!19451 = !DISubprogram(name: "pop<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCshovLROGBtMy_11quinn_proto8StreamIdE3popBG_", scope: !617, file: !4290, line: 2871, type: !19443, scopeLine: 2871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3774)
!19452 = !DILocalVariable(name: "self", arg: 1, scope: !19308, file: !4290, line: 2871, type: !3763)
!19453 = !{!19452}
!19454 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<quinn_proto::StreamId, alloc::alloc::Global>", baseType: !617, size: 64, align: 64, dwarfAddressSpace: 0)
!19455 = !{!1855, !19454}
!19456 = !DISubroutineType(types: !19455)
!19457 = !DISubprogram(name: "capacity<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCshovLROGBtMy_11quinn_proto8StreamIdE8capacityBG_", scope: !617, file: !4290, line: 1436, type: !19456, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3774)
!19458 = !DILocalVariable(name: "self", arg: 1, scope: !19309, file: !4290, line: 1436, type: !3763)
!19459 = !{!19458}
!19460 = !DILocalVariable(name: "self", arg: 1, scope: !19310, file: !4317, line: 308, type: !7136)
!19461 = !{!19460}
!19462 = !DILocation(line: 2955, column: 16, scope: !19300, inlinedAt: !19422)
!19463 = !DILocation(line: 48, column: 26, scope: !19299, inlinedAt: !19423)
!19464 = !DILocation(line: 0, scope: !19300, inlinedAt: !19422)
!19465 = !DILocation(line: 0, scope: !19299, inlinedAt: !19423)
!19466 = !DILocalVariable(name: "f", scope: !19312, file: !4318, line: 28, type: !19284, align: 64)
!19467 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::cloned::clone_try_fold::{closure_env#0}<quinn_proto::Dir, (), core::ops::control_flow::ControlFlow<quinn_proto::Dir, ()>, core::iter::traits::iterator::Iterator::find::check::{closure_env#0}<quinn_proto::Dir, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>>", baseType: !19285, size: 64, align: 64, dwarfAddressSpace: 0)
!19468 = !{!19289, !19467, !1852, !6802}
!19469 = !DISubroutineType(cc: DW_CC_nocall, types: !19468)
!19470 = !DILocalVariable(name: "acc", arg: 2, scope: !19312, file: !4318, line: 29, type: !1852)
!19471 = !DILocalVariable(name: "elt", arg: 3, scope: !19312, file: !4318, line: 29, type: !6802)
!19472 = !{!19470, !19471, !19466}
!19473 = !DITemplateTypeParameter(name: "impl FnMut(Acc, T) -> R", type: !19284)
!19474 = !{!6807, !4352, !19412, !19473}
!19475 = !DILocalVariable(name: "x", arg: 3, scope: !19315, file: !4378, line: 2962, type: !1623)
!19476 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::find::check::{closure_env#0}<quinn_proto::Dir, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}>", baseType: !19284, size: 64, align: 64, dwarfAddressSpace: 0)
!19477 = !{!19289, !19476, !1852, !1623}
!19478 = !DISubroutineType(cc: DW_CC_nocall, types: !19477)
!19479 = !DILocalVariable(name: "predicate", scope: !19315, file: !4378, line: 2961, type: !19283, align: 64)
!19480 = !DILocalVariable(arg: 2, scope: !19315, file: !4378, line: 2962, type: !1852)
!19481 = !{!19475, !19479, !19480}
!19482 = !DITemplateTypeParameter(name: "impl FnMut(&T) -> bool", type: !19283)
!19483 = !{!6807, !19482}
!19484 = !DILocalVariable(name: "self__opened", scope: !19319, file: !2875, line: 778, type: !4220, align: 8)
!19485 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#0}", baseType: !19283, size: 64, align: 64, dwarfAddressSpace: 0)
!19486 = !{!2412, !19485, !6802}
!19487 = !DISubroutineType(cc: DW_CC_nocall, types: !19486)
!19488 = !DILocalVariable(name: "i", scope: !19318, file: !2875, line: 779, type: !1623, align: 8)
!19489 = !DILocalVariable(arg: 2, scope: !19319, file: !2875, line: 779, type: !6802)
!19490 = !{!19484, !19488, !19489}
!19491 = !DILocalVariable(name: "src", scope: !19322, file: !6071, line: 961, type: !2412, align: 8)
!19492 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut bool", baseType: !2412, size: 64, align: 64, dwarfAddressSpace: 0)
!19493 = !{!2412, !19492, !2412}
!19494 = !DISubroutineType(types: !19493)
!19495 = !DILocalVariable(name: "dest", arg: 1, scope: !19322, file: !6071, line: 961, type: !19492)
!19496 = !{!19495, !19491}
!19497 = !{!19327}
!19498 = !DILocation(line: 0, scope: !19281)
!19499 = !DILexicalBlockFile(scope: !19282, file: !6429, discriminator: 0)
!19500 = !{!19331}
!19501 = !DILocation(line: 2871, column: 16, scope: !19308, inlinedAt: !19437)
!19502 = !DILocation(line: 1436, column: 27, scope: !19309, inlinedAt: !19438)
!19503 = !DILocalVariable(name: "self", arg: 1, scope: !19336, file: !4290, line: 1965, type: !3763)
!19504 = !{!7142, !19454}
!19505 = !DISubroutineType(types: !19504)
!19506 = !DISubprogram(name: "as_ptr<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCshovLROGBtMy_11quinn_proto8StreamIdE6as_ptrBG_", scope: !617, file: !4290, line: 1965, type: !19505, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3774)
!19507 = !{!19503}
!19508 = !DILocation(line: 2878, column: 37, scope: !19308, inlinedAt: !19437)
!19509 = !DILocation(line: 1965, column: 25, scope: !19336, inlinedAt: !19508)
!19510 = !DILocalVariable(name: "self", arg: 1, scope: !19337, file: !4290, line: 3099, type: !3763)
!19511 = !DISubprogram(name: "len<quinn_proto::StreamId, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCshovLROGBtMy_11quinn_proto8StreamIdE3lenBG_", scope: !617, file: !4290, line: 3099, type: !19456, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3774)
!19512 = !{!19510}
!19513 = !DILocation(line: 2878, column: 55, scope: !19308, inlinedAt: !19437)
!19514 = !DILocation(line: 3099, column: 22, scope: !19337, inlinedAt: !19513)
!19515 = !DILocalVariable(name: "cond", arg: 1, scope: !19338, file: !6868, line: 202, type: !2412)
!19516 = !{!19515}
!19517 = !DILocation(line: 2877, column: 17, scope: !19308, inlinedAt: !19437)
!19518 = !DILocation(line: 0, scope: !19338, inlinedAt: !19517)
!19519 = !DILocation(line: 1968, column: 18, scope: !19336, inlinedAt: !19508)
!19520 = !DILocation(line: 296, column: 20, scope: !19340, inlinedAt: !19519)
!19521 = !DILocation(line: 606, column: 14, scope: !19341, inlinedAt: !19520)
!19522 = !DILocalVariable(name: "self", arg: 1, scope: !19342, file: !4361, line: 838, type: !7142)
!19523 = !{!7142, !7142, !1855, !3566}
!19524 = !DISubroutineType(types: !19523)
!19525 = !DILocalVariable(name: "count", arg: 2, scope: !19342, file: !4361, line: 838, type: !1855)
!19526 = !{!19522, !19525}
!19527 = !DILocation(line: 2878, column: 46, scope: !19308, inlinedAt: !19437)
!19528 = !DILocation(line: 0, scope: !19342, inlinedAt: !19527)
!19529 = !DILocalVariable(name: "src", arg: 1, scope: !19343, file: !3596, line: 1717, type: !7142)
!19530 = !{!377, !7142, !3566}
!19531 = !DISubroutineType(types: !19530)
!19532 = !{!19529}
!19533 = !DILocation(line: 2878, column: 22, scope: !19308, inlinedAt: !19437)
!19534 = !DILocation(line: 0, scope: !19343, inlinedAt: !19533)
!19535 = !DILocalVariable(name: "self", arg: 1, scope: !19344, file: !6099, line: 1296, type: !4258)
!19536 = !DILocalVariable(name: "k", arg: 2, scope: !19344, file: !6099, line: 1296, type: !2909)
!19537 = !{!19535, !19536}
!19538 = !DILocation(line: 786, column: 46, scope: !19280)
!19539 = !DILocation(line: 1296, column: 31, scope: !19344, inlinedAt: !19538)
!19540 = !DILocation(line: 0, scope: !19344, inlinedAt: !19538)
!19541 = !DILocalVariable(name: "self", arg: 1, scope: !19347, file: !3455, line: 1539, type: !1259)
!19542 = !{!1263, !1259, !19345}
!19543 = !DISubroutineType(types: !19542)
!19544 = !DITemplateTypeParameter(name: "F", type: !19345)
!19545 = !{!6373, !6388, !19544}
!19546 = !DISubprogram(name: "and_then<&mut core::option::Option<alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>>, &mut alloc::boxed::Box<quinn_proto::connection::streams::send::Send, alloc::alloc::Global>, quinn_proto::connection::streams::state::{impl#1}::poll::{closure_env#1}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQIBw_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendEEE8and_thenQBN_NCNvMs_NtB1q_5stateNtB2M_12StreamsState4polls_0EB1u_", scope: !1259, file: !3455, line: 1539, type: !19543, scopeLine: 1539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !19545)
!19547 = !DILocalVariable(name: "f", scope: !19347, file: !3455, line: 1539, type: !19345, align: 8)
!19548 = !DILocalVariable(name: "x", scope: !19346, file: !3455, line: 1544, type: !3652, align: 64)
!19549 = !{!19541, !19547, !19548}
!19550 = !DILocation(line: 786, column: 59, scope: !19280)
!19551 = !DILocation(line: 0, scope: !19347, inlinedAt: !19550)
!19552 = !DILocation(line: 0, scope: !19346, inlinedAt: !19550)
!19553 = !DILocalVariable(name: "s", arg: 2, scope: !19348, file: !2875, line: 786, type: !3652)
!19554 = !{!1263, !19345, !3652}
!19555 = !DISubroutineType(types: !19554)
!19556 = !{!19553}
!19557 = !DILocation(line: 1544, column: 24, scope: !19346, inlinedAt: !19550)
!19558 = !DILocation(line: 0, scope: !19348, inlinedAt: !19557)
!19559 = !DILocalVariable(name: "self", arg: 1, scope: !19350, file: !3455, line: 766, type: !3652)
!19560 = !DILocalVariable(name: "x", scope: !19349, file: !3455, line: 768, type: !3657, align: 64)
!19561 = !{!19559, !19560}
!19562 = !DILocation(line: 786, column: 74, scope: !19348, inlinedAt: !19557)
!19563 = !DILocation(line: 0, scope: !19350, inlinedAt: !19562)
!19564 = !DILocation(line: 0, scope: !19279)
!19565 = !DILocalVariable(name: "self", arg: 1, scope: !19351, file: !6392, line: 141, type: !3721)
!19566 = !DISubprogram(name: "is_writable", linkageName: "_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4sendNtB2_4Send11is_writable", scope: !519, file: !6392, line: 141, type: !6395, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1871)
!19567 = !{!19565}
!19568 = !DILocation(line: 796, column: 27, scope: !19279)
!19569 = !DILocation(line: 0, scope: !19351, inlinedAt: !19568)
!19570 = !DILocalVariable(name: "self", arg: 1, scope: !19352, file: !6392, line: 133, type: !3721)
!19571 = !{!19570}
!19572 = !DILocation(line: 796, column: 69, scope: !19279)
!19573 = !DILocation(line: 0, scope: !19352, inlinedAt: !19572)
!19574 = !DILocalVariable(name: "self", arg: 1, scope: !19353, file: !6397, line: 171, type: !6398)
!19575 = !{!19574}
!19576 = !DILocation(line: 134, column: 22, scope: !19352, inlinedAt: !19572)
!19577 = !DILocation(line: 171, column: 26, scope: !19353, inlinedAt: !19576)
!19578 = !DILocation(line: 779, column: 45, scope: !19281)
!19579 = !DILocation(line: 975, column: 22, scope: !19322, inlinedAt: !19323)
!19580 = !DILocation(line: 976, column: 49, scope: !19322, inlinedAt: !19323)
!19581 = !DILocation(line: 2490, column: 21, scope: !19296, inlinedAt: !19301)
!19582 = !DILocation(line: 779, column: 63, scope: !19318, inlinedAt: !19320)
!19583 = !DILocation(line: 781, column: 20, scope: !19281)
!19584 = !DILocation(line: 0, scope: !19499)
!19585 = !DILocation(line: 772, column: 10, scope: !1305, inlinedAt: !19328)
!19586 = !DILocation(line: 772, column: 26, scope: !1305, inlinedAt: !19328)
!19587 = !DILocation(line: 772, column: 9, scope: !1305, inlinedAt: !19328)
!19588 = !DILocation(line: 774, column: 18, scope: !1305, inlinedAt: !19328)
!19589 = !DILocation(line: 774, column: 50, scope: !1305, inlinedAt: !19328)
!19590 = !DILocation(line: 2570, column: 13, scope: !1306, inlinedAt: !19332)
!19591 = !DILocation(line: 1138, column: 5, scope: !1229, inlinedAt: !19334)
!19592 = !DILocation(line: 784, column: 12, scope: !19282)
!19593 = !DILocation(line: 2872, column: 12, scope: !19308, inlinedAt: !19437)
!19594 = !DILocation(line: 802, column: 9, scope: !19282)
!19595 = !DILocation(line: 802, column: 21, scope: !19282)
!19596 = !DILocation(line: 803, column: 6, scope: !19282)
!19597 = !DILocation(line: 2876, column: 17, scope: !19308, inlinedAt: !19437)
!19598 = !DILocation(line: 616, column: 49, scope: !19303, inlinedAt: !19440)
!19599 = !DILocation(line: 2877, column: 46, scope: !19308, inlinedAt: !19437)
!19600 = !DILocation(line: 210, column: 9, scope: !19338, inlinedAt: !19517)
!19601 = !DILocation(line: 611, column: 9, scope: !19339, inlinedAt: !19521)
!19602 = !DILocation(line: 3105, column: 37, scope: !19337, inlinedAt: !19513)
!19603 = !DILocation(line: 3105, column: 18, scope: !19337, inlinedAt: !19513)
!19604 = !DILocation(line: 872, column: 18, scope: !19342, inlinedAt: !19527)
!19605 = !DILocation(line: 1756, column: 9, scope: !19343, inlinedAt: !19533)
!19606 = !DILocation(line: 1301, column: 19, scope: !19344, inlinedAt: !19538)
!19607 = !DILocation(line: 1543, column: 15, scope: !19347, inlinedAt: !19550)
!19608 = !DILocation(line: 1543, column: 9, scope: !19347, inlinedAt: !19550)
!19609 = !DILocation(line: 767, column: 15, scope: !19350, inlinedAt: !19562)
!19610 = !DILocation(line: 767, column: 9, scope: !19350, inlinedAt: !19562)
!19611 = !DILocation(line: 799, column: 13, scope: !19282)
!19612 = !DILocation(line: 792, column: 17, scope: !19279)
!19613 = !DILocation(line: 796, column: 20, scope: !19279)
!19614 = !DILocation(line: 142, column: 18, scope: !19351, inlinedAt: !19568)
!19615 = !DILocation(line: 142, column: 9, scope: !19351, inlinedAt: !19568)
!19616 = !DILocation(line: 796, column: 44, scope: !19279)
!19617 = !DILocation(line: 172, column: 9, scope: !19353, inlinedAt: !19576)
!19618 = !DILocation(line: 797, column: 28, scope: !19279)
!19619 = distinct !DISubprogram(name: "is_some<core::option::Option<quinn_proto::connection::streams::state::StreamRecv>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionIBv_NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEE7is_someBT_", scope: !585, file: !3455, line: 633, type: !19629, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3623, declaration: !19630, retainedNodes: !19631)
!19620 = distinct !DISubprogram(name: "is_none<core::option::Option<quinn_proto::connection::streams::state::StreamRecv>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionIBv_NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEE7is_noneBT_", scope: !585, file: !3455, line: 682, type: !19629, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3623, declaration: !19636, retainedNodes: !19638)
!19621 = distinct !DILexicalBlock(scope: !19622, file: !6429, line: 206, column: 34)
!19622 = distinct !DILexicalBlock(scope: !19623, file: !6429, line: 206, column: 34)
!19623 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXso_CshovLROGBtMy_11quinn_protoNtB5_3DirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !19641, file: !6429, line: 206, type: !19643, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !19647)
!19624 = distinct !DISubprogram(name: "dir", linkageName: "_RNvMs3_CshovLROGBtMy_11quinn_protoNtB5_8StreamId3dir", scope: !377, file: !6429, line: 269, type: !6535, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6536, retainedNodes: !19663)
!19625 = distinct !DILocation(line: 888, column: 13, scope: !1420)
!19626 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<core::option::Option<quinn_proto::connection::streams::state::StreamRecv>>", baseType: !585, size: 64, align: 64, dwarfAddressSpace: 0)
!19627 = !DILocalVariable(name: "self", arg: 1, scope: !19619, file: !3455, line: 633, type: !19626)
!19628 = !{!2412, !19626}
!19629 = !DISubroutineType(types: !19628)
!19630 = !DISubprogram(name: "is_some<core::option::Option<quinn_proto::connection::streams::state::StreamRecv>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionIBv_NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEE7is_someBT_", scope: !585, file: !3455, line: 633, type: !19629, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3623)
!19631 = !{!19627}
!19632 = !DILexicalBlockFile(scope: !19620, file: !3455, discriminator: 2)
!19633 = !DILocation(line: 893, column: 48, scope: !1418)
!19634 = !DILocation(line: 683, column: 15, scope: !19632, inlinedAt: !19633)
!19635 = !DILocation(line: 633, column: 26, scope: !19619, inlinedAt: !19634)
!19636 = !DISubprogram(name: "is_none<core::option::Option<quinn_proto::connection::streams::state::StreamRecv>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionIBv_NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvEE7is_noneBT_", scope: !585, file: !3455, line: 682, type: !19629, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3623)
!19637 = !DILocalVariable(name: "self", arg: 1, scope: !19620, file: !3455, line: 682, type: !19626)
!19638 = !{!19637}
!19639 = !DILocation(line: 682, column: 26, scope: !19620, inlinedAt: !19633)
!19640 = !DILocalVariable(name: "self", arg: 1, scope: !19623, file: !6429, line: 206, type: !6802)
!19641 = !DINamespace(name: "{impl#26}", scope: !1619)
!19642 = !{!2412, !6802, !6802}
!19643 = !DISubroutineType(types: !19642)
!19644 = !DILocalVariable(name: "other", scope: !19623, file: !6429, line: 206, type: !6802, align: 64)
!19645 = !DILocalVariable(name: "__self_discr", scope: !19622, file: !6429, line: 206, type: !6514, align: 64)
!19646 = !DILocalVariable(name: "__arg1_discr", scope: !19621, file: !6429, line: 206, type: !6514, align: 64)
!19647 = !{!19640, !19644, !19645, !19646}
!19648 = !DILocation(line: 885, column: 18, scope: !1419)
!19649 = !DILocation(line: 206, column: 34, scope: !19623, inlinedAt: !19648)
!19650 = !DILocation(line: 0, scope: !1419)
!19651 = !DILocation(line: 888, column: 31, scope: !1420)
!19652 = !DILocation(line: 0, scope: !1421, inlinedAt: !19651)
!19653 = !DILocation(line: 893, column: 31, scope: !1418)
!19654 = !DILocation(line: 0, scope: !1422, inlinedAt: !19653)
!19655 = !DILocation(line: 0, scope: !19623, inlinedAt: !19648)
!19656 = !DILocation(line: 0, scope: !19621, inlinedAt: !19648)
!19657 = !DILocation(line: 892, column: 39, scope: !1420)
!19658 = !DILocation(line: 2877, column: 62, scope: !1417, inlinedAt: !19657)
!19659 = !DILocation(line: 1437, column: 18, scope: !1425, inlinedAt: !19658)
!19660 = !DILocation(line: 309, column: 20, scope: !1424, inlinedAt: !19659)
!19661 = !DILocation(line: 0, scope: !1423, inlinedAt: !19660)
!19662 = !DILocalVariable(name: "self", scope: !19624, file: !6429, line: 269, type: !377, align: 64)
!19663 = !{!19662}
!19664 = !DILocation(line: 885, column: 21, scope: !1419)
!19665 = !DILocation(line: 0, scope: !19624, inlinedAt: !19664)
!19667 = !DILocation(line: 0, scope: !19622, inlinedAt: !19648)
!19668 = !DILocation(line: 0, scope: !1420)
!19669 = !DILocation(line: 1332, column: 19, scope: !1421, inlinedAt: !19651)
!19670 = !DILocation(line: 2871, column: 16, scope: !1417, inlinedAt: !19657)
!19671 = !DILocation(line: 1436, column: 27, scope: !1425, inlinedAt: !19658)
!19672 = !DILocation(line: 2878, column: 37, scope: !1417, inlinedAt: !19657)
!19673 = !DILocation(line: 1965, column: 25, scope: !1426, inlinedAt: !19672)
!19674 = !DILocation(line: 2878, column: 55, scope: !1417, inlinedAt: !19657)
!19675 = !DILocation(line: 3099, column: 22, scope: !1427, inlinedAt: !19674)
!19676 = !DILocation(line: 2877, column: 17, scope: !1417, inlinedAt: !19657)
!19677 = !DILocation(line: 0, scope: !1428, inlinedAt: !19676)
!19678 = !DILocation(line: 1968, column: 18, scope: !1426, inlinedAt: !19672)
!19679 = !DILocation(line: 296, column: 20, scope: !1431, inlinedAt: !19678)
!19680 = !DILocation(line: 606, column: 14, scope: !1430, inlinedAt: !19679)
!19681 = !DILocation(line: 2878, column: 46, scope: !1417, inlinedAt: !19657)
!19682 = !DILocation(line: 0, scope: !1432, inlinedAt: !19681)
!19683 = !DILocation(line: 2878, column: 22, scope: !1417, inlinedAt: !19657)
!19684 = !DILocation(line: 0, scope: !1433, inlinedAt: !19683)
!19685 = !DILocation(line: 0, scope: !1418)
!19686 = !DILocation(line: 1332, column: 19, scope: !1422, inlinedAt: !19653)
!19687 = !DILocation(line: 270, column: 12, scope: !19624, inlinedAt: !19664)
!19688 = !DILocation(line: 206, column: 34, scope: !19621, inlinedAt: !19648)
!19689 = !DILocation(line: 887, column: 12, scope: !1420)
!19690 = !DILocation(line: 1333, column: 9, scope: !1421, inlinedAt: !19651)
!19691 = !DILocation(line: 1333, column: 19, scope: !1421, inlinedAt: !19651)
!19692 = !DILocation(line: 888, column: 21, scope: !1420)
!19693 = !DILocation(line: 2872, column: 12, scope: !1417, inlinedAt: !19657)
!19694 = !DILocation(line: 888, column: 13, scope: !1420)
!19695 = !DILocation(line: 848, column: 1, scope: !581, inlinedAt: !19625)
!19696 = !DILocation(line: 891, column: 12, scope: !1420)
!19697 = !DILocation(line: 895, column: 6, scope: !1419)
!19698 = !DILocation(line: 2876, column: 17, scope: !1417, inlinedAt: !19657)
!19699 = !DILocation(line: 616, column: 49, scope: !1423, inlinedAt: !19660)
!19700 = !DILocation(line: 2877, column: 46, scope: !1417, inlinedAt: !19657)
!19701 = !DILocation(line: 210, column: 9, scope: !1428, inlinedAt: !19676)
!19702 = !DILocation(line: 611, column: 9, scope: !1429, inlinedAt: !19680)
!19703 = !DILocation(line: 3105, column: 37, scope: !1427, inlinedAt: !19674)
!19704 = !DILocation(line: 3105, column: 18, scope: !1427, inlinedAt: !19674)
!19705 = !DILocation(line: 872, column: 18, scope: !1432, inlinedAt: !19681)
!19706 = !DILocation(line: 1756, column: 9, scope: !1433, inlinedAt: !19683)
!19707 = !DILocation(line: 2872, column: 9, scope: !1417, inlinedAt: !19657)
!19708 = !DILocation(line: 0, scope: !1417, inlinedAt: !19657)
!19709 = !DILocation(line: 1333, column: 9, scope: !1422, inlinedAt: !19653)
!19710 = !DILocation(line: 1333, column: 19, scope: !1422, inlinedAt: !19653)
!19711 = !DILocation(line: 634, column: 18, scope: !19619, inlinedAt: !19634)
!19712 = !DILocation(line: 893, column: 21, scope: !1418)
!19713 = !DILocation(line: 893, column: 13, scope: !1418)
!19714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Stream", scope: !3532, file: !1530, size: 448, align: 64, flags: DIFlagProtected, elements: !20217, templateParams: !1871, identifier: "94ee98a3f4326334bfb1d983d1e0133b")
!19715 = distinct !DILexicalBlock(scope: !19718, file: !2875, line: 291, column: 13)
!19716 = distinct !DILexicalBlock(scope: !19732, file: !2875, line: 281, column: 80)
!19717 = distinct !DILexicalBlock(scope: !19732, file: !2875, line: 281, column: 80)
!19718 = distinct !DILexicalBlock(scope: !19732, file: !2875, line: 280, column: 9)
!19719 = distinct !DILexicalBlock(scope: !19720, file: !5962, line: 3277, column: 17)
!19720 = distinct !DILexicalBlock(scope: !19721, file: !5962, line: 3273, column: 17)
!19721 = distinct !DILexicalBlock(scope: !19722, file: !5962, line: 3272, column: 17)
!19722 = distinct !DILexicalBlock(scope: !19724, file: !5962, line: 3270, column: 13)
!19723 = distinct !DILexicalBlock(scope: !19732, file: !5962, line: 898, column: 13)
!19724 = distinct !DILexicalBlock(scope: !19732, file: !5962, line: 897, column: 9)
!19725 = distinct !DILexicalBlock(scope: !19726, file: !5962, line: 3277, column: 17)
!19726 = distinct !DILexicalBlock(scope: !19727, file: !5962, line: 3273, column: 17)
!19727 = distinct !DILexicalBlock(scope: !19728, file: !5962, line: 3272, column: 17)
!19728 = distinct !DILexicalBlock(scope: !19730, file: !5962, line: 3270, column: 13)
!19729 = distinct !DILexicalBlock(scope: !19735, file: !5962, line: 898, column: 13)
!19730 = distinct !DILexicalBlock(scope: !19735, file: !5962, line: 897, column: 9)
!19731 = distinct !DILexicalBlock(scope: !19735, file: !2875, line: 268, column: 13)
!19732 = distinct !DILexicalBlock(scope: !19735, file: !2875, line: 263, column: 9)
!19733 = distinct !DILexicalBlock(scope: !19735, file: !2875, line: 261, column: 11)
!19734 = distinct !DILexicalBlock(scope: !19735, file: !2875, line: 261, column: 11)
!19735 = distinct !DILexicalBlock(scope: !19736, file: !2875, line: 258, column: 9)
!19736 = distinct !DISubprogram(name: "received", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState8received", scope: !711, file: !2875, line: 253, type: !20212, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !20218, retainedNodes: !20256)
!19737 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsQ_CsfFi4e9Agq2S_3logNtB5_8MetadataNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !6013, file: !6011, line: 1157, type: !6015, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !20258)
!19738 = distinct !DISubprogram(name: "build", linkageName: "_RNvMsd_CsfFi4e9Agq2S_3logNtB5_15MetadataBuilder5build", scope: !1191, file: !6011, line: 1237, type: !6020, scopeLine: 1237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6021, retainedNodes: !20260)
!19739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !2873, file: !1530, align: 8, elements: !1871, identifier: "a51ee6504a2b1cafcf87f455ac15ba0a")
!19740 = distinct !DILexicalBlock(scope: !19741, file: !5962, line: 3277, column: 17)
!19741 = distinct !DILexicalBlock(scope: !19746, file: !5962, line: 3273, column: 17)
!19742 = distinct !DILexicalBlock(scope: !19743, file: !5962, line: 898, column: 13)
!19743 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState8received0Bc_", scope: !2873, file: !2875, line: 259, type: !20264, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !20278)
!19744 = distinct !DILexicalBlock(scope: !19743, file: !5962, line: 897, column: 9)
!19745 = distinct !DILexicalBlock(scope: !19744, file: !5962, line: 3270, column: 13)
!19746 = distinct !DILexicalBlock(scope: !19745, file: !5962, line: 3272, column: 17)
!19747 = distinct !DISubprogram(name: "inspect_err<(), quinn_proto::transport_error::Error, quinn_proto::connection::streams::state::{impl#1}::received::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorE11inspect_errNCNvMs_NtNtNtBN_10connection7streams5stateNtB1W_12StreamsState8received0EBN_", scope: !614, file: !6614, line: 1015, type: !20280, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !20282, declaration: !20283, retainedNodes: !20287)
!19748 = distinct !DILexicalBlock(scope: !19747, file: !6614, line: 1019, column: 34)
!19749 = distinct !DILocation(line: 259, column: 38, scope: !19735)
!19750 = distinct !DILocation(line: 1020, column: 13, scope: !19748, inlinedAt: !19749)
!19751 = distinct !DILocation(line: 260, column: 13, scope: !20262, inlinedAt: !19750)
!19752 = distinct !DILocation(line: 1238, column: 23, scope: !19738, inlinedAt: !19751)
!19753 = distinct !DILocation(line: 1157, column: 10, scope: !19737, inlinedAt: !19752)
!19754 = distinct !DILocation(line: 1237, column: 18, scope: !19738, inlinedAt: !19751)
!19755 = distinct !DILexicalBlock(scope: !19756, file: !6614, line: 2192, column: 13)
!19756 = distinct !DISubprogram(name: "from_residual<quinn_proto::connection::streams::ShouldTransmit, quinn_proto::transport_error::Error, quinn_proto::transport_error::Error>", linkageName: "_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams14ShouldTransmitNtNtBQ_15transport_error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1R_EE13from_residualBQ_", scope: !6615, file: !6614, line: 2190, type: !6617, scopeLine: 2190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6619, retainedNodes: !20292)
!19757 = distinct !DILexicalBlock(scope: !19756, file: !6614, line: 2192, column: 13)
!19758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !19761, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !20304, templateParams: !20306, identifier: "9b9cda72f843e4ec5f73f3c9b9016ec0")
!19759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !19761, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !20308, templateParams: !20306, identifier: "656f8979a56b35e65510922d8946481b")
!19760 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19761, file: !1530, size: 384, align: 64, elements: !20302, templateParams: !1871, identifier: "f91ec3d25eaa2c9849439013c376c3c7", discriminator: !20309)
!19761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(u64, bool), quinn_proto::transport_error::Error>", scope: !2195, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !20299, templateParams: !1871, identifier: "dc65cf1a4e73bccfac5400c3c2985889")
!19762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !19765, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !20315, templateParams: !20317, identifier: "f368a490388851669b634cd728c0f2cb")
!19763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !19765, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !20319, templateParams: !20317, identifier: "e78b3fe76552ace7410e6d4af34c2528")
!19764 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19765, file: !1530, size: 384, align: 64, elements: !20313, templateParams: !1871, identifier: "9e0edf024a46aa21354bd93a803124bf", discriminator: !20320)
!19765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::result::Result<!, quinn_proto::transport_error::Error>, (u64, bool)>", scope: !5842, file: !1530, size: 384, align: 64, flags: DIFlagPublic, elements: !20310, templateParams: !1871, identifier: "f502f042eecec111fca95bb73ea03011")
!19766 = distinct !DILexicalBlock(scope: !19767, file: !6614, line: 2177, column: 13)
!19767 = distinct !DISubprogram(name: "branch<(u64, bool), quinn_proto::transport_error::Error>", linkageName: "_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTybENtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBS_", scope: !6620, file: !6614, line: 2175, type: !20298, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !20306, retainedNodes: !20323)
!19768 = distinct !DILexicalBlock(scope: !19767, file: !6614, line: 2178, column: 13)
!19769 = distinct !DILexicalBlock(scope: !19770, file: !6614, line: 2177, column: 13)
!19770 = distinct !DISubprogram(name: "branch<(), quinn_proto::transport_error::Error>", linkageName: "_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_", scope: !6620, file: !6614, line: 2175, type: !6623, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !3756, retainedNodes: !20332)
!19771 = distinct !DILexicalBlock(scope: !19770, file: !6614, line: 2178, column: 13)
!19772 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsQ_CsfFi4e9Agq2S_3logNtB5_8MetadataNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !6013, file: !6011, line: 1157, type: !6015, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !20338)
!19773 = distinct !DISubprogram(name: "build", linkageName: "_RNvMsd_CsfFi4e9Agq2S_3logNtB5_15MetadataBuilder5build", scope: !1191, file: !6011, line: 1237, type: !6020, scopeLine: 1237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6021, retainedNodes: !20345)
!19774 = distinct !DISubprogram(name: "is_never", linkageName: "_RNvMs2_NtCsgb4gPAseikh_12tracing_core10subscriberNtB5_8Interest8is_never", scope: !1228, file: !6246, line: 634, type: !6249, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6250, retainedNodes: !20348)
!19775 = distinct !DILexicalBlock(scope: !19777, file: !2875, line: 923, column: 9)
!19776 = distinct !DILexicalBlock(scope: !19777, file: !2875, line: 907, column: 13)
!19777 = distinct !DISubprogram(name: "add_read_credits", linkageName: "_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState16add_read_credits", scope: !711, file: !2875, line: 905, type: !6635, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6636, retainedNodes: !20368)
!19778 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !146, file: !3592, line: 2919, type: !3955, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !3956, retainedNodes: !20378)
!19779 = distinct !DISubprogram(name: "current", linkageName: "_RNvMsb_NtCsgb4gPAseikh_12tracing_core8metadataNtB5_11LevelFilter7current", scope: !1234, file: !6056, line: 704, type: !6263, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6264)
!19780 = distinct !DISubprogram(name: "load", linkageName: "_RNvMsA_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomichE4load", scope: !339, file: !3592, line: 2919, type: !6267, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6268, retainedNodes: !20385)
!19781 = distinct !DISubprogram(name: "interest", linkageName: "_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8interest", scope: !340, file: !6037, line: 347, type: !6270, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6271, retainedNodes: !20391)
!19782 = distinct !DISubprogram(name: "metadata", linkageName: "_RNvXs_NtCsgb4gPAseikh_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata", scope: !6039, file: !6037, line: 368, type: !6041, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !20394)
!19783 = distinct !DISubprogram(name: "le<log::Level, log::LevelFilter>", linkageName: "_RNvYNtCsfFi4e9Agq2S_3log5LevelINtNtCskKLDkoKarTP_4core3cmp10PartialOrdNtB4_11LevelFilterE2leCshovLROGBtMy_11quinn_proto", scope: !5858, file: !4291, line: 1488, type: !6026, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6029, retainedNodes: !20401)
!19784 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !418, file: !3592, line: 760, type: !6031, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6032, retainedNodes: !20407)
!19785 = distinct !DISubprogram(name: "has_been_set", linkageName: "_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher12has_been_set", scope: !6034, file: !6033, line: 340, type: !3963, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!19786 = distinct !DISubprogram(name: "max_level", linkageName: "_RNvCsfFi4e9Agq2S_3log9max_level", scope: !1750, file: !6011, line: 1396, type: !6036, scopeLine: 1396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!19787 = distinct !{!19787, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorE11inspect_errNCNvMs_NtNtNtBN_10connection7streams5stateNtB1W_12StreamsState8received0EBN_"}
!19788 = distinct !{!19788, !19787, !"_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorE11inspect_errNCNvMs_NtNtNtBN_10connection7streams5stateNtB1W_12StreamsState8received0EBN_: argument 0"}
!19789 = distinct !{!19789, !19787, !"_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorE11inspect_errNCNvMs_NtNtNtBN_10connection7streams5stateNtB1W_12StreamsState8received0EBN_: argument 1"}
!19790 = distinct !DILocation(line: 1015, column: 33, scope: !19747, inlinedAt: !19749)
!19791 = distinct !DILocation(line: 0, scope: !19748, inlinedAt: !19749)
!19792 = distinct !DISubprogram(name: "is_never", linkageName: "_RNvMs2_NtCsgb4gPAseikh_12tracing_core10subscriberNtB5_8Interest8is_never", scope: !1228, file: !6246, line: 634, type: !6249, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6250, retainedNodes: !20451)
!19793 = distinct !DILocation(line: 260, column: 13, scope: !20452, inlinedAt: !19750)
!19794 = distinct !DILocation(line: 634, column: 21, scope: !19792, inlinedAt: !19793)
!19795 = distinct !DILocation(line: 0, scope: !19743, inlinedAt: !19750)
!19796 = distinct !DILocation(line: 260, column: 13, scope: !20273, inlinedAt: !19750)
!19797 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !146, file: !3592, line: 2919, type: !3955, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !3956, retainedNodes: !20455)
!19798 = distinct !DISubprogram(name: "current", linkageName: "_RNvMsb_NtCsgb4gPAseikh_12tracing_core8metadataNtB5_11LevelFilter7current", scope: !1234, file: !6056, line: 704, type: !6263, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6264)
!19799 = distinct !DILocation(line: 260, column: 13, scope: !20456, inlinedAt: !19750)
!19800 = distinct !DILocation(line: 705, column: 25, scope: !19798, inlinedAt: !19799)
!19801 = distinct !DILocation(line: 0, scope: !19797, inlinedAt: !19800)
!19802 = distinct !DISubprogram(name: "load", linkageName: "_RNvMsA_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomichE4load", scope: !339, file: !3592, line: 2919, type: !6267, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6268, retainedNodes: !20459)
!19803 = distinct !DISubprogram(name: "interest", linkageName: "_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8interest", scope: !340, file: !6037, line: 347, type: !6270, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6271, retainedNodes: !20461)
!19804 = distinct !DILocation(line: 260, column: 13, scope: !20462, inlinedAt: !19750)
!19805 = distinct !DILocation(line: 348, column: 29, scope: !19803, inlinedAt: !19804)
!19806 = distinct !DILocation(line: 0, scope: !19802, inlinedAt: !19805)
!19807 = distinct !DISubprogram(name: "metadata", linkageName: "_RNvXs_NtCsgb4gPAseikh_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata", scope: !6039, file: !6037, line: 368, type: !6041, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !20465)
!19808 = distinct !DILocation(line: 260, column: 13, scope: !20466, inlinedAt: !19750)
!19809 = distinct !DILocation(line: 0, scope: !19807, inlinedAt: !19808)
!19810 = distinct !DISubprogram(name: "le<log::Level, log::LevelFilter>", linkageName: "_RNvYNtCsfFi4e9Agq2S_3log5LevelINtNtCskKLDkoKarTP_4core3cmp10PartialOrdNtB4_11LevelFilterE2leCshovLROGBtMy_11quinn_proto", scope: !5858, file: !4291, line: 1488, type: !6026, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6029, retainedNodes: !20470)
!19811 = distinct !DILocation(line: 260, column: 13, scope: !20471, inlinedAt: !19750)
!19812 = distinct !DILocation(line: 0, scope: !19810, inlinedAt: !19811)
!19813 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !418, file: !3592, line: 760, type: !6031, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6032, retainedNodes: !20474)
!19814 = distinct !DISubprogram(name: "has_been_set", linkageName: "_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher12has_been_set", scope: !6034, file: !6033, line: 340, type: !3963, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!19815 = distinct !DILocation(line: 260, column: 13, scope: !20475, inlinedAt: !19750)
!19816 = distinct !DILocation(line: 341, column: 12, scope: !19814, inlinedAt: !19815)
!19817 = distinct !DILocation(line: 0, scope: !19813, inlinedAt: !19816)
!19818 = distinct !DISubprogram(name: "max_level", linkageName: "_RNvCsfFi4e9Agq2S_3log9max_level", scope: !1750, file: !6011, line: 1396, type: !6036, scopeLine: 1396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!19819 = distinct !DILocation(line: 260, column: 13, scope: !20476, inlinedAt: !19750)
!19820 = distinct !DILocation(line: 1403, column: 50, scope: !19818, inlinedAt: !19819)
!19821 = distinct !DILocation(line: 0, scope: !19797, inlinedAt: !19820)
!19822 = distinct !DILocation(line: 260, column: 13, scope: !20477, inlinedAt: !19750)
!19823 = distinct !DILocation(line: 0, scope: !19807, inlinedAt: !19822)
!19824 = distinct !DILocation(line: 2921, column: 26, scope: !19797, inlinedAt: !19800)
!19825 = distinct !DILocation(line: 0, scope: !659, inlinedAt: !19824)
!19826 = distinct !DILocation(line: 0, scope: !19803, inlinedAt: !19804)
!19827 = distinct !DILocation(line: 2919, column: 31, scope: !19802, inlinedAt: !19805)
!19828 = distinct !DILocation(line: 2921, column: 26, scope: !19802, inlinedAt: !19805)
!19829 = distinct !DILocation(line: 0, scope: !1193, inlinedAt: !19828)
!19830 = distinct !DILocation(line: 0, scope: !20268, inlinedAt: !19750)
!19831 = distinct !DILocation(line: 0, scope: !20266, inlinedAt: !19750)
!19832 = distinct !DILocation(line: 260, column: 13, scope: !20479, inlinedAt: !19750)
!19833 = distinct !DILocation(line: 0, scope: !19807, inlinedAt: !19832)
!19834 = distinct !DISubprogram(name: "fields", linkageName: "_RNvMNtCsgb4gPAseikh_12tracing_core8metadataNtB2_8Metadata6fields", scope: !336, file: !6056, line: 276, type: !6276, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6277, retainedNodes: !20481)
!19835 = distinct !DILocation(line: 260, column: 13, scope: !20482, inlinedAt: !19750)
!19836 = distinct !DILocation(line: 0, scope: !19834, inlinedAt: !19835)
!19837 = distinct !DILexicalBlock(scope: !19838, file: !4272, line: 48, column: 21)
!19838 = distinct !DILexicalBlock(scope: !19841, file: !4272, line: 46, column: 13)
!19839 = distinct !DILexicalBlock(scope: !19840, file: !4272, line: 48, column: 21)
!19840 = distinct !DILexicalBlock(scope: !19841, file: !4272, line: 46, column: 13)
!19841 = distinct !DISubprogram(name: "value_set_all", linkageName: "_RNvMsK_NtCsgb4gPAseikh_12tracing_core5fieldNtB5_8FieldSet13value_set_all", scope: !326, file: !6278, line: 944, type: !6280, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6281, retainedNodes: !20495)
!19842 = distinct !DILocation(line: 260, column: 13, scope: !20496, inlinedAt: !19750)
!19843 = distinct !DILocation(line: 0, scope: !19841, inlinedAt: !19842)
!19844 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments8from_str", scope: !448, file: !6282, line: 815, type: !6284, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6285, retainedNodes: !20498)
!19845 = distinct !DILocation(line: 260, column: 13, scope: !20499, inlinedAt: !19750)
!19846 = distinct !DILocation(line: 0, scope: !19844, inlinedAt: !19845)
!19847 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsQ_CsfFi4e9Agq2S_3logNtB5_8MetadataNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !6013, file: !6011, line: 1157, type: !6015, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !20501)
!19848 = distinct !DISubprogram(name: "build", linkageName: "_RNvMsd_CsfFi4e9Agq2S_3logNtB5_15MetadataBuilder5build", scope: !1191, file: !6011, line: 1237, type: !6020, scopeLine: 1237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6021, retainedNodes: !20503)
!19849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !2884, file: !1530, align: 8, elements: !1871, identifier: "16c047049f272a88b76ea91b4cc6991f")
!19850 = distinct !DILexicalBlock(scope: !19851, file: !5962, line: 3277, column: 17)
!19851 = distinct !DILexicalBlock(scope: !19855, file: !5962, line: 3273, column: 17)
!19852 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received00Be_", scope: !2884, file: !5962, line: 902, type: !20507, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !20515)
!19853 = distinct !DILexicalBlock(scope: !19852, file: !5962, line: 903, column: 17)
!19854 = distinct !DILexicalBlock(scope: !19853, file: !5962, line: 3270, column: 13)
!19855 = distinct !DILexicalBlock(scope: !19854, file: !5962, line: 3272, column: 17)
!19856 = distinct !DILocation(line: 260, column: 13, scope: !20266, inlinedAt: !19750)
!19857 = distinct !DILocation(line: 909, column: 17, scope: !20504, inlinedAt: !19856)
!19858 = distinct !DILocation(line: 1238, column: 23, scope: !19848, inlinedAt: !19857)
!19859 = distinct !DILocation(line: 1157, column: 10, scope: !19847, inlinedAt: !19858)
!19860 = distinct !DILocation(line: 1237, column: 18, scope: !19848, inlinedAt: !19857)
!19861 = distinct !DILocation(line: 0, scope: !19852, inlinedAt: !19856)
!19862 = distinct !DILocation(line: 902, column: 15, scope: !19852, inlinedAt: !19856)
!19863 = distinct !DILocation(line: 909, column: 17, scope: !19851, inlinedAt: !19856)
!19864 = distinct !DISubprogram(name: "le<log::Level, log::LevelFilter>", linkageName: "_RNvYNtCsfFi4e9Agq2S_3log5LevelINtNtCskKLDkoKarTP_4core3cmp10PartialOrdNtB4_11LevelFilterE2leCshovLROGBtMy_11quinn_proto", scope: !5858, file: !4291, line: 1488, type: !6026, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6029, retainedNodes: !20519)
!19865 = distinct !DILocation(line: 909, column: 17, scope: !19853, inlinedAt: !19856)
!19866 = distinct !DILocation(line: 0, scope: !19864, inlinedAt: !19865)
!19867 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !418, file: !3592, line: 760, type: !6031, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6032, retainedNodes: !20522)
!19868 = distinct !DISubprogram(name: "has_been_set", linkageName: "_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher12has_been_set", scope: !6034, file: !6033, line: 340, type: !3963, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!19869 = distinct !DILocation(line: 909, column: 17, scope: !20523, inlinedAt: !19856)
!19870 = distinct !DILocation(line: 341, column: 12, scope: !19868, inlinedAt: !19869)
!19871 = distinct !DILocation(line: 0, scope: !19867, inlinedAt: !19870)
!19872 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !146, file: !3592, line: 2919, type: !3955, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !3956, retainedNodes: !20526)
!19873 = distinct !DISubprogram(name: "max_level", linkageName: "_RNvCsfFi4e9Agq2S_3log9max_level", scope: !1750, file: !6011, line: 1396, type: !6036, scopeLine: 1396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871)
!19874 = distinct !DILocation(line: 909, column: 17, scope: !20527, inlinedAt: !19856)
!19875 = distinct !DILocation(line: 1403, column: 50, scope: !19873, inlinedAt: !19874)
!19876 = distinct !DILocation(line: 0, scope: !19872, inlinedAt: !19875)
!19877 = distinct !DISubprogram(name: "metadata", linkageName: "_RNvXs_NtCsgb4gPAseikh_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata", scope: !6039, file: !6037, line: 368, type: !6041, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, retainedNodes: !20530)
!19878 = distinct !DILocation(line: 909, column: 17, scope: !20531, inlinedAt: !19856)
!19879 = distinct !DILocation(line: 0, scope: !19877, inlinedAt: !19878)
!19880 = distinct !DILocation(line: 903, column: 39, scope: !19852, inlinedAt: !19856)
!19881 = distinct !DILocation(line: 0, scope: !19877, inlinedAt: !19880)
!19882 = distinct !DILocation(line: 0, scope: !19853, inlinedAt: !19856)
!19883 = distinct !DILocation(line: 1488, column: 11, scope: !19864, inlinedAt: !19865)
!19884 = distinct !DISubprogram(name: "is_le", linkageName: "_RNvMNtCskKLDkoKarTP_4core3cmpNtB2_8Ordering5is_le", scope: !1649, file: !4291, line: 531, type: !5888, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6042, retainedNodes: !20533)
!19885 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCskKLDkoKarTP_4core3cmpNtB5_8Ordering5is_leINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCshovLROGBtMy_11quinn_proto", scope: !3595, file: !3593, line: 250, type: !6045, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !6048)
!19886 = distinct !DILexicalBlock(scope: !19887, file: !3455, line: 662, column: 13)
!19887 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_leECshovLROGBtMy_11quinn_proto", scope: !1149, file: !3455, line: 659, type: !5891, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !5893, declaration: !6043, retainedNodes: !20538)
!19888 = distinct !DILexicalBlock(scope: !19887, file: !3455, line: 662, column: 13)
!19889 = distinct !DILocation(line: 1489, column: 33, scope: !19864, inlinedAt: !19865)
!19890 = distinct !DILocation(line: 662, column: 24, scope: !19888, inlinedAt: !19889)
!19891 = distinct !DILocation(line: 250, column: 5, scope: !19885, inlinedAt: !19890)
!19892 = distinct !DILocation(line: 0, scope: !19884, inlinedAt: !19891)
!19893 = distinct !DILocation(line: 0, scope: !19887, inlinedAt: !19889)
!19894 = distinct !DILocation(line: 764, column: 13, scope: !19867, inlinedAt: !19870)
!19895 = distinct !DILocation(line: 0, scope: !1193, inlinedAt: !19894)
!19896 = distinct !{!19896, i1 true, !"_RNCNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received00Be_"}
!19897 = distinct !{!19897, !19896, !"_RNCNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB8_12StreamsState8received00Be_: argument 0"}
!19898 = distinct !DILocation(line: 0, scope: !19854, inlinedAt: !19856)
!19899 = distinct !DILocation(line: 909, column: 17, scope: !20540, inlinedAt: !19856)
!19900 = distinct !DILocation(line: 1488, column: 11, scope: !19864, inlinedAt: !19899)
!19901 = distinct !DILocation(line: 2921, column: 26, scope: !19872, inlinedAt: !19875)
!19902 = distinct !DILocation(line: 0, scope: !659, inlinedAt: !19901)
!19903 = distinct !DILocation(line: 1488, column: 18, scope: !19864, inlinedAt: !19899)
!19904 = distinct !DILocation(line: 1489, column: 33, scope: !20541, inlinedAt: !19899)
!19905 = distinct !DILocation(line: 0, scope: !19886, inlinedAt: !19904)
!19906 = distinct !DILocation(line: 662, column: 24, scope: !20543, inlinedAt: !19904)
!19907 = distinct !DILocation(line: 250, column: 5, scope: !20542, inlinedAt: !19906)
!19908 = distinct !DILocation(line: 0, scope: !19884, inlinedAt: !19907)
!19909 = distinct !DILocation(line: 0, scope: !19887, inlinedAt: !19904)
!19910 = distinct !DILocation(line: 0, scope: !19855, inlinedAt: !19856)
!19911 = distinct !DISubprogram(name: "target", linkageName: "_RNvMNtCsgb4gPAseikh_12tracing_core8metadataNtB2_8Metadata6target", scope: !336, file: !6056, line: 295, type: !6058, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, templateParams: !1871, declaration: !6059, retainedNodes: !20545)
!19912 = distinct !DILocation(line: 909, column: 17, scope: !20546, inlinedAt: !19856)
!19913 = distinct !DILocation(line: 0, scope: !19911, inlinedAt: !19912)
end_hunk_3
