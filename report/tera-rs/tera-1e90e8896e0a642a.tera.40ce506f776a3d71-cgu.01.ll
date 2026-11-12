Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.01?download=true
inline.NumInlined: 2035
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !75010
  %i.d = load i64, ptr %i.c, align 8, !dbg !75010, !noundef !1852
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !75011
  ret i1 %i.e, !dbg !75012
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !75014 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
    #dbg_value(ptr @30, !75271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75275)
    #dbg_value(ptr @30, !75276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75281)
    #dbg_value(i64 11, !75271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75275)
    #dbg_value(i64 11, !75276, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75281)
    #dbg_value(ptr %0, !75272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75275)
    #dbg_value(ptr %0, !75277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75281)
    #dbg_value(i64 %1, !75272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75275)
    #dbg_value(i64 %1, !75277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75281)
    #dbg_value(ptr @30, !75285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75292)
    #dbg_value(i64 11, !75285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75292)
    #dbg_value(i64 11, !75287, !DIExpression(), !75296)
    #dbg_value(i64 11, !75297, !DIExpression(), !75303)
    #dbg_value(i64 11, !75300, !DIExpression(), !75304)
    #dbg_value(ptr %0, !75286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75292)
    #dbg_value(i64 %1, !75286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75292)
  %i.b = icmp ugt i64 %1, 11, !dbg !75557
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !75557

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit: ; preds = %.split.us.i.i, %bb.l, %.lr.ph.split.us.i.i, %bb.b, %bb.n
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.dg, %bb.n ], [ true, %.lr.ph.split.us.i.i ], [ %i.cu, %bb.l ], [ %i.w, %.split.us.i.i ], !dbg !75275
    #dbg_value(i8 poison, !75273, !DIExpression(), !75305)
  ret i1 %.sroa.0.0, !dbg !75558

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !75282, !DIExpression(), !75306)
    #dbg_value(ptr poison, !75283, !DIExpression(), !75307)
    #dbg_value(ptr poison, !75293, !DIExpression(), !75308)
    #dbg_value(ptr poison, !75294, !DIExpression(), !75309)
  %i.c = icmp eq i64 %1, 11, !dbg !75559
  br i1 %i.c, label %bb.n, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit, !dbg !75559

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75310), !dbg !75560
    #dbg_value(ptr poison, !75311, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !75050)
    #dbg_value(ptr poison, !75311, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !75050)
    #dbg_value(ptr poison, !75353, !DIExpression(), !75077)
    #dbg_value(ptr poison, !75388, !DIExpression(), !75078)
    #dbg_value(ptr poison, !75412, !DIExpression(), !75079)
    #dbg_value(ptr poison, !75311, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !75050)
    #dbg_value(ptr poison, !75417, !DIExpression(), !75086)
    #dbg_value(ptr poison, !75390, !DIExpression(), !75078)
    #dbg_value(ptr poison, !75413, !DIExpression(), !75079)
    #dbg_value(ptr @30, !75325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75087)
    #dbg_value(i64 11, !75325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75087)
    #dbg_value(ptr %0, !75326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75087)
    #dbg_value(i64 %1, !75326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75087)
    #dbg_declare(ptr %i.a, !75336, !DIExpression(), !75088)
    #dbg_value(ptr @30, !75327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75089)
    #dbg_value(i64 11, !75327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75089)
    #dbg_value(ptr %0, !75328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75090)
    #dbg_value(i64 %1, !75328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75090)
    #dbg_value(i8 100, !75329, !DIExpression(), !75091)
    #dbg_value(i64 10, !75330, !DIExpression(), !75092)
    #dbg_value(i64 10, !75331, !DIExpression(), !75093)
  %i.d = icmp ult i64 %1, 26, !dbg !75561
  br i1 %i.d, label %.lr.ph.split.us.i.i, label %bb.d, !dbg !75561

.lr.ph.split.us.i.i:                              ; preds = %bb.c
    #dbg_value(ptr undef, !75412, !DIExpression(), !75079)
    #dbg_value(ptr undef, !75413, !DIExpression(), !75079)
    #dbg_value(ptr undef, !75390, !DIExpression(), !75078)
    #dbg_value(ptr undef, !75388, !DIExpression(), !75078)
    #dbg_value(ptr undef, !75353, !DIExpression(), !75077)
    #dbg_value(i64 0, !75435, !DIExpression(), !75102)
    #dbg_value(i64 1, !75453, !DIExpression(), !75105)
    #dbg_value(i64 1, !75456, !DIExpression(), !75109)
    #dbg_value(i64 1, !75435, !DIExpression(), !75111)
    #dbg_value(ptr %0, !75436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75102)
    #dbg_value(i64 %1, !75436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75102)
    #dbg_value(i64 11, !75437, !DIExpression(), !75102)
    #dbg_value(ptr %0, !75367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75112)
    #dbg_value(i64 11, !75367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75112)
    #dbg_value(ptr %0, !75454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75105)
    #dbg_value(ptr %0, !75459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75109)
    #dbg_value(ptr %0, !75436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75111)
    #dbg_value(i64 %1, !75454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75105)
    #dbg_value(i64 %1, !75459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75109)
    #dbg_value(i64 %1, !75436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75111)
  %i.e = load i64, ptr %0, align 1, !dbg !75562
  %i.f = xor i64 %i.e, 7070762896912181604, !dbg !75562
  %i.g = getelementptr i8, ptr %0, i64 3, !dbg !75562
  %i.h = load i64, ptr %i.g, align 1, !dbg !75562
  %i.i = xor i64 %i.h, 3467905175432553577, !dbg !75562
  %i.j = or i64 %i.f, %i.i, !dbg !75562
  %i.k = icmp ne i64 %i.j, 0, !dbg !75562
  %i.l = zext i1 %i.k to i32, !dbg !75562
  %i.m = icmp eq i32 %i.l, 0, !dbg !75562
  br i1 %i.m, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit, label %.split.us.i.i, !dbg !75563

.split.us.i.i:                                    ; preds = %.split.us.i.i, %.lr.ph.split.us.i.i
  %.in.i4 = phi i64 [ %i.x, %.split.us.i.i ], [ %1, %.lr.ph.split.us.i.i ]
  %.pn.i3 = phi ptr [ %i.n, %.split.us.i.i ], [ %0, %.lr.ph.split.us.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.pn.i3, i64 1, !dbg !75564 ; 3 uses
    #dbg_value(ptr %i.n, !75436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75102)
    #dbg_value(i64 %.in.i4, !75436, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !75102)
    #dbg_value(i64 11, !75437, !DIExpression(), !75102)
    #dbg_value(ptr %i.n, !75454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75105)
    #dbg_value(ptr %i.n, !75459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75109)
    #dbg_value(ptr %i.n, !75436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75111)
    #dbg_value(i64 %.in.i4, !75454, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !75105)
    #dbg_value(i64 %.in.i4, !75459, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !75109)
    #dbg_value(i64 %.in.i4, !75436, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !75111)
    #dbg_value(i64 %.in.i4, !75460, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !75119)
    #dbg_value(i64 %.in.i4, !75437, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !75111)
    #dbg_value(ptr %i.n, !75367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75112)
    #dbg_value(i64 11, !75367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75112)
    #dbg_value(ptr %i.n, !75392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75120)
    #dbg_value(i64 11, !75392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75120)
    #dbg_value(ptr poison, !75430, !DIExpression(DW_OP_deref), !75121)
    #dbg_value(ptr %i.n, !75429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75121)
    #dbg_value(i64 11, !75429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75121)
    #dbg_value(ptr poison, !75424, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !75122)
    #dbg_value(ptr %i.n, !75423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75122)
    #dbg_value(ptr %i.n, !75468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75123)
    #dbg_value(i64 11, !75423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75122)
    #dbg_value(i64 11, !75468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75123)
    #dbg_value(ptr poison, !75418, !DIExpression(), !75124)
    #dbg_value(ptr undef, !75417, !DIExpression(), !75086)
    #dbg_value(i64 11, !75469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75123)
    #dbg_value(i64 11, !75470, !DIExpression(), !75125)
    #dbg_value(i64 11, !75465, !DIExpression(), !75126)
    #dbg_value(i64 11, !75466, !DIExpression(), !75127)
    #dbg_value(ptr @30, !75469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75123)
    #dbg_value(ptr %i.n, !75463, !DIExpression(), !75126)
    #dbg_value(ptr @30, !75464, !DIExpression(), !75126)
  %i.o = load i64, ptr %i.n, align 1, !dbg !75562
  %i.p = xor i64 %i.o, 7070762896912181604, !dbg !75562
  %i.q = getelementptr i8, ptr %i.n, i64 3, !dbg !75562
  %i.r = load i64, ptr %i.q, align 1, !dbg !75562
  %i.s = xor i64 %i.r, 3467905175432553577, !dbg !75562
  %i.t = or i64 %i.p, %i.s, !dbg !75562
  %i.u = icmp ne i64 %i.t, 0, !dbg !75562
  %i.v = zext i1 %i.u to i32, !dbg !75562
  %i.w = icmp eq i32 %i.v, 0, !dbg !75562         ; 2 uses
  %.not = xor i1 %i.w, true, !dbg !75563
  %i.x = add nsw i64 %.in.i4, -1                  ; 2 uses
    #dbg_value(i64 %i.x, !75436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75102)
    #dbg_value(i64 %i.x, !75454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75105)
    #dbg_value(i64 %i.x, !75459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75109)
    #dbg_value(i64 %i.x, !75436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75111)
    #dbg_value(i64 %i.x, !75460, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !75119)
    #dbg_value(i64 %i.x, !75437, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !75111)
    #dbg_value(ptr undef, !75353, !DIExpression(), !75077)
    #dbg_value(i64 0, !75435, !DIExpression(), !75102)
    #dbg_value(i64 1, !75453, !DIExpression(), !75105)
    #dbg_value(i64 1, !75456, !DIExpression(), !75109)
    #dbg_value(i64 1, !75435, !DIExpression(), !75111)
  %.not29.i.i = icmp ugt i64 %i.x, 11
  %or.cond = select i1 %.not, i1 %.not29.i.i, i1 false, !dbg !75563
  br i1 %or.cond, label %.split.us.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit, !dbg !75563

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 100, !75329, !DIExpression(), !75091)
    #dbg_value(<16 x i8> splat (i8 100), !75333, !DIExpression(), !75128)
    #dbg_value(i64 10, !75331, !DIExpression(), !75093)
    #dbg_value(<16 x i8> splat (i8 48), !75334, !DIExpression(), !75129)
    #dbg_value(ptr getelementptr inbounds nuw (i8, ptr @30, i64 1), !75335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75130)
    #dbg_value(i64 10, !75335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !75565, !noalias !75310
  store ptr %0, ptr %i.a, align 8, !dbg !75566, !noalias !75310
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !75566
  store i64 %1, ptr %i.y, align 8, !dbg !75566, !noalias !75310
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !75566
  store ptr getelementptr inbounds nuw (i8, ptr @30, i64 1), ptr %i.z, align 8, !dbg !75566, !noalias !75310
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !75566
  store i64 10, ptr %i.aa, align 8, !dbg !75566, !noalias !75310
    #dbg_value(ptr %0, !75311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75050)
    #dbg_value(i64 %1, !75311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75050)
    #dbg_value(ptr undef, !75311, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !75050)
    #dbg_value(ptr undef, !75311, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !75050)
    #dbg_value(ptr undef, !75311, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !75050)
    #dbg_value(i64 0, !75337, !DIExpression(), !75131)
    #dbg_value(i8 0, !75338, !DIExpression(), !75132)
  %i.ab = icmp ult i64 %1, 75, !dbg !75567
  br i1 %i.ab, label %.preheader.i, label %.lr.ph.i, !dbg !75567

.preheader.i:                                     ; preds = %bb.h, %bb.d
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.d ], [ %.sroa.014.2.3.i, %bb.h ], !dbg !75568 ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.bt, %bb.h ], !dbg !75569 ; 2 uses
    #dbg_value(i64 %.sroa.06.0.lcssa.i, !75337, !DIExpression(), !75131)
    #dbg_value(i8 %.sroa.014.0.lcssa.i, !75338, !DIExpression(), !75132)
  %i.ac = add i64 %.sroa.06.0.lcssa.i, 26, !dbg !75570
  %i.ad = icmp uge i64 %i.ac, %1, !dbg !75570
  %i.ae = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond343.i = select i1 %i.ad, i1 true, i1 %i.ae, !dbg !75570
  br i1 %or.cond343.i, label %._crit_edge.i, label %.lr.ph45.i, !dbg !75570

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.sroa.06.041.i = phi i64 [ %i.bt, %bb.h ], [ 0, %bb.d ] ; 7 uses
    #dbg_value(i64 %.sroa.06.041.i, !75337, !DIExpression(), !75131)
    #dbg_value(<16 x i1> zeroinitializer, !75342, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !75133)
    #dbg_value(<16 x i1> zeroinitializer, !75342, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !75133)
    #dbg_value(<16 x i1> zeroinitializer, !75342, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !75133)
    #dbg_value(<16 x i1> zeroinitializer, !75342, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !75133)
    #dbg_value(i64 0, !75343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75134)
    #dbg_value(i64 4, !75343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !75134)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.041.i ; 8 uses
    #dbg_value(i64 0, !75343, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !75134)
    #dbg_value(i64 0, !75344, !DIExpression(), !75135)
    #dbg_value(ptr poison, !75478, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !75145)
    #dbg_value(ptr poison, !75484, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !75145)
    #dbg_value(ptr poison, !75485, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !75145)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 0), !75482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75145)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 0), !75500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75148)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 0), !75500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75150)
    #dbg_value(ptr %0, !75501, !DIExpression(), !75148)
    #dbg_value(ptr %i.af, !75504, !DIExpression(), !75153)
    #dbg_value(ptr %i.af, !75510, !DIExpression(), !75156)
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.af, align 1, !dbg !75571, !alias.scope !75310, !noalias !75512
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i, !75486, !DIExpression(), !75162)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i, !75521, !DIExpression(), !75165)
    #dbg_value(ptr %0, !75501, !DIExpression(), !75150)
    #dbg_value(ptr %i.af, !75501, !DIExpression(), !75167)
    #dbg_value(i64 10, !75500, !DIExpression(), !75167)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 10, !dbg !75572
    #dbg_value(ptr %i.ag, !75504, !DIExpression(), !75169)
    #dbg_value(ptr %i.ag, !75510, !DIExpression(), !75171)
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.ag, align 1, !dbg !75573, !alias.scope !75310, !noalias !75512
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.i, !75487, !DIExpression(), !75173)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.i, !75521, !DIExpression(), !75175)
    #dbg_value(<16 x i8> splat (i8 100), !75528, !DIExpression(), !75165)
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, splat (i8 100), !dbg !75574
    #dbg_value(<16 x i8> poison, !75488, !DIExpression(), !75176)
    #dbg_value(<16 x i8> poison, !75533, !DIExpression(), !75179)
    #dbg_value(<16 x i8> splat (i8 48), !75528, !DIExpression(), !75175)
  %i.ai = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, splat (i8 48), !dbg !75575
    #dbg_value(<16 x i8> poison, !75489, !DIExpression(), !75180)
    #dbg_value(<16 x i8> poison, !75537, !DIExpression(), !75179)
  %i.aj = and <16 x i1> %i.ah, %i.ai, !dbg !75576
    #dbg_value(<16 x i8> poison, !75490, !DIExpression(), !75181)
    #dbg_declare(ptr poison, !75539, !DIExpression(), !75184)
    #dbg_value(<16 x i8> poison, !75545, !DIExpression(), !75189)
    #dbg_value(<16 x i8> poison, !75550, !DIExpression(), !75190)
    #dbg_value(<16 x i1> %i.aj, !75342, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !75133)
    #dbg_value(i64 1, !75343, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !75134)
    #dbg_value(i64 1, !75344, !DIExpression(), !75135)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 16), !75482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75145)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 16), !75500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75148)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 16), !75500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75150)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !75577
    #dbg_value(ptr %i.ak, !75504, !DIExpression(), !75153)
    #dbg_value(ptr %i.ak, !75510, !DIExpression(), !75156)
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ak, align 1, !dbg !75571, !alias.scope !75310, !noalias !75512
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.1.i, !75486, !DIExpression(), !75162)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.1.i, !75521, !DIExpression(), !75165)
    #dbg_value(ptr %i.ak, !75501, !DIExpression(), !75167)
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 26, !dbg !75572
    #dbg_value(ptr %i.al, !75504, !DIExpression(), !75169)
    #dbg_value(ptr %i.al, !75510, !DIExpression(), !75171)
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.al, align 1, !dbg !75573, !alias.scope !75310, !noalias !75512
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.1.i, !75487, !DIExpression(), !75173)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.1.i, !75521, !DIExpression(), !75175)
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, splat (i8 100), !dbg !75574
  %i.an = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, splat (i8 48), !dbg !75575
  %i.ao = and <16 x i1> %i.am, %i.an, !dbg !75576
    #dbg_declare(ptr poison, !75539, !DIExpression(), !75184)
    #dbg_value(<16 x i1> %i.ao, !75342, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !75133)
    #dbg_value(i64 2, !75343, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !75134)
    #dbg_value(i64 2, !75344, !DIExpression(), !75135)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 32), !75482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75145)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 32), !75500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75148)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 32), !75500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75150)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !75577
    #dbg_value(ptr %i.ap, !75504, !DIExpression(), !75153)
    #dbg_value(ptr %i.ap, !75510, !DIExpression(), !75156)
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.ap, align 1, !dbg !75571, !alias.scope !75310, !noalias !75512
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.2.i, !75486, !DIExpression(), !75162)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.2.i, !75521, !DIExpression(), !75165)
    #dbg_value(ptr %i.ap, !75501, !DIExpression(), !75167)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 42, !dbg !75572
    #dbg_value(ptr %i.aq, !75504, !DIExpression(), !75169)
    #dbg_value(ptr %i.aq, !75510, !DIExpression(), !75171)
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.aq, align 1, !dbg !75573, !alias.scope !75310, !noalias !75512
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.2.i, !75487, !DIExpression(), !75173)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.2.i, !75521, !DIExpression(), !75175)
  %i.ar = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, splat (i8 100), !dbg !75574
  %i.as = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, splat (i8 48), !dbg !75575
  %i.at = and <16 x i1> %i.ar, %i.as, !dbg !75576
    #dbg_declare(ptr poison, !75539, !DIExpression(), !75184)
    #dbg_value(<16 x i1> %i.at, !75342, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !75133)
    #dbg_value(i64 3, !75343, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !75134)
    #dbg_value(i64 3, !75344, !DIExpression(), !75135)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 48), !75482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75145)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 48), !75500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75148)
    #dbg_value(!DIArgList(i64 %.sroa.06.041.i, i64 48), !75500, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !75150)
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !75577
    #dbg_value(ptr %i.au, !75504, !DIExpression(), !75153)
    #dbg_value(ptr %i.au, !75510, !DIExpression(), !75156)
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.au, align 1, !dbg !75571, !alias.scope !75310, !noalias !75512
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.3.i, !75486, !DIExpression(), !75162)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.3.i, !75521, !DIExpression(), !75165)
    #dbg_value(ptr %i.au, !75501, !DIExpression(), !75167)
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 58, !dbg !75572
    #dbg_value(ptr %i.av, !75504, !DIExpression(), !75169)
    #dbg_value(ptr %i.av, !75510, !DIExpression(), !75171)
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.av, align 1, !dbg !75573, !alias.scope !75310, !noalias !75512
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.3.i, !75487, !DIExpression(), !75173)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.3.i, !75521, !DIExpression(), !75175)
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, splat (i8 100), !dbg !75574
  %i.ax = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, splat (i8 48), !dbg !75575
  %i.ay = and <16 x i1> %i.aw, %i.ax, !dbg !75576
    #dbg_declare(ptr poison, !75539, !DIExpression(), !75184)
    #dbg_value(i64 4, !75343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75134)
    #dbg_value(<16 x i1> %i.ay, !75342, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !75133)
    #dbg_value(i8 0, !75338, !DIExpression(), !75132)
    #dbg_value(i64 1, !75345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75191)
    #dbg_value(i64 0, !75346, !DIExpression(), !75192)
  %i.az = bitcast <16 x i1> %i.aj to i16, !dbg !75578 ; 2 uses
    #dbg_value(i16 %i.az, !75347, !DIExpression(), !75193)
  %i.ba = icmp eq i16 %i.az, 0, !dbg !75579
  br i1 %i.ba, label %.preheader35.1.i, label %bb.i, !dbg !75579

.preheader35.1.i:                                 ; preds = %bb.i, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.by, %bb.i ], !dbg !75580 ; 3 uses
    #dbg_value(i8 %.sroa.014.2.i, !75338, !DIExpression(), !75132)
    #dbg_value(i64 2, !75345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75191)
    #dbg_value(i64 1, !75346, !DIExpression(), !75192)
  %2 = bitcast <16 x i1> %i.ao to i16, !dbg !75578 ; 2 uses
    #dbg_value(i16 %2, !75347, !DIExpression(), !75193)
  %i.bb = icmp eq i16 %2, 0, !dbg !75579
  br i1 %i.bb, label %.preheader35.2.i, label %bb.e, !dbg !75579

bb.e:                                             ; preds = %.preheader35.1.i
  %i.bc = or disjoint i64 %.sroa.06.041.i, 16, !dbg !75581
  %i.bd = trunc nuw i8 %.sroa.014.2.i to i1, !dbg !75582
  %i.be = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bc, i16 noundef %2, i1 noundef zeroext %i.bd) #30, !dbg !75583
  %i.bf = zext i1 %i.be to i8, !dbg !75584
  %i.bg = or i8 %.sroa.014.2.i, %i.bf, !dbg !75584
    #dbg_value(i8 %i.bg, !75338, !DIExpression(), !75132)
  br label %.preheader35.2.i, !dbg !75585

.preheader35.2.i:                                 ; preds = %bb.e, %.preheader35.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader35.1.i ], [ %i.bg, %bb.e ], !dbg !75580 ; 3 uses
    #dbg_value(i8 %.sroa.014.2.1.i, !75338, !DIExpression(), !75132)
    #dbg_value(i64 3, !75345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75191)
    #dbg_value(i64 2, !75346, !DIExpression(), !75192)
  %3 = bitcast <16 x i1> %i.at to i16, !dbg !75578 ; 2 uses
    #dbg_value(i16 %3, !75347, !DIExpression(), !75193)
  %i.bh = icmp eq i16 %3, 0, !dbg !75579
  br i1 %i.bh, label %.preheader35.3.i, label %bb.f, !dbg !75579

bb.f:                                             ; preds = %.preheader35.2.i
  %i.bi = or disjoint i64 %.sroa.06.041.i, 32, !dbg !75581
  %i.bj = trunc nuw i8 %.sroa.014.2.1.i to i1, !dbg !75582
  %i.bk = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bi, i16 noundef %3, i1 noundef zeroext %i.bj) #30, !dbg !75583
  %i.bl = zext i1 %i.bk to i8, !dbg !75584
  %i.bm = or i8 %.sroa.014.2.1.i, %i.bl, !dbg !75584
    #dbg_value(i8 %i.bm, !75338, !DIExpression(), !75132)
  br label %.preheader35.3.i, !dbg !75585

.preheader35.3.i:                                 ; preds = %bb.f, %.preheader35.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader35.2.i ], [ %i.bm, %bb.f ], !dbg !75580 ; 3 uses
    #dbg_value(i8 %.sroa.014.2.2.i, !75338, !DIExpression(), !75132)
    #dbg_value(i64 4, !75345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75191)
    #dbg_value(i64 3, !75346, !DIExpression(), !75192)
  %4 = bitcast <16 x i1> %i.ay to i16, !dbg !75578 ; 2 uses
    #dbg_value(i16 %4, !75347, !DIExpression(), !75193)
  %i.bn = icmp eq i16 %4, 0, !dbg !75579
  br i1 %i.bn, label %bb.h, label %bb.g, !dbg !75579

bb.g:                                             ; preds = %.preheader35.3.i
  %i.bo = or disjoint i64 %.sroa.06.041.i, 48, !dbg !75581
  %i.bp = trunc nuw i8 %.sroa.014.2.2.i to i1, !dbg !75582
  %i.bq = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bo, i16 noundef %4, i1 noundef zeroext %i.bp) #30, !dbg !75583
  %i.br = zext i1 %i.bq to i8, !dbg !75584
  %i.bs = or i8 %.sroa.014.2.2.i, %i.br, !dbg !75584
    #dbg_value(i8 %i.bs, !75338, !DIExpression(), !75132)
  br label %bb.h, !dbg !75585

bb.h:                                             ; preds = %bb.g, %.preheader35.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader35.3.i ], [ %i.bs, %bb.g ], !dbg !75580 ; 2 uses
    #dbg_value(i8 %.sroa.014.2.3.i, !75338, !DIExpression(), !75132)
    #dbg_value(i64 4, !75345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !75191)
  %i.bt = add i64 %.sroa.06.041.i, 64, !dbg !75586 ; 2 uses
    #dbg_value(i64 %i.bt, !75337, !DIExpression(), !75131)
  %i.bu = add i64 %.sroa.06.041.i, 138, !dbg !75567
  %i.bv = icmp uge i64 %i.bu, %1, !dbg !75567
  %i.bw = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.bv, i1 true, i1 %i.bw, !dbg !75567
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i, !dbg !75567

bb.i:                                             ; preds = %.lr.ph.i
  %i.bx = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.041.i, i16 noundef %i.az, i1 noundef zeroext false) #30, !dbg !75583
  %i.by = zext i1 %i.bx to i8, !dbg !75584
    #dbg_value(i8 %i.by, !75338, !DIExpression(), !75132)
  br label %.preheader35.1.i, !dbg !75585

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.j ], !dbg !75568 ; 2 uses
  %.lcssa.i = phi i1 [ %i.ae, %.preheader.i ], [ %i.cr, %bb.j ]
  %i.bz = add i64 %1, -26, !dbg !75587            ; 2 uses
    #dbg_value(i64 %i.bz, !75349, !DIExpression(), !75194)
    #dbg_value(ptr poison, !75478, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !75196)
    #dbg_value(ptr poison, !75484, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !75196)
    #dbg_value(ptr poison, !75485, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !75196)
    #dbg_value(i64 %i.bz, !75482, !DIExpression(), !75196)
    #dbg_value(i64 %i.bz, !75500, !DIExpression(), !75198)
    #dbg_value(i64 %i.bz, !75500, !DIExpression(), !75200)
    #dbg_value(ptr %0, !75501, !DIExpression(), !75198)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz, !dbg !75588 ; 2 uses
    #dbg_value(ptr %i.ca, !75504, !DIExpression(), !75202)
    #dbg_value(ptr %i.ca, !75510, !DIExpression(), !75204)
  %.sroa.0.0.copyload.i96.i = load <16 x i8>, ptr %i.ca, align 1, !dbg !75589, !alias.scope !75310, !noalias !75555
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i96.i, !75486, !DIExpression(), !75208)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i96.i, !75521, !DIExpression(), !75210)
    #dbg_value(ptr %0, !75501, !DIExpression(), !75200)
    #dbg_value(ptr %i.ca, !75501, !DIExpression(), !75212)
    #dbg_value(i64 10, !75500, !DIExpression(), !75212)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 10, !dbg !75590
    #dbg_value(ptr %i.cb, !75504, !DIExpression(), !75214)
    #dbg_value(ptr %i.cb, !75510, !DIExpression(), !75216)
  %.sroa.01.0.copyload.i97.i = load <16 x i8>, ptr %i.cb, align 1, !dbg !75591, !alias.scope !75310, !noalias !75555
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i97.i, !75487, !DIExpression(), !75218)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i97.i, !75521, !DIExpression(), !75220)
    #dbg_value(<16 x i8> splat (i8 100), !75528, !DIExpression(), !75210)
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i96.i, splat (i8 100), !dbg !75592
    #dbg_value(<16 x i8> poison, !75488, !DIExpression(), !75221)
    #dbg_value(<16 x i8> poison, !75533, !DIExpression(), !75223)
    #dbg_value(<16 x i8> splat (i8 48), !75528, !DIExpression(), !75220)
  %i.cd = icmp eq <16 x i8> %.sroa.01.0.copyload.i97.i, splat (i8 48), !dbg !75593
    #dbg_value(<16 x i8> poison, !75489, !DIExpression(), !75224)
    #dbg_value(<16 x i8> poison, !75537, !DIExpression(), !75223)
  %i.ce = and <16 x i1> %i.cc, %i.cd, !dbg !75594
    #dbg_value(<16 x i8> poison, !75490, !DIExpression(), !75225)
    #dbg_declare(ptr poison, !75539, !DIExpression(), !75227)
    #dbg_value(<16 x i8> poison, !75545, !DIExpression(), !75229)
    #dbg_value(<16 x i8> poison, !75550, !DIExpression(), !75230)
  %i.cf = bitcast <16 x i1> %i.ce to i16, !dbg !75595 ; 2 uses
    #dbg_value(i16 %i.cf, !75350, !DIExpression(), !75231)
  %i.cg = icmp eq i16 %i.cf, 0, !dbg !75596
  br i1 %i.cg, label %bb.l, label %bb.m, !dbg !75596

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.j
  %.sroa.06.144.i = phi i64 [ %i.co, %bb.j ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 4 uses
    #dbg_value(i64 %.sroa.06.144.i, !75337, !DIExpression(), !75131)
    #dbg_value(ptr poison, !75478, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !75233)
    #dbg_value(ptr poison, !75484, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !75233)
    #dbg_value(ptr poison, !75485, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !75233)
    #dbg_value(i64 %.sroa.06.144.i, !75482, !DIExpression(), !75233)
    #dbg_value(i64 %.sroa.06.144.i, !75500, !DIExpression(), !75235)
    #dbg_value(i64 %.sroa.06.144.i, !75500, !DIExpression(), !75237)
    #dbg_value(ptr %0, !75501, !DIExpression(), !75235)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.144.i, !dbg !75597 ; 2 uses
    #dbg_value(ptr %i.ch, !75504, !DIExpression(), !75239)
    #dbg_value(ptr %i.ch, !75510, !DIExpression(), !75241)
  %.sroa.0.0.copyload.i98.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !75598, !alias.scope !75310, !noalias !75556
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i98.i, !75486, !DIExpression(), !75245)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i98.i, !75521, !DIExpression(), !75247)
    #dbg_value(ptr %0, !75501, !DIExpression(), !75237)
    #dbg_value(ptr %i.ch, !75501, !DIExpression(), !75249)
    #dbg_value(i64 10, !75500, !DIExpression(), !75249)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 10, !dbg !75599
    #dbg_value(ptr %i.ci, !75504, !DIExpression(), !75251)
    #dbg_value(ptr %i.ci, !75510, !DIExpression(), !75253)
  %.sroa.01.0.copyload.i99.i = load <16 x i8>, ptr %i.ci, align 1, !dbg !75600, !alias.scope !75310, !noalias !75556
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i99.i, !75487, !DIExpression(), !75255)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i99.i, !75521, !DIExpression(), !75257)
    #dbg_value(<16 x i8> splat (i8 100), !75528, !DIExpression(), !75247)
  %i.cj = icmp eq <16 x i8> %.sroa.0.0.copyload.i98.i, splat (i8 100), !dbg !75601
    #dbg_value(<16 x i8> poison, !75488, !DIExpression(), !75258)
    #dbg_value(<16 x i8> poison, !75533, !DIExpression(), !75260)
    #dbg_value(<16 x i8> splat (i8 48), !75528, !DIExpression(), !75257)
  %i.ck = icmp eq <16 x i8> %.sroa.01.0.copyload.i99.i, splat (i8 48), !dbg !75602
    #dbg_value(<16 x i8> poison, !75489, !DIExpression(), !75261)
    #dbg_value(<16 x i8> poison, !75537, !DIExpression(), !75260)
  %i.cl = and <16 x i1> %i.cj, %i.ck, !dbg !75603
    #dbg_value(<16 x i8> poison, !75490, !DIExpression(), !75262)
    #dbg_declare(ptr poison, !75539, !DIExpression(), !75264)
    #dbg_value(<16 x i8> poison, !75545, !DIExpression(), !75266)
    #dbg_value(<16 x i8> poison, !75550, !DIExpression(), !75267)
  %i.cm = bitcast <16 x i1> %i.cl to i16, !dbg !75604 ; 2 uses
    #dbg_value(i16 %i.cm, !75348, !DIExpression(), !75268)
  %i.cn = icmp eq i16 %i.cm, 0, !dbg !75605
  br i1 %i.cn, label %bb.j, label %bb.k, !dbg !75605

bb.j:                                             ; preds = %bb.k, %.lr.ph45.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph45.i ], [ %i.ct, %bb.k ], !dbg !75580 ; 2 uses
    #dbg_value(i8 %.sroa.014.4.i, !75338, !DIExpression(), !75132)
  %i.co = add i64 %.sroa.06.144.i, 16, !dbg !75606
    #dbg_value(i64 %i.co, !75337, !DIExpression(), !75131)
  %i.cp = add i64 %.sroa.06.144.i, 42, !dbg !75570
  %i.cq = icmp uge i64 %i.cp, %1, !dbg !75570
  %i.cr = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cq, %i.cr, !dbg !75570
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph45.i, !dbg !75570

bb.k:                                             ; preds = %.lr.ph45.i
  %i.cs = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.144.i, i16 noundef %i.cm, i1 noundef zeroext false) #30, !dbg !75607
  %i.ct = zext i1 %i.cs to i8, !dbg !75608
    #dbg_value(i8 %i.ct, !75338, !DIExpression(), !75132)
  br label %bb.j, !dbg !75609

bb.l:                                             ; preds = %bb.m, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.cx, %bb.m ], !dbg !75580
    #dbg_value(i8 %.sroa.014.5.i, !75338, !DIExpression(), !75132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !75610, !noalias !75310
  %i.cu = trunc nuw i8 %.sroa.014.5.i to i1, !dbg !75558
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit, !dbg !75611

bb.m:                                             ; preds = %._crit_edge.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.cf, i1 noundef zeroext %.lcssa.i) #30, !dbg !75612
  %i.cw = zext i1 %i.cv to i8, !dbg !75613
  %i.cx = or i8 %.sroa.014.3.lcssa.i, %i.cw, !dbg !75613
    #dbg_value(i8 %i.cx, !75338, !DIExpression(), !75132)
  br label %bb.l, !dbg !75614

bb.n:                                             ; preds = %bb.b
    #dbg_value(ptr @30, !75298, !DIExpression(), !75303)
    #dbg_value(ptr %0, !75299, !DIExpression(), !75303)
  %i.cy = load i64, ptr %0, align 1, !dbg !75615
  %i.cz = xor i64 7070762896912181604, %i.cy, !dbg !75615
  %i.da = getelementptr i8, ptr %0, i64 3, !dbg !75615
  %i.db = load i64, ptr %i.da, align 1, !dbg !75615
  %i.dc = xor i64 3467905175432553577, %i.db, !dbg !75615
  %i.dd = or i64 %i.cz, %i.dc, !dbg !75615
  %i.de = icmp ne i64 %i.dd, 0, !dbg !75615
  %i.df = zext i1 %i.de to i32, !dbg !75615
  %i.dg = icmp eq i32 %i.df, 0, !dbg !75615
    #dbg_value(i1 %i.dg, !75273, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !75305)
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit, !dbg !75616
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !75630 {
bb.a:
    #dbg_value(ptr %0, !75693, !DIExpression(), !75700)
    #dbg_declare(ptr poison, !75692, !DIExpression(), !75701)
    #dbg_value(ptr poison, !75704, !DIExpression(), !75633)
    #dbg_value(ptr %0, !75707, !DIExpression(), !75633)
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL), !dbg !75769 ; 3 uses
    #dbg_value(ptr %i.a, !75711, !DIExpression(), !75647)
    #dbg_value(ptr %0, !75753, !DIExpression(), !75647)
    #dbg_value(ptr %i.a, !75758, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !75650)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !75770
  %i.c = load i8, ptr %i.b, align 8, !dbg !75771, !range !3887, !noalias !75768, !noundef !1852
  %i.d = trunc nuw i8 %i.c to i1, !dbg !75771
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !75772, !prof !5760

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0), !dbg !75773
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs5yXxDE1DkoT_4tera.exit, !dbg !75774

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ], !dbg !75775
  ret ptr %.sroa.0.0.i.i, !dbg !75701
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #10

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!75368 = !{!75353, !75367}
!75369 = !{!75063, !75352, !1829, !75059}
!75370 = !DISubroutineType(types: !75369)
!75371 = !DINamespace(name: "any", scope: !4567)
!75372 = !DINamespace(name: "check", scope: !75371)
!75373 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !75059, file: !1601, baseType: !75058, size: 64, align: 64)
!75374 = !{!75373}
!75375 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__needle", scope: !75058, file: !1601, baseType: !5432, size: 64, align: 64)
!75376 = !{!75375}
!75377 = !{!75062}
!75378 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !75062, file: !1601, baseType: !75061, size: 8, align: 8, extraData: i8 0)
!75379 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !75062, file: !1601, baseType: !75060, size: 8, align: 8, extraData: i8 1)
!75380 = !{!75378, !75379}
!75381 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75060, file: !1601, baseType: !1829, align: 8, offset: 8, flags: DIFlagPublic)
!75382 = !{!75381}
!75383 = !DITemplateTypeParameter(name: "B", type: !1829)
!75384 = !{!75383, !3831}
!75385 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75061, file: !1601, baseType: !1829, align: 8, offset: 8, flags: DIFlagPublic)
!75386 = !{!75385}
!75387 = !DIDerivedType(tag: DW_TAG_member, scope: !75063, file: !1601, baseType: !1604, size: 8, align: 8, flags: DIFlagArtificial)
!75388 = !DILocalVariable(name: "self", arg: 1, scope: !75070, file: !4564, line: 2482, type: !75352)
!75389 = !DILocalVariable(name: "init", arg: 2, scope: !75070, file: !4564, line: 2482, type: !1829)
!75390 = !DILocalVariable(name: "f", arg: 3, scope: !75070, file: !4564, line: 2482, type: !75059)
!75391 = !DILocalVariable(name: "accum", scope: !75071, file: !4564, line: 2488, type: !1829, align: 8)
!75392 = !DILocalVariable(name: "x", scope: !75072, file: !4564, line: 2489, type: !809, align: 64)
!75393 = !DILocalVariable(name: "residual", scope: !75069, file: !4564, line: 2490, type: !75068, align: 8)
!75394 = !DILocalVariable(name: "val", scope: !75064, file: !4564, line: 2490, type: !1829, align: 8)
!75395 = !{!75388, !75389, !75390, !75391, !75392, !75393, !75394}
!75396 = !{!75067}
!75397 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !75067, file: !1601, baseType: !75066, align: 8)
!75398 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !75067, file: !1601, baseType: !75065, align: 8)
!75399 = !{!75397, !75398}
!75400 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75065, file: !1601, baseType: !1829, align: 8, flags: DIFlagPublic)
!75401 = !{!75400}
!75402 = !DITemplateTypeParameter(name: "C", type: !3768)
!75403 = !{!75383, !75402}
!75404 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75066, file: !1601, baseType: !3768, align: 8, flags: DIFlagPublic)
!75405 = !{!75404}
!75406 = !DITemplateTypeParameter(name: "Self", type: !75051)
!75407 = !DITemplateTypeParameter(name: "F", type: !75059)
!75408 = !DITemplateTypeParameter(name: "R", type: !75063)
!75409 = !{!75406, !75383, !75407, !75408}
!75410 = !{!2023, !75352, !75058}
!75411 = !DISubroutineType(types: !75410)
!75412 = !DILocalVariable(name: "self", arg: 1, scope: !75073, file: !4564, line: 2881, type: !75352)
!75413 = !DILocalVariable(name: "f", arg: 2, scope: !75073, file: !4564, line: 2881, type: !75058)
!75414 = !{!75412, !75413}
!75415 = !DITemplateTypeParameter(name: "F", type: !75058)
!75416 = !{!75406, !75415}
!75417 = !DILocalVariable(name: "other", arg: 2, scope: !75080, file: !4358, line: 2461, type: !5432)
!75418 = !DILocalVariable(name: "self", arg: 1, scope: !75080, file: !4358, line: 2461, type: !5432)
!75419 = !{!75418, !75417}
!75420 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::simd_contains::{closure_env#1}", baseType: !75058, size: 64, align: 64, dwarfAddressSpace: 0)
!75421 = !{!2023, !75420, !809}
!75422 = !DISubroutineType(cc: DW_CC_nocall, types: !75421)
!75423 = !DILocalVariable(name: "c", arg: 2, scope: !75081, file: !7842, line: 1926, type: !809)
!75424 = !DILocalVariable(name: "needle", scope: !75081, file: !7842, line: 1895, type: !809, align: 64)
!75425 = !{!75423, !75424}
!75426 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::any::check::{closure_env#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>", baseType: !75059, size: 64, align: 64, dwarfAddressSpace: 0)
!75427 = !{!75063, !75426, !1829, !809}
!75428 = !DISubroutineType(cc: DW_CC_nocall, types: !75427)
!75429 = !DILocalVariable(name: "x", arg: 3, scope: !75082, file: !4564, line: 2888, type: !809)
!75430 = !DILocalVariable(name: "f", scope: !75082, file: !4564, line: 2887, type: !75058, align: 64)
!75431 = !DILocalVariable(arg: 2, scope: !75082, file: !4564, line: 2888, type: !1829)
!75432 = !{!75429, !75430, !75431}
!75433 = !DITemplateTypeParameter(name: "impl FnMut(T) -> bool", type: !75058)
!75434 = !{!7942, !75433}
!75435 = !DILocalVariable(name: "offset", scope: !75094, file: !4821, line: 85, type: !1832, align: 64)
!75436 = !DILocalVariable(name: "ptr", arg: 1, scope: !75094, file: !4821, line: 84, type: !809)
!75437 = !DILocalVariable(name: "len", arg: 3, scope: !75094, file: !4821, line: 86, type: !1832)
!75438 = !{!75436, !75435, !75437}
!75439 = !{!809, !14, !809, !3776}
!75440 = !DISubroutineType(types: !75439)
!75441 = !DILocalVariable(name: "self", scope: !75095, file: !4821, line: 405, type: !14, align: 64)
!75442 = !DILocalVariable(name: "slice", arg: 2, scope: !75095, file: !4821, line: 405, type: !809)
!75443 = !DILocalVariable(name: "new_len", scope: !75095, file: !4821, line: 407, type: !1832, align: 64)
!75444 = !{!75441, !75442, !75443}
!75445 = !{!809, !1506, !809, !3776}
!75446 = !DISubroutineType(types: !75445)
!75447 = !DILocalVariable(name: "self", scope: !75096, file: !4821, line: 502, type: !1506, align: 64)
!75448 = !DILocalVariable(name: "slice", arg: 2, scope: !75096, file: !4821, line: 502, type: !809)
!75449 = !{!75447, !75448}
!75450 = !DILocalVariable(name: "self", arg: 1, scope: !75097, file: !4821, line: 18, type: !809)
!75451 = !DILocalVariable(name: "index", scope: !75097, file: !4821, line: 18, type: !1506, align: 64)
!75452 = !{!75450, !75451}
!75453 = !DILocalVariable(name: "index", scope: !75103, file: !4821, line: 18, type: !834, align: 64)
!75454 = !DILocalVariable(name: "self", arg: 1, scope: !75103, file: !4821, line: 18, type: !809)
!75455 = !{!75454, !75453}
!75456 = !DILocalVariable(name: "self", scope: !75107, file: !4821, line: 543, type: !834, align: 64)
!75457 = !{!809, !834, !809, !3776}
!75458 = !DISubroutineType(types: !75457)
!75459 = !DILocalVariable(name: "slice", arg: 2, scope: !75107, file: !4821, line: 543, type: !809)
!75460 = !DILocalVariable(name: "new_len", scope: !75106, file: !4821, line: 549, type: !1832, align: 64)
!75461 = !{!75456, !75459, !75460}
!75462 = !DILexicalBlockFile(scope: !75103, file: !4821, discriminator: 2)
!75463 = !DILocalVariable(name: "lhs", arg: 1, scope: !75113, file: !5425, line: 151, type: !1869)
!75464 = !DILocalVariable(name: "rhs", arg: 2, scope: !75113, file: !5425, line: 151, type: !1869)
!75465 = !DILocalVariable(name: "len", arg: 3, scope: !75113, file: !5425, line: 151, type: !1832)
!75466 = !DILocalVariable(name: "size", scope: !75114, file: !5425, line: 156, type: !1832, align: 64)
!75467 = !{!75463, !75464, !75465, !75466}
!75468 = !DILocalVariable(name: "self", arg: 1, scope: !75115, file: !5425, line: 19, type: !809)
!75469 = !DILocalVariable(name: "other", arg: 2, scope: !75115, file: !5425, line: 19, type: !809)
!75470 = !DILocalVariable(name: "len", scope: !75116, file: !5425, line: 20, type: !1832, align: 64)
!75471 = !{!75468, !75469, !75470}
!75478 = !DILocalVariable(name: "second_probe_offset", scope: !75143, file: !7842, line: 1908, type: !1832, align: 64)
!75479 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::str::pattern::simd_contains::{closure_env#3}", baseType: !75025, size: 64, align: 64, dwarfAddressSpace: 0)
!75480 = !{!2428, !75479, !1832}
!75481 = !DISubroutineType(types: !75480)
!75482 = !DILocalVariable(name: "idx", arg: 2, scope: !75143, file: !7842, line: 1961, type: !1832)
!75483 = !DILocalVariable(name: "haystack", scope: !75143, file: !7842, line: 1896, type: !2191, align: 8)
!75484 = !DILocalVariable(name: "first_probe", scope: !75143, file: !7842, line: 1929, type: !75024, align: 128)
!75485 = !DILocalVariable(name: "second_probe", scope: !75143, file: !7842, line: 1930, type: !75024, align: 128)
!75486 = !DILocalVariable(name: "a", scope: !75142, file: !7842, line: 1964, type: !75024, align: 128)
!75487 = !DILocalVariable(name: "b", scope: !75141, file: !7842, line: 1966, type: !75024, align: 128)
!75488 = !DILocalVariable(name: "eq_first", scope: !75140, file: !7842, line: 1969, type: !75139, align: 128)
!75489 = !DILocalVariable(name: "eq_last", scope: !75137, file: !7842, line: 1970, type: !75139, align: 128)
!75490 = !DILocalVariable(name: "both", scope: !75136, file: !7842, line: 1971, type: !75139, align: 128)
!75491 = !{!75482, !75483, !75478, !75484, !75485, !75486, !75487, !75488, !75489, !75490}
!75492 = !DINamespace(name: "masks", scope: !75318)
!75493 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75139, file: !1601, baseType: !75138, size: 128, align: 128, flags: DIFlagPrivate)
!75494 = !{!75493}
!75495 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75138, file: !1601, baseType: !5659, size: 128, align: 8, flags: DIFlagPrivate)
!75496 = !{!75495}
!75500 = !DILocalVariable(name: "count", arg: 2, scope: !75146, file: !5315, line: 838, type: !1832)
!75501 = !DILocalVariable(name: "self", arg: 1, scope: !75146, file: !5315, line: 838, type: !1869)
!75502 = !{!75501, !75500}
!75503 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::core_simd::vector::Simd<u8, 16>", baseType: !75024, size: 64, align: 64, dwarfAddressSpace: 0)
!75504 = !DILocalVariable(name: "self", arg: 1, scope: !75151, file: !5315, line: 1191, type: !75503)
!75505 = !{!75024, !75503, !3776}
!75506 = !DISubroutineType(types: !75505)
!75507 = !{!75504}
!75508 = !DITemplateTypeParameter(name: "T", type: !75024)
!75509 = !{!75508}
!75510 = !DILocalVariable(name: "src", arg: 1, scope: !75154, file: !3911, line: 1837, type: !75503)
!75511 = !{!75510}
!75512 = !{!75158}
!75513 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::ptr::Unaligned<core::core_simd::vector::Simd<u8, 16>>", baseType: !75159, size: 64, align: 64, dwarfAddressSpace: 0)
!75514 = !{!75159, !75513, !3776}
!75515 = !DISubroutineType(types: !75514)
!75516 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75159, file: !1601, baseType: !75024, size: 128, align: 128, flags: DIFlagPrivate)
!75517 = !{!75516}
!75518 = !DITemplateTypeParameter(name: "T", type: !75159)
!75519 = !{!75518}
!75520 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/simd/cmp/eq.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "d1e0ea2aefc556345e336d1d4b7f359f")
!75521 = !DILocalVariable(name: "self", arg: 1, scope: !75163, file: !75520, line: 28, type: !75024)
!75522 = !DINamespace(name: "simd", scope: !75318)
!75523 = !DINamespace(name: "cmp", scope: !75522)
!75524 = !DINamespace(name: "eq", scope: !75523)
!75525 = !DINamespace(name: "{impl#5}", scope: !75524)
!75526 = !{!75139, !75024, !75024}
!75527 = !DISubroutineType(types: !75526)
!75528 = !DILocalVariable(name: "other", arg: 2, scope: !75163, file: !75520, line: 28, type: !75024)
!75529 = !{!75521, !75528}
!75530 = !DILexicalBlockFile(scope: !75151, file: !5315, discriminator: 2)
!75531 = !DILexicalBlockFile(scope: !75154, file: !3911, discriminator: 2)
!75532 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/masks.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "421c09ecf298760897ab4b73c80f0132")
!75533 = !DILocalVariable(name: "self", scope: !75177, file: !75532, line: 547, type: !75139, align: 128)
!75534 = !DINamespace(name: "{impl#9}", scope: !75492)
!75535 = !{!75139, !75139, !75139}
!75536 = !DISubroutineType(types: !75535)
!75537 = !DILocalVariable(name: "rhs", scope: !75177, file: !75532, line: 547, type: !75139, align: 128)
!75538 = !{!75533, !75537}
!75539 = !DILocalVariable(name: "self", arg: 1, scope: !75182, file: !75532, line: 302, type: !75139)
!75540 = !{!1697, !75139}
!75541 = !DISubroutineType(cc: DW_CC_nocall, types: !75540)
!75542 = !DISubroutineType(types: !75540)
!75543 = !DISubprogram(name: "to_bitmask<i8, 16>", linkageName: "_RNvMs0_NtNtCsf3Ta7LF998c_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCs5yXxDE1DkoT_4tera", scope: !75139, file: !75532, line: 302, type: !75542, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5663)
!75544 = !{!75539}
!75545 = !DILocalVariable(name: "mask", scope: !75187, file: !75532, line: 309, type: !75139, align: 128)
!75546 = !DINamespace(name: "{impl#2}", scope: !75492)
!75547 = !DINamespace(name: "to_bitmask", scope: !75546)
!75548 = !{!2428, !75139}
!75549 = !DISubroutineType(types: !75548)
!75550 = !DILocalVariable(name: "resized", scope: !75186, file: !75532, line: 314, type: !75139, align: 128)
!75551 = !DILocalVariable(name: "bitmask", scope: !75185, file: !75532, line: 317, type: !2428, align: 16)
!75552 = !{!75545, !75550, !75551}
!75553 = !DITemplateTypeParameter(name: "U", type: !2428)
!75554 = !{!5662, !75553}
!75555 = !{!75206}
!75556 = !{!75243}
!75557 = !DILocation(line: 994, column: 9, scope: !75014)
!75558 = !DILocation(line: 1015, column: 6, scope: !75014)
!75559 = !DILocation(line: 21, column: 12, scope: !75017, inlinedAt: !75291)
!75560 = !DILocation(line: 1006, column: 43, scope: !75013)
!75561 = !DILocation(line: 1925, column: 8, scope: !75043, inlinedAt: !75049)
!75562 = !DILocation(line: 157, column: 13, scope: !75114, inlinedAt: !75118)
!75563 = !DILocation(line: 2490, column: 21, scope: !75072, inlinedAt: !75075)
!75564 = !DILocation(line: 90, column: 24, scope: !75094, inlinedAt: !75110)
!75565 = !DILocation(line: 1936, column: 9, scope: !75046, inlinedAt: !75049)
!75566 = !DILocation(line: 1937, column: 5, scope: !75046, inlinedAt: !75049)
!75567 = !DILocation(line: 1980, column: 11, scope: !75035, inlinedAt: !75049)
!75568 = !DILocation(line: 1976, column: 22, scope: !75036, inlinedAt: !75049)
!75569 = !DILocation(line: 0, scope: !75048, inlinedAt: !75049)
!75570 = !DILocation(line: 1993, column: 11, scope: !75035, inlinedAt: !75049)
!75571 = !DILocation(line: 1758, column: 9, scope: !75160, inlinedAt: !75161)
!75572 = !DILocation(line: 872, column: 18, scope: !75146, inlinedAt: !75166)
!75573 = !DILocation(line: 1758, column: 9, scope: !75160, inlinedAt: !75172)
!75574 = !DILocation(line: 31, column: 52, scope: !75163, inlinedAt: !75164)
!75575 = !DILocation(line: 31, column: 52, scope: !75163, inlinedAt: !75174)
!75576 = !DILocation(line: 549, column: 23, scope: !75177, inlinedAt: !75178)
!75577 = !DILocation(line: 872, column: 18, scope: !75146, inlinedAt: !75147)
!75578 = !DILocation(line: 1986, column: 24, scope: !75030, inlinedAt: !75049)
!75579 = !DILocation(line: 1987, column: 16, scope: !75029, inlinedAt: !75049)
!75580 = !DILocation(line: 0, scope: !75036, inlinedAt: !75049)
!75581 = !DILocation(line: 1988, column: 38, scope: !75029, inlinedAt: !75049)
!75582 = !DILocation(line: 1988, column: 64, scope: !75029, inlinedAt: !75049)
!75583 = !DILocation(line: 1988, column: 27, scope: !75029, inlinedAt: !75049)
!75584 = !DILocation(line: 1988, column: 17, scope: !75029, inlinedAt: !75049)
!75585 = !DILocation(line: 1987, column: 13, scope: !75029, inlinedAt: !75049)
!75586 = !DILocation(line: 1991, column: 9, scope: !75034, inlinedAt: !75049)
!75587 = !DILocation(line: 2005, column: 13, scope: !75035, inlinedAt: !75049)
!75588 = !DILocation(line: 872, column: 18, scope: !75146, inlinedAt: !75197)
!75589 = !DILocation(line: 1758, column: 9, scope: !75160, inlinedAt: !75207)
!75590 = !DILocation(line: 872, column: 18, scope: !75146, inlinedAt: !75211)
!75591 = !DILocation(line: 1758, column: 9, scope: !75160, inlinedAt: !75217)
!75592 = !DILocation(line: 31, column: 52, scope: !75163, inlinedAt: !75209)
!75593 = !DILocation(line: 31, column: 52, scope: !75163, inlinedAt: !75219)
!75594 = !DILocation(line: 549, column: 23, scope: !75177, inlinedAt: !75222)
!75595 = !DILocation(line: 317, column: 39, scope: !75186, inlinedAt: !75228)
!75596 = !DILocation(line: 2007, column: 8, scope: !75026, inlinedAt: !75049)
!75597 = !DILocation(line: 872, column: 18, scope: !75146, inlinedAt: !75234)
!75598 = !DILocation(line: 1758, column: 9, scope: !75160, inlinedAt: !75244)
!75599 = !DILocation(line: 872, column: 18, scope: !75146, inlinedAt: !75248)
!75600 = !DILocation(line: 1758, column: 9, scope: !75160, inlinedAt: !75254)
!75601 = !DILocation(line: 31, column: 52, scope: !75163, inlinedAt: !75246)
!75602 = !DILocation(line: 31, column: 52, scope: !75163, inlinedAt: !75256)
!75603 = !DILocation(line: 549, column: 23, scope: !75177, inlinedAt: !75259)
!75604 = !DILocation(line: 317, column: 39, scope: !75186, inlinedAt: !75265)
!75605 = !DILocation(line: 1995, column: 12, scope: !75028, inlinedAt: !75049)
!75606 = !DILocation(line: 1998, column: 9, scope: !75028, inlinedAt: !75049)
!75607 = !DILocation(line: 1996, column: 23, scope: !75028, inlinedAt: !75049)
!75608 = !DILocation(line: 1996, column: 13, scope: !75028, inlinedAt: !75049)
!75609 = !DILocation(line: 1995, column: 9, scope: !75028, inlinedAt: !75049)
!75610 = !DILocation(line: 2012, column: 1, scope: !75046, inlinedAt: !75049)
!75611 = !DILocation(line: 2012, column: 2, scope: !75038, inlinedAt: !75049)
!75612 = !DILocation(line: 2008, column: 19, scope: !75026, inlinedAt: !75049)
!75613 = !DILocation(line: 2008, column: 9, scope: !75026, inlinedAt: !75049)
!75614 = !DILocation(line: 2007, column: 5, scope: !75026, inlinedAt: !75049)
!75615 = !DILocation(line: 157, column: 13, scope: !75020, inlinedAt: !75302)
!75616 = !DILocation(line: 21, column: 9, scope: !75017, inlinedAt: !75291)
!75617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !75620, file: !1601, size: 192, align: 64, flags: DIFlagPublic, elements: !75672, templateParams: !75674, identifier: "e6cbd4181b49b111c2d29c1b8dc47dc8")
!75618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !75620, file: !1601, size: 192, align: 64, flags: DIFlagPublic, elements: !1852, templateParams: !75674, identifier: "76dd02b48542d783f6e14a3e28398a85")
!75619 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !75620, file: !1601, size: 192, align: 64, elements: !75670, templateParams: !1852, identifier: "965158c3836a85ba6eb512c553df3898", discriminator: !75675)
!75620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::cell::Cell<(u64, u64)>>", scope: !2403, file: !1601, size: 192, align: 64, flags: DIFlagPublic, elements: !75667, templateParams: !1852, identifier: "97bdfb1f10fd4fabbf6c9ff5c9480095")
!75621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !75624, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !75666, templateParams: !75677, identifier: "99a3429e57322ca1aec801180b0ad041")
!75622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !75624, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !1852, templateParams: !75677, identifier: "974c2794e045d418a83b5905112766b")
!75623 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !75624, file: !1601, size: 64, align: 64, elements: !75663, templateParams: !1852, identifier: "a2199e77625b605b1ec4072d00622aa4", discriminator: !75678)
!75624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut core::option::Option<core::cell::Cell<(u64, u64)>>>", scope: !2403, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !75660, templateParams: !1852, identifier: "5643f6925a7cbffbd783d87784e892f4")
!75625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}", scope: !75682, file: !1601, align: 8, elements: !1852, identifier: "32371f4d551498dce7a682613f31249d")
!75626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, u64)", file: !1601, size: 128, align: 64, elements: !75689, templateParams: !1852, identifier: "7891b4bdc2158a166fd4174a50224f9b")
!75627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<(u64, u64)>", scope: !2116, file: !1601, size: 128, align: 64, flags: DIFlagPublic, elements: !75686, templateParams: !75691, identifier: "fbdf95fb2cc798683cd22a3d377299f1")
!75628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Cell<(u64, u64)>", scope: !2116, file: !1601, size: 128, align: 64, flags: DIFlagPublic, elements: !75684, templateParams: !75691, identifier: "3e0dbcda10453cdb74c9f6b5363f9940")
!75629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(core::option::Option<&mut core::option::Option<core::cell::Cell<(u64, u64)>>>)", file: !1601, size: 64, align: 64, elements: !75696, templateParams: !1852, identifier: "19adfc65e358090a667f4adbb331295")
!75630 = distinct !DISubprogram(name: "call_once<std::hash::random::{impl#0}::new::KEYS::{constant#0}::{closure_env#1}, (core::option::Option<&mut core::option::Option<core::cell::Cell<(u64, u64)>>>)>", linkageName: "_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs5yXxDE1DkoT_4tera", scope: !4217, file: !4215, line: 250, type: !75659, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !75699, retainedNodes: !75694)
!75631 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs5yXxDE1DkoT_4tera", scope: !75682, file: !75702, line: 100, type: !75706, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, retainedNodes: !75708)
!75632 = distinct !DILocation(line: 250, column: 5, scope: !75630)
!75633 = distinct !DILocation(line: 0, scope: !75631, inlinedAt: !75632)
!75634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Destroyed", scope: !75638, file: !1601, size: 8, align: 8, flags: DIFlagPrivate, elements: !75729, templateParams: !75731, identifier: "b93b2ce194cb08dfc3a83cc5975a68c7")
!75635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Alive", scope: !75638, file: !1601, size: 8, align: 8, flags: DIFlagPrivate, elements: !1852, templateParams: !75731, identifier: "686bddd26363ccd56a0e433194a0665d")
!75636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Uninitialized", scope: !75638, file: !1601, size: 8, align: 8, flags: DIFlagPrivate, elements: !1852, templateParams: !75731, identifier: "1c3a9a1e6dc1a39c3690097cbd8df2c8")
!75637 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !75638, file: !1601, size: 8, align: 8, elements: !75727, templateParams: !1852, identifier: "c7ff8f8521cdf64d52272f799702b2a7", discriminator: !75732)
!75638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State<!>", scope: !75715, file: !1601, size: 8, align: 8, flags: DIFlagPrivate, elements: !75723, templateParams: !1852, identifier: "4891ba89432000ceefd3307655c48411")
!75639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<std::sys::thread_local::native::lazy::State<!>>", scope: !2116, file: !1601, size: 8, align: 8, flags: DIFlagPublic, elements: !75722, templateParams: !75734, identifier: "5bbfea162c4d9094575409318752340c")
!75640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Cell<std::sys::thread_local::native::lazy::State<!>>", scope: !2116, file: !1601, size: 8, align: 8, flags: DIFlagPublic, elements: !75720, templateParams: !75734, identifier: "9345072027dc25b0a900d5dd8366e35f")
!75641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::cell::Cell<(u64, u64)>>", scope: !2398, file: !1601, size: 128, align: 64, flags: DIFlagPublic, elements: !75741, templateParams: !75674, identifier: "15f06b5c9aead038c76606b6d22c8336")
!75642 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<core::cell::Cell<(u64, u64)>>", scope: !2437, file: !1601, size: 128, align: 64, elements: !75739, templateParams: !75674, identifier: "5313ad1331e1f1237b89b7aab8ddc2d2")
!75643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>", scope: !2116, file: !1601, size: 128, align: 64, flags: DIFlagPublic, elements: !75736, templateParams: !75743, identifier: "171fc937ca73fbfdb4282b3373cce2fb")
!75644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Storage<core::cell::Cell<(u64, u64)>, !>", scope: !75715, file: !1601, size: 192, align: 64, flags: DIFlagPublic, elements: !75718, templateParams: !75744, identifier: "ba58bbb1b1241a01801b1cb45b04f7ab")
!75645 = distinct !DISubprogram(name: "get_or_init<core::cell::Cell<(u64, u64)>, !, fn() -> core::cell::Cell<(u64, u64)>>", linkageName: "_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs5yXxDE1DkoT_4tera", scope: !75644, file: !75709, line: 58, type: !75749, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !75751, declaration: !75752, retainedNodes: !75755)
!75646 = distinct !DILocation(line: 105, column: 49, scope: !75631, inlinedAt: !75632)
!75647 = distinct !DILocation(line: 0, scope: !75645, inlinedAt: !75646)
!75648 = distinct !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<!>>", linkageName: "_RNvMs8_NtCsf3Ta7LF998c_4core4cellINtB5_4CellINtNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy5StatezEE3getCs5yXxDE1DkoT_4tera", scope: !75640, file: !7917, line: 555, type: !75760, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !75734, declaration: !75761, retainedNodes: !75762)
!75649 = distinct !DILocation(line: 59, column: 42, scope: !75645, inlinedAt: !75646)
!75650 = distinct !DILocation(line: 555, column: 22, scope: !75648, inlinedAt: !75649)
!75651 = distinct !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<!>>", linkageName: "_RNvMsX_NtCsf3Ta7LF998c_4core4cellINtB5_10UnsafeCellINtNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy5StatezEE3getCs5yXxDE1DkoT_4tera", scope: !75639, file: !7917, line: 2434, type: !75766, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !75734, declaration: !75767)
!75652 = distinct !DILocation(line: 558, column: 30, scope: !75648, inlinedAt: !75649)
!75653 = distinct !{!75653, i1 true, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs5yXxDE1DkoT_4tera"}
!75654 = distinct !{!75654, !75653, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs5yXxDE1DkoT_4tera: argument 0"}
!75655 = distinct !{!75655, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs5yXxDE1DkoT_4tera"}
!75656 = distinct !{!75656, !75655, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs5yXxDE1DkoT_4tera: argument 0"}
!75657 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::cell::Cell<(u64, u64)>", baseType: !75628, size: 64, align: 64, dwarfAddressSpace: 0)
!75658 = !{!75657, !75625, !75624}
!75659 = !DISubroutineType(types: !75658)
!75660 = !{!75623}
!75661 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !75623, file: !1601, baseType: !75622, size: 64, align: 64, extraData: i64 0)
!75662 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !75623, file: !1601, baseType: !75621, size: 64, align: 64)
!75663 = !{!75661, !75662}
!75664 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::option::Option<core::cell::Cell<(u64, u64)>>", baseType: !75620, size: 64, align: 64, dwarfAddressSpace: 0)
!75665 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75621, file: !1601, baseType: !75664, size: 64, align: 64, flags: DIFlagPublic)
!75666 = !{!75665}
!75667 = !{!75619}
!75668 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !75619, file: !1601, baseType: !75618, size: 192, align: 64, extraData: i64 0)
!75669 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !75619, file: !1601, baseType: !75617, size: 192, align: 64, extraData: i64 1)
!75670 = !{!75668, !75669}
!75671 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75617, file: !1601, baseType: !75628, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!75672 = !{!75671}
!75673 = !DITemplateTypeParameter(name: "T", type: !75628)
!75674 = !{!75673}
!75675 = !DIDerivedType(tag: DW_TAG_member, scope: !75620, file: !1601, baseType: !1697, size: 64, align: 64, flags: DIFlagArtificial)
!75676 = !DITemplateTypeParameter(name: "T", type: !75664)
!75677 = !{!75676}
!75678 = !DIDerivedType(tag: DW_TAG_member, scope: !75624, file: !1601, baseType: !1697, size: 64, align: 64, flags: DIFlagArtificial)
!75679 = !DINamespace(name: "{impl#0}", scope: !2219)
!75680 = !DINamespace(name: "new", scope: !75679)
!75681 = !DINamespace(name: "KEYS", scope: !75680)
!75682 = !DINamespace(name: "{constant#0}", scope: !75681)
!75683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75628, file: !1601, baseType: !75627, size: 128, align: 64, flags: DIFlagPrivate)
!75684 = !{!75683}
!75685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75627, file: !1601, baseType: !75626, size: 128, align: 64, flags: DIFlagPrivate)
!75686 = !{!75685}
!75687 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75626, file: !1601, baseType: !1697, size: 64, align: 64)
!75688 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !75626, file: !1601, baseType: !1697, size: 64, align: 64, offset: 64)
!75689 = !{!75687, !75688}
!75690 = !DITemplateTypeParameter(name: "T", type: !75626)
!75691 = !{!75690}
!75692 = !DILocalVariable(arg: 1, scope: !75630, file: !4215, line: 250, type: !75625)
!75693 = !DILocalVariable(arg: 2, scope: !75630, file: !4215, line: 250, type: !75629)
!75694 = !{!75692, !75693}
!75695 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75629, file: !1601, baseType: !75624, size: 64, align: 64)
!75696 = !{!75695}
!75697 = !DITemplateTypeParameter(name: "Self", type: !75625)
!75698 = !DITemplateTypeParameter(name: "Args", type: !75629)
!75699 = !{!75697, !75698}
!75700 = !DILocation(line: 0, scope: !75630)
!75701 = !DILocation(line: 250, column: 5, scope: !75630)
!75702 = !DIFile(filename: "library/std/src/sys/thread_local/native/mod.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "f45b912659b967b327e1af351608d593")
!75703 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::hash::random::{impl#0}::new::KEYS::{constant#0}::{closure_env#1}", baseType: !75625, size: 64, align: 64, dwarfAddressSpace: 0)
!75704 = !DILocalVariable(arg: 1, scope: !75631, file: !75702, line: 100, type: !75703)
!75705 = !{!75657, !75703, !75624}
!75706 = !DISubroutineType(cc: DW_CC_nocall, types: !75705)
!75707 = !DILocalVariable(name: "__rust_std_internal_init", arg: 2, scope: !75631, file: !75702, line: 100, type: !75624)
!75708 = !{!75707, !75704}
!75709 = !DIFile(filename: "library/std/src/sys/thread_local/native/lazy.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "5b9b0edbd44f0aa0ef6a21eb9ec5b8b9")
!75710 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>", baseType: !75644, size: 64, align: 64, dwarfAddressSpace: 0)
!75711 = !DILocalVariable(name: "self", arg: 1, scope: !75645, file: !75709, line: 58, type: !75710)
!75712 = !DINamespace(name: "sys", scope: !2144)
!75713 = !DINamespace(name: "thread_local", scope: !75712)
!75714 = !DINamespace(name: "native", scope: !75713)
!75715 = !DINamespace(name: "lazy", scope: !75714)
!75716 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75644, file: !1601, baseType: !75643, size: 128, align: 64, flags: DIFlagPrivate)
!75717 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !75644, file: !1601, baseType: !75640, size: 8, align: 8, offset: 128, flags: DIFlagPrivate)
!75718 = !{!75716, !75717}
!75719 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75640, file: !1601, baseType: !75639, size: 8, align: 8, flags: DIFlagPrivate)
!75720 = !{!75719}
!75721 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75639, file: !1601, baseType: !75638, size: 8, align: 8, flags: DIFlagPrivate)
!75722 = !{!75721}
!75723 = !{!75637}
!75724 = !DIDerivedType(tag: DW_TAG_member, name: "Uninitialized", scope: !75637, file: !1601, baseType: !75636, size: 8, align: 8, extraData: i8 0)
!75725 = !DIDerivedType(tag: DW_TAG_member, name: "Alive", scope: !75637, file: !1601, baseType: !75635, size: 8, align: 8, extraData: i8 1)
!75726 = !DIDerivedType(tag: DW_TAG_member, name: "Destroyed", scope: !75637, file: !1601, baseType: !75634, size: 8, align: 8, extraData: i8 2)
!75727 = !{!75724, !75725, !75726}
!75728 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !75634, file: !1601, baseType: !3768, align: 8, offset: 8, flags: DIFlagPrivate)
!75729 = !{!75728}
!75730 = !DITemplateTypeParameter(name: "D", type: !3768)
!75731 = !{!75730}
!75732 = !DIDerivedType(tag: DW_TAG_member, scope: !75638, file: !1601, baseType: !1604, size: 8, align: 8, flags: DIFlagArtificial)
!75733 = !DITemplateTypeParameter(name: "T", type: !75638)
!75734 = !{!75733}
!75735 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75643, file: !1601, baseType: !75642, size: 128, align: 64, flags: DIFlagPrivate)
!75736 = !{!75735}
!75737 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !75642, file: !1601, baseType: !1829, align: 8)
!75738 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75642, file: !1601, baseType: !75641, size: 128, align: 64)
!75739 = !{!75737, !75738}
!75740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75641, file: !1601, baseType: !75628, size: 128, align: 64, flags: DIFlagPrivate)
!75741 = !{!75740}
!75742 = !DITemplateTypeParameter(name: "T", type: !75642)
!75743 = !{!75742}
!75744 = !{!75673, !75730}
!75745 = !{!75628}
!75746 = !DISubroutineType(types: !75745)
!75747 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn() -> core::cell::Cell<(u64, u64)>", baseType: !75746, align: 8, dwarfAddressSpace: 0)
!75748 = !{!75657, !75710, !75624, !75747}
!75749 = !DISubroutineType(types: !75748)
!75750 = !DITemplateTypeParameter(name: "impl FnOnce() -> T", type: !75747)
!75751 = !{!75673, !75730, !75750}
!75752 = !DISubprogram(name: "get_or_init<core::cell::Cell<(u64, u64)>, !, fn() -> core::cell::Cell<(u64, u64)>>", linkageName: "_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs5yXxDE1DkoT_4tera", scope: !75644, file: !75709, line: 58, type: !75749, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !75751)
!75753 = !DILocalVariable(name: "i", arg: 2, scope: !75645, file: !75709, line: 58, type: !75624)
!75754 = !DILocalVariable(name: "f", arg: 3, scope: !75645, file: !75709, line: 58, type: !75747)
!75755 = !{!75711, !75753, !75754}
!75757 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::cell::Cell<std::sys::thread_local::native::lazy::State<!>>", baseType: !75640, size: 64, align: 64, dwarfAddressSpace: 0)
!75758 = !DILocalVariable(name: "self", arg: 1, scope: !75648, file: !7917, line: 555, type: !75757)
!75759 = !{!75638, !75757}
!75760 = !DISubroutineType(types: !75759)
!75761 = !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<!>>", linkageName: "_RNvMs8_NtCsf3Ta7LF998c_4core4cellINtB5_4CellINtNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy5StatezEE3getCs5yXxDE1DkoT_4tera", scope: !75640, file: !7917, line: 555, type: !75760, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !75734)
!75762 = !{!75758}
!75763 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut std::sys::thread_local::native::lazy::State<!>", baseType: !75638, size: 64, align: 64, dwarfAddressSpace: 0)
!75764 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::cell::UnsafeCell<std::sys::thread_local::native::lazy::State<!>>", baseType: !75639, size: 64, align: 64, dwarfAddressSpace: 0)
!75765 = !{!75763, !75764}
!75766 = !DISubroutineType(types: !75765)
!75767 = !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<!>>", linkageName: "_RNvMsX_NtCsf3Ta7LF998c_4core4cellINtB5_10UnsafeCellINtNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy5StatezEE3getCs5yXxDE1DkoT_4tera", scope: !75639, file: !7917, line: 2434, type: !75766, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !75734)
!75768 = !{!75656, !75654}
!75769 = !DILocation(line: 105, column: 25, scope: !75631, inlinedAt: !75632)
!75770 = !DILocation(line: 2437, column: 9, scope: !75651, inlinedAt: !75652)
!75771 = !DILocation(line: 558, column: 18, scope: !75648, inlinedAt: !75649)
!75772 = !DILocation(line: 59, column: 16, scope: !75645, inlinedAt: !75646)
!75773 = !DILocation(line: 62, column: 27, scope: !75645, inlinedAt: !75646)
!75774 = !DILocation(line: 59, column: 9, scope: !75645, inlinedAt: !75646)
!75775 = !DILocation(line: 0, scope: !75645, inlinedAt: !75646)
end_hunk_1
