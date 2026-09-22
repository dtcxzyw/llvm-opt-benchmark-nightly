Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.15?download=true
inline.NumInlined: 498
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_13IncomingToken11from_header:bb.a
  br i1 %i.cg, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.z, !dbg !16998

bb.z:                                             ; preds = %.noexc131.i
  %i.ch = extractvalue { i1, i8 } %i.cf, 1, !dbg !16997 ; 3 uses
    #dbg_value(i8 %i.ch, !16556, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15273)
  %i.ci = zext i8 %i.ch to i64, !dbg !16999       ; 5 uses
    #dbg_value(i64 %i.ci, !16550, !DIExpression(), !15274)
  %i.cj = icmp ugt i8 %i.ch, 20, !dbg !17000
  br i1 %i.cj, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.aa, !dbg !17000

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr poison, !16559, !DIExpression(), !15277)
  %.val.i.i = load i64, ptr %i.ay, align 8, !dbg !17001, !alias.scope !16543, !noalias !16561, !noundef !1135 ; 2 uses
  %i.ck = icmp ult i64 %.val.i.i, %i.ci, !dbg !17002
  br i1 %i.ck, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId8from_bufRShEB7_.exit.i.i, !dbg !17003

_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId8from_bufRShEB7_.exit.i.i: ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !16562), !dbg !17004
    #dbg_value(ptr %i.g, !16563, !DIExpression(), !15284)
    #dbg_value(i64 %i.ci, !16569, !DIExpression(), !15284)
    #dbg_declare(ptr %i.a, !16570, !DIExpression(), !15285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17005, !noalias !16572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !dbg !17006, !noalias !16572
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 20, !dbg !17007
  store i8 %i.ch, ptr %i.cl, align 1, !dbg !17007, !noalias !16572
    #dbg_value(ptr %i.g, !16476, !DIExpression(), !15288)
    #dbg_value(ptr %i.a, !16479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15288)
    #dbg_value(ptr %i.a, !16481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15290)
    #dbg_value(i64 %i.ci, !16479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15288)
    #dbg_value(i64 %i.ci, !16481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15290)
  %i.cm = load ptr, ptr %i.g, align 8, !dbg !17008, !alias.scope !16573, !noalias !16574, !nonnull !1135, !noundef !1135 ; 2 uses
    #dbg_value(ptr %i.cm, !16482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15290)
    #dbg_value(i64 %i.ci, !16482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15290)
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 0, 21) %i.ci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef range(i64 0, 21) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101)
          to label %bb.ab unwind label %bb.i, !dbg !17009, !noalias !16090

bb.ab:                                            ; preds = %_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId8from_bufRShEB7_.exit.i.i
    #dbg_value(ptr %i.g, !3417, !DIExpression(), !15295)
    #dbg_value(i64 %i.ci, !3420, !DIExpression(), !15295)
    #dbg_value(i64 %i.ci, !3422, !DIExpression(), !15297)
    #dbg_value(i64 %i.ci, !3431, !DIExpression(), !15299)
    #dbg_value(i64 %i.ci, !3438, !DIExpression(), !15301)
    #dbg_value(i64 %.val.i.i, !3427, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15297)
    #dbg_value(i64 %.val.i.i, !3435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15299)
    #dbg_value(i64 %.val.i.i, !3441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15301)
    #dbg_value(ptr %i.cm, !3427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15297)
    #dbg_value(ptr %i.cm, !3435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15299)
    #dbg_value(ptr %i.cm, !3441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15301)
  %i.cn = sub nuw i64 %.val.i.i, %i.ci, !dbg !17010
    #dbg_value(i64 %i.cn, !3436, !DIExpression(), !15302)
    #dbg_value(i64 %i.cn, !3442, !DIExpression(), !15301)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ci, !dbg !17011
  store ptr %i.co, ptr %i.g, align 8, !dbg !17012, !alias.scope !16575, !noalias !16574, !captures !3408
  store i64 %i.cn, ptr %i.ay, align 8, !dbg !17012, !alias.scope !16575, !noalias !16574
  %.sroa.714.sroa.0.0.copyload.i = load i8, ptr %i.a, align 1, !dbg !17013, !noalias !16576
  %.sroa.714.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !17013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.225.i, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.714.sroa.5.0..sroa_idx.i, i64 20, i1 false), !dbg !17013, !noalias !16198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17014, !noalias !16572
  %i.cp = invoke fastcc { i64, i32 } @_RINvNtCshovLROGBtMy_11quinn_proto5token16decode_unix_secsRShEB4_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g)
          to label %bb.ac unwind label %bb.i, !dbg !17015, !noalias !16090 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cq = extractvalue { i64, i32 } %i.cp, 1, !dbg !17015 ; 2 uses
    #dbg_value(i64 poison, !15960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15305)
    #dbg_value(i32 %i.cq, !15960, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15305)
  %.not116.i = icmp eq i32 %i.cq, -1, !dbg !17016
  br i1 %.not116.i, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.ad, !dbg !17017

bb.ad:                                            ; preds = %bb.ac
  %i.cr = extractvalue { i64, i32 } %i.cp, 0, !dbg !17015
    #dbg_value(i64 %i.cr, !15960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15305)
    #dbg_value(!DIArgList(i64 %.sroa.08.0.i.i, i64 %.sroa.05.6.insert.shift.i, i64 %.sroa.05.2.insert.shift.i), !15918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !15306)
    #dbg_value(i32 %.sroa.59.sroa.6.sroa.0.i.sroa.0.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !15306)
    #dbg_value(i64 %.sroa.59.sroa.6.sroa.0.i.sroa.4.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 224, 64), !15306)
    #dbg_value(i32 0, !15918, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !15306)
    #dbg_value(i32 0, !15918, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !15306)
    #dbg_value(i16 %.sroa.59.sroa.6.sroa.6.0.i.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 352, 16), !15306)
    #dbg_value(i8 %.sroa.714.sroa.0.0.copyload.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !15306)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.7.sroa.7.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.225.i, i64 20, i1 false), !dbg !17018, !noalias !16198
    #dbg_value(i64 %i.cr, !15918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15306)
    #dbg_value(i32 %i.cq, !15918, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15306)
  %i.cs = insertelement <2 x i16> <i16 poison, i16 undef>, i16 %.sroa.59.sroa.6.sroa.6.0.i.i, i64 0, !dbg !17019
  br label %bb.ae, !dbg !17020

bb.ae:                                            ; preds = %bb.ai, %bb.ad
  %.sroa.7.sroa.7.sroa.0.0.i = phi i8 [ %.sroa.1217.sroa.8.1.i, %bb.ai ], [ %.sroa.714.sroa.0.0.copyload.i, %bb.ad ], !dbg !17019
  %.sroa.7.sroa.0.0.i = phi i64 [ %.sroa.7.sroa.0.4.insert.shift.i, %bb.ai ], [ %.sroa.59.sroa.6.sroa.0.i.sroa.4.0.i, %bb.ad ], !dbg !17019 ; 3 uses
  %.sroa.7.sroa.4.0.i = phi i32 [ %.sroa.1217.sroa.5.1.i, %bb.ai ], [ 0, %bb.ad ], !dbg !17019
  %.sroa.7.sroa.3.0.i = phi i32 [ %.sroa.032.i.4..sroa.032.i.4..sroa.032.i.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.527.0.copyload.i, %bb.ai ], [ 0, %bb.ad ], !dbg !17019
  %.sroa.612.0.i = phi i32 [ %i.dc, %bb.ai ], [ %.sroa.59.sroa.6.sroa.0.i.sroa.0.0.i, %bb.ad ], !dbg !17019 ; 3 uses
  %.sroa.411.0.i = phi i64 [ %i.dd, %bb.ai ], [ %.sroa.05.6.insert.insert.i, %bb.ad ], !dbg !17019 ; 7 uses
  %.sroa.2.0.i = phi i32 [ -1, %bb.ai ], [ %i.cq, %bb.ad ], !dbg !17019 ; 3 uses
  %.sroa.09.0.i = phi i64 [ undef, %bb.ai ], [ %i.cr, %bb.ad ]
  %i.ct = phi <2 x i16> [ %i.cw, %bb.ai ], [ %i.cs, %bb.ad ], !dbg !17019
    #dbg_value(i32 %.sroa.7.sroa.3.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !15306)
    #dbg_value(i32 %.sroa.7.sroa.4.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !15306)
    #dbg_value(i16 poison, !15918, !DIExpression(DW_OP_LLVM_fragment, 352, 16), !15306)
    #dbg_value(i16 poison, !15918, !DIExpression(DW_OP_LLVM_fragment, 368, 16), !15306)
    #dbg_value(i64 %.sroa.7.sroa.0.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 224, 64), !15306)
    #dbg_value(i8 %.sroa.7.sroa.7.sroa.0.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !15306)
    #dbg_value(i64 %.sroa.09.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15306)
    #dbg_value(i32 %.sroa.2.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15306)
    #dbg_value(i64 %.sroa.411.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15306)
    #dbg_value(i32 %.sroa.612.0.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !15306)
  %i.cu = load i64, ptr %i.ay, align 8, !dbg !17021, !noalias !16198, !noundef !1135
    #dbg_value(ptr poison, !16585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15309)
    #dbg_value(i64 %i.cu, !16585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15309)
  %i.cv = icmp eq i64 %i.cu, 0, !dbg !17022
  br i1 %i.cv, label %bb.aj, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, !dbg !17021

_RINvNtCshovLROGBtMy_11quinn_proto5token9decode_ipRShEB4_.exit.i: ; preds = %.noexc126.i, %.noexc125.i
  %.sroa.1217.sroa.5.1.i = phi i32 [ %.sroa.1217.sroa.5.0.copyload.i, %.noexc126.i ], [ undef, %.noexc125.i ], !dbg !16926
  %.sroa.1217.sroa.8.1.i = phi i8 [ %.sroa.1217.sroa.8.0.copyload.i, %.noexc126.i ], [ undef, %.noexc125.i ], !dbg !16926
  %.sroa.1016.1.i = phi i32 [ %.sroa.1016.1.copyload.i, %.noexc126.i ], [ %.sroa.02.0.copyload.i.i.i, %.noexc125.i ], !dbg !16926
  %i.cw = phi <2 x i16> [ %i.bn, %.noexc126.i ], [ undef, %.noexc125.i ], !dbg !16926
    #dbg_value(i8 %i.be, !15957, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15136)
    #dbg_value(i32 %.sroa.1016.1.i, !15957, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !15136)
    #dbg_value(i8 %.sroa.1217.sroa.8.1.i, !15957, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15136)
    #dbg_value(i16 poison, !15957, !DIExpression(DW_OP_LLVM_fragment, 112, 16), !15136)
    #dbg_value(i16 poison, !15957, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !15136)
    #dbg_value(i32 %.sroa.1217.sroa.5.1.i, !15957, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15136)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.i), !dbg !17023
  store i8 %i.be, ptr %.sroa.032.i, align 8, !dbg !17023, !noalias !16198
  %.sroa.032.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.i, i64 1, !dbg !17023
  store i32 %.sroa.1016.1.i, ptr %.sroa.032.i.1.i.1.i.1..sroa_idx, align 1, !dbg !17023, !noalias !16198
  %.sroa.032.5..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.032.i, i64 5, !dbg !17023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.032.5..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1217.sroa.0.i, i64 3, i1 false), !dbg !17023, !noalias !16198
    #dbg_value(i32 %.sroa.1217.sroa.5.1.i, !15934, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15310)
    #dbg_value(i16 poison, !15934, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !15310)
    #dbg_value(i16 poison, !15934, !DIExpression(DW_OP_LLVM_fragment, 112, 16), !15310)
    #dbg_value(i8 %.sroa.1217.sroa.8.1.i, !15934, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15310)
  %.sroa.032.i.0..sroa.032.i.0..sroa.032.i.0..sroa.032.0..sroa.032.0..sroa.032.0..sroa.032.0..sroa.026.0.copyload.i = load i32, ptr %.sroa.032.i, align 8, !dbg !17024, !noalias !16198
  %.sroa.032.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.i, i64 4, !dbg !17024
  %.sroa.032.i.4..sroa.032.i.4..sroa.032.i.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.527.0.copyload.i = load i32, ptr %.sroa.032.i.4.i.4.i.4..sroa_idx, align 4, !dbg !17024, !noalias !16198
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.032.i), !dbg !17025
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1217.sroa.0.i), !dbg !17026
    #dbg_value(ptr %i.g, !1949, !DIExpression(), !15312)
    #dbg_value(ptr %i.g, !1955, !DIExpression(), !15314)
  %i.cx = invoke { i64, i64 } @_RINvXs1_NtCshovLROGBtMy_11quinn_proto6codingyNtB6_5Codec6decodeRShEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc133.i unwind label %bb.i, !dbg !17027, !noalias !16090 ; 2 uses

.noexc133.i:                                      ; preds = %_RINvNtCshovLROGBtMy_11quinn_proto5token9decode_ipRShEB4_.exit.i
  %i.cy = extractvalue { i64, i64 } %i.cx, 0, !dbg !17027
    #dbg_value(i64 %i.cy, !1971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15316)
    #dbg_value(i64 poison, !1971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15316)
  %i.cz = trunc nuw i64 %i.cy to i1, !dbg !17028
  br i1 %i.cz, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.af, !dbg !17028

bb.af:                                            ; preds = %.noexc133.i
  %i.da = extractvalue { i64, i64 } %i.cx, 1, !dbg !17027
    #dbg_value(i64 %i.da, !1971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15316)
  %i.db = invoke { i64, i32 } @_RNvXs6_NtCsG258MDvU3F_3std4timeNtB5_10SystemTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBR_4time8DurationE3add(i64 noundef 0, i32 noundef 0, i64 noundef %i.da, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %bb.ah unwind label %bb.i, !dbg !17029, !noalias !16090 ; 2 uses

bb.ag:                                            ; preds = %bb.q, %bb.p, %bb.o, %.noexc.i
    #dbg_value(i8 2, !15957, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15136)
    #dbg_value(i32 poison, !15957, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !15136)
    #dbg_value(i8 poison, !15957, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15136)
    #dbg_value(i16 poison, !15957, !DIExpression(DW_OP_LLVM_fragment, 112, 16), !15136)
    #dbg_value(i16 poison, !15957, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !15136)
    #dbg_value(i32 poison, !15957, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15136)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1217.sroa.0.i), !dbg !17026
  br label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, !dbg !17030

bb.ah:                                            ; preds = %bb.af
  %i.dc = extractvalue { i64, i32 } %i.db, 1, !dbg !17029 ; 2 uses
    #dbg_value(i64 poison, !15960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15317)
    #dbg_value(i32 %i.dc, !15960, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15317)
  %.not118.i = icmp eq i32 %i.dc, -1, !dbg !17031
  br i1 %.not118.i, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.ai, !dbg !17032

bb.ai:                                            ; preds = %bb.ah
  %i.dd = extractvalue { i64, i32 } %i.db, 0, !dbg !17029
    #dbg_value(i64 %i.dd, !15960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15317)
  %.sroa.7.sroa.0.4.insert.ext.i = zext i32 %.sroa.032.i.0..sroa.032.i.0..sroa.032.i.0..sroa.032.0..sroa.032.0..sroa.032.0..sroa.032.0..sroa.026.0.copyload.i to i64, !dbg !17033
  %.sroa.7.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.7.sroa.0.4.insert.ext.i, 32, !dbg !17033
    #dbg_value(i64 %.sroa.7.sroa.0.4.insert.shift.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 224, 64), !15306)
    #dbg_value(i32 %.sroa.032.i.4..sroa.032.i.4..sroa.032.i.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.527.0.copyload.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !15306)
    #dbg_value(i32 %.sroa.1217.sroa.5.1.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !15306)
    #dbg_value(i16 poison, !15918, !DIExpression(DW_OP_LLVM_fragment, 352, 16), !15306)
    #dbg_value(i16 poison, !15918, !DIExpression(DW_OP_LLVM_fragment, 368, 16), !15306)
    #dbg_value(i8 %.sroa.1217.sroa.8.1.i, !15918, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !15306)
    #dbg_value(i64 %i.dd, !15918, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15306)
    #dbg_value(i32 %i.dc, !15918, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !15306)
    #dbg_value(i32 -1, !15918, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15306)
  br label %bb.ae, !dbg !17034

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.32, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.7.sroa.7.sroa.3.i, i64 20, i1 false), !dbg !17035, !noalias !16091
  store i64 %.sroa.7.sroa.0.0.i, ptr %.sroa.23, align 8, !dbg !17036, !alias.scope !16090, !noalias !16091
  %.sroa.23.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 8, !dbg !17036
  store i32 %.sroa.7.sroa.3.0.i, ptr %.sroa.23.8..sroa_idx, align 8, !dbg !17036, !alias.scope !16090, !noalias !16091
  %.sroa.23.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 12, !dbg !17036
  store i32 %.sroa.7.sroa.4.0.i, ptr %.sroa.23.12..sroa_idx, align 4, !dbg !17036, !alias.scope !16090, !noalias !16091
  %.sroa.23.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 16, !dbg !17036
  store <2 x i16> %i.ct, ptr %.sroa.23.16..sroa_idx, align 8, !dbg !17036, !alias.scope !16090, !noalias !16091
  %.sroa.23.20..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 20, !dbg !17036
  store i8 %.sroa.7.sroa.7.sroa.0.0.i, ptr %.sroa.23.20..sroa_idx, align 4, !dbg !17036, !alias.scope !16090, !noalias !16091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17037, !noalias !16198
  %i.de = trunc i64 %.sroa.7.sroa.0.0.i to i32, !dbg !16917
  %i.df = lshr i64 %.sroa.7.sroa.0.0.i, 32, !dbg !16917 ; 2 uses
  %i.dg = trunc i64 %i.df to i8, !dbg !16917      ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit unwind label %bb.c, !dbg !16917, !noalias !16090

_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i: ; preds = %bb.ae, %.noexc133.i, %bb.ah, %bb.ac, %bb.aa, %bb.z, %.noexc131.i, %.noexc127.i, %bb.t, %bb.u, %bb.v, %.noexc130.i, %bb.m, %bb.l, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17037, !noalias !16198
  br label %bb.ak, !dbg !17038

bb.ak:                                            ; preds = %bb.j, %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i
    #dbg_value(ptr %i.h, !1988, !DIExpression(), !15319)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.am unwind label %bb.al, !dbg !17039, !noalias !16090

bb.al:                                            ; preds = %bb.ak
  %i.dh = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !1993, !DIExpression(), !15321)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.an, !dbg !17040, !noalias !16090

bb.am:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.h, !1993, !DIExpression(), !15323)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i unwind label %bb.c, !dbg !17041, !noalias !16090

bb.an:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !17039, !noalias !16090
  unreachable, !dbg !17039

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16917, !noalias !16198
    #dbg_value(ptr poison, !2010, !DIExpression(), !15325)
  %i.dj = load ptr, ptr %i.af, align 8, !dbg !17042, !invariant.load !1135, !noalias !16090 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.dj, null, !dbg !17042
  br i1 %.not.i136.i, label %bb.ap, label %bb.ao, !dbg !17042

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i
  invoke void %i.dj(ptr noundef nonnull %i.ae)
          to label %bb.ap unwind label %bb.ar, !dbg !17042, !noalias !16090

bb.ap:                                            ; preds = %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i
    #dbg_value(ptr poison, !2015, !DIExpression(), !15327)
    #dbg_value(ptr poison, !2018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15328)
    #dbg_value(ptr %i.af, !2018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15328)
    #dbg_value(ptr poison, !2040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15330)
    #dbg_value(ptr poison, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15332)
    #dbg_value(ptr poison, !2053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15334)
    #dbg_value(ptr poison, !2059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15336)
    #dbg_value(ptr %i.af, !2040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15330)
    #dbg_value(ptr %i.af, !2048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15332)
    #dbg_value(ptr %i.af, !2053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15334)
    #dbg_value(ptr %i.af, !2059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15336)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !17043
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !17043, !range !2061, !invariant.load !1135, !noalias !16090 ; 2 uses
    #dbg_value(i64 poison, !2019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15337)
    #dbg_value(i64 %i.dl, !2019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15337)
  %i.dm = icmp eq i64 %i.dl, 0, !dbg !17044
  br i1 %i.dm, label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, label %bb.aq, !dbg !17044

bb.aq:                                            ; preds = %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !17043
  %i.do = load i64, ptr %i.dn, align 8, !dbg !17045, !range !2062, !invariant.load !1135, !noalias !16090
    #dbg_value(i64 %i.do, !2019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15337)
    #dbg_value(ptr %i.ae, !2040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15330)
    #dbg_value(ptr %i.ae, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15332)
    #dbg_value(ptr %i.ae, !2053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15334)
    #dbg_value(ptr %i.ae, !2059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15336)
    #dbg_value(ptr %i.ae, !2018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15328)
    #dbg_value(ptr poison, !2065, !DIExpression(), !15339)
    #dbg_value(ptr poison, !2072, !DIExpression(), !15341)
    #dbg_value(ptr %i.ae, !2069, !DIExpression(), !15339)
    #dbg_value(ptr %i.ae, !2075, !DIExpression(), !15341)
    #dbg_value(ptr %i.ae, !2078, !DIExpression(), !15343)
    #dbg_value(ptr %i.ae, !2084, !DIExpression(), !15345)
    #dbg_value(i64 %i.do, !2070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15339)
    #dbg_value(i64 %i.do, !2076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15341)
    #dbg_value(i64 %i.do, !2082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15343)
    #dbg_value(i64 %i.do, !2085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15345)
    #dbg_value(i64 %i.dl, !2070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15339)
    #dbg_value(i64 %i.dl, !2076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15341)
    #dbg_value(i64 %i.dl, !2082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15343)
    #dbg_value(i64 %i.dl, !2085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15345)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.dl, i64 noundef range(i64 1, 536870913) %i.do) #23, !dbg !17046, !noalias !16090
  br label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, !dbg !17047

bb.ar:                                            ; preds = %bb.ao
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !2015, !DIExpression(), !15347)
    #dbg_value(ptr poison, !2018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15348)
    #dbg_value(ptr %i.af, !2018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15348)
    #dbg_value(ptr poison, !2040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15350)
    #dbg_value(ptr poison, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15352)
    #dbg_value(ptr poison, !2053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15354)
    #dbg_value(ptr poison, !2059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15356)
    #dbg_value(ptr %i.af, !2040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15350)
    #dbg_value(ptr %i.af, !2048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15352)
    #dbg_value(ptr %i.af, !2053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15354)
    #dbg_value(ptr %i.af, !2059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15356)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !17048
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !17048, !range !2061, !invariant.load !1135, !noalias !16090 ; 2 uses
    #dbg_value(i64 poison, !2019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15357)
    #dbg_value(i64 %i.dr, !2019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15357)
  %i.ds = icmp eq i64 %i.dr, 0, !dbg !17049
  br i1 %i.ds, label %common.resume.i, label %bb.as, !dbg !17049

bb.as:                                            ; preds = %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !17048
  %i.du = load i64, ptr %i.dt, align 8, !dbg !17050, !range !2062, !invariant.load !1135, !noalias !16090
    #dbg_value(i64 %i.du, !2019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15357)
    #dbg_value(ptr %i.ae, !2040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15350)
    #dbg_value(ptr %i.ae, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15352)
    #dbg_value(ptr %i.ae, !2053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15354)
    #dbg_value(ptr %i.ae, !2059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15356)
    #dbg_value(ptr %i.ae, !2018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15348)
    #dbg_value(ptr poison, !2065, !DIExpression(), !15359)
    #dbg_value(ptr poison, !2072, !DIExpression(), !15361)
    #dbg_value(ptr %i.ae, !2069, !DIExpression(), !15359)
    #dbg_value(ptr %i.ae, !2075, !DIExpression(), !15361)
    #dbg_value(ptr %i.ae, !2078, !DIExpression(), !15363)
    #dbg_value(ptr %i.ae, !2084, !DIExpression(), !15365)
    #dbg_value(i64 %i.du, !2070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15359)
    #dbg_value(i64 %i.du, !2076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15361)
    #dbg_value(i64 %i.du, !2082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15363)
    #dbg_value(i64 %i.du, !2085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15365)
    #dbg_value(i64 %i.dr, !2070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15359)
    #dbg_value(i64 %i.dr, !2076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15361)
    #dbg_value(i64 %i.dr, !2082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15363)
    #dbg_value(i64 %i.dr, !2085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15365)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.dr, i64 noundef range(i64 1, 536870913) %i.du) #23, !dbg !17051, !noalias !16090
  br label %common.resume.i, !dbg !17052

common.resume.i:                                  ; preds = %bb.as, %bb.ar, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dp, %bb.ar ], [ %i.dp, %bb.as ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !17053

bb.at:                                            ; preds = %bb.i, %.body.i
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !17054, !noalias !16090
  unreachable, !dbg !17054

bb.au:                                            ; preds = %bb.e
  unreachable

_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread: ; preds = %bb.ap, %bb.aq, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.225.i), !dbg !17055
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.7.sroa.3.i), !dbg !17055
  br label %bb.ax, !dbg !17056

_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16917, !noalias !16198
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCshovLROGBtMy_11quinn_proto6crypto7AeadKeyEL_EEB1f_(ptr nonnull %i.ae, ptr nonnull %i.af), !dbg !16901, !noalias !16090
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.225.i), !dbg !17055
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.7.sroa.3.i), !dbg !17055
  %.not = icmp eq i32 %.sroa.2.0.i, -2, !dbg !16890
  br i1 %.not, label %bb.ax, label %bb.aw, !dbg !17056

bb.av:                                            ; preds = %bb.a
  store i8 0, ptr %0, align 1, !dbg !17057
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !17057
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1, !dbg !17057
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !17057
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(21) %i.j, i64 21, i1 false), !dbg !17057
  br label %bb.bp, !dbg !17058

bb.aw:                                            ; preds = %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit
    #dbg_value(i64 %.sroa.09.0.i, !15856, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16592)
    #dbg_value(i32 %.sroa.2.0.i, !15856, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !16592)
    #dbg_value(i32 poison, !15856, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !16592)
    #dbg_value(i64 %.sroa.411.0.i, !15856, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16592)
    #dbg_value(i32 %.sroa.612.0.i, !15856, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !16592)
    #dbg_value(i32 %i.de, !15856, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !16592)
    #dbg_value(i8 %i.dg, !15856, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !16592)
  %.sroa.23.5..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 5, !dbg !17059
  %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload = load i128, ptr %.sroa.23.5..sroa_idx, align 1, !dbg !17059 ; 7 uses
    #dbg_value(i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, !15856, !DIExpression(DW_OP_LLVM_fragment, 392, 128), !16592)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.32, i64 23, i1 false), !dbg !17059
    #dbg_value(i128 %.sroa.018.0.copyload.i, !15856, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16592)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23), !dbg !17060
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32), !dbg !17060
  %i.dw = icmp eq i32 %.sroa.2.0.i, -1, !dbg !17061
  br i1 %i.dw, label %bb.ay, label %bb.az, !dbg !17062

bb.ax:                                            ; preds = %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23), !dbg !17060
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32), !dbg !17060
  store i8 0, ptr %0, align 1, !dbg !17063
  %.sroa.9.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !17063
  store i8 0, ptr %.sroa.9.0..sroa_idx1, align 1, !dbg !17063
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !17063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx9, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10, i64 21, i1 false), !dbg !17063
  br label %bb.bp, !dbg !17064

bb.ay:                                            ; preds = %bb.aw
    #dbg_value(i8 %i.dg, !15860, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !16597)
    #dbg_value(i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, !15860, !DIExpression(DW_OP_LLVM_fragment, 8, 128), !16597)
    #dbg_value(i64 %.sroa.411.0.i, !15861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16597)
    #dbg_value(i32 %.sroa.612.0.i, !15861, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16597)
    #dbg_value(ptr undef, !15996, !DIExpression(), !16004)
    #dbg_value(ptr undef, !15985, !DIExpression(), !15995)
    #dbg_value(ptr %3, !16598, !DIExpression(), !16603)
  %i.dx = load i16, ptr %3, align 4, !dbg !17065, !range !16604, !noundef !1135 ; 3 uses
  %i.dy = trunc nuw i16 %i.dx to i1, !dbg !17066  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4, !dbg !17066
  %.sroa.036.0.copyload = load i128, ptr %i.dz, align 4, !dbg !17066
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 2, !dbg !17066
  %.sroa.035.0.copyload = load i32, ptr %i.ea, align 2, !dbg !17066
  %.sroa.6.1.insert.ext = zext i32 %.sroa.035.0.copyload to i128, !dbg !17066
  %.sroa.6.0 = select i1 %i.dy, i128 %.sroa.036.0.copyload, i128 %.sroa.6.1.insert.ext, !dbg !17066 ; 2 uses
    #dbg_value(ptr undef, !15997, !DIExpression(), !16003)
    #dbg_value(ptr undef, !15981, !DIExpression(), !15995)
  %.mask = and i8 %i.dg, 1, !dbg !15995
    #dbg_value(i8 %.mask, !15986, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !16606)
    #dbg_value(i16 %i.dx, !15987, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !16607)
  %4 = zext nneg i8 %.mask to i16, !dbg !17067
  %i.eb = icmp eq i16 %i.dx, %4, !dbg !17067
  br i1 %i.eb, label %bb.bg, label %bb.bh, !dbg !17067

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17068
  store i64 %.sroa.411.0.i, ptr %i.i, align 8, !dbg !17068
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17068
  store i32 %.sroa.612.0.i, ptr %.8..8..8..sroa_idx, align 8, !dbg !17068
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12, !dbg !17068
  store i32 %i.de, ptr %.12..12..12..sroa_idx, align 4, !dbg !17068
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !17068
  store i8 %i.dg, ptr %.16..16..16..sroa_idx, align 8, !dbg !17068
  %.sroa.11.0.extract.trunc = trunc i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload to i120, !dbg !17068
  %.17..17..17..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 17, !dbg !17068
  store i120 %.sroa.11.0.extract.trunc, ptr %.17..17..17..sroa_idx, align 1, !dbg !17068
  %.sroa.11.15.extract.shift = lshr i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, 120, !dbg !17069
  %.sroa.11.15.extract.trunc = trunc nuw i128 %.sroa.11.15.extract.shift to i8, !dbg !17069
    #dbg_value(i8 %.sroa.11.15.extract.trunc, !15858, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !16608)
    #dbg_value(i64 %.sroa.09.0.i, !15859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16608)
    #dbg_value(i32 %.sroa.2.0.i, !15859, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16608)
    #dbg_value(ptr %i.i, !16609, !DIExpression(), !16618)
    #dbg_value(ptr %3, !16612, !DIExpression(), !16618)
  call void @llvm.experimental.noalias.scope.decl(metadata !16619), !dbg !17070
  call void @llvm.experimental.noalias.scope.decl(metadata !16620), !dbg !17070
    #dbg_value(ptr %i.i, !16621, !DIExpression(), !15379)
    #dbg_value(ptr %3, !16623, !DIExpression(), !15379)
  %i.ec = trunc i64 %.sroa.411.0.i to i16, !dbg !17071
    #dbg_value(i16 %i.ec, !16624, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !15380)
  %i.ed = load i16, ptr %3, align 4, !dbg !17072, !range !16604, !alias.scope !16620, !noalias !16619, !noundef !1135
    #dbg_value(i16 %i.ed, !16625, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !15381)
  %i.ee = icmp eq i16 %i.ed, %i.ec, !dbg !17073
  %i.ef = lshr i64 %.sroa.411.0.i, 48, !dbg !17073
  %i.eg = trunc nuw i64 %i.ef to i16, !dbg !17073
  %i.eh = lshr i64 %.sroa.411.0.i, 16, !dbg !17073
  %i.ei = trunc i64 %i.eh to i32, !dbg !17073
  %i.ej = lshr i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, 88, !dbg !17073
  %i.ek = trunc i128 %i.ej to i16, !dbg !17073
  %i.el = lshr i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, 24, !dbg !17073
  %i.em = trunc i128 %i.el to i32, !dbg !17073
  %i.en = lshr i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, 56, !dbg !17073
  %i.eo = trunc i128 %i.en to i32, !dbg !17073
  br i1 %i.ee, label %bb.ba, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !17073

bb.ba:                                            ; preds = %bb.az
  %i.ep = trunc i64 %.sroa.411.0.i to i1, !dbg !17073
    #dbg_value(i1 %i.ep, !16624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !15380)
  br i1 %i.ep, label %bb.bb, label %bb.bc, !dbg !17073

bb.bb:                                            ; preds = %bb.ba
    #dbg_value(ptr %i.i, !16628, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15382)
    #dbg_value(ptr %i.i, !16633, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15387)
    #dbg_value(ptr %3, !16629, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15382)
    #dbg_value(ptr %3, !16637, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15387)
    #dbg_value(ptr poison, !16642, !DIExpression(), !15388)
    #dbg_value(ptr poison, !16643, !DIExpression(), !15389)
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 28, !dbg !17074
  %i.er = load i16, ptr %i.eq, align 4, !dbg !17074, !alias.scope !16620, !noalias !16619, !noundef !1135
  %i.es = icmp eq i16 %i.er, %i.ek, !dbg !17074
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 20, !dbg !17074
  %i.eu = load i32, ptr %i.et, align 4, !dbg !17074
  %i.ev = icmp eq i32 %i.eu, %i.em, !dbg !17074
  %or.cond = select i1 %i.es, i1 %i.ev, i1 false, !dbg !17074
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !17074
  %i.ex = load i32, ptr %i.ew, align 4, !dbg !17074
  %i.ey = icmp eq i32 %i.ex, %i.eo, !dbg !17074
  %or.cond109 = select i1 %or.cond, i1 %i.ey, i1 false, !dbg !17074
  br i1 %or.cond109, label %.split, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !17074

bb.bc:                                            ; preds = %bb.ba
    #dbg_value(ptr %i.i, !16626, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15390)
    #dbg_value(ptr %i.i, !16649, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15395)
    #dbg_value(ptr %3, !16627, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15390)
    #dbg_value(ptr %3, !16653, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15395)
    #dbg_value(ptr poison, !16659, !DIExpression(), !15396)
    #dbg_value(ptr poison, !16660, !DIExpression(), !15397)
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 6, !dbg !17075
  %i.fa = load i16, ptr %i.ez, align 2, !dbg !17075, !alias.scope !16620, !noalias !16619, !noundef !1135
  %i.fb = icmp eq i16 %i.fa, %i.eg, !dbg !17075
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 2, !dbg !17075
    #dbg_value(ptr %i.i, !16665, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15400)
    #dbg_value(ptr %3, !16669, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15400)
  %i.fd = load i32, ptr %i.fc, align 2
  %i.fe = icmp eq i32 %i.fd, %i.ei
  %or.cond112 = select i1 %i.fb, i1 %i.fe, i1 false, !dbg !17075
  br i1 %or.cond112, label %bb.bd, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !17075

.split:                                           ; preds = %bb.bb
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 4, !dbg !17074
    #dbg_value(ptr %i.i, !16671, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15403)
    #dbg_value(ptr %3, !16675, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15403)
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4, !dbg !17076
  %.4..4..4. = load i128, ptr %.4..4..4..sroa_idx, align 4, !dbg !17076, !alias.scope !16619, !noalias !16620
  %i.fg = load i128, ptr %i.ff, align 4, !dbg !17076, !alias.scope !16620, !noalias !16619, !noundef !1135
  %i.fh = icmp eq i128 %.4..4..4., %i.fg, !dbg !17076
  br i1 %i.fh, label %bb.bd, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !16617

bb.bd:                                            ; preds = %bb.bc, %.split
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 72, !dbg !17077
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !17077, !noundef !1135
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 80, !dbg !17077
  %i.fl = load i32, ptr %i.fk, align 8, !dbg !17077, !range !3472, !noundef !1135
  %i.fm = call { i64, i32 } @_RNvXs6_NtCsG258MDvU3F_3std4timeNtB5_10SystemTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBR_4time8DurationE3add(i64 noundef %.sroa.09.0.i, i32 noundef %.sroa.2.0.i, i64 noundef %i.fj, i32 noundef %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87), !dbg !16034 ; 2 uses
  %i.fn = extractvalue { i64, i32 } %i.fm, 0, !dbg !16034 ; 2 uses
    #dbg_value(ptr poison, !16041, !DIExpression(), !16679)
    #dbg_value(ptr poison, !16681, !DIExpression(), !16688)
    #dbg_value(ptr poison, !16689, !DIExpression(), !16695)
    #dbg_value(ptr %2, !16698, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !16707)
    #dbg_value(ptr %2, !16708, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !16718)
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 136, !dbg !17078
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !17078, !nonnull !1135, !noundef !1135
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 144, !dbg !17078
  %i.fr = load ptr, ptr %i.fq, align 8, !dbg !17078, !nonnull !1135, !align !2576, !noundef !1135 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16, !dbg !17079
  %i.ft = load i64, ptr %i.fs, align 8, !dbg !17079, !range !2062, !invariant.load !1135
  %i.fu = add nsw i64 %i.ft, -1, !dbg !17079
  %i.fv = and i64 %i.fu, -16, !dbg !17079
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fv, !dbg !17079
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16, !dbg !17079
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 24, !dbg !16706
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !16706, !invariant.load !1135, !nonnull !1135
  %i.ga = call { i64, i32 } %i.fz(ptr noundef nonnull %i.fx) #21, !dbg !17080 ; 2 uses
  %i.gb = extractvalue { i64, i32 } %i.ga, 0, !dbg !17080 ; 2 uses
    #dbg_value(ptr poison, !16042, !DIExpression(), !16725)
    #dbg_value(ptr poison, !16685, !DIExpression(), !16688)
    #dbg_value(ptr poison, !16693, !DIExpression(), !16695)
    #dbg_value(ptr poison, !16728, !DIExpression(), !16734)
    #dbg_value(ptr poison, !16732, !DIExpression(), !16734)
    #dbg_value(ptr poison, !16737, !DIExpression(), !16745)
    #dbg_value(ptr poison, !16741, !DIExpression(), !16745)
  %i.gc = icmp eq i64 %i.fn, %i.gb, !dbg !16745
  br i1 %i.gc, label %.split80.a, label %bb.be, !dbg !16745

.split80.a:                                       ; preds = %bb.bd
  %i.gd = extractvalue { i64, i32 } %i.ga, 1, !dbg !17080 ; 2 uses
  %i.ge = extractvalue { i64, i32 } %i.fm, 1, !dbg !16034 ; 2 uses
    #dbg_value(ptr poison, !16748, !DIExpression(), !16756)
    #dbg_value(ptr poison, !16752, !DIExpression(), !16757)
  %i.gf = icmp ult i32 %i.ge, 1000000000, !dbg !17081
  call void @llvm.assume(i1 %i.gf), !dbg !17081
  %i.gg = icmp ult i32 %i.gd, 1000000000, !dbg !17082
  call void @llvm.assume(i1 %i.gg), !dbg !17082
  %i.gh = icmp samesign ult i32 %i.ge, %i.gd, !dbg !17083
    #dbg_value(i8 poison, !16030, !DIExpression(), !16775)
    #dbg_value(i8 poison, !16031, !DIExpression(), !16776)
    #dbg_value(i8 poison, !16764, !DIExpression(), !16777)
  br i1 %i.gh, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, label %bb.bf, !dbg !16034

bb.be:                                            ; preds = %bb.bd
  %i.gi = icmp slt i64 %i.fn, %i.gb, !dbg !17083
    #dbg_value(i8 poison, !16030, !DIExpression(), !16775)
    #dbg_value(i8 poison, !16031, !DIExpression(), !16776)
    #dbg_value(i8 poison, !16764, !DIExpression(), !16777)
  br i1 %i.gi, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, label %bb.bf, !dbg !16034

bb.bf:                                            ; preds = %.split80.a, %bb.be
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(21) %i.j, i64 21, i1 false), !dbg !17085
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.13, i64 20, i1 false), !dbg !17086
  store i8 1, ptr %0, align 1, !dbg !17084
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !17084
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !17084
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !17084
  store i8 %.sroa.11.15.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 1, !dbg !17084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17087
  br label %bb.bp, !dbg !17087

_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread: ; preds = %bb.bb, %bb.az, %bb.bc, %.split80.a, %.split, %bb.be
  store i8 2, ptr %0, align 1, !dbg !16608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17087
  br label %bb.bp, !dbg !17088

bb.bg:                                            ; preds = %bb.ay
  %i.gj = trunc i64 %i.df to i1, !dbg !15995
  br i1 %i.gj, label %.split81.a, label %bb.bi, !dbg !17067

bb.bh:                                            ; preds = %.split81.a, %bb.ay, %bb.bi
  store i8 0, ptr %0, align 1, !dbg !17089
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !17089
  store i8 0, ptr %.sroa.9.0..sroa_idx3, align 1, !dbg !17089
  %.sroa.10.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !17089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx10, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10, i64 21, i1 false), !dbg !17089
  br label %bb.bp, !dbg !17090

.split81.a:                                       ; preds = %bb.bg
  call void @llvm.assume(i1 %i.dy), !dbg !17067
    #dbg_value(ptr undef, !15990, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16781)
    #dbg_value(ptr undef, !16782, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16786)
    #dbg_value(ptr undef, !15991, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16781)
    #dbg_value(ptr undef, !16783, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16786)
    #dbg_value(ptr poison, !16790, !DIExpression(), !16796)
    #dbg_value(ptr poison, !16791, !DIExpression(), !16797)
  %i.gk = icmp eq i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, %.sroa.6.0, !dbg !17091
  br i1 %i.gk, label %bb.bj, label %bb.bh, !dbg !15993

bb.bi:                                            ; preds = %bb.bg
  %i.gl = icmp eq i16 %i.dx, 0, !dbg !17067
  call void @llvm.assume(i1 %i.gl), !dbg !17067
    #dbg_value(ptr undef, !15988, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16799)
    #dbg_value(ptr undef, !16800, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16807)
    #dbg_value(ptr undef, !15989, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16799)
end_hunk_0
