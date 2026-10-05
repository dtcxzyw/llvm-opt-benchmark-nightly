Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.10?download=true
inline.NumInlined: 675
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB2_9Datagrams4send:bb.a
    #dbg_value(ptr %i.o, !18853, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !18860)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6136, !dbg !19057 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !19057, !nonnull !2081, !noundef !2081
    #dbg_value(ptr %i.q, !18866, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18872)
    #dbg_value(ptr %i.q, !18873, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18877)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !19058
  %i.s = load i64, ptr %i.r, align 8, !dbg !19058, !range !7536, !noundef !2081
  %.not = icmp eq i64 %i.s, 0, !dbg !19059
  br i1 %.not, label %bb.af, label %bb.b, !dbg !18851

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !7538, !DIExpression(), !18547)
    #dbg_value(i64 9, !7547, !DIExpression(), !18549)
    #dbg_value(ptr %i.o, !7552, !DIExpression(), !18551)
    #dbg_value(ptr %i.o, !7559, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18553)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 160, !dbg !19060
  %i.u = load i16, ptr %i.t, align 16, !dbg !19060, !noalias !18879, !noundef !2081
  %i.v = invoke noundef i64 @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection21predict_1rtt_overhead(ptr noundef nonnull align 16 %i.o, i64 noundef 0, i64 undef)
          to label %.noexc unwind label %.thread126.loopexit.split-lp, !dbg !19061

.noexc:                                           ; preds = %bb.b
    #dbg_value(!DIArgList(i16 %i.u, i64 %i.v), !7542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 9, DW_OP_minus, DW_OP_stack_value), !18556)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 560, !dbg !19062
  %i.x = load i64, ptr %i.w, align 16, !dbg !19062, !range !7536, !noalias !18879, !noundef !2081
    #dbg_value(i64 %i.x, !7565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18558)
    #dbg_value(i64 poison, !7565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18558)
  %i.y = trunc nuw i64 %i.x to i1, !dbg !19063
  br i1 %i.y, label %bb.c, label %bb.af, !dbg !19063

.thread126.loopexit:                              ; preds = %bb.h, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread126.loopexit.split-lp:                     ; preds = %bb.b, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 568, !dbg !19062
  %i.aa = load i64, ptr %i.z, align 8, !dbg !19062, !noalias !18879
    #dbg_value(i64 %i.aa, !7565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18558)
  %i.ab = zext i16 %i.u to i64, !dbg !19064
    #dbg_value(!DIArgList(i64 %i.ab, i64 0, i64 %i.v), !7542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_constu, 9, DW_OP_minus, DW_OP_stack_value), !18556)
  %reass.sub = sub i64 %i.ab, %i.v, !dbg !19064
  %i.ac = add i64 %reass.sub, -9, !dbg !19064
    #dbg_value(i64 %i.aa, !7548, !DIExpression(), !18549)
  %i.ad = tail call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 9), !dbg !19065
    #dbg_value(i64 %i.ad, !7543, !DIExpression(), !18559)
    #dbg_value(ptr undef, !5619, !DIExpression(DW_OP_deref), !18561)
    #dbg_value(ptr undef, !5620, !DIExpression(DW_OP_deref), !18561)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad), !dbg !19066
    #dbg_value(i64 %..i.i, !18734, !DIExpression(), !18880)
    #dbg_value(ptr %2, !18881, !DIExpression(), !18884)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !19067
  %i.af = load i64, ptr %i.ae, align 8, !dbg !19067, !noundef !2081 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, %..i.i, !dbg !19068
  br i1 %i.ag, label %bb.af, label %bb.d, !dbg !19068

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 5448 ; 7 uses
  br i1 %3, label %.preheader, label %bb.e, !dbg !19069

.preheader:                                       ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 5440 ; 2 uses
    #dbg_value(ptr %i.o, !18886, !DIExpression(DW_OP_plus_uconst, 5416, DW_OP_stack_value), !18889)
  %i.aj = load i64, ptr %i.ah, align 8, !dbg !19070, !noundef !2081 ; 2 uses
  %i.ak = load i64, ptr %i.ai, align 16, !dbg !19071, !noundef !2081
  %i.al = shl i64 %i.ak, 5, !dbg !19072
  %i.am = tail call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 %i.al), !dbg !19073
  %i.an = load ptr, ptr %i.p, align 8, !dbg !19074, !nonnull !2081, !noundef !2081
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 216, !dbg !18899
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !18899, !noundef !2081
  %i.aq = icmp ugt i64 %i.am, %i.ap, !dbg !19075
  br i1 %i.aq, label %.lr.ph, label %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB5_14DatagramBuffer9push_back.exit, !dbg !19075

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 5416
  %.sroa.6.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.h, !dbg !19075

bb.e:                                             ; preds = %bb.d
  %i.bd = load i64, ptr %i.ah, align 8, !dbg !19076, !noundef !2081 ; 2 uses
    #dbg_value(ptr %2, !18881, !DIExpression(), !18903)
  %i.be = add i64 %i.af, 32, !dbg !19076
  %i.bf = add i64 %i.be, %i.bd, !dbg !19076
    #dbg_value(ptr %i.o, !18845, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !18905)
    #dbg_value(ptr %i.o, !18853, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !18908)
  %i.bg = load ptr, ptr %i.p, align 8, !dbg !19077, !nonnull !2081, !noundef !2081
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 216, !dbg !18904
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !18904, !noundef !2081
  %i.bj = icmp ugt i64 %i.bf, %i.bi, !dbg !19076
  br i1 %i.bj, label %bb.f, label %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB5_14DatagramBuffer9push_back.exit, !dbg !19076

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 5456, !dbg !19078
  store i8 1, ptr %i.bk, align 16, !dbg !19078
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19079
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !19080
  store i64 3, ptr %0, align 8, !dbg !19079
  br label %bb.g, !dbg !19081

_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB5_14DatagramBuffer9push_back.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramEBF_.exit116, %.preheader, %bb.e
  %i.bl = phi i64 [ %i.bd, %bb.e ], [ %i.aj, %.preheader ], [ %i.ea, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramEBF_.exit116 ], !dbg !19082
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 5416, !dbg !19083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !19085
  call void @llvm.experimental.noalias.scope.decl(metadata !18911), !dbg !19086
  call void @llvm.experimental.noalias.scope.decl(metadata !18912), !dbg !19086
    #dbg_value(ptr %i.bm, !7599, !DIExpression(), !18570)
    #dbg_declare(ptr %i.d, !7600, !DIExpression(), !18571)
    #dbg_declare(ptr %i.d, !7602, !DIExpression(), !18573)
    #dbg_value(ptr %i.d, !7609, !DIExpression(), !18575)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !19087
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !19087, !alias.scope !18912, !noalias !18911, !noundef !2081
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 5448, !dbg !19082
  %i.bq = add i64 %i.bl, %i.bo, !dbg !19082
  store i64 %i.bq, ptr %i.bp, align 8, !dbg !19082, !alias.scope !18911, !noalias !18912
    #dbg_value(ptr %i.bm, !7607, !DIExpression(), !18576)
  %i.br = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !dbg !19088 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19089
  store i64 -1, ptr %0, align 8, !dbg !19090
  br label %bb.g, !dbg !19081

bb.g:                                             ; preds = %bb.af, %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB5_14DatagramBuffer9push_back.exit, %bb.f
  ret void, !dbg !19091

bb.h:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramEBF_.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !19092
  call void @llvm.experimental.noalias.scope.decl(metadata !18913), !dbg !19093
    #dbg_declare(ptr poison, !7412, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !18580)
    #dbg_value(ptr %i.ar, !7424, !DIExpression(), !18581)
    #dbg_declare(ptr %i.b, !7428, !DIExpression(), !18583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19094, !noalias !18914
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramE9pop_frontB19_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ar)
          to label %.noexc108 unwind label %.thread126.loopexit, !dbg !19095

.noexc108:                                        ; preds = %bb.h
  %i.bs = load ptr, ptr %i.b, align 8, !dbg !19096, !noalias !18914, !noundef !2081 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null, !dbg !19096
  br i1 %.not.i, label %bb.i, label %bb.l, !dbg !19097

bb.i:                                             ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19098, !noalias !18914
    #dbg_value(ptr null, !18782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18786)
    #dbg_value(i64 poison, !18782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18786)
    #dbg_value(i64 poison, !18782, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18786)
    #dbg_value(i64 poison, !18782, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18786)
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #28
          to label %bb.j unwind label %.thread126.loopexit.split-lp, !dbg !19099

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.u, %.noexc112, %bb.t, %bb.r, %bb.ab, %bb.z, %bb.y, %bb.o, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !18915), !dbg !19100
    #dbg_value(ptr %i.n, !7612, !DIExpression(), !18588)
  call void @llvm.experimental.noalias.scope.decl(metadata !18916), !dbg !19101
    #dbg_value(ptr %i.n, !7617, !DIExpression(), !18592)
  call void @llvm.experimental.noalias.scope.decl(metadata !18917), !dbg !19102
    #dbg_value(ptr %i.n, !7621, !DIExpression(), !18596)
  %i.bu = load ptr, ptr %i.n, align 8, !dbg !19103, !alias.scope !18918, !nonnull !2081, !align !2422, !noundef !2081
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32, !dbg !19103
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !19103, !noalias !18918, !nonnull !2081, !noundef !2081
  %i.bx = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19104, !alias.scope !18918, !noundef !2081
  %i.by = load i64, ptr %.sroa.6121.0..sroa_idx, align 8, !dbg !19105, !alias.scope !18918, !noundef !2081
  invoke void %i.bw(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.7.0..sroa_idx, ptr noundef %i.bx, i64 noundef %i.by)
          to label %.thread unwind label %bb.ae, !dbg !19103, !inline_history !1506

bb.l:                                             ; preds = %.noexc108
    #dbg_value(ptr %i.bs, !18782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18786)
    #dbg_value(i64 poison, !18782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18786)
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !dbg !19106, !noalias !18914
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !19106, !noalias !18914
  %i.bz = load <2 x i64>, ptr %.sroa.6.0..sroa_idx119, align 8, !dbg !19106, !noalias !18913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19098, !noalias !18914
    #dbg_value(i64 poison, !7412, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18597)
    #dbg_value(i64 %.sroa.57.0.copyload.i, !7412, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18597)
  %i.ca = load i64, ptr %i.ah, align 8, !dbg !19107, !alias.scope !18913, !noalias !18919, !noundef !2081
  %i.cb = sub i64 %i.ca, %.sroa.4.0.copyload.i, !dbg !19107
  store i64 %i.cb, ptr %i.ah, align 8, !dbg !19107, !alias.scope !18913, !noalias !18919
    #dbg_value(ptr %i.bs, !18782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18786)
    #dbg_value(i64 poison, !18782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18786)
    #dbg_value(i64 poison, !18782, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18786)
    #dbg_value(i64 %.sroa.57.0.copyload.i, !18782, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18786)
  store ptr %i.bs, ptr %i.n, align 8, !dbg !19108
  store <2 x i64> %i.bz, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19108
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !19108
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !18788, !DIExpression(), !18793)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !2500, !DIExpression(), !18599)
    #dbg_value(i8 0, !2503, !DIExpression(), !18599)
  %i.cc = load atomic i64, ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !19109
  %i.cd = icmp eq i64 %i.cc, 0, !dbg !19110
  br i1 %i.cd, label %bb.m, label %bb.w, !dbg !19111

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, !18801, !DIExpression(), !18920)
    #dbg_value(ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, !18795, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18921)
    #dbg_value(ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, i64 16), !7624, !DIExpression(), !18601)
    #dbg_value(i8 0, !7627, !DIExpression(), !18601)
  %i.ce = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, i64 16) monotonic, align 8, !dbg !19112 ; 3 uses
  switch i8 %i.ce, label %bb.n [
    i8 0, label %bb.w
    i8 1, label %bb.o
    i8 2, label %bb.o
  ], !dbg !19113, !prof !7629

bb.n:                                             ; preds = %bb.m
  %i.cf = invoke noundef i8 @_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE)
          to label %bb.p unwind label %bb.k, !dbg !19114 ; 2 uses

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.p
  %.sroa.022.0 = phi i8 [ %i.cf, %bb.p ], [ %i.ce, %bb.m ], [ %i.ce, %bb.m ], !dbg !18920
    #dbg_value(i8 %.sroa.022.0, !18741, !DIExpression(), !18922)
  %i.cg = load ptr, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, align 8, !dbg !19115, !nonnull !2081, !align !2422, !noundef !2081
  %i.ch = invoke noundef zeroext i1 @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cg, i8 noundef %.sroa.022.0)
          to label %bb.q unwind label %bb.k, !dbg !19116

bb.p:                                             ; preds = %bb.n
    #dbg_value(i8 %i.cf, !18741, !DIExpression(), !18922)
    #dbg_value(ptr undef, !18769, !DIExpression(), !18773)
  %i.ci = icmp eq i8 %i.cf, 0, !dbg !19117
  br i1 %i.ci, label %bb.w, label %bb.o, !dbg !19116

bb.q:                                             ; preds = %bb.o
    #dbg_value(i1 %i.ch, !18739, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18923)
  br i1 %i.ch, label %bb.r, label %bb.w, !dbg !19118

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !19118
    #dbg_value(ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, !18804, !DIExpression(), !18926)
  %i.cj = load ptr, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, align 8, !dbg !19119, !nonnull !2081, !align !2422, !noundef !2081 ; 2 uses
    #dbg_value(ptr %i.cj, !18927, !DIExpression(), !18931)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48, !dbg !19120
    #dbg_value(ptr %i.ck, !18932, !DIExpression(), !18947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !19118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !19118
    #dbg_value(ptr @84, !18948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18952)
    #dbg_value(i64 26, !18948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18952)
  store <2 x ptr> <ptr @84, ptr inttoptr (i64 53 to ptr)>, ptr %i.k, align 16, !dbg !19121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !19122
    #dbg_value(ptr %i.n, !18881, !DIExpression(), !18954)
  %i.cl = load i64, ptr %.sroa.6121.0..sroa_idx, align 8, !dbg !19123, !noundef !2081
  store i64 %i.cl, ptr %i.j, align 8, !dbg !19123
  store ptr %i.k, ptr %i.l, align 8, !dbg !19118
  store ptr @85, ptr %i.as, align 8, !dbg !19118
  store ptr %i.j, ptr %i.at, align 8, !dbg !19118
  store ptr @86, ptr %i.au, align 8, !dbg !19118
    #dbg_value(ptr %i.l, !18933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18947)
    #dbg_value(i64 2, !18933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18947)
  store i64 1, ptr %i.m, align 8, !dbg !19118
  store ptr %i.l, ptr %.sroa.024.sroa.4.0..sroa_idx, align 8, !dbg !19118
  store i64 2, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8, !dbg !19118
  store ptr %i.ck, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !19118
    #dbg_value(ptr poison, !18955, !DIExpression(), !18621)
    #dbg_value(ptr poison, !18957, !DIExpression(), !18622)
    #dbg_value(ptr poison, !18969, !DIExpression(), !18623)
    #dbg_declare(ptr %i.m, !18963, !DIExpression(), !18624)
    #dbg_declare(ptr %i.a, !18967, !DIExpression(), !18625)
    #dbg_value(ptr poison, !18971, !DIExpression(), !18628)
    #dbg_declare(ptr poison, !18975, !DIExpression(), !18633)
    #dbg_value(i8 0, !18980, !DIExpression(), !18638)
    #dbg_value(i8 0, !18984, !DIExpression(), !18643)
    #dbg_declare(ptr poison, !18975, !DIExpression(), !18646)
    #dbg_value(ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, !18990, !DIExpression(), !18649)
    #dbg_value(ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, !18991, !DIExpression(), !18651)
    #dbg_value(ptr %i.cj, !18964, !DIExpression(), !18652)
  invoke void @_RNvMNtCsgb4gPAseikh_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %.noexc111 unwind label %bb.k, !dbg !19124

.noexc111:                                        ; preds = %bb.r
    #dbg_value(ptr poison, !18972, !DIExpression(), !18653)
    #dbg_value(i8 0, !18994, !DIExpression(), !18658)
    #dbg_value(i8 0, !18976, !DIExpression(), !18659)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !18981, !DIExpression(), !18638)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !7624, !DIExpression(), !18661)
    #dbg_value(i8 0, !7627, !DIExpression(), !18661)
  %i.cm = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !19125, !noalias !18996
  %.not.i110 = icmp eq i8 %i.cm, 0, !dbg !19126
  br i1 %.not.i110, label %bb.s, label %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send0B8_.exit, !dbg !19127

bb.s:                                             ; preds = %.noexc111
    #dbg_value(i64 5, !18965, !DIExpression(), !18664)
    #dbg_value(ptr poison, !18972, !DIExpression(), !18665)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !18985, !DIExpression(), !18643)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !2500, !DIExpression(), !18667)
    #dbg_value(i8 0, !2503, !DIExpression(), !18667)
  %i.cn = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !19128, !noalias !18996 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 6, !dbg !19129
  call void @llvm.assume(i1 %i.co), !dbg !19129
    #dbg_value(ptr poison, !18973, !DIExpression(), !18668)
    #dbg_value(i8 poison, !18978, !DIExpression(), !18669)
    #dbg_value(i8 poison, !18994, !DIExpression(), !18672)
    #dbg_value(i8 poison, !18976, !DIExpression(), !18673)
  %i.cp = icmp samesign ugt i64 %i.cn, 4, !dbg !19130
  br i1 %i.cp, label %bb.t, label %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send0B8_.exit, !dbg !19131

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send10___CALLSITE, align 8, !dbg !19132, !noalias !18996, !nonnull !2081, !align !2422, !noundef !2081 ; 3 uses
    #dbg_value(ptr %i.cq, !18966, !DIExpression(), !18674)
    #dbg_value(ptr %i.cq, !18999, !DIExpression(), !18677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19133, !noalias !18996
    #dbg_value(ptr undef, !18957, !DIExpression(), !18622)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32, !dbg !19134
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !19134, !nonnull !2081, !noundef !2081
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40, !dbg !19134
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !19134, !noundef !2081
    #dbg_value(ptr undef, !18955, !DIExpression(), !18621)
  store i64 5, ptr %i.a, align 8, !dbg !19135, !noalias !18996
  store ptr %i.cs, ptr %i.av, align 8, !dbg !19135, !noalias !18996
  store i64 %i.cu, ptr %i.aw, align 8, !dbg !19135, !noalias !18996
  %i.cv = invoke { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger()
          to label %.noexc112 unwind label %bb.k, !dbg !19136 ; 2 uses

.noexc112:                                        ; preds = %bb.t
  %i.cw = extractvalue { ptr, ptr } %i.cv, 0, !dbg !19136 ; 2 uses
  %i.cx = extractvalue { ptr, ptr } %i.cv, 1, !dbg !19136 ; 2 uses
    #dbg_value(ptr %i.cw, !18968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(ptr %i.cx, !18968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18678)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !19137
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !19137, !invariant.load !2081, !nonnull !2081
  %i.da = invoke noundef zeroext i1 %i.cz(ptr noundef %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #26
          to label %.noexc113 unwind label %bb.k, !dbg !19137, !inline_history !18679

.noexc113:                                        ; preds = %.noexc112
  br i1 %i.da, label %bb.u, label %.noexc114, !dbg !19137

bb.u:                                             ; preds = %.noexc113
  invoke void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cq, ptr noundef nonnull %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %.noexc114 unwind label %bb.k, !dbg !19137

.noexc114:                                        ; preds = %bb.u, %.noexc113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19133, !noalias !18996
  br label %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send0B8_.exit, !dbg !19131

_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send0B8_.exit: ; preds = %.noexc114, %bb.s, %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !19118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !19118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !19118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !19118
  br label %bb.v, !dbg !19118

bb.v:                                             ; preds = %bb.ac, %bb.x, %bb.w, %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_9Datagrams4send0B8_.exit
    #dbg_value(ptr %i.n, !18881, !DIExpression(), !19003)
  %i.db = load i64, ptr %.sroa.6121.0..sroa_idx, align 8, !dbg !19138, !noundef !2081 ; 2 uses
  %i.dc = load i64, ptr %i.ah, align 8, !dbg !19139, !noundef !2081
  %i.dd = sub i64 %i.dc, %i.db, !dbg !19139
  store i64 %i.dd, ptr %i.ah, align 8, !dbg !19139
  call void @llvm.experimental.noalias.scope.decl(metadata !19004), !dbg !19100
    #dbg_value(ptr %i.n, !7612, !DIExpression(), !18683)
  call void @llvm.experimental.noalias.scope.decl(metadata !19005), !dbg !19140
    #dbg_value(ptr %i.n, !7617, !DIExpression(), !18687)
  call void @llvm.experimental.noalias.scope.decl(metadata !19006), !dbg !19141
    #dbg_value(ptr %i.n, !7621, !DIExpression(), !18691)
  %i.de = load ptr, ptr %i.n, align 8, !dbg !19142, !alias.scope !19007, !nonnull !2081, !align !2422, !noundef !2081
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32, !dbg !19142
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !19142, !noalias !19007, !nonnull !2081, !noundef !2081
  %i.dh = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19143, !alias.scope !19007, !noundef !2081
  invoke void %i.dg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.7.0..sroa_idx, ptr noundef %i.dh, i64 noundef %i.db)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramEBF_.exit116 unwind label %.thread126.loopexit, !dbg !19142, !inline_history !1506

bb.w:                                             ; preds = %bb.p, %bb.m, %bb.l, %bb.q
    #dbg_value(ptr poison, !18810, !DIExpression(), !19008)
    #dbg_value(i8 0, !19009, !DIExpression(), !19013)
    #dbg_value(i8 0, !18817, !DIExpression(), !19014)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !18824, !DIExpression(), !18829)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !7624, !DIExpression(), !18695)
    #dbg_value(i8 0, !7627, !DIExpression(), !18695)
  %i.di = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !19144
  %.not104 = icmp eq i8 %i.di, 0, !dbg !19145
  br i1 %.not104, label %bb.x, label %bb.v, !dbg !19118

bb.x:                                             ; preds = %bb.w
    #dbg_value(i64 5, !18743, !DIExpression(), !19015)
    #dbg_value(ptr poison, !18810, !DIExpression(), !19016)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !18788, !DIExpression(), !18833)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !2500, !DIExpression(), !18697)
    #dbg_value(i8 0, !2503, !DIExpression(), !18697)
  %i.dj = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !19146 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 6, !dbg !19147
  call void @llvm.assume(i1 %i.dk), !dbg !19147
    #dbg_value(ptr poison, !18811, !DIExpression(), !19017)
    #dbg_value(i8 poison, !18819, !DIExpression(), !19018)
    #dbg_value(i8 poison, !19009, !DIExpression(), !19023)
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB4_13DatagramState8received:bb.a
    #dbg_value(i8 0, !22071, !DIExpression(), !21577)
    #dbg_declare(ptr poison, !22062, !DIExpression(), !21580)
    #dbg_value(ptr @_RNvNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received10___CALLSITE, !22077, !DIExpression(), !21583)
    #dbg_value(ptr @_RNvNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received10___CALLSITE, !22078, !DIExpression(), !21585)
    #dbg_value(ptr %i.br, !22051, !DIExpression(), !21586)
  invoke void @_RNvMNtCsgb4gPAseikh_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc unwind label %.loopexit, !dbg !22207

.noexc:                                           ; preds = %bb.q
    #dbg_value(ptr poison, !22059, !DIExpression(), !21587)
    #dbg_value(i8 -1, !22081, !DIExpression(), !21592)
    #dbg_value(i8 -1, !22063, !DIExpression(), !21593)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !22068, !DIExpression(), !21572)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !7624, !DIExpression(), !21595)
    #dbg_value(i8 0, !7627, !DIExpression(), !21595)
  %i.bt = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !22208, !noalias !22083
  %.not.i = icmp eq i8 %i.bt, 0, !dbg !22209
  br i1 %.not.i, label %bb.r, label %_RNCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received0Ba_.exit, !dbg !22210

bb.r:                                             ; preds = %.noexc
    #dbg_value(i64 4, !22052, !DIExpression(), !21598)
    #dbg_value(ptr poison, !22059, !DIExpression(), !21599)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !22072, !DIExpression(), !21577)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !2500, !DIExpression(), !21601)
    #dbg_value(i8 0, !2503, !DIExpression(), !21601)
  %i.bu = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !22211, !noalias !22083 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 6, !dbg !22212
  call void @llvm.assume(i1 %i.bv), !dbg !22212
    #dbg_value(ptr poison, !22060, !DIExpression(), !21602)
    #dbg_value(i8 poison, !22065, !DIExpression(), !21603)
    #dbg_value(i8 poison, !22081, !DIExpression(), !21606)
    #dbg_value(i8 poison, !22063, !DIExpression(), !21607)
  %i.bw = icmp samesign ugt i64 %i.bu, 3, !dbg !22213
  br i1 %i.bw, label %bb.s, label %_RNCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received0Ba_.exit, !dbg !22214

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr @_RNvNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received10___CALLSITE, align 8, !dbg !22215, !noalias !22083, !nonnull !2081, !align !2422, !noundef !2081 ; 3 uses
    #dbg_value(ptr %i.bx, !22053, !DIExpression(), !21608)
    #dbg_value(ptr %i.bx, !22086, !DIExpression(), !21611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22216, !noalias !22083
    #dbg_value(ptr undef, !22044, !DIExpression(), !21556)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32, !dbg !22217
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !22217, !nonnull !2081, !noundef !2081
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40, !dbg !22217
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !22217, !noundef !2081
    #dbg_value(ptr undef, !22042, !DIExpression(), !21555)
  store i64 4, ptr %i.b, align 8, !dbg !22218, !noalias !22083
  store ptr %i.bz, ptr %i.ay, align 8, !dbg !22218, !noalias !22083
  store i64 %i.cb, ptr %i.az, align 8, !dbg !22218, !noalias !22083
  %i.cc = invoke { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger()
          to label %.noexc141 unwind label %.loopexit, !dbg !22219 ; 2 uses

.noexc141:                                        ; preds = %bb.s
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0, !dbg !22219 ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1, !dbg !22219 ; 2 uses
    #dbg_value(ptr %i.cd, !22055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21612)
    #dbg_value(ptr %i.ce, !22055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21612)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24, !dbg !22220
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !22220, !invariant.load !2081, !nonnull !2081
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #26
          to label %.noexc142 unwind label %.loopexit, !dbg !22220, !inline_history !21613

.noexc142:                                        ; preds = %.noexc141
  br i1 %i.ch, label %bb.t, label %.noexc143, !dbg !22220

bb.t:                                             ; preds = %.noexc142
  invoke void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bx, ptr noundef nonnull %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc143 unwind label %.loopexit, !dbg !22220

.noexc143:                                        ; preds = %bb.t, %.noexc142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22216, !noalias !22083
  br label %_RNCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received0Ba_.exit, !dbg !22214

_RNCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received0Ba_.exit: ; preds = %.noexc143, %bb.r, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !22203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !22203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !22203
  br label %bb.u, !dbg !22203

bb.u:                                             ; preds = %bb.ab, %bb.w, %bb.v, %_RNCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received0Ba_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !22221
  call void @llvm.experimental.noalias.scope.decl(metadata !22089), !dbg !22222
  call void @llvm.experimental.noalias.scope.decl(metadata !22090), !dbg !22222
    #dbg_value(ptr %1, !7404, !DIExpression(), !21618)
  call void @llvm.experimental.noalias.scope.decl(metadata !22091), !dbg !22223
    #dbg_declare(ptr poison, !7412, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !21622)
    #dbg_value(ptr %1, !7424, !DIExpression(), !21623)
    #dbg_declare(ptr %i.a, !7428, !DIExpression(), !21625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22224, !noalias !22092
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramE9pop_frontB19_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
          to label %.noexc144 unwind label %.loopexit, !dbg !22225

.noexc144:                                        ; preds = %bb.u
  %i.ci = load ptr, ptr %i.a, align 8, !dbg !22226, !noalias !22092, !noundef !2081 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ci, null, !dbg !22226
  br i1 %.not.i.i, label %.thread151, label %bb.ad, !dbg !22227

.thread151:                                       ; preds = %.noexc144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22228, !noalias !22092
    #dbg_value(ptr %i.g, !22094, !DIExpression(), !21629)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto.exit, !dbg !22229

bb.v:                                             ; preds = %bb.o, %bb.l, %bb.k, %bb.p
    #dbg_value(ptr poison, !21881, !DIExpression(), !22100)
    #dbg_value(i8 -1, !22101, !DIExpression(), !22105)
    #dbg_value(i8 -1, !21888, !DIExpression(), !22106)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !21895, !DIExpression(), !21900)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !7624, !DIExpression(), !21633)
    #dbg_value(i8 0, !7627, !DIExpression(), !21633)
  %i.cj = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !22230
  %.not = icmp eq i8 %i.cj, 0, !dbg !22231
  br i1 %.not, label %bb.w, label %bb.u, !dbg !22203

bb.w:                                             ; preds = %bb.v
    #dbg_value(i64 4, !21689, !DIExpression(), !22107)
    #dbg_value(ptr poison, !21881, !DIExpression(), !22108)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !21859, !DIExpression(), !21904)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !2500, !DIExpression(), !21635)
    #dbg_value(i8 0, !2503, !DIExpression(), !21635)
  %i.ck = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !22232 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 6, !dbg !22233
  call void @llvm.assume(i1 %i.cl), !dbg !22233
    #dbg_value(ptr poison, !21882, !DIExpression(), !22109)
    #dbg_value(i8 poison, !21890, !DIExpression(), !22110)
    #dbg_value(i8 poison, !22101, !DIExpression(), !22115)
    #dbg_value(i8 poison, !21888, !DIExpression(), !22116)
  %i.cm = icmp samesign ugt i64 %i.ck, 3, !dbg !22234
  br i1 %i.cm, label %bb.x, label %bb.u, !dbg !22235

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr @_RNvNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received10___CALLSITE, !21875, !DIExpression(), !22119)
  %i.cn = load ptr, ptr @_RNvNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received10___CALLSITE, align 8, !dbg !22236, !nonnull !2081, !align !2422, !noundef !2081 ; 3 uses
    #dbg_value(ptr %i.cn, !21691, !DIExpression(), !22120)
    #dbg_value(ptr %i.cn, !22121, !DIExpression(), !22125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !22237
    #dbg_value(ptr undef, !21703, !DIExpression(), !21705)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32, !dbg !22238
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !22238, !nonnull !2081, !noundef !2081
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 40, !dbg !22238
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !22238, !noundef !2081
    #dbg_value(ptr undef, !21697, !DIExpression(), !21702)
  store i64 4, ptr %i.k, align 8, !dbg !21702
  store ptr %i.cp, ptr %i.ba, align 8, !dbg !21702
  store i64 %i.cr, ptr %i.bb, align 8, !dbg !21702
  %i.cs = invoke { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger()
          to label %bb.y unwind label %.loopexit, !dbg !21713 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.ct = extractvalue { ptr, ptr } %i.cs, 0, !dbg !21713 ; 2 uses
  %i.cu = extractvalue { ptr, ptr } %i.cs, 1, !dbg !21713 ; 2 uses
    #dbg_value(ptr %i.ct, !21695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22126)
    #dbg_value(ptr %i.cu, !21695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22126)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24, !dbg !22239
  %i.cw = load ptr, ptr %i.cv, align 8, !dbg !22239, !invariant.load !2081, !nonnull !2081
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.z unwind label %.loopexit, !dbg !22239

bb.z:                                             ; preds = %bb.y
  br i1 %i.cx, label %bb.aa, label %bb.ab, !dbg !22239

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !22239
  %i.cy = load ptr, ptr @_RNvNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB6_13DatagramState8received10___CALLSITE, align 8, !dbg !22240, !nonnull !2081, !align !2422, !noundef !2081
    #dbg_value(ptr %i.cy, !22016, !DIExpression(), !22129)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48, !dbg !22241
    #dbg_value(ptr %i.cz, !22021, !DIExpression(), !22132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !22239
    #dbg_value(ptr @100, !22037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22135)
    #dbg_value(i64 23, !22037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22135)
  store <2 x ptr> <ptr @100, ptr inttoptr (i64 47 to ptr)>, ptr %i.h, align 16, !dbg !22242
  store ptr %i.h, ptr %i.i, align 8, !dbg !22239
  store ptr @85, ptr %i.bc, align 8, !dbg !22239
    #dbg_value(ptr %i.i, !22022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22132)
    #dbg_value(i64 1, !22022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22132)
  store i64 1, ptr %i.j, align 8, !dbg !22243
  store ptr %i.i, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !22243
  store i64 1, ptr %.sroa.534.0..sroa_idx, align 8, !dbg !22243
  store ptr %i.cz, ptr %i.bd, align 8, !dbg !22243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !22239
  invoke void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cn, ptr noundef nonnull %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.ac unwind label %.loopexit, !dbg !22239

bb.ab:                                            ; preds = %bb.z, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !22237
  br label %bb.u, !dbg !22235

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !22239
  br label %bb.ab, !dbg !22239

bb.ad:                                            ; preds = %.noexc144
  %.sroa.7.0.copyload3.i = load i64, ptr %.sroa.7.0..sroa_idx2.i, align 8, !dbg !22244, !noalias !22136 ; 2 uses
  %i.da = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !22244, !noalias !22092
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !22244, !noalias !22092 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22228, !noalias !22092
    #dbg_value(i64 poison, !7412, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21637)
    #dbg_value(i64 poison, !7412, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21637)
  %i.db = load i64, ptr %i.ar, align 8, !dbg !22245, !alias.scope !22137, !noalias !22138, !noundef !2081
  %i.dc = sub i64 %i.db, %.sroa.4.0.copyload.i.i, !dbg !22245
  store i64 %i.dc, ptr %i.ar, align 8, !dbg !22245, !alias.scope !22137, !noalias !22138
    #dbg_value(ptr %i.ci, !7408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21638)
    #dbg_value(i64 %.sroa.7.0.copyload3.i, !7408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21638)
    #dbg_value(i64 poison, !7408, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21638)
    #dbg_value(i64 poison, !7408, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21638)
  store i64 %.sroa.7.0.copyload3.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !22246, !alias.scope !22089, !noalias !22090
  store <2 x i64> %i.da, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !22246, !alias.scope !22089, !noalias !22090
  store ptr %i.ci, ptr %i.g, align 8, !dbg !22247, !alias.scope !22089, !noalias !22090
    #dbg_value(ptr %i.g, !22094, !DIExpression(), !21629)
    #dbg_value(ptr %i.g, !7617, !DIExpression(), !21640)
    #dbg_value(ptr %i.g, !7621, !DIExpression(), !21642)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 32, !dbg !22248
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !22248, !noalias !22139, !nonnull !2081, !noundef !2081
  %i.df = inttoptr i64 %.sroa.7.0.copyload3.i to ptr, !dbg !22249
  invoke void %i.de(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.411.0..sroa_idx.i, ptr noundef %i.df, i64 noundef %.sroa.4.0.copyload.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto.exit unwind label %.loopexit, !dbg !22248, !inline_history !21649

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto.exit: ; preds = %.thread151, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22250
    #dbg_value(ptr %1, !21985, !DIExpression(), !21988)
  %i.dg = load i64, ptr %i.ar, align 8, !dbg !22181, !noundef !2081 ; 2 uses
    #dbg_value(i64 %i.dg, !21989, !DIExpression(), !22140)
    #dbg_value(ptr %1, !22141, !DIExpression(), !22144)
  %i.dh = load i64, ptr %i.ao, align 8, !dbg !22251, !noundef !2081
  %i.di = shl i64 %i.dh, 5, !dbg !22182
    #dbg_value(i64 %i.di, !21990, !DIExpression(), !22140)
  %i.dj = call i64 @llvm.uadd.sat.i64(i64 %i.dg, i64 %i.di), !dbg !22183
  %i.dk = add i64 %i.dj, %i.u, !dbg !22184
  %i.dl = icmp ugt i64 %i.dk, %i.r, !dbg !22184
  br i1 %i.dl, label %bb.k, label %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9datagramsNtB5_14DatagramBuffer9push_back.exit, !dbg !22184

bb.ae:                                            ; preds = %bb.i
  %i.dm = load i64, ptr %i.d, align 8, !dbg !22185, !range !7536, !noundef !2081
  %i.dn = trunc nuw i64 %i.dm to i1, !dbg !22252
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !22006
  %i.dp = load i64, ptr %i.do, align 8, !dbg !22006, !range !21942, !noundef !2081 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !22006 ; 2 uses
  br i1 %i.dn, label %bb.af, label %bb.ag, !dbg !22252, !prof !2513

bb.af:                                            ; preds = %bb.ae
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !22253
    #dbg_value(i64 %i.dp, !21801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22145)
    #dbg_value(i64 %i.dr, !21801, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22145)
  br label %.invoke, !dbg !22254

bb.ag:                                            ; preds = %bb.ae
  %i.ds = load ptr, ptr %i.dq, align 8, !dbg !22255, !nonnull !2081, !noundef !2081 ; 2 uses
    #dbg_value(i64 %i.dp, !21800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22146)
    #dbg_value(ptr %i.ds, !21800, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22146)
    #dbg_value(ptr poison, !21819, !DIExpression(), !22147)
  %i.dt = icmp samesign ugt i64 %i.dp, 17, !dbg !22256
    #dbg_value(i1 true, !21958, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22149)
  tail call void @llvm.assume(i1 %i.dt), !dbg !22257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22258
    #dbg_value(i64 %i.dp, !21772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22150)
    #dbg_value(ptr %i.ds, !21772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22150)
    #dbg_value(i64 0, !21772, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22150)
    #dbg_value(ptr @99, !21930, !DIExpression(), !22002)
    #dbg_value(ptr @99, !21936, !DIExpression(), !22005)
    #dbg_value(ptr %i.ds, !21931, !DIExpression(), !22002)
    #dbg_value(ptr %i.ds, !21937, !DIExpression(), !22005)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ds, ptr noundef nonnull align 1 dereferenceable(18) @99, i64 18, i1 false), !dbg !22259
    #dbg_value(i64 18, !21772, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22150)
  br label %bb.g, !dbg !22260

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramEBF_.exit: ; preds = %bb.ah
  resume { ptr, i32 } %lpad.phi, !dbg !22261

.loopexit:                                        ; preds = %bb.q, %bb.m, %bb.n, %bb.t, %.noexc141, %bb.s, %bb.x, %bb.y, %bb.aa, %bb.u, %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %.invoke, %bb.c, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !22152), !dbg !22173
    #dbg_value(ptr %2, !7612, !DIExpression(), !21654)
  call void @llvm.experimental.noalias.scope.decl(metadata !22153), !dbg !22262
    #dbg_value(ptr %2, !7617, !DIExpression(), !21658)
  call void @llvm.experimental.noalias.scope.decl(metadata !22154), !dbg !22263
    #dbg_value(ptr %2, !7621, !DIExpression(), !21662)
  %i.du = load ptr, ptr %2, align 8, !dbg !22264, !alias.scope !22155, !nonnull !2081, !align !2422, !noundef !2081
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32, !dbg !22264
  %i.dw = load ptr, ptr %i.dv, align 8, !dbg !22264, !noalias !22155, !nonnull !2081, !noundef !2081
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !22265
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22266
  %i.dz = load ptr, ptr %i.dy, align 8, !dbg !22266, !alias.scope !22155, !noundef !2081
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22267
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !22267, !alias.scope !22155, !noundef !2081
  invoke void %i.dw(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef %i.dz, i64 noundef %i.eb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto5frame8DatagramEBF_.exit unwind label %bb.ai, !dbg !22264, !inline_history !1506

bb.ai:                                            ; preds = %bb.ah
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !22261
  unreachable, !dbg !22261
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvXs0_NtCshovLROGBtMy_11quinn_proto15bloom_token_logNtB5_13BloomTokenLogNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 84), (88, 100)) %0) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !22268 {
bb.a:
  %.sroa.0.i = alloca [64 x i8], align 8          ; 5 uses
    #dbg_declare(ptr %.sroa.0.i, !5410, !DIExpression(DW_OP_LLVM_fragment, 0, 512), !22272)
  %.sroa.55.sroa.0.i = alloca [67 x i8], align 1  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22281), !dbg !22282
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !22283
    #dbg_value(i64 10485760, !5406, !DIExpression(), !22275)
    #dbg_value(i64 10485760, !5418, !DIExpression(), !22276)
    #dbg_value(i64 1000000, !5407, !DIExpression(), !22275)
    #dbg_value(i32 58, !5419, !DIExpression(), !22276)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.sroa.0.i), !dbg !22283
    #dbg_value(i64 5242880, !5410, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !22277)
    #dbg_value(i32 58, !5410, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !22277)
    #dbg_value(i64 0, !5410, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !22277)
    #dbg_value(i32 0, !5410, !DIExpression(DW_OP_LLVM_fragment, 704, 32), !22277)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) @69, i64 32, i1 false), !dbg !22284, !noalias !22281
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32, !dbg !22284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @69, i64 32, i1 false), !dbg !22284, !noalias !22281
  %.sroa.55.sroa.0.3..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.55.sroa.0.i, i64 3, !dbg !22285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.sroa.55.sroa.0.3..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i, i64 64, i1 false), !dbg !22285, !noalias !22281
  store i32 0, ptr %0, align 8, !dbg !22286, !alias.scope !22281
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !22286
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !dbg !22286, !alias.scope !22281
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5, !dbg !22286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %.sroa.55.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(67) %.sroa.55.sroa.0.i, i64 67, i1 false), !dbg !22286
  %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !22286
  store i64 5242880, ptr %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !dbg !22286, !alias.scope !22281
  %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !22286
  store i32 58, ptr %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !dbg !22286, !alias.scope !22281
  %.sroa.55.sroa.7.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !22286
  store i64 0, ptr %.sroa.55.sroa.7.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !dbg !22286, !alias.scope !22281
  %.sroa.55.sroa.8.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !22286
  store i32 0, ptr %.sroa.55.sroa.8.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !dbg !22286, !alias.scope !22281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.sroa.0.i), !dbg !22287
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !dbg !22288
  ret void, !dbg !22289
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_setNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #1 !dbg !22293 {
bb.a:
    #dbg_value(ptr %1, !22297, !DIExpression(), !22303)
  %i.a = tail call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryyENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !dbg !22310 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !22310 ; 2 uses
    #dbg_value(ptr %i.b, !22304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22308)
    #dbg_value(ptr poison, !22304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22308)
  %.not = icmp eq ptr %i.b, null, !dbg !22311
  br i1 %.not, label %bb.c, label %bb.b, !dbg !22312

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !22310 ; 2 uses
    #dbg_value(ptr %i.c, !22304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22308)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.d = load i64, ptr %i.b, align 8, !dbg !22313, !noundef !2081
    #dbg_value(i64 %i.d, !22298, !DIExpression(), !22309)
  %i.e = load i64, ptr %i.c, align 8, !dbg !22314, !noundef !2081
    #dbg_value(i64 %i.e, !22299, !DIExpression(), !22309)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22315
  store i64 %i.d, ptr %i.f, align 8, !dbg !22315
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22315
  store i64 %i.e, ptr %i.g, align 8, !dbg !22315
  br label %bb.c, !dbg !22316

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !22303
  store i64 %storemerge, ptr %0, align 8, !dbg !22303
  ret void, !dbg !22316
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenNtNtB1u_8endpoint16ConnectionHandleENtB6_5Debug3fmtB1u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !22317 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !22338, !DIExpression(), !22343)
    #dbg_value(ptr %1, !22339, !DIExpression(), !22343)
  %i.c = load ptr, ptr %0, align 8, !dbg !22381, !nonnull !2081, !align !2422, !noundef !2081
    #dbg_value(ptr %i.c, !22344, !DIExpression(), !22320)
    #dbg_value(ptr %i.c, !22349, !DIExpression(), !22331)
    #dbg_value(ptr %1, !22347, !DIExpression(), !22320)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22382, !noalias !22379
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22383, !noalias !22380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22384, !noalias !22379
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenNtNtBR_8endpoint16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterBR_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c), !dbg !22385
  %i.d = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenRNtNtB17_8endpoint16ConnectionHandleINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_B1R_EEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !22386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22387, !noalias !22379
  %i.e = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d), !dbg !22388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22389, !noalias !22379
  ret i1 %i.e, !dbg !22390
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtB8_3net11socket_addr10SocketAddrIBx_NtNtCshovLROGBtMy_11quinn_proto5token10ResetTokenNtNtB2a_8endpoint16ConnectionHandleEENtB6_5Debug3fmtB2a_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !22396 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !22435, !DIExpression(), !22440)
    #dbg_value(ptr %1, !22436, !DIExpression(), !22440)
end_hunk_1
