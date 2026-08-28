Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.07?download=true
inline.NumInlined: 521
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECskigd7sy4fqX_10quinn_perf:bb.a
  unreachable

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %i.j, !20983, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21328)
    #dbg_value(i64 %i.j, !21086, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21329)
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.k, !dbg !21331

.noexc:                                           ; preds = %bb.d
  %i.m = lshr i64 %i.j, 32, !dbg !21332
    #dbg_value(i64 %i.m, !21086, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21329)
    #dbg_value(i64 %i.m, !20983, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21328)
  %i.n = trunc nuw i64 %i.m to i32, !dbg !21332
    #dbg_value(i32 %i.n, !20983, !DIExpression(), !21328)
    #dbg_value(i32 %i.n, !21086, !DIExpression(), !21329)
    #dbg_value(ptr %i.l, !21093, !DIExpression(), !21333)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !21334
  %i.p = load ptr, ptr %i.o, align 8, !dbg !21334, !nonnull !32, !noundef !32
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.k, !dbg !21334, !inline_history !21114

.split17:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.j, 32, !dbg !21335
    #dbg_value(i64 %i.r, !21053, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21336)
    #dbg_value(i64 %i.r, !3754, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21337)
  %i.s = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr), !dbg !21339 ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1, !dbg !21339 ; 2 uses
    #dbg_value(i8 %spec.select.i.i.i, !21120, !DIExpression(), !21340)
    #dbg_value(ptr poison, !21131, !DIExpression(), !21342)
  %i.t = icmp ne i8 %spec.select.i.i.i, -1, !dbg !21343
  call void @llvm.assume(i1 %i.t), !dbg !21344
    #dbg_value(i8 %spec.select.i.i.i, !20988, !DIExpression(), !21345)
    #dbg_value(ptr poison, !21001, !DIExpression(), !21346)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35, !dbg !21346
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !21347

.split18:                                         ; preds = %bb.c
    #dbg_value(ptr %i.i, !20990, !DIExpression(), !21348)
    #dbg_value(ptr %i.i, !21001, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21349)
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !21349
  %i.w = load i8, ptr %i.v, align 8, !dbg !21349, !range !21144, !noundef !32
  %i.x = icmp eq i8 %i.w, 35, !dbg !21349
  br i1 %i.x, label %.thread20, label %bb.f, !dbg !21347

.split:                                           ; preds = %bb.c
    #dbg_value(ptr %i.i, !21073, !DIExpression(), !21315)
    #dbg_value(ptr %i.i, !21079, !DIExpression(), !21317)
    #dbg_value(ptr %i.i, !20985, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !21350)
    #dbg_value(ptr %i.i, !21001, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_plus_uconst, 32, DW_OP_stack_value), !21351)
  %i.y = getelementptr i8, ptr %i.i, i64 31, !dbg !21351
  %i.z = load i8, ptr %i.y, align 8, !dbg !21351, !range !21144, !noundef !32
  %i.aa = icmp eq i8 %i.z, 35, !dbg !21351
  br i1 %i.aa, label %bb.h, label %bb.f, !dbg !21347

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21352
    #dbg_value(ptr poison, !21287, !DIExpression(), !21353)
    #dbg_value(ptr poison, !21278, !DIExpression(), !21355)
  %i.ab = load i64, ptr %i.d, align 8, !dbg !21358, !noundef !32 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.h, !dbg !21359
  br i1 %i.ac, label %.loopexit, label %.backedge, !dbg !21359

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread20, label %bb.f, !dbg !21347

bb.f:                                             ; preds = %.split18, %.split17, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21352
  br label %.loopexit, !dbg !21360

.thread20:                                        ; preds = %.split18, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
    #dbg_value(ptr undef, !3657, !DIExpression(), !21259)
    #dbg_value(ptr poison, !3667, !DIExpression(), !21362)
    #dbg_value(ptr poison, !3677, !DIExpression(), !21364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21366, !noalias !21367
    #dbg_value(ptr %i.i, !3688, !DIExpression(), !21370)
    #dbg_declare(ptr poison, !3695, !DIExpression(), !21372)
    #dbg_value(i64 %i.j, !3696, !DIExpression(), !21373)
  br label %bb.i, !dbg !21374

bb.g:                                             ; preds = %.split17
    #dbg_value(ptr undef, !3657, !DIExpression(), !21259)
    #dbg_value(ptr poison, !3667, !DIExpression(), !21362)
    #dbg_value(ptr poison, !3677, !DIExpression(), !21364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21366, !noalias !21375
    #dbg_value(ptr %i.i, !3688, !DIExpression(), !21370)
    #dbg_declare(ptr poison, !3695, !DIExpression(), !21372)
    #dbg_value(i64 %i.j, !3696, !DIExpression(), !21373)
    #dbg_value(i64 %i.j, !3700, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21377)
    #dbg_value(i64 %i.j, !3754, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !21378)
    #dbg_value(i8 poison, !3910, !DIExpression(), !21380)
    #dbg_value(ptr poison, !3943, !DIExpression(), !21382)
  %i.ad = and i64 %i.j, 1095216660480, !dbg !21383
  %i.ae = icmp ne i64 %i.ad, 1095216660480, !dbg !21383
  call void @llvm.assume(i1 %i.s), !dbg !21384
  call void @llvm.assume(i1 %i.ae), !dbg !21384
  br label %bb.i, !dbg !21385

bb.h:                                             ; preds = %.split
  %i.af = getelementptr i8, ptr %i.i, i64 -1, !dbg !21386 ; 2 uses
    #dbg_value(ptr %i.af, !20985, !DIExpression(), !21350)
    #dbg_value(ptr %i.af, !21001, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !21351)
    #dbg_value(ptr undef, !3657, !DIExpression(), !21259)
    #dbg_value(ptr poison, !3667, !DIExpression(), !21362)
    #dbg_value(ptr poison, !3677, !DIExpression(), !21364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21366, !noalias !21387
    #dbg_value(ptr %i.i, !3688, !DIExpression(), !21370)
    #dbg_declare(ptr poison, !3695, !DIExpression(), !21372)
    #dbg_value(i64 %i.j, !3696, !DIExpression(), !21373)
    #dbg_value(ptr %i.af, !3704, !DIExpression(), !21389)
    #dbg_declare(ptr poison, !3954, !DIExpression(), !21390)
    #dbg_value(ptr %i.af, !3959, !DIExpression(), !21392)
    #dbg_value(ptr %i.af, !3963, !DIExpression(), !21393)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ], !dbg !21395
  store ptr %i.af, ptr %i.g, align 8, !dbg !21396, !alias.scope !21397, !noalias !21387
  store i8 3, ptr %i.a, align 8, !dbg !21373, !alias.scope !21397, !noalias !21387
    #dbg_value(ptr %i.a, !3976, !DIExpression(), !21400)
    #dbg_value(ptr %i.g, !3984, !DIExpression(), !21402)
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g), !dbg !21404
  br label %bb.i, !dbg !21404

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21405, !noalias !21387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21352
  %.pre = load i64, ptr %i.d, align 8, !dbg !21285
  br label %.backedge, !dbg !21406

.backedge:                                        ; preds = %bb.i, %bb.e
  %i.ag = phi i64 [ %.pre, %bb.i ], [ %i.ab, %bb.e ], !dbg !21285 ; 2 uses
    #dbg_value(ptr poison, !21262, !DIExpression(), !21270)
    #dbg_value(ptr poison, !21272, !DIExpression(), !21276)
    #dbg_value(ptr poison, !21278, !DIExpression(), !21282)
  %i.ah = load i64, ptr %i.c, align 8, !dbg !21284, !noundef !32
  %.not = icmp eq i64 %i.ah, %i.ag, !dbg !21286
  br i1 %.not, label %.loopexit, label %bb.b, !dbg !21286

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm, !dbg !21408

bb.k:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %bb.j unwind label %bb.l, !dbg !21352

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !21408
  unreachable, !dbg !21408
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_8Iterator4folduNCINvNvB3K_8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB4G_3VecB2W_E14extend_trustedBQ_E0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21409 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !21492, !DIExpression(), !21499)
    #dbg_declare(ptr poison, !21493, !DIExpression(), !21500)
    #dbg_declare(ptr %1, !21494, !DIExpression(), !21501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21502), !dbg !21505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21506), !dbg !21505
    #dbg_value(ptr %0, !21508, !DIExpression(), !21518)
    #dbg_declare(ptr poison, !21513, !DIExpression(), !21520)
    #dbg_declare(ptr poison, !21521, !DIExpression(), !21541)
    #dbg_declare(ptr %1, !21514, !DIExpression(), !21543)
    #dbg_declare(ptr %1, !21534, !DIExpression(), !21544)
    #dbg_value(ptr poison, !21533, !DIExpression(), !21545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21546), !dbg !21549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21550), !dbg !21549
    #dbg_value(ptr %0, !21552, !DIExpression(), !21565)
    #dbg_declare(ptr poison, !21559, !DIExpression(), !21567)
    #dbg_declare(ptr %1, !21560, !DIExpression(), !21568)
    #dbg_declare(ptr %1, !21569, !DIExpression(), !21584)
    #dbg_value(ptr %0, !21580, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21586)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !dbg !21587, !alias.scope !21588, !noalias !21589 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload.i.i, !21590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21602)
    #dbg_value(ptr %.sroa.0.0.copyload.i.i, !21604, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21632)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21587
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !21587, !alias.scope !21588, !noalias !21589 ; 4 uses
    #dbg_value(i64 %.sroa.4.0.copyload.i.i, !21590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21602)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i, !21604, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21632)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21587
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !21587, !alias.scope !21588, !noalias !21589
    #dbg_value(ptr %.sroa.5.0.copyload.i.i, !21590, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21602)
    #dbg_value(ptr %.sroa.5.0.copyload.i.i, !21604, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21632)
    #dbg_value(ptr %0, !21590, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !21602)
    #dbg_value(ptr %0, !21604, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !21632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21634), !dbg !21637
    #dbg_value(ptr %0, !21598, !DIExpression(), !21602)
    #dbg_declare(ptr poison, !21599, !DIExpression(), !21638)
    #dbg_declare(ptr poison, !21624, !DIExpression(), !21639)
    #dbg_value(ptr %0, !21623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21632)
    #dbg_value(i64 1, !21623, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21632)
    #dbg_value(ptr %0, !21625, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21640)
    #dbg_value(i64 1, !21625, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21640)
    #dbg_value(ptr %0, !21641, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21668)
    #dbg_value(i64 1, !21641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21668)
    #dbg_value(ptr %.sroa.0.0.copyload.i.i, !21641, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21668)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i, !21641, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21668)
    #dbg_value(ptr %.sroa.5.0.copyload.i.i, !21641, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !21668)
    #dbg_value(i64 poison, !21641, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !21668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21670), !dbg !21673
    #dbg_value(ptr %0, !21655, !DIExpression(), !21668)
    #dbg_value(ptr %0, !21674, !DIExpression(), !21681)
    #dbg_declare(ptr poison, !21656, !DIExpression(), !21683)
  %i.b = load i64, ptr %0, align 8, !dbg !21684, !alias.scope !21685, !noalias !21686, !noundef !32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21689
  %i.d = load i64, ptr %i.c, align 8, !dbg !21689, !alias.scope !21685, !noalias !21686, !noundef !32 ; 3 uses
  %i.e = icmp ule i64 %i.b, %i.d, !dbg !21684
    #dbg_value(i1 true, !21690, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21697)
  tail call void @llvm.assume(i1 %i.e), !dbg !21699
  %.not11.i.i.i.i = icmp eq i64 %i.b, %i.d, !dbg !21700
  br i1 %.not11.i.i.i.i, label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB53_3VecB2W_E14extend_trustedBQ_E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %.lr.ph.i.i.i.i, !dbg !21700

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21701
    #dbg_value(ptr %i.f, !21625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21640)
    #dbg_value(ptr %i.f, !21641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21668)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !21685, !noalias !21686
  %.not.i.i.i.i = icmp eq i64 %i.d, 1
    #dbg_value(i64 poison, !21657, !DIExpression(), !21702)
    #dbg_value(i64 poison, !21657, !DIExpression(), !21702)
    #dbg_value(ptr poison, !21703, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21714)
    #dbg_value(ptr poison, !21703, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21714)
    #dbg_value(ptr poison, !21711, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !21714)
    #dbg_value(ptr poison, !21711, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !21714)
    #dbg_declare(ptr poison, !21709, !DIExpression(), !21716)
    #dbg_declare(ptr poison, !21709, !DIExpression(), !21716)
    #dbg_value(i64 poison, !21710, !DIExpression(), !21714)
    #dbg_value(i64 poison, !21710, !DIExpression(), !21714)
    #dbg_value(i64 poison, !21717, !DIExpression(), !21731)
    #dbg_value(i64 poison, !21717, !DIExpression(), !21731)
    #dbg_value(i64 poison, !21733, !DIExpression(), !21746)
    #dbg_value(i64 poison, !21733, !DIExpression(), !21746)
    #dbg_value(ptr %i.f, !21727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21731)
    #dbg_value(ptr %i.f, !21727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21731)
    #dbg_value(ptr %i.f, !21744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21746)
    #dbg_value(ptr %i.f, !21744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21746)
    #dbg_value(i64 1, !21727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21731)
    #dbg_value(i64 1, !21727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21731)
    #dbg_value(i64 1, !21744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21746)
    #dbg_value(i64 1, !21744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21746)
  %i.i = icmp eq i64 %i.b, 0, !dbg !21748
  tail call void @llvm.assume(i1 %i.i), !dbg !21749
    #dbg_value(ptr %i.f, !21750, !DIExpression(), !21757)
    #dbg_value(ptr %i.f, !21750, !DIExpression(), !21757)
    #dbg_value(ptr %i.f, !21759, !DIExpression(), !21768)
    #dbg_value(ptr %i.f, !21759, !DIExpression(), !21768)
    #dbg_value(ptr %i.f, !21770, !DIExpression(), !21773)
    #dbg_value(ptr %i.f, !21770, !DIExpression(), !21773)
  %i.j = load ptr, ptr %i.f, align 8, !dbg !21775, !alias.scope !21776, !noalias !21777, !nonnull !32, !align !3522, !noundef !32 ; 2 uses
    #dbg_value(ptr %i.j, !21712, !DIExpression(), !21780)
    #dbg_value(ptr %i.j, !21712, !DIExpression(), !21780)
  %i.k = getelementptr i8, ptr %i.j, i64 8, !dbg !21781
  %.val.i.i.us.i.i.i = load ptr, ptr %i.k, align 8, !dbg !21781, !alias.scope !21782, !noalias !21785, !nonnull !32, !noundef !32
  %i.l = getelementptr i8, ptr %i.j, i64 16, !dbg !21781
  %.val6.i.i.us.i.i.i = load i64, ptr %i.l, align 8, !dbg !21781, !alias.scope !21782, !noalias !21785, !noundef !32 ; 6 uses
    #dbg_value(ptr poison, !21789, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21798)
    #dbg_value(ptr poison, !21789, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21798)
    #dbg_value(ptr poison, !21797, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !21798)
    #dbg_value(ptr poison, !21797, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !21798)
    #dbg_declare(ptr poison, !21795, !DIExpression(), !21800)
    #dbg_declare(ptr poison, !21795, !DIExpression(), !21800)
    #dbg_value(ptr poison, !21796, !DIExpression(), !21798)
    #dbg_value(ptr poison, !21796, !DIExpression(), !21798)
    #dbg_value(ptr poison, !21801, !DIExpression(), !21816)
    #dbg_value(ptr poison, !21801, !DIExpression(), !21816)
    #dbg_value(ptr poison, !21809, !DIExpression(), !21816)
    #dbg_value(ptr poison, !21809, !DIExpression(), !21816)
    #dbg_value(ptr poison, !21818, !DIExpression(), !21828)
    #dbg_value(ptr poison, !21818, !DIExpression(), !21828)
    #dbg_value(ptr undef, !21830, !DIExpression(DW_OP_deref), !21835)
    #dbg_value(ptr undef, !21830, !DIExpression(DW_OP_deref), !21835)
    #dbg_value(ptr poison, !21837, !DIExpression(), !21845)
    #dbg_value(ptr poison, !21837, !DIExpression(), !21845)
    #dbg_declare(ptr poison, !21847, !DIExpression(), !21856)
    #dbg_declare(ptr poison, !21847, !DIExpression(), !21856)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21884)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21884)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21884)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21884)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21875, !DIExpression(), !21885)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21875, !DIExpression(), !21885)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21886)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21886)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21887)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21887)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21886)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21886)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21887)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21887)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21898)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21898)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21888, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21898)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21888, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21898)
    #dbg_declare(ptr poison, !21893, !DIExpression(), !21900)
    #dbg_declare(ptr poison, !21893, !DIExpression(), !21900)
    #dbg_declare(ptr poison, !21901, !DIExpression(), !21908)
    #dbg_declare(ptr poison, !21901, !DIExpression(), !21908)
    #dbg_declare(ptr poison, !21910, !DIExpression(), !21917)
    #dbg_declare(ptr poison, !21910, !DIExpression(), !21917)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21894, !DIExpression(), !21919)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21894, !DIExpression(), !21919)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21907, !DIExpression(), !21920)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21907, !DIExpression(), !21920)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21916, !DIExpression(), !21921)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21916, !DIExpression(), !21921)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21922, !DIExpression(), !21929)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21922, !DIExpression(), !21929)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21931, !DIExpression(), !21938)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21931, !DIExpression(), !21938)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21940, !DIExpression(), !21967)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21940, !DIExpression(), !21967)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21969, !DIExpression(), !21978)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21969, !DIExpression(), !21978)
    #dbg_declare(ptr poison, !21946, !DIExpression(), !21980)
    #dbg_declare(ptr poison, !21946, !DIExpression(), !21980)
    #dbg_value(i64 1, !21947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21967)
    #dbg_value(i64 1, !21947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21967)
    #dbg_value(i64 1, !21977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21978)
    #dbg_value(i64 1, !21977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21978)
    #dbg_value(i64 1, !21947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21967)
    #dbg_value(i64 1, !21947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21967)
    #dbg_value(i64 1, !21977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21978)
    #dbg_value(i64 1, !21977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21978)
    #dbg_value(i64 0, !21976, !DIExpression(), !21978)
    #dbg_value(i64 0, !21976, !DIExpression(), !21978)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21981, !noalias !21982
  br i1 %.not.i.i.i.i, label %.lr.ph.i.split.us.i.i.i, label %.lr.ph.i.split.preheader.i.i.i

.lr.ph.i.split.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val6.i.i.us.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.peel.i.i.i unwind label %.loopexit.i.split.loopexit.split-lp.i.i.i, !dbg !21981, !noalias !21997

.noexc.i.peel.i.i.i:                              ; preds = %.lr.ph.i.split.preheader.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !dbg !21967, !range !21998, !noalias !21982, !noundef !32
  br label %.split.us.i.i.i, !dbg !21999

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val6.i.i.us.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.us.i.i.i unwind label %.loopexit.i.split.us.i.i.i, !dbg !21981, !noalias !21997

.noexc.i.us.i.i.i:                                ; preds = %.lr.ph.i.split.us.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !dbg !21981, !range !2457, !noalias !21982, !noundef !32
  %i.o = trunc nuw i64 %i.n to i1, !dbg !21999
  %i.p = load i64, ptr %i.g, align 8, !dbg !21967, !range !21998, !noalias !21982, !noundef !32 ; 3 uses
  br i1 %i.o, label %.split.us.i.i.i, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.us.i.i.i, !dbg !21999, !prof !21162

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.us.i.i.i: ; preds = %.noexc.i.us.i.i.i
  %i.q = load ptr, ptr %i.h, align 8, !dbg !22000, !noalias !21982, !nonnull !32, !noundef !32 ; 2 uses
    #dbg_value(i64 %i.p, !21948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22001)
    #dbg_value(ptr %i.q, !21948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22001)
    #dbg_value(ptr poison, !21975, !DIExpression(), !22002)
  %i.r = icmp samesign ule i64 %.val6.i.i.us.i.i.i, %i.p, !dbg !22003
    #dbg_value(i1 true, !22004, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22007)
  tail call void @llvm.assume(i1 %i.r), !dbg !22009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22010, !noalias !21982
    #dbg_value(i64 %i.p, !21896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22011)
    #dbg_value(ptr %i.q, !21896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22011)
    #dbg_value(i64 0, !21896, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22011)
  %.not.i.i.i.i.i.i.i.i.us.i.i.i = icmp eq i64 %.val6.i.i.us.i.i.i, 0, !dbg !22012
  br i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i, label %_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECskigd7sy4fqX_10quinn_perf.exit.loopexit.split.us.i.i.i, label %bb.b, !dbg !22012

bb.b:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.us.i.i.i
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21927, !DIExpression(), !21929)
    #dbg_value(ptr %.val.i.i.us.i.i.i, !21936, !DIExpression(), !21938)
    #dbg_value(ptr %i.q, !21928, !DIExpression(), !21929)
    #dbg_value(ptr %i.q, !21937, !DIExpression(), !21938)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %.val.i.i.us.i.i.i, i64 range(i64 0, -9223372036854775808) %.val6.i.i.us.i.i.i, i1 false), !dbg !22013, !noalias !22014
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21896, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22011)
  br label %_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECskigd7sy4fqX_10quinn_perf.exit.loopexit.split.us.i.i.i, !dbg !22015

_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECskigd7sy4fqX_10quinn_perf.exit.loopexit.split.us.i.i.i: ; preds = %bb.b, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.us.i.i.i
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !21896, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22011)
    #dbg_value(i64 %i.p, !22016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22027)
    #dbg_value(i64 %i.p, !22029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22039)
    #dbg_value(i64 %i.p, !22041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22051)
    #dbg_value(ptr %i.q, !22016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22027)
    #dbg_value(ptr %i.q, !22029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22039)
    #dbg_value(ptr %i.q, !22041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22051)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !22016, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22027)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !22029, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22039)
    #dbg_value(i64 %.val6.i.i.us.i.i.i, !22041, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22051)
    #dbg_value(ptr poison, !22024, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22027)
    #dbg_declare(ptr poison, !22023, !DIExpression(), !22053)
    #dbg_value(ptr poison, !22035, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22039)
    #dbg_declare(ptr poison, !22036, !DIExpression(), !22054)
    #dbg_value(ptr poison, !22047, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !22051)
    #dbg_value(ptr poison, !22048, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22051)
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i, !dbg !22055 ; 3 uses
  store i64 %i.p, ptr %i.s, align 8, !dbg !22060, !noalias !22065
  %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !22060
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i, align 8, !dbg !22060, !noalias !22065
  %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !22060
  store i64 %.val6.i.i.us.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i, align 8, !dbg !22060, !noalias !22065
  %i.t = add i64 %.sroa.4.0.copyload.i.i, 1, !dbg !22072
  br label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB53_3VecB2W_E14extend_trustedBQ_E0E0ECskigd7sy4fqX_10quinn_perf.exit

.loopexit.i.split.us.i.i.i:                       ; preds = %.lr.ph.i.split.us.i.i.i
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCs4lPw7rMVDcJ_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_B2B_IB2z_B55_E14extend_trustedBN_E0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.sroa.0.0.copyload, !23192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23191
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !23191 ; 3 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !23192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23206)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23191
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !23191 ; 5 uses
    #dbg_value(ptr %.sroa.6.0.copyload, !23192, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23206)
    #dbg_value(i64 %0, !23197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 %1, !23197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23206)
    #dbg_declare(ptr poison, !23198, !DIExpression(), !23208)
    #dbg_declare(ptr poison, !23199, !DIExpression(), !23209)
    #dbg_value(ptr undef, !23210, !DIExpression(), !23221)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23229)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23238)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23238)
  %i.a = icmp ult i64 %0, %1, !dbg !23240
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !23241

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0, !dbg !23241
  %xtraiter = and i64 %i.b, 3, !dbg !23241        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !23241
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !23241

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], !dbg !23242 ; 2 uses
  %.sroa.0.011.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.0.011.i.prol, !23197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 %.sroa.0.011.i.prol, !23227, !DIExpression(), !23258)
    #dbg_value(i64 %.sroa.0.011.i.prol, !23255, !DIExpression(), !23259)
    #dbg_value(i64 %.sroa.0.011.i.prol, !23247, !DIExpression(), !23260)
    #dbg_value(i64 1, !23256, !DIExpression(), !23259)
    #dbg_value(i64 1, !23248, !DIExpression(), !23260)
  %i.d = add nuw i64 %.sroa.0.011.i.prol, 1, !dbg !23242 ; 2 uses
    #dbg_value(i64 %i.d, !23197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 poison, !23201, !DIExpression(), !23261)
    #dbg_value(ptr poison, !23262, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23271)
    #dbg_declare(ptr poison, !23268, !DIExpression(), !23273)
    #dbg_value(i64 poison, !23269, !DIExpression(), !23271)
    #dbg_value(i8 0, !23274, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !23285)
    #dbg_value(i8 0, !23287, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !23297)
    #dbg_value(ptr poison, !23280, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23285)
    #dbg_declare(ptr poison, !23281, !DIExpression(), !23299)
    #dbg_value(ptr poison, !23293, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !23297)
    #dbg_value(ptr poison, !23294, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23297)
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.c, !dbg !23300
  %.sroa.44.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !23306
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i.prol, align 8, !dbg !23306, !noalias !23311
  %i.f = add i64 %i.c, 1, !dbg !23320             ; 3 uses
    #dbg_value(ptr undef, !23210, !DIExpression(), !23221)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23229)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23238)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23238)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !23241 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !23241
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !23241, !llvm.loop !23323

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1, !dbg !23241
  %i.h = icmp ugt i64 %i.g, -4, !dbg !23241
  br i1 %i.h, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %.lr.ph.i, !dbg !23241

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !23242 ; 5 uses
  %.sroa.0.011.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ]
    #dbg_value(i64 %.sroa.0.011.i, !23197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 %.sroa.0.011.i, !23227, !DIExpression(), !23258)
    #dbg_value(i64 %.sroa.0.011.i, !23255, !DIExpression(), !23259)
    #dbg_value(i64 %.sroa.0.011.i, !23247, !DIExpression(), !23260)
    #dbg_value(i64 1, !23256, !DIExpression(), !23259)
    #dbg_value(i64 1, !23248, !DIExpression(), !23260)
    #dbg_value(i64 %.sroa.0.011.i, !23197, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_value(i64 poison, !23201, !DIExpression(), !23261)
    #dbg_value(ptr poison, !23262, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23271)
    #dbg_declare(ptr poison, !23268, !DIExpression(), !23273)
    #dbg_value(i64 poison, !23269, !DIExpression(), !23271)
    #dbg_value(i8 0, !23274, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !23285)
    #dbg_value(i8 0, !23287, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !23297)
    #dbg_value(ptr poison, !23280, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23285)
    #dbg_declare(ptr poison, !23281, !DIExpression(), !23299)
    #dbg_value(ptr poison, !23293, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !23297)
    #dbg_value(ptr poison, !23294, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23297)
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !23300
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !23306
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !dbg !23306, !noalias !23311
    #dbg_value(ptr undef, !23210, !DIExpression(), !23221)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23229)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23238)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23238)
    #dbg_value(i64 %.sroa.0.011.i, !23227, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23258)
    #dbg_value(i64 %.sroa.0.011.i, !23255, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23259)
    #dbg_value(i64 %.sroa.0.011.i, !23247, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !23260)
    #dbg_value(i64 %.sroa.0.011.i, !23197, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_declare(ptr poison, !23268, !DIExpression(), !23273)
    #dbg_declare(ptr poison, !23281, !DIExpression(), !23299)
  %i.k = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !23300
  %.sroa.44.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.k, i64 72, !dbg !23306
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i.1, align 8, !dbg !23306, !noalias !23311
    #dbg_value(i64 %.sroa.0.011.i, !23227, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !23258)
    #dbg_value(i64 %.sroa.0.011.i, !23255, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !23259)
    #dbg_value(i64 %.sroa.0.011.i, !23247, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !23260)
    #dbg_value(i64 %.sroa.0.011.i, !23197, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_declare(ptr poison, !23268, !DIExpression(), !23273)
    #dbg_declare(ptr poison, !23281, !DIExpression(), !23299)
  %i.l = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !23300
  %.sroa.44.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.l, i64 112, !dbg !23306
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i.2, align 8, !dbg !23306, !noalias !23311
    #dbg_value(i64 %.sroa.0.011.i, !23227, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !23258)
    #dbg_value(i64 %.sroa.0.011.i, !23255, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !23259)
    #dbg_value(i64 %.sroa.0.011.i, !23247, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !23260)
  %i.m = add nuw i64 %.sroa.0.011.i, 4, !dbg !23242 ; 2 uses
    #dbg_value(i64 %i.m, !23197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
    #dbg_declare(ptr poison, !23268, !DIExpression(), !23273)
    #dbg_declare(ptr poison, !23281, !DIExpression(), !23299)
  %i.n = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !23300
  %.sroa.44.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.n, i64 152, !dbg !23306
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i.3, align 8, !dbg !23306, !noalias !23311
  %i.o = add i64 %i.i, 4, !dbg !23320             ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.m, %1, !dbg !23240
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %.lr.ph.i, !dbg !23241

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val7.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.o, %.lr.ph.i ], !dbg !23325
    #dbg_value(i64 poison, !23197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23206)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !23326, !DIExpression(), !23333)
    #dbg_value(ptr poison, !23335, !DIExpression(), !23342)
    #dbg_value(ptr poison, !23344, !DIExpression(), !23351)
    #dbg_value(ptr poison, !22128, !DIExpression(), !23353)
    #dbg_value(ptr poison, !22137, !DIExpression(), !23355)
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !dbg !23357, !noalias !23358
  ret void, !dbg !23359
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskXT5ShPYifM_12sharded_slab5shardINtB1u_5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callINtNtB1w_4page6SharedB2h_B3m_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5A_3VecB4X_E14extend_trustedBN_E0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23360 {
bb.a:
    #dbg_declare(ptr %0, !23383, !DIExpression(), !23389)
    #dbg_declare(ptr poison, !23384, !DIExpression(), !23390)
    #dbg_declare(ptr %1, !23385, !DIExpression(), !23391)
    #dbg_declare(ptr %1, !23392, !DIExpression(), !23405)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23407
  %i.b = load i64, ptr %i.a, align 8, !dbg !23407, !noundef !32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23407
  %i.d = load i64, ptr %i.c, align 8, !dbg !23407, !noundef !32 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !23408, !nonnull !32, !align !3522, !noundef !32 ; 2 uses
    #dbg_value(ptr %i.e, !23401, !DIExpression(), !23409)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !23410 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !23411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23424)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23410
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !23410 ; 2 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !23411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23424)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23410
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !23410
    #dbg_value(ptr %.sroa.7.0.copyload, !23411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23424)
    #dbg_value(ptr %i.e, !23411, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23424)
    #dbg_value(i64 %i.b, !23416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23424)
    #dbg_value(i64 %i.d, !23416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23424)
    #dbg_declare(ptr poison, !23417, !DIExpression(), !23426)
    #dbg_declare(ptr poison, !23418, !DIExpression(), !23427)
    #dbg_value(ptr undef, !23210, !DIExpression(), !23428)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23430)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23432)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23432)
  %i.f = icmp ult i64 %i.b, %i.d, !dbg !23434
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !23435

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.val5.i = phi i64 [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.b, %bb.a ] ; 2 uses
    #dbg_value(i64 %.sroa.0.011.i, !23227, !DIExpression(), !23436)
    #dbg_value(i64 %.sroa.0.011.i, !23255, !DIExpression(), !23437)
    #dbg_value(i64 %.sroa.0.011.i, !23247, !DIExpression(), !23439)
    #dbg_value(i64 1, !23256, !DIExpression(), !23437)
    #dbg_value(i64 1, !23248, !DIExpression(), !23439)
    #dbg_value(i64 %.sroa.0.011.i, !23416, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23424)
    #dbg_value(i64 %.sroa.0.011.i, !23420, !DIExpression(), !23441)
    #dbg_value(ptr poison, !23442, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23451)
    #dbg_value(ptr poison, !23450, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !23451)
    #dbg_declare(ptr poison, !23448, !DIExpression(), !23453)
    #dbg_value(i64 %.sroa.0.011.i, !23449, !DIExpression(), !23451)
    #dbg_value(ptr poison, !23454, !DIExpression(DW_OP_deref, DW_OP_deref), !23466)
    #dbg_value(i64 %.sroa.0.011.i, !23461, !DIExpression(), !23466)
  %i.g = invoke noundef i64 @_RNvYNtNtCskXT5ShPYifM_12sharded_slab3cfg13DefaultConfigNtB4_10CfgPrivate9page_sizeCskigd7sy4fqX_10quinn_perf(i64 noundef %.sroa.0.011.i)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.b, !dbg !23468, !noalias !23469 ; 2 uses

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %.lr.ph.i
  %i.h = add i64 %.sroa.0.011.i, 1, !dbg !23472   ; 2 uses
    #dbg_value(i64 %i.h, !23416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23424)
    #dbg_value(i64 %i.g, !23462, !DIExpression(), !23473)
  %i.i = load i64, ptr %i.e, align 8, !dbg !23474, !noalias !23475, !noundef !32 ; 2 uses
    #dbg_value(i64 %i.i, !23464, !DIExpression(), !23480)
  %i.j = add i64 %i.i, %i.g, !dbg !23481
  store i64 %i.j, ptr %i.e, align 8, !dbg !23481, !noalias !23475
    #dbg_value(ptr null, !23482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23493)
    #dbg_value(ptr null, !23495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23505)
    #dbg_value(i64 undef, !23482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23493)
    #dbg_value(i64 undef, !23495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23505)
    #dbg_value(i64 274877906944, !23482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23493)
    #dbg_value(i64 274877906944, !23495, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23505)
    #dbg_value(i64 %i.g, !23482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23493)
    #dbg_value(i64 %i.g, !23495, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23505)
    #dbg_value(i64 %i.i, !23482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !23493)
    #dbg_value(i64 %i.i, !23495, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !23505)
    #dbg_value(ptr poison, !23488, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23493)
    #dbg_declare(ptr poison, !23489, !DIExpression(), !23507)
    #dbg_value(ptr poison, !23501, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !23505)
    #dbg_value(ptr poison, !23502, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23505)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %.val5.i, !dbg !23508 ; 4 uses
  store ptr null, ptr %i.k, align 8, !dbg !23514, !noalias !23519
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !23514
  store i64 274877906944, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !dbg !23514, !noalias !23519
  %.sroa.67.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !23514
  store i64 %i.g, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !dbg !23514, !noalias !23519
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !23514
  store i64 %i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !23514, !noalias !23519
  %i.l = add i64 %.val5.i, 1, !dbg !23524         ; 2 uses
    #dbg_value(ptr undef, !23210, !DIExpression(), !23428)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23430)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23432)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23432)
  %exitcond.not.i = icmp eq i64 %i.h, %i.d, !dbg !23434
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %.lr.ph.i, !dbg !23435

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !23527, !DIExpression(), !23534)
    #dbg_value(ptr poison, !23536, !DIExpression(), !23543)
    #dbg_value(ptr poison, !23545, !DIExpression(), !23552)
    #dbg_value(ptr poison, !22128, !DIExpression(), !23554)
    #dbg_value(ptr poison, !22137, !DIExpression(), !23556)
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !23558, !noalias !23469
  resume { ptr, i32 } %i.m, !dbg !23559

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  %.val7.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskXT5ShPYifM_12sharded_slab4page6SharedNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !23560
    #dbg_value(i64 poison, !23416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23424)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !23527, !DIExpression(), !23561)
    #dbg_value(ptr poison, !23536, !DIExpression(), !23563)
    #dbg_value(ptr poison, !23545, !DIExpression(), !23565)
    #dbg_value(ptr poison, !22128, !DIExpression(), !23567)
    #dbg_value(ptr poison, !22137, !DIExpression(), !23569)
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !dbg !23571, !noalias !23469
  ret void, !dbg !23572
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskXT5ShPYifM_12sharded_slab5shardINtB1u_5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3news_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callNtNtB1w_4page5LocalNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5r_3VecB4Z_E14extend_trustedBN_E0E0ECskigd7sy4fqX_10quinn_perf(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !23573 {
bb.a:
    #dbg_value(i64 %0, !23592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23598)
    #dbg_value(i64 %1, !23592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23598)
    #dbg_declare(ptr poison, !23593, !DIExpression(), !23599)
    #dbg_declare(ptr %2, !23594, !DIExpression(), !23600)
    #dbg_declare(ptr %2, !23601, !DIExpression(), !23614)
    #dbg_declare(ptr poison, !23610, !DIExpression(), !23616)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !23617 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !23618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23631)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23617
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !23617 ; 3 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !23618, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23631)
    #dbg_value(ptr poison, !23618, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23631)
    #dbg_value(i64 %0, !23623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23631)
    #dbg_value(i64 %1, !23623, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23631)
    #dbg_declare(ptr poison, !23624, !DIExpression(), !23633)
    #dbg_declare(ptr poison, !23625, !DIExpression(), !23634)
    #dbg_value(ptr undef, !23210, !DIExpression(), !23635)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23637)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23639)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23639)
  %i.a = icmp ult i64 %0, %1, !dbg !23641
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskXT5ShPYifM_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !23642

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23617
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !23617
    #dbg_value(ptr %.sroa.6.0.copyload, !23618, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23631)
  %i.b = shl i64 %.sroa.4.0.copyload, 3, !dbg !23642
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %i.b, !dbg !23642
  %i.c = sub nuw i64 %1, %0, !dbg !23642          ; 2 uses
  %i.d = shl i64 %i.c, 3, !dbg !23642
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.d, i1 false), !dbg !23643, !noalias !23682
    #dbg_value(i64 poison, !23623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23631)
    #dbg_value(i64 poison, !23627, !DIExpression(), !23691)
    #dbg_value(ptr poison, !23679, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23692)
    #dbg_declare(ptr poison, !23677, !DIExpression(), !23693)
    #dbg_value(i64 poison, !23678, !DIExpression(), !23692)
    #dbg_value(ptr poison, !23667, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23694)
    #dbg_declare(ptr poison, !23668, !DIExpression(), !23695)
    #dbg_value(i64 0, !23666, !DIExpression(), !23694)
    #dbg_value(ptr poison, !23656, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !23696)
    #dbg_value(ptr poison, !23657, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23696)
    #dbg_value(i64 0, !23655, !DIExpression(), !23696)
    #dbg_value(ptr undef, !23210, !DIExpression(), !23635)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23637)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23639)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23639)
  %i.e = add i64 %i.c, %.sroa.4.0.copyload, !dbg !23642
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskXT5ShPYifM_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !23642

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskXT5ShPYifM_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.a, %.lr.ph.i
  %.val7.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ], !dbg !23697
    #dbg_value(i64 poison, !23623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23631)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !23698, !DIExpression(), !23705)
    #dbg_value(ptr poison, !23707, !DIExpression(), !23714)
    #dbg_value(ptr poison, !23716, !DIExpression(), !23723)
    #dbg_value(ptr poison, !22128, !DIExpression(), !23725)
    #dbg_value(ptr poison, !22137, !DIExpression(), !23727)
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !dbg !23729, !noalias !23730
  ret void, !dbg !23731
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENvMs2_NtNtCskXT5ShPYifM_12sharded_slab4page4slotINtB1v_4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB1z_3cfg13DefaultConfigE3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB2b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2b_E14extend_trustedBN_E0E0ECskigd7sy4fqX_10quinn_perf(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23732 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
    #dbg_value(i64 %0, !23753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23759)
    #dbg_value(i64 %1, !23753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23759)
    #dbg_declare(ptr poison, !23754, !DIExpression(), !23760)
    #dbg_declare(ptr %2, !23755, !DIExpression(), !23761)
    #dbg_declare(ptr %2, !23762, !DIExpression(), !23775)
    #dbg_declare(ptr poison, !23771, !DIExpression(), !23777)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !23778 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !23779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23792)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23778
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !23778 ; 2 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !23779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23792)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23778
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !23778
    #dbg_value(ptr %.sroa.7.0.copyload, !23779, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23792)
    #dbg_value(i64 %0, !23784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23792)
    #dbg_value(i64 %1, !23784, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23792)
    #dbg_declare(ptr poison, !23785, !DIExpression(), !23794)
    #dbg_declare(ptr poison, !23786, !DIExpression(), !23795)
    #dbg_value(ptr undef, !23210, !DIExpression(), !23796)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23798)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23800)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23800)
  %i.b = icmp ult i64 %0, %1, !dbg !23802
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !23803

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.val5.i = phi i64 [ %i.e, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.c, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], [ %0, %bb.a ] ; 2 uses
    #dbg_value(i64 %.sroa.0.011.i, !23227, !DIExpression(), !23804)
    #dbg_value(i64 %.sroa.0.011.i, !23255, !DIExpression(), !23805)
    #dbg_value(i64 %.sroa.0.011.i, !23247, !DIExpression(), !23807)
    #dbg_value(i64 1, !23256, !DIExpression(), !23805)
    #dbg_value(i64 1, !23248, !DIExpression(), !23807)
    #dbg_value(i64 %.sroa.0.011.i, !23784, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23792)
    #dbg_value(i64 %.sroa.0.011.i, !23788, !DIExpression(), !23809)
    #dbg_value(ptr poison, !23810, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23819)
    #dbg_declare(ptr poison, !23816, !DIExpression(), !23821)
    #dbg_value(i64 %.sroa.0.011.i, !23817, !DIExpression(), !23819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23822, !noalias !23823
    #dbg_value(i64 %.sroa.0.011.i, !23828, !DIExpression(), !23841)
    #dbg_value(ptr poison, !23834, !DIExpression(), !23841)
  invoke void @_RNvMs2_NtNtCskXT5ShPYifM_12sharded_slab4page4slotINtB5_4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB9_3cfg13DefaultConfigE3newCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, i64 noundef %.sroa.0.011.i)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.b, !dbg !23843, !noalias !23844

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %.lr.ph.i
  %i.c = add i64 %.sroa.0.011.i, 1, !dbg !23845   ; 2 uses
    #dbg_value(i64 %i.c, !23784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23792)
    #dbg_value(ptr poison, !23846, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23857)
    #dbg_declare(ptr poison, !23853, !DIExpression(), !23859)
    #dbg_declare(ptr %i.a, !23852, !DIExpression(), !23860)
    #dbg_value(ptr poison, !23861, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !23871)
    #dbg_value(ptr poison, !23868, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23871)
    #dbg_declare(ptr %i.a, !23867, !DIExpression(), !23873)
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.sroa.7.0.copyload, i64 %.val5.i, !dbg !23874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !23880, !noalias !23885
  %i.e = add i64 %.val5.i, 1, !dbg !23890         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23893, !noalias !23823
    #dbg_value(ptr undef, !23210, !DIExpression(), !23796)
    #dbg_value(ptr undef, !23223, !DIExpression(), !23798)
    #dbg_value(ptr undef, !23231, !DIExpression(), !23800)
    #dbg_value(ptr undef, !23237, !DIExpression(), !23800)
  %exitcond.not.i = icmp eq i64 %i.c, %1, !dbg !23802
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %.lr.ph.i, !dbg !23803

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !23894, !DIExpression(), !23901)
    #dbg_value(ptr poison, !23903, !DIExpression(), !23910)
    #dbg_value(ptr poison, !23912, !DIExpression(), !23919)
    #dbg_value(ptr poison, !22128, !DIExpression(), !23921)
    #dbg_value(ptr poison, !22137, !DIExpression(), !23923)
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !23925, !noalias !23844
  resume { ptr, i32 } %i.f, !dbg !23926

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  %.val7.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.e, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskXT5ShPYifM_12sharded_slab4page4slot4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !23927
    #dbg_value(i64 poison, !23784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23792)
end_hunk_1
