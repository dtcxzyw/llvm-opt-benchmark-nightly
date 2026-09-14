Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.14?download=true
inline.NumInlined: 191
inline.NumDeleted: 61
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_:bb.a
  %i.gw = sub i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i68, !dbg !4478 ; 11 uses
    #dbg_value(i64 0, !4232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3942)
    #dbg_value(i64 %i.gw, !4232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3942)
    #dbg_value(ptr undef, !4209, !DIExpression(), !3748)
    #dbg_value(ptr undef, !4206, !DIExpression(), !3747)
    #dbg_value(ptr undef, !4203, !DIExpression(), !3746)
    #dbg_value(ptr undef, !4204, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3943)
  %.not47.i70 = icmp eq i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i68, !dbg !4479
  %i.gx = getelementptr [2 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i68 ; 4 uses
  br i1 %.not47.i70, label %.outer.thread, label %iter.check, !dbg !4480

iter.check:                                       ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.gw, 4, !dbg !4480
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !4480

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check301 = icmp ult i64 %i.gw, 16, !dbg !4480
  br i1 %min.iters.check301, label %vec.epilog.ph, label %vector.ph, !dbg !4480

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gy = and i64 %i.gw, 12
  %n.vec = and i64 %i.gw, -16                     ; 4 uses
  br label %vector.body, !dbg !4480

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !4481 ; 3 uses
  %i.gz = xor i64 %index, -1, !dbg !4482
  %i.ha = getelementptr [2 x i8], ptr %i.ee, i64 %i.gz, !dbg !4483 ; 2 uses
  %i.hb = getelementptr [2 x i8], ptr %i.gx, i64 %index, !dbg !4484 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 -14, !dbg !4485
  %i.hd = getelementptr i8, ptr %i.ha, i64 -30, !dbg !4485
  %wide.load = load <8 x i16>, ptr %i.hc, align 1, !dbg !4485, !alias.scope !4202, !noalias !4201
  %wide.load302 = load <8 x i16>, ptr %i.hd, align 1, !dbg !4485, !alias.scope !4202, !noalias !4201
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4485
  %reverse303 = shufflevector <8 x i16> %wide.load302, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4485
  %i.he = getelementptr i8, ptr %i.hb, i64 16, !dbg !4485
  store <8 x i16> %reverse, ptr %i.hb, align 1, !dbg !4485, !alias.scope !4201, !noalias !4202
  store <8 x i16> %reverse303, ptr %i.he, align 1, !dbg !4485, !alias.scope !4201, !noalias !4202
  %index.next = add nuw i64 %index, 16, !dbg !4481 ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec, !dbg !4480
  br i1 %i.hf, label %middle.block, label %vector.body, !dbg !4480, !llvm.loop !3944

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gw, %n.vec, !dbg !4480
  br i1 %cmp.n, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.iter.check, !dbg !4480

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4168

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec304 = and i64 %i.gw, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index305 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next308, %vec.epilog.vector.body ], !dbg !4481 ; 3 uses
  %i.hg = xor i64 %index305, -1, !dbg !4482
  %i.hh = getelementptr [2 x i8], ptr %i.ee, i64 %i.hg, !dbg !4483
  %i.hi = getelementptr [2 x i8], ptr %i.gx, i64 %index305, !dbg !4484
  %i.hj = getelementptr i8, ptr %i.hh, i64 -6, !dbg !4485
  %wide.load306 = load <4 x i16>, ptr %i.hj, align 1, !dbg !4485, !alias.scope !4202, !noalias !4201
  %reverse307 = shufflevector <4 x i16> %wide.load306, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !4485
  store <4 x i16> %reverse307, ptr %i.hi, align 1, !dbg !4485, !alias.scope !4201, !noalias !4202
  %index.next308 = add nuw i64 %index305, 4, !dbg !4481 ; 2 uses
  %i.hk = icmp eq i64 %index.next308, %n.vec304, !dbg !4480
  br i1 %i.hk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !4480, !llvm.loop !3945

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n309 = icmp eq i64 %i.gw, %n.vec304, !dbg !4480
  br i1 %cmp.n309, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !4480

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.07.043.i72.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec304, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !4480

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.07.043.i72 = phi i64 [ %i.hl, %vec.epilog.scalar.ph ], [ %.sroa.07.043.i72.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.07.043.i72, !4207, !DIExpression(), !3946)
    #dbg_value(i64 %.sroa.07.043.i72, !4249, !DIExpression(), !3774)
    #dbg_value(i64 %.sroa.07.043.i72, !4252, !DIExpression(), !3777)
  %i.hl = add nuw i64 %.sroa.07.043.i72, 1, !dbg !4481 ; 2 uses
    #dbg_value(i64 %i.hl, !4232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3942)
    #dbg_value(i64 %.sroa.07.043.i72, !4233, !DIExpression(), !3947)
  %i.hm = xor i64 %.sroa.07.043.i72, -1, !dbg !4482
    #dbg_value(!DIArgList(i64 %.sroa.16.0140295, i64 %i.hm), !4259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3792)
  %i.hn = getelementptr [2 x i8], ptr %i.ee, i64 %i.hm, !dbg !4483
    #dbg_value(ptr %i.hn, !4244, !DIExpression(), !3779)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i68, i64 %.sroa.07.043.i72), !4259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3941)
  %i.ho = getelementptr [2 x i8], ptr %i.gx, i64 %.sroa.07.043.i72, !dbg !4484
    #dbg_value(ptr %i.ho, !4245, !DIExpression(), !3779)
  %i.hp = load i16, ptr %i.hn, align 1, !dbg !4485, !alias.scope !4202, !noalias !4201
  store i16 %i.hp, ptr %i.ho, align 1, !dbg !4485, !alias.scope !4201, !noalias !4202
    #dbg_value(ptr undef, !4209, !DIExpression(), !3748)
    #dbg_value(ptr undef, !4206, !DIExpression(), !3747)
    #dbg_value(ptr undef, !4203, !DIExpression(), !3746)
    #dbg_value(ptr undef, !4204, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3943)
  %exitcond.not.i73 = icmp eq i64 %i.hl, %i.gw, !dbg !4479
  br i1 %exitcond.not.i73, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.scalar.ph, !dbg !4480, !llvm.loop !3948

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !3991, !DIExpression(), !4280)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !4000, !DIExpression(), !4004)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !4008, !DIExpression(), !4012)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !4281, !DIExpression(), !4291)
  %i.hq = icmp ugt i64 %.sroa.27.2.lcssa.i68, %.sroa.16.0140295, !dbg !4486
  br i1 %i.hq, label %bb.w, label %.outer, !dbg !4486, !prof !769

.outer.thread:                                    ; preds = %bb.v
    #dbg_value(i64 poison, !3991, !DIExpression(), !4280)
    #dbg_value(i64 poison, !4000, !DIExpression(), !4004)
    #dbg_value(i64 poison, !4008, !DIExpression(), !4012)
    #dbg_value(i64 poison, !4281, !DIExpression(), !4291)
    #dbg_value(i64 poison, !4009, !DIExpression(), !4292)
    #dbg_value(i64 poison, !4288, !DIExpression(), !4291)
    #dbg_value(ptr poison, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4291)
    #dbg_value(i64 poison, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4291)
    #dbg_value(ptr %i.gx, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(ptr %i.gx, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %i.gx, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %i.gx, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 poison, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i64 poison, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 poison, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 poison, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(ptr null, !3982, !DIExpression(), !3995)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4409
    #dbg_value(ptr %i.gx, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(ptr %i.gx, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %i.gx, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %i.gx, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(i64 poison, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 poison, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 poison, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 poison, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i32 %i.i, !3981, !DIExpression(), !3995)
    #dbg_value(i64 poison, !3984, !DIExpression(), !4014)
  br label %.outer._crit_edge, !dbg !4293

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit
    #dbg_value(i64 %i.gw, !4009, !DIExpression(), !4292)
    #dbg_value(i64 %i.gw, !4288, !DIExpression(), !4291)
    #dbg_value(ptr %.sroa.0.0.ph147, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4291)
    #dbg_value(i64 poison, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4291)
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i68, !dbg !4487 ; 2 uses
    #dbg_value(ptr %i.hr, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(ptr %i.hr, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %i.hr, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %i.hr, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 %i.gw, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i64 %i.gw, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 %i.gw, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 %i.gw, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(ptr null, !3982, !DIExpression(), !3995)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4409
    #dbg_value(ptr %i.hr, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(ptr %i.hr, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %i.hr, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %i.hr, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(i64 %i.gw, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 %i.gw, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 %i.gw, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 %i.gw, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i32 %i.i, !3981, !DIExpression(), !3995)
    #dbg_value(i64 %i.gw, !3984, !DIExpression(), !4014)
  %i.hs = icmp ult i64 %i.gw, 33, !dbg !4293
  br i1 %i.hs, label %.outer._crit_edge, label %.lr.ph, !dbg !4293

bb.w:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i68, i64 noundef %.sroa.16.0140295, i64 noundef %.sroa.16.0140295, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !dbg !4488
  unreachable, !dbg !4488
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #4 !dbg !4507 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
    #dbg_value(ptr %0, !5105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_value(ptr %0, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5122)
    #dbg_value(ptr %0, !5123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5130)
    #dbg_value(ptr %0, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(i64 %1, !5105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(i64 %1, !5118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5122)
    #dbg_value(i64 %1, !5123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5130)
    #dbg_value(i64 %1, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i32 %4, !5107, !DIExpression(), !5121)
    #dbg_value(ptr %5, !5108, !DIExpression(), !5121)
    #dbg_value(ptr %2, !5106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_value(i64 %3, !5106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(ptr %6, !5109, !DIExpression(), !5121)
    #dbg_declare(ptr %i.a, !5112, !DIExpression(), !5139)
    #dbg_value(i64 %1, !5110, !DIExpression(), !5140)
  %i.b = icmp samesign ult i64 %1, 33, !dbg !5418
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !5418

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph, !dbg !5418

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph147 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.gu, %.outer ] ; 24 uses
  %.sroa.16.0.ph146 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.gf, %.outer ] ; 2 uses
  %.sroa.025.0.ph145 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.i, %.outer ] ; 2 uses
  %.sroa.028.0.ph144 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
    #dbg_value(ptr %.sroa.0.0.ph147, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(i64 %.sroa.16.0.ph146, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i32 %.sroa.025.0.ph145, !5107, !DIExpression(), !5121)
    #dbg_value(ptr %.sroa.028.0.ph144, !5108, !DIExpression(), !5121)
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph147, i64 4
  %i.e = ptrtoint ptr %.sroa.0.0.ph147 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph144, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph144, i64 4
    #dbg_value(i64 %.sroa.16.0.ph146, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i32 %.sroa.025.0.ph145, !5107, !DIExpression(), !5121)
  %i.g = icmp eq i32 %.sroa.025.0.ph145, 0, !dbg !5419
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph297, !dbg !5419

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i32 %i.i, !5107, !DIExpression(), !5121)
  %i.h = icmp eq i32 %i.i, 0, !dbg !5419
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph297, !dbg !5419

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa137 = phi ptr [ %i.gg, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph147, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit ], [ %i.gu, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit ], [ %i.gf, %.outer ]
    #dbg_value(ptr %.sroa.0.0.ph.lcssa137, !5141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4513)
    #dbg_value(i64 %.sroa.16.0.lcssa, !5141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4513)
    #dbg_value(ptr %2, !5144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4513)
    #dbg_value(i64 %3, !5144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4513)
    #dbg_value(ptr %6, !5145, !DIExpression(), !4513)
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph.lcssa137, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull %6), !dbg !5420
  br label %bb.f, !dbg !5421

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0140.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph146, %.lr.ph ]
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph147, i64 noundef %.sroa.16.0140.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6), !dbg !5422
  br label %bb.f, !dbg !5421

.lr.ph297:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0139296 = phi i32 [ %i.i, %bb.b ], [ %.sroa.025.0.ph145, %.lr.ph ]
  %.sroa.16.0140295 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph146, %.lr.ph ] ; 19 uses
    #dbg_value(i32 %.sroa.025.0139296, !5107, !DIExpression(), !5121)
    #dbg_value(i64 %.sroa.16.0140295, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
  %i.i = add i32 %.sroa.025.0139296, -1, !dbg !5423 ; 4 uses
    #dbg_value(i32 %i.i, !5107, !DIExpression(), !5121)
    #dbg_value(ptr %.sroa.0.0.ph147, !5148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4524)
    #dbg_value(i64 %.sroa.16.0140295, !5148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4524)
    #dbg_value(ptr poison, !5154, !DIExpression(), !4524)
    #dbg_value(i64 %.sroa.16.0140295, !5155, !DIExpression(), !4525)
    #dbg_value(ptr %.sroa.0.0.ph147, !5157, !DIExpression(), !4526)
    #dbg_value(ptr %.sroa.0.0.ph147, !5159, !DIExpression(), !4527)
    #dbg_value(ptr %.sroa.0.0.ph147, !5163, !DIExpression(), !4530)
    #dbg_value(ptr %.sroa.0.0.ph147, !5163, !DIExpression(), !4532)
    #dbg_value(ptr %.sroa.0.0.ph147, !5166, !DIExpression(), !4537)
    #dbg_value(ptr %.sroa.0.0.ph147, !5166, !DIExpression(), !4539)
  %i.j = lshr i64 %.sroa.16.0140295, 3, !dbg !5424 ; 3 uses
    #dbg_value(i64 %i.j, !5158, !DIExpression(), !4540)
    #dbg_value(i64 %i.j, !5164, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !4530)
  %.idx.i = shl nuw nsw i64 %i.j, 5, !dbg !5425
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph147, i64 %.idx.i, !dbg !5425 ; 4 uses
    #dbg_value(ptr %i.k, !5160, !DIExpression(), !4541)
    #dbg_value(i64 %i.j, !5164, !DIExpression(DW_OP_constu, 7, DW_OP_mul, DW_OP_stack_value), !4532)
  %.idx16.i = mul nuw nsw i64 %i.j, 56, !dbg !5426
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph147, i64 %.idx16.i, !dbg !5426 ; 4 uses
    #dbg_value(ptr %i.l, !5161, !DIExpression(), !4542)
  %i.m = icmp samesign ult i64 %.sroa.16.0140295, 64, !dbg !5427
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !5427

bb.c:                                             ; preds = %.lr.ph297
  %i.n = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph147, ptr noundef readonly %i.k, ptr noundef readonly %i.l, i64 noundef %i.j), !dbg !5428
    #dbg_value(ptr %i.n, !5169, !DIExpression(), !4539)
    #dbg_value(i64 %i.af, !5156, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !4543)
  br label %bb.g, !dbg !5429

bb.d:                                             ; preds = %.lr.ph297
    #dbg_value(ptr %.sroa.0.0.ph147, !958, !DIExpression(), !4545)
    #dbg_value(ptr %i.k, !961, !DIExpression(), !4545)
    #dbg_value(ptr %i.l, !962, !DIExpression(), !4545)
    #dbg_value(ptr poison, !963, !DIExpression(), !4545)
  %.val24.i = load i32, ptr %.sroa.0.0.ph147, align 4, !dbg !5430, !range !968, !alias.scope !5174, !noundef !634 ; 4 uses
  %.val25.i = load i32, ptr %i.d, align 4, !dbg !5430, !alias.scope !5174 ; 2 uses
  %.val26.i = load i32, ptr %i.k, align 4, !dbg !5430, !range !968, !alias.scope !5174, !noundef !634 ; 4 uses
  %i.o = getelementptr i8, ptr %i.k, i64 4, !dbg !5430
  %.val27.i = load i32, ptr %i.o, align 4, !dbg !5430, !alias.scope !5174 ; 2 uses
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4549)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4549)
    #dbg_value(ptr poison, !975, !DIExpression(), !4549)
    #dbg_value(ptr poison, !980, !DIExpression(), !4551)
    #dbg_value(ptr poison, !982, !DIExpression(), !4551)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4553)
    #dbg_value(ptr poison, !991, !DIExpression(), !4555)
    #dbg_value(ptr poison, !995, !DIExpression(), !4555)
    #dbg_value(ptr poison, !997, !DIExpression(), !4557)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4557)
  %i.p = icmp eq i32 %.val24.i, %.val26.i, !dbg !5431
    #dbg_value(i8 poison, !988, !DIExpression(), !4558)
  %i.q = icmp ult i32 %.val25.i, %.val27.i, !dbg !5432
  %i.r = icmp samesign ult i32 %.val24.i, %.val26.i, !dbg !5432
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r, !dbg !5431 ; 2 uses
    #dbg_value(i1 %i.s, !964, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4559)
  %.val22.i = load i32, ptr %i.l, align 4, !dbg !5433, !range !968, !alias.scope !5174, !noundef !634 ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 4, !dbg !5433
  %.val23.i = load i32, ptr %i.t, align 4, !dbg !5433, !alias.scope !5174 ; 2 uses
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4561)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4561)
    #dbg_value(ptr poison, !975, !DIExpression(), !4561)
    #dbg_value(ptr poison, !980, !DIExpression(), !4563)
    #dbg_value(ptr poison, !982, !DIExpression(), !4563)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4565)
    #dbg_value(ptr poison, !991, !DIExpression(), !4567)
    #dbg_value(ptr poison, !995, !DIExpression(), !4567)
    #dbg_value(ptr poison, !997, !DIExpression(), !4569)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4569)
  %i.u = icmp eq i32 %.val24.i, %.val22.i, !dbg !5434
    #dbg_value(i8 poison, !988, !DIExpression(), !4570)
  %i.v = icmp ult i32 %.val25.i, %.val23.i, !dbg !5435
  %i.w = icmp samesign ult i32 %.val24.i, %.val22.i, !dbg !5435
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w, !dbg !5434
    #dbg_value(i1 %i.x, !965, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4571)
  %i.y = xor i1 %i.s, %i.x, !dbg !5436
  br i1 %i.y, label %bb.g, label %bb.e, !dbg !5436

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4573)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4573)
    #dbg_value(ptr poison, !975, !DIExpression(), !4573)
    #dbg_value(ptr poison, !980, !DIExpression(), !4575)
    #dbg_value(ptr poison, !982, !DIExpression(), !4575)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4577)
    #dbg_value(ptr poison, !991, !DIExpression(), !4579)
    #dbg_value(ptr poison, !995, !DIExpression(), !4579)
    #dbg_value(ptr poison, !997, !DIExpression(), !4581)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4581)
  %i.z = icmp eq i32 %.val26.i, %.val22.i, !dbg !5437
    #dbg_value(i8 poison, !988, !DIExpression(), !4582)
  %i.aa = icmp ult i32 %.val27.i, %.val23.i, !dbg !5438
  %i.ab = icmp samesign ult i32 %.val26.i, %.val22.i, !dbg !5438
  %i.ac = select i1 %i.z, i1 %i.aa, i1 %i.ab, !dbg !5437
    #dbg_value(i1 %i.ac, !966, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4583)
  %i.ad = xor i1 %i.s, %i.ac, !dbg !5439
  %..i.i = select i1 %i.ad, ptr %i.l, ptr %i.k, !dbg !5440
  br label %bb.g, !dbg !5440

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void, !dbg !5441

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.0.0.ph147, %bb.d ], [ %..i.i, %bb.e ]
  %i.ae = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !5442
  %i.af = sub nuw i64 %i.ae, %i.e, !dbg !5442     ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.af, 3, !dbg !5442 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i, !5156, !DIExpression(), !4543)
  %i.ag = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0140295, !dbg !5443
    #dbg_value(i1 true, !5175, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4587)
  call void @llvm.assume(i1 %i.ag), !dbg !5444
    #dbg_value(i64 %.sroa.0.0.i, !5111, !DIExpression(), !5177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5445
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph147, i64 %i.af, !dbg !5446
    #dbg_value(ptr %i.ah, !5179, !DIExpression(), !5186)
  %7 = load <2 x i32>, ptr %i.ah, align 4, !dbg !5447 ; 4 uses
  %8 = extractelement <2 x i32> %7, i64 0, !dbg !5447 ; 5 uses
  store i32 %8, ptr %i.a, align 4, !dbg !5447
  %9 = extractelement <2 x i32> %7, i64 1, !dbg !5447 ; 3 uses
  store i32 %9, ptr %i.c, align 4, !dbg !5447
    #dbg_value(ptr %i.a, !5113, !DIExpression(), !5187)
    #dbg_value(i8 0, !5114, !DIExpression(), !5188)
  br i1 %.not, label %bb.i, label %bb.h, !dbg !5448

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %.sroa.028.0.ph144, !5115, !DIExpression(), !5189)
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph144, align 4, !dbg !5449, !range !968, !noundef !634 ; 2 uses
  %.sroa.028.0.val52 = load i32, ptr %i.f, align 4, !dbg !5449
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4590)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4590)
    #dbg_value(ptr poison, !975, !DIExpression(), !4590)
    #dbg_value(ptr poison, !980, !DIExpression(), !4592)
    #dbg_value(ptr poison, !982, !DIExpression(), !4592)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4594)
    #dbg_value(ptr poison, !991, !DIExpression(), !4596)
    #dbg_value(ptr poison, !995, !DIExpression(), !4596)
    #dbg_value(ptr poison, !997, !DIExpression(), !4598)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4598)
  %i.ai = icmp eq i32 %.sroa.028.0.val, %8, !dbg !5450
    #dbg_value(i8 poison, !988, !DIExpression(), !4599)
  %i.aj = icmp ult i32 %.sroa.028.0.val52, %9, !dbg !5451
  %i.ak = icmp ult i32 %.sroa.028.0.val, %8, !dbg !5451
  %i.al = select i1 %i.ai, i1 %i.aj, i1 %i.ak, !dbg !5450
    #dbg_value(i1 %i.al, !5114, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5188)
    #dbg_value(i64 0, !5116, !DIExpression(), !5190)
  br i1 %i.al, label %bb.i, label %.thread, !dbg !5452

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !5191), !dbg !5453
  call void @llvm.experimental.noalias.scope.decl(metadata !5192), !dbg !5453
    #dbg_value(ptr poison, !5193, !DIExpression(), !4625)
    #dbg_value(ptr poison, !5196, !DIExpression(), !4626)
    #dbg_value(ptr poison, !5199, !DIExpression(), !4627)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4632)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4634)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4636)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4638)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4640)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4642)
    #dbg_value(i64 %.sroa.0.0.i, !5206, !DIExpression(), !4643)
    #dbg_value(i64 %.sroa.0.0.i, !5216, !DIExpression(), !4644)
    #dbg_value(i64 %.sroa.0.0.i, !5237, !DIExpression(), !4647)
    #dbg_value(ptr %.sroa.0.0.ph147, !5204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4643)
    #dbg_value(i64 %.sroa.16.0140295, !5204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4643)
    #dbg_value(ptr %2, !5205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4643)
    #dbg_value(i64 %3, !5205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4643)
    #dbg_value(i1 false, !5207, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4643)
    #dbg_value(ptr poison, !5208, !DIExpression(), !4643)
    #dbg_value(i64 3, !5240, !DIExpression(), !4650)
    #dbg_value(i64 1, !5243, !DIExpression(), !4653)
    #dbg_value(i64 1, !5250, !DIExpression(), !4656)
    #dbg_value(i64 1, !5253, !DIExpression(), !4659)
    #dbg_value(i64 1, !5243, !DIExpression(), !4661)
    #dbg_value(i64 %.sroa.16.0140295, !5209, !DIExpression(), !4662)
    #dbg_value(i64 %.sroa.16.0140295, !5256, !DIExpression(), !4665)
  %.not104 = icmp samesign ult i64 %3, %.sroa.16.0140295, !dbg !5454
  br i1 %.not104, label %bb.k, label %bb.j, !dbg !5454, !prof !1055

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %.sroa.0.0.ph147, !5210, !DIExpression(), !4666)
    #dbg_value(ptr %.sroa.0.0.ph147, !5238, !DIExpression(), !4647)
    #dbg_value(ptr %.sroa.0.0.ph147, !5260, !DIExpression(), !4665)
    #dbg_value(ptr %.sroa.0.0.ph147, !5238, !DIExpression(), !4668)
    #dbg_value(ptr %.sroa.0.0.ph147, !5238, !DIExpression(), !4670)
    #dbg_value(ptr %2, !5212, !DIExpression(), !4671)
    #dbg_value(ptr %2, !5261, !DIExpression(), !4665)
    #dbg_value(ptr %2, !5263, !DIExpression(), !4674)
    #dbg_value(ptr %i.ah, !5213, !DIExpression(), !4675)
    #dbg_value(ptr %i.ah, !5246, !DIExpression(), !4653)
  %i.am = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0140295, !dbg !5455 ; 3 uses
    #dbg_value(ptr %2, !5214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4677)
    #dbg_value(ptr %.sroa.0.0.ph147, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 0, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.am, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr null, !5215, !DIExpression(), !4678)
    #dbg_value(ptr null, !5247, !DIExpression(), !4653)
  %i.an = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %10 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.l, !dbg !5456

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap(), !dbg !5457
  unreachable, !dbg !5457

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.am, %bb.j ], [ %i.cq, %bb.m ], !dbg !5458 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.m ], !dbg !5458 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph147, %bb.j ], [ %i.ct, %bb.m ], !dbg !5458 ; 3 uses
  %.sroa.0.0.i54 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0140295, %bb.m ] ; 3 uses
    #dbg_value(ptr %.sroa.9.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(i64 %.sroa.0.0.i54, !5237, !DIExpression(), !4647)
    #dbg_value(i64 %.sroa.0.0.i54, !5216, !DIExpression(), !4644)
    #dbg_value(i64 %.sroa.0.0.i54, !5206, !DIExpression(), !4643)
    #dbg_value(ptr poison, !5247, !DIExpression(), !4653)
    #dbg_value(ptr poison, !5215, !DIExpression(), !4678)
    #dbg_value(i64 %.sroa.0.0.i54, !5241, !DIExpression(), !4650)
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i54, i64 3), !dbg !5459
    #dbg_value(i64 %i.ao, !5237, !DIExpression(), !4668)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph147, i64 %i.ao, !dbg !5460 ; 2 uses
    #dbg_value(ptr %i.ap, !5217, !DIExpression(), !4679)
    #dbg_value(ptr %.sroa.9.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %i.aq = icmp ult ptr %.sroa.9.0.i, %i.ap, !dbg !5461
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i, !dbg !5461

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.l ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.by, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.l ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.l ] ; 4 uses
    #dbg_value(ptr %.sroa.9.131.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.130.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.129.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4681)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4681)
    #dbg_value(ptr poison, !975, !DIExpression(), !4681)
    #dbg_value(ptr poison, !980, !DIExpression(), !4683)
    #dbg_value(ptr poison, !982, !DIExpression(), !4683)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4685)
    #dbg_value(ptr poison, !991, !DIExpression(), !4687)
    #dbg_value(ptr poison, !995, !DIExpression(), !4687)
    #dbg_value(ptr poison, !997, !DIExpression(), !4689)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4689)
    #dbg_value(i8 poison, !988, !DIExpression(), !4690)
    #dbg_value(ptr undef, !5229, !DIExpression(), !4642)
    #dbg_value(i1 poison, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4642)
    #dbg_value(i64 1, !5268, !DIExpression(), !4693)
    #dbg_value(i64 1, !5271, !DIExpression(), !4696)
    #dbg_value(i64 1, !5275, !DIExpression(), !4699)
    #dbg_value(ptr %.sroa.43.129.i, !5269, !DIExpression(), !4693)
  %i.ar = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8, !dbg !5462
    #dbg_value(ptr %i.ar, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %.sroa.01.0.i.i, !5278, !DIExpression(), !4702)
    #dbg_value(ptr %.sroa.01.0.i.i, !5234, !DIExpression(), !4703)
    #dbg_value(i64 %.sroa.27.130.i, !5279, !DIExpression(), !4702)
    #dbg_value(ptr %i.bk, !5235, !DIExpression(), !4704)
    #dbg_value(ptr %i.bk, !5273, !DIExpression(), !4696)
    #dbg_value(ptr %.sroa.9.131.i, !5272, !DIExpression(), !4696)
  %i.as = load i64, ptr %.sroa.9.131.i, align 4, !dbg !5463, !alias.scope !5191, !noalias !5281
    #dbg_value(i64 %i.bm, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.9.131.i, !5276, !DIExpression(), !4699)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8, !dbg !5464
    #dbg_value(ptr %i.at, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4708)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4708)
    #dbg_value(ptr poison, !975, !DIExpression(), !4708)
    #dbg_value(ptr poison, !980, !DIExpression(), !4710)
    #dbg_value(ptr poison, !982, !DIExpression(), !4710)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4712)
    #dbg_value(ptr poison, !991, !DIExpression(), !4714)
    #dbg_value(ptr poison, !995, !DIExpression(), !4714)
    #dbg_value(ptr poison, !997, !DIExpression(), !4716)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4716)
    #dbg_value(i8 poison, !988, !DIExpression(), !4717)
    #dbg_value(ptr undef, !5229, !DIExpression(), !4640)
    #dbg_value(i1 poison, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4640)
    #dbg_value(i64 1, !5268, !DIExpression(), !4719)
    #dbg_value(i64 1, !5271, !DIExpression(), !4721)
    #dbg_value(i64 1, !5275, !DIExpression(), !4723)
    #dbg_value(ptr %i.ar, !5269, !DIExpression(), !4719)
  %i.au = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !5465
    #dbg_value(ptr %i.au, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %.sroa.01.0.i62.i, !5278, !DIExpression(), !4725)
    #dbg_value(ptr %.sroa.01.0.i62.i, !5234, !DIExpression(), !4726)
    #dbg_value(i64 %i.bm, !5279, !DIExpression(), !4725)
    #dbg_value(ptr %i.bo, !5235, !DIExpression(), !4727)
    #dbg_value(ptr %i.bo, !5273, !DIExpression(), !4721)
    #dbg_value(ptr %i.at, !5272, !DIExpression(), !4721)
  %i.av = load i64, ptr %i.at, align 4, !dbg !5466, !alias.scope !5191, !noalias !5282
    #dbg_value(i64 %i.bq, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.at, !5276, !DIExpression(), !4723)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !5467
    #dbg_value(ptr %i.aw, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4731)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4731)
    #dbg_value(ptr poison, !975, !DIExpression(), !4731)
    #dbg_value(ptr poison, !980, !DIExpression(), !4733)
    #dbg_value(ptr poison, !982, !DIExpression(), !4733)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4735)
    #dbg_value(ptr poison, !991, !DIExpression(), !4737)
    #dbg_value(ptr poison, !995, !DIExpression(), !4737)
    #dbg_value(ptr poison, !997, !DIExpression(), !4739)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4739)
    #dbg_value(i8 poison, !988, !DIExpression(), !4740)
    #dbg_value(ptr undef, !5229, !DIExpression(), !4638)
    #dbg_value(i1 poison, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4638)
    #dbg_value(i64 1, !5268, !DIExpression(), !4742)
    #dbg_value(i64 1, !5271, !DIExpression(), !4744)
    #dbg_value(i64 1, !5275, !DIExpression(), !4746)
    #dbg_value(ptr %i.au, !5269, !DIExpression(), !4742)
  %i.ax = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24, !dbg !5468
    #dbg_value(ptr %i.ax, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %.sroa.01.0.i63.i, !5278, !DIExpression(), !4748)
    #dbg_value(ptr %.sroa.01.0.i63.i, !5234, !DIExpression(), !4749)
    #dbg_value(i64 %i.bq, !5279, !DIExpression(), !4748)
    #dbg_value(ptr %i.bs, !5235, !DIExpression(), !4750)
    #dbg_value(ptr %i.bs, !5273, !DIExpression(), !4744)
    #dbg_value(ptr %i.aw, !5272, !DIExpression(), !4744)
  %i.ay = load i64, ptr %i.aw, align 4, !dbg !5469, !alias.scope !5191, !noalias !5283
    #dbg_value(i64 %i.bu, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.aw, !5276, !DIExpression(), !4746)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24, !dbg !5470
    #dbg_value(ptr %i.az, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4754)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4754)
    #dbg_value(ptr poison, !975, !DIExpression(), !4754)
    #dbg_value(ptr poison, !980, !DIExpression(), !4756)
    #dbg_value(ptr poison, !982, !DIExpression(), !4756)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4758)
    #dbg_value(ptr poison, !991, !DIExpression(), !4760)
    #dbg_value(ptr poison, !995, !DIExpression(), !4760)
    #dbg_value(ptr poison, !997, !DIExpression(), !4762)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4762)
    #dbg_value(i8 poison, !988, !DIExpression(), !4763)
    #dbg_value(ptr undef, !5229, !DIExpression(), !4636)
    #dbg_value(i1 poison, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4636)
    #dbg_value(i64 1, !5268, !DIExpression(), !4765)
    #dbg_value(i64 1, !5271, !DIExpression(), !4767)
    #dbg_value(i64 1, !5275, !DIExpression(), !4769)
    #dbg_value(ptr %i.ax, !5269, !DIExpression(), !4765)
  %i.ba = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !5471 ; 3 uses
    #dbg_value(ptr %i.ba, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %.sroa.01.0.i64.i, !5278, !DIExpression(), !4771)
    #dbg_value(ptr %.sroa.01.0.i64.i, !5234, !DIExpression(), !4772)
    #dbg_value(i64 %i.bu, !5279, !DIExpression(), !4771)
    #dbg_value(ptr %i.bw, !5235, !DIExpression(), !4773)
    #dbg_value(ptr %i.bw, !5273, !DIExpression(), !4767)
    #dbg_value(ptr %i.az, !5272, !DIExpression(), !4767)
  %i.bb = load i64, ptr %i.az, align 4, !dbg !5472, !alias.scope !5191, !noalias !5284
  %i.bc = load <8 x i32>, ptr %.sroa.9.131.i, align 4, !dbg !5473, !alias.scope !5191, !noalias !5192 ; 2 uses
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !5474 ; 2 uses
  %i.be = icmp eq <4 x i32> %i.bd, %i.an, !dbg !5474
  %i.bf = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !5475
  %i.bg = icmp ult <4 x i32> %i.bf, %10, !dbg !5475
  %i.bh = icmp samesign ult <4 x i32> %i.bd, %i.an, !dbg !5475
  %i.bi = select <4 x i1> %i.be, <4 x i1> %i.bg, <4 x i1> %i.bh, !dbg !5474 ; 4 uses
  %i.bj = extractelement <4 x i1> %i.bi, i64 0, !dbg !5476 ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.bj, ptr %2, ptr %i.ar, !dbg !5476
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !5477
  store i64 %i.as, ptr %i.bk, align 4, !dbg !5463, !alias.scope !5192, !noalias !5285
  %i.bl = zext i1 %i.bj to i64, !dbg !5478
  %i.bm = add i64 %.sroa.27.130.i, %i.bl, !dbg !5478 ; 2 uses
  %i.bn = extractelement <4 x i1> %i.bi, i64 1, !dbg !5479 ; 2 uses
  %.sroa.01.0.i62.i = select i1 %i.bn, ptr %2, ptr %i.au, !dbg !5479
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i62.i, i64 %i.bm, !dbg !5480
  store i64 %i.av, ptr %i.bo, align 4, !dbg !5466, !alias.scope !5192, !noalias !5286
  %i.bp = zext i1 %i.bn to i64, !dbg !5481
  %i.bq = add i64 %i.bm, %i.bp, !dbg !5481        ; 2 uses
  %i.br = extractelement <4 x i1> %i.bi, i64 2, !dbg !5482 ; 2 uses
  %.sroa.01.0.i63.i = select i1 %i.br, ptr %2, ptr %i.ax, !dbg !5482
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i63.i, i64 %i.bq, !dbg !5483
  store i64 %i.ay, ptr %i.bs, align 4, !dbg !5469, !alias.scope !5192, !noalias !5287
  %i.bt = zext i1 %i.br to i64, !dbg !5484
  %i.bu = add i64 %i.bq, %i.bt, !dbg !5484        ; 2 uses
  %i.bv = extractelement <4 x i1> %i.bi, i64 3, !dbg !5485 ; 2 uses
  %.sroa.01.0.i64.i = select i1 %i.bv, ptr %2, ptr %i.ba, !dbg !5485
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i64.i, i64 %i.bu, !dbg !5486
  store i64 %i.bb, ptr %i.bw, align 4, !dbg !5472, !alias.scope !5192, !noalias !5288
  %i.bx = zext i1 %i.bv to i64, !dbg !5487
  %i.by = add i64 %i.bu, %i.bx, !dbg !5487        ; 2 uses
    #dbg_value(i64 %i.by, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.az, !5276, !DIExpression(), !4769)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !5488 ; 3 uses
    #dbg_value(ptr %i.bz, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %i.by, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.ba, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %i.ca = icmp ult ptr %i.bz, %i.ap, !dbg !5461
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i, !dbg !5461

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %i.ba, %.lr.ph.i ], !dbg !5458 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.by, %.lr.ph.i ], !dbg !5458 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.bz, %.lr.ph.i ], !dbg !5458 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i54, !5237, !DIExpression(), !4670)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.0.0.i54, !dbg !5489 ; 2 uses
    #dbg_value(ptr %i.cb, !5218, !DIExpression(), !4776)
    #dbg_value(ptr %.sroa.9.1.lcssa.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.1.lcssa.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.1.lcssa.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %i.cc = icmp ult ptr %.sroa.9.1.lcssa.i, %i.cb, !dbg !5490
  br i1 %i.cc, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !5490

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.cj, %.lr.ph38.i ], !dbg !5458
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.cn, %.lr.ph38.i ], !dbg !5458 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.co, %.lr.ph38.i ], !dbg !5458 ; 2 uses
  %i.cd = icmp eq i64 %.sroa.0.0.i54, %.sroa.16.0140295, !dbg !5491
  br i1 %i.cd, label %bb.n, label %bb.m, !dbg !5491

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.co, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.cn, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.cj, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
    #dbg_value(ptr %.sroa.9.236.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.235.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.234.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !dbg !5492, !range !968, !alias.scope !5191, !noalias !5192, !noundef !634 ; 2 uses
  %i.ce = getelementptr i8, ptr %.sroa.9.236.i, i64 4, !dbg !5492
  %.val43.i = load i32, ptr %i.ce, align 4, !dbg !5492, !alias.scope !5191, !noalias !5192
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4778)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4778)
    #dbg_value(ptr poison, !975, !DIExpression(), !4778)
    #dbg_value(ptr poison, !980, !DIExpression(), !4780)
    #dbg_value(ptr poison, !982, !DIExpression(), !4780)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4782)
    #dbg_value(ptr poison, !991, !DIExpression(), !4784)
    #dbg_value(ptr poison, !995, !DIExpression(), !4784)
    #dbg_value(ptr poison, !997, !DIExpression(), !4786)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4786)
  %i.cf = icmp eq i32 %.val.i, %8, !dbg !5493
    #dbg_value(i8 poison, !988, !DIExpression(), !4787)
  %i.cg = icmp ult i32 %.val43.i, %9, !dbg !5494
  %i.ch = icmp samesign ult i32 %.val.i, %8, !dbg !5494
  %i.ci = select i1 %i.cf, i1 %i.cg, i1 %i.ch, !dbg !5493 ; 2 uses
    #dbg_value(ptr undef, !5229, !DIExpression(), !4634)
    #dbg_value(i1 %i.ci, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4634)
    #dbg_value(i64 1, !5268, !DIExpression(), !4789)
    #dbg_value(i64 1, !5271, !DIExpression(), !4791)
    #dbg_value(i64 1, !5275, !DIExpression(), !4793)
    #dbg_value(ptr %.sroa.43.234.i, !5269, !DIExpression(), !4789)
  %i.cj = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !5495 ; 3 uses
    #dbg_value(ptr %i.cj, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %.sroa.01.0.i65.i = select i1 %i.ci, ptr %2, ptr %i.cj, !dbg !5496
    #dbg_value(ptr %.sroa.01.0.i65.i, !5278, !DIExpression(), !4795)
    #dbg_value(ptr %.sroa.01.0.i65.i, !5234, !DIExpression(), !4796)
    #dbg_value(i64 %.sroa.27.235.i, !5279, !DIExpression(), !4795)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i65.i, i64 %.sroa.27.235.i, !dbg !5497
    #dbg_value(ptr %i.ck, !5235, !DIExpression(), !4797)
    #dbg_value(ptr %i.ck, !5273, !DIExpression(), !4791)
    #dbg_value(ptr %.sroa.9.236.i, !5272, !DIExpression(), !4791)
  %i.cl = load i64, ptr %.sroa.9.236.i, align 4, !dbg !5498, !alias.scope !5191, !noalias !5289
  store i64 %i.cl, ptr %i.ck, align 4, !dbg !5498, !alias.scope !5192, !noalias !5290
  %i.cm = zext i1 %i.ci to i64, !dbg !5499
  %i.cn = add i64 %.sroa.27.235.i, %i.cm, !dbg !5500 ; 2 uses
    #dbg_value(i64 %i.cn, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.9.236.i, !5276, !DIExpression(), !4793)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !5501 ; 3 uses
    #dbg_value(ptr %i.co, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %i.cn, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.cj, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %i.cp = icmp ult ptr %i.co, %i.cb, !dbg !5490
  br i1 %i.cp, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !5490

bb.m:                                             ; preds = %._crit_edge39.i
    #dbg_value(ptr undef, !5229, !DIExpression(), !4632)
    #dbg_value(i1 false, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4632)
    #dbg_value(i64 1, !5268, !DIExpression(), !4801)
    #dbg_value(i64 1, !5271, !DIExpression(), !4803)
    #dbg_value(i64 1, !5275, !DIExpression(), !4805)
    #dbg_value(ptr %.sroa.43.2.lcssa.i, !5269, !DIExpression(), !4801)
  %i.cq = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !5502 ; 2 uses
    #dbg_value(ptr %i.cq, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %i.cq, !5278, !DIExpression(), !4807)
    #dbg_value(ptr %i.cq, !5234, !DIExpression(), !4808)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5279, !DIExpression(), !4807)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.sroa.27.2.lcssa.i, !dbg !5503
    #dbg_value(ptr %i.cr, !5235, !DIExpression(), !4809)
    #dbg_value(ptr %i.cr, !5273, !DIExpression(), !4803)
    #dbg_value(ptr %.sroa.9.2.lcssa.i, !5272, !DIExpression(), !4803)
  %i.cs = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !dbg !5504, !alias.scope !5191, !noalias !5291
  store i64 %i.cs, ptr %i.cr, align 4, !dbg !5504, !alias.scope !5192, !noalias !5292
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.9.2.lcssa.i, !5276, !DIExpression(), !4805)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !5505
    #dbg_value(ptr %i.ct, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(ptr poison, !5215, !DIExpression(), !4678)
    #dbg_value(ptr poison, !5247, !DIExpression(), !4653)
    #dbg_value(i64 %.sroa.16.0140295, !5206, !DIExpression(), !4643)
    #dbg_value(i64 %.sroa.16.0140295, !5216, !DIExpression(), !4644)
    #dbg_value(i64 %.sroa.16.0140295, !5237, !DIExpression(), !4647)
  br label %bb.l, !dbg !5456

bb.n:                                             ; preds = %._crit_edge39.i
    #dbg_value(ptr %.sroa.0.0.ph147, !5219, !DIExpression(), !4812)
    #dbg_value(ptr %.sroa.0.0.ph147, !5247, !DIExpression(), !4814)
    #dbg_value(ptr %.sroa.0.0.ph147, !5263, !DIExpression(), !4816)
    #dbg_value(ptr %2, !5246, !DIExpression(), !4814)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5248, !DIExpression(), !4814)
  %i.cu = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3, !dbg !5506
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph147, ptr nonnull align 4 %2, i64 %i.cu, i1 false), !dbg !5506, !alias.scope !5293
  %i.cv = sub i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i, !dbg !5507 ; 5 uses
    #dbg_value(i64 0, !5220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4817)
    #dbg_value(i64 %i.cv, !5220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4817)
    #dbg_value(ptr undef, !5199, !DIExpression(), !4627)
    #dbg_value(ptr undef, !5196, !DIExpression(), !4626)
    #dbg_value(ptr undef, !5193, !DIExpression(), !4625)
    #dbg_value(ptr undef, !5194, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4818)
  %.not47.i = icmp eq i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i, !dbg !5508
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !5509

.lr.ph45.i:                                       ; preds = %bb.n
  %i.cw = getelementptr [8 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check304 = icmp ult i64 %i.cv, 4, !dbg !5509
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.ph305, !dbg !5509

vector.ph305:                                     ; preds = %.lr.ph45.i
  %n.vec306 = and i64 %i.cv, -4                   ; 3 uses
  br label %vector.body307, !dbg !5509

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next313, %vector.body307 ], !dbg !5510 ; 3 uses
  %i.cx = xor i64 %index308, -1, !dbg !5511
  %i.cy = getelementptr [8 x i8], ptr %i.am, i64 %i.cx, !dbg !5512 ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cw, i64 %index308, !dbg !5513 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 -8, !dbg !5514
  %i.db = getelementptr i8, ptr %i.cy, i64 -24, !dbg !5514
  %wide.load309 = load <2 x i64>, ptr %i.da, align 4, !dbg !5514, !alias.scope !5192, !noalias !5191
  %wide.load310 = load <2 x i64>, ptr %i.db, align 4, !dbg !5514, !alias.scope !5192, !noalias !5191
  %reverse311 = shufflevector <2 x i64> %wide.load309, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !5514
  %reverse312 = shufflevector <2 x i64> %wide.load310, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !5514
  %i.dc = getelementptr i8, ptr %i.cz, i64 16, !dbg !5514
  store <2 x i64> %reverse311, ptr %i.cz, align 4, !dbg !5514, !alias.scope !5191, !noalias !5192
  store <2 x i64> %reverse312, ptr %i.dc, align 4, !dbg !5514, !alias.scope !5191, !noalias !5192
  %index.next313 = add nuw i64 %index308, 4, !dbg !5510 ; 2 uses
  %i.dd = icmp eq i64 %index.next313, %n.vec306, !dbg !5509
  br i1 %i.dd, label %middle.block314, label %vector.body307, !dbg !5509, !llvm.loop !4819

middle.block314:                                  ; preds = %vector.body307
  %cmp.n315 = icmp eq i64 %i.cv, %n.vec306, !dbg !5509
  br i1 %cmp.n315, label %.loopexit, label %scalar.ph303.preheader, !dbg !5509

scalar.ph303.preheader:                           ; preds = %.lr.ph45.i, %middle.block314
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec306, %middle.block314 ]
  br label %scalar.ph303, !dbg !5509

scalar.ph303:                                     ; preds = %scalar.ph303.preheader, %scalar.ph303
  %.sroa.07.043.i = phi i64 [ %i.de, %scalar.ph303 ], [ %.sroa.07.043.i.ph, %scalar.ph303.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.07.043.i, !5197, !DIExpression(), !4820)
    #dbg_value(i64 %.sroa.07.043.i, !5251, !DIExpression(), !4656)
    #dbg_value(i64 %.sroa.07.043.i, !5254, !DIExpression(), !4659)
  %i.de = add nuw i64 %.sroa.07.043.i, 1, !dbg !5510 ; 2 uses
    #dbg_value(i64 %i.de, !5220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4817)
    #dbg_value(i64 %.sroa.07.043.i, !5221, !DIExpression(), !4821)
  %i.df = xor i64 %.sroa.07.043.i, -1, !dbg !5511
    #dbg_value(!DIArgList(i64 %.sroa.16.0140295, i64 %i.df), !5266, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4674)
  %i.dg = getelementptr [8 x i8], ptr %i.am, i64 %i.df, !dbg !5512
    #dbg_value(ptr %i.dg, !5246, !DIExpression(), !4661)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i, i64 %.sroa.07.043.i), !5266, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4816)
  %i.dh = getelementptr [8 x i8], ptr %i.cw, i64 %.sroa.07.043.i, !dbg !5513
    #dbg_value(ptr %i.dh, !5247, !DIExpression(), !4661)
  %i.di = load i64, ptr %i.dg, align 4, !dbg !5514, !alias.scope !5192, !noalias !5191
  store i64 %i.di, ptr %i.dh, align 4, !dbg !5514, !alias.scope !5191, !noalias !5192
    #dbg_value(ptr undef, !5199, !DIExpression(), !4627)
    #dbg_value(ptr undef, !5196, !DIExpression(), !4626)
    #dbg_value(ptr undef, !5193, !DIExpression(), !4625)
    #dbg_value(ptr undef, !5194, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4818)
  %exitcond.not.i = icmp eq i64 %i.de, %i.cv, !dbg !5508
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph303, !dbg !5509, !llvm.loop !4822

.loopexit:                                        ; preds = %scalar.ph303, %middle.block314, %bb.n
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5116, !DIExpression(), !5190)
  %i.dj = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !5515
    #dbg_value(i1 %i.dj, !5114, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5188)
  br i1 %i.dj, label %.thread, label %bb.o, !dbg !5516

bb.o:                                             ; preds = %.loopexit
    #dbg_value(ptr %.sroa.0.0.ph147, !5294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4827)
    #dbg_value(ptr %.sroa.0.0.ph147, !5303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4834)
    #dbg_value(i64 %.sroa.16.0140295, !5294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4827)
    #dbg_value(i64 %.sroa.16.0140295, !5303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4834)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5300, !DIExpression(), !4827)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5315, !DIExpression(), !4834)
  %.not.i55 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0140295, !dbg !5517
  br i1 %.not.i55, label %bb.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit, !dbg !5517, !prof !769

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !dbg !5518, !noalias !5317
  unreachable, !dbg !5518

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit: ; preds = %bb.o
    #dbg_value(ptr %.sroa.0.0.ph147, !5318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4842)
    #dbg_value(i64 poison, !5318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4842)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5319, !DIExpression(), !4842)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5323, !DIExpression(), !4845)
    #dbg_value(i64 poison, !5320, !DIExpression(), !4846)
    #dbg_value(ptr %.sroa.0.0.ph147, !5321, !DIExpression(), !4847)
    #dbg_value(ptr %.sroa.0.0.ph147, !5324, !DIExpression(), !4845)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i, !dbg !5519
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph147) ]
    #dbg_value(ptr %.sroa.0.0.ph147, !5105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_value(ptr %.sroa.0.0.ph147, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5122)
    #dbg_value(ptr %.sroa.0.0.ph147, !5123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5130)
    #dbg_value(ptr %.sroa.0.0.ph147, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5122)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5130)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(ptr %i.dk, !5119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5122)
    #dbg_value(i64 %i.cv, !5119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5122)
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %i.dk, i64 noundef %i.cv, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #21, !dbg !5520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5521
    #dbg_value(ptr %.sroa.0.0.ph147, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(ptr %.sroa.0.0.ph147, !5123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5130)
    #dbg_value(ptr %.sroa.0.0.ph147, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5122)
    #dbg_value(ptr %.sroa.0.0.ph147, !5105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5130)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5122)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(i32 %i.i, !5107, !DIExpression(), !5121)
    #dbg_value(ptr %.sroa.028.0.ph144, !5108, !DIExpression(), !5121)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5110, !DIExpression(), !5140)
  %i.dl = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !5418
  br i1 %i.dl, label %.outer._crit_edge, label %bb.b, !dbg !5418

.thread:                                          ; preds = %bb.h, %.loopexit
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph147, i64 %i.af ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5326), !dbg !5522
  call void @llvm.experimental.noalias.scope.decl(metadata !5327), !dbg !5522
    #dbg_value(ptr poison, !5328, !DIExpression(), !4873)
    #dbg_value(ptr poison, !5331, !DIExpression(), !4874)
    #dbg_value(ptr poison, !5334, !DIExpression(), !4875)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4877)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4879)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4881)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4883)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4885)
    #dbg_value(ptr poison, !5229, !DIExpression(), !4887)
    #dbg_value(i64 %.sroa.0.0.i, !5344, !DIExpression(), !4888)
    #dbg_value(i64 %.sroa.0.0.i, !5353, !DIExpression(), !4889)
    #dbg_value(i64 %.sroa.0.0.i, !5362, !DIExpression(), !4892)
    #dbg_value(ptr %.sroa.0.0.ph147, !5342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4888)
    #dbg_value(i64 %.sroa.16.0140295, !5342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4888)
    #dbg_value(ptr %2, !5343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4888)
    #dbg_value(i64 %3, !5343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4888)
    #dbg_value(i1 true, !5345, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4888)
    #dbg_value(ptr poison, !5346, !DIExpression(), !4888)
    #dbg_value(i64 3, !5365, !DIExpression(), !4895)
    #dbg_value(i64 1, !5368, !DIExpression(), !4898)
    #dbg_value(i64 1, !5373, !DIExpression(), !4901)
    #dbg_value(i64 1, !5376, !DIExpression(), !4904)
    #dbg_value(i64 1, !5368, !DIExpression(), !4906)
    #dbg_value(i64 %.sroa.16.0140295, !5347, !DIExpression(), !4907)
    #dbg_value(i64 %.sroa.16.0140295, !5379, !DIExpression(), !4910)
  %.not105 = icmp samesign ult i64 %3, %.sroa.16.0140295, !dbg !5523
  br i1 %.not105, label %bb.r, label %bb.q, !dbg !5523, !prof !1055

bb.q:                                             ; preds = %.thread
    #dbg_value(ptr %.sroa.0.0.ph147, !5348, !DIExpression(), !4911)
    #dbg_value(ptr %.sroa.0.0.ph147, !5363, !DIExpression(), !4892)
    #dbg_value(ptr %.sroa.0.0.ph147, !5380, !DIExpression(), !4910)
    #dbg_value(ptr %.sroa.0.0.ph147, !5363, !DIExpression(), !4913)
    #dbg_value(ptr %.sroa.0.0.ph147, !5363, !DIExpression(), !4915)
    #dbg_value(ptr %2, !5349, !DIExpression(), !4916)
    #dbg_value(ptr %2, !5381, !DIExpression(), !4910)
    #dbg_value(ptr %2, !5383, !DIExpression(), !4919)
    #dbg_value(ptr %11, !5350, !DIExpression(), !4920)
    #dbg_value(ptr %11, !5369, !DIExpression(), !4898)
  %i.dn = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0140295, !dbg !5524 ; 3 uses
    #dbg_value(ptr %2, !5351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4922)
    #dbg_value(ptr %.sroa.0.0.ph147, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(i64 0, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %i.dn, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
    #dbg_value(ptr null, !5352, !DIExpression(), !4923)
    #dbg_value(ptr null, !5370, !DIExpression(), !4898)
  br label %bb.s, !dbg !5525

bb.r:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !5526
  unreachable, !dbg !5526

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i58 = phi ptr [ %i.dn, %bb.q ], [ %i.fz, %bb.u ], !dbg !5527 ; 2 uses
  %.sroa.27.0.i59 = phi i64 [ 0, %bb.q ], [ %i.gc, %bb.u ], !dbg !5527 ; 2 uses
  %.sroa.9.0.i60 = phi ptr [ %.sroa.0.0.ph147, %bb.q ], [ %i.gd, %bb.u ], !dbg !5527 ; 3 uses
  %.sroa.0.0.i61 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0140295, %bb.u ] ; 3 uses
    #dbg_value(ptr %.sroa.9.0.i60, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(i64 %.sroa.27.0.i59, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %.sroa.43.0.i58, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
    #dbg_value(i64 %.sroa.0.0.i61, !5362, !DIExpression(), !4892)
    #dbg_value(i64 %.sroa.0.0.i61, !5353, !DIExpression(), !4889)
    #dbg_value(i64 %.sroa.0.0.i61, !5344, !DIExpression(), !4888)
    #dbg_value(ptr poison, !5370, !DIExpression(), !4898)
    #dbg_value(ptr poison, !5352, !DIExpression(), !4923)
    #dbg_value(i64 %.sroa.0.0.i61, !5366, !DIExpression(), !4895)
  %i.do = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i61, i64 3), !dbg !5528
    #dbg_value(i64 %i.do, !5362, !DIExpression(), !4913)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph147, i64 %i.do, !dbg !5529 ; 2 uses
    #dbg_value(ptr %i.dp, !5354, !DIExpression(), !4924)
    #dbg_value(ptr %.sroa.9.0.i60, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(i64 %.sroa.27.0.i59, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %.sroa.43.0.i58, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %i.dq = icmp ult ptr %.sroa.9.0.i60, %i.dp, !dbg !5530
  br i1 %i.dq, label %.lr.ph.i83, label %._crit_edge.i62, !dbg !5530

.lr.ph.i83:                                       ; preds = %bb.s
  %.val60.i84 = load i32, ptr %11, align 4, !range !968, !alias.scope !5326, !noalias !5327, !noundef !634 ; 8 uses
  %.val61.i90 = load i32, ptr %i.dm, align 4, !alias.scope !5326, !noalias !5327 ; 4 uses
  br label %bb.t, !dbg !5530

bb.t:                                             ; preds = %bb.t, %.lr.ph.i83
  %.sroa.9.131.i85 = phi ptr [ %.sroa.9.0.i60, %.lr.ph.i83 ], [ %i.fi, %bb.t ] ; 10 uses
  %.sroa.27.130.i86 = phi i64 [ %.sroa.27.0.i59, %.lr.ph.i83 ], [ %i.fh, %bb.t ] ; 2 uses
  %.sroa.43.129.i87 = phi ptr [ %.sroa.43.0.i58, %.lr.ph.i83 ], [ %i.fd, %bb.t ] ; 4 uses
    #dbg_value(ptr %.sroa.9.131.i85, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(i64 %.sroa.27.130.i86, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %.sroa.43.129.i87, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %.val58.i88 = load i32, ptr %.sroa.9.131.i85, align 4, !dbg !5531, !range !968, !alias.scope !5326, !noalias !5327, !noundef !634 ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.9.131.i85, i64 4, !dbg !5531
  %.val59.i89 = load i32, ptr %i.dr, align 4, !dbg !5531, !alias.scope !5326, !noalias !5327
    #dbg_value(ptr poison, !5386, !DIExpression(), !4927)
    #dbg_value(ptr poison, !5389, !DIExpression(), !4927)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4929)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4929)
    #dbg_value(ptr poison, !975, !DIExpression(), !4929)
    #dbg_value(ptr poison, !980, !DIExpression(), !4931)
    #dbg_value(ptr poison, !982, !DIExpression(), !4931)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4933)
    #dbg_value(ptr poison, !991, !DIExpression(), !4935)
    #dbg_value(ptr poison, !995, !DIExpression(), !4935)
    #dbg_value(ptr poison, !997, !DIExpression(), !4937)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4937)
  %i.ds = icmp eq i32 %.val60.i84, %.val58.i88, !dbg !5532
    #dbg_value(i8 poison, !988, !DIExpression(), !4938)
  %i.dt = icmp uge i32 %.val61.i90, %.val59.i89, !dbg !5533
  %i.du = icmp samesign uge i32 %.val60.i84, %.val58.i88, !dbg !5533
  %i.dv = select i1 %i.ds, i1 %i.dt, i1 %i.du, !dbg !5532 ; 2 uses
    #dbg_value(ptr undef, !5229, !DIExpression(), !4887)
    #dbg_value(i1 %i.dv, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4887)
    #dbg_value(i64 1, !5268, !DIExpression(), !4940)
    #dbg_value(i64 1, !5271, !DIExpression(), !4942)
    #dbg_value(i64 1, !5275, !DIExpression(), !4944)
    #dbg_value(ptr %.sroa.43.129.i87, !5269, !DIExpression(), !4940)
  %i.dw = getelementptr inbounds i8, ptr %.sroa.43.129.i87, i64 -8, !dbg !5534
    #dbg_value(ptr %i.dw, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %.sroa.01.0.i.i91 = select i1 %i.dv, ptr %2, ptr %i.dw, !dbg !5535
    #dbg_value(ptr %.sroa.01.0.i.i91, !5278, !DIExpression(), !4946)
    #dbg_value(ptr %.sroa.01.0.i.i91, !5234, !DIExpression(), !4947)
    #dbg_value(i64 %.sroa.27.130.i86, !5279, !DIExpression(), !4946)
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i91, i64 %.sroa.27.130.i86, !dbg !5536
    #dbg_value(ptr %i.dx, !5235, !DIExpression(), !4948)
    #dbg_value(ptr %i.dx, !5273, !DIExpression(), !4942)
    #dbg_value(ptr %.sroa.9.131.i85, !5272, !DIExpression(), !4942)
  %i.dy = load i64, ptr %.sroa.9.131.i85, align 4, !dbg !5537, !alias.scope !5326, !noalias !5392
  store i64 %i.dy, ptr %i.dx, align 4, !dbg !5537, !alias.scope !5327, !noalias !5393
  %i.dz = zext i1 %i.dv to i64, !dbg !5538
  %i.ea = add i64 %.sroa.27.130.i86, %i.dz, !dbg !5539 ; 2 uses
    #dbg_value(i64 %i.ea, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %.sroa.9.131.i85, !5276, !DIExpression(), !4944)
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i85, i64 8, !dbg !5540 ; 2 uses
    #dbg_value(ptr %i.eb, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
  %.val54.i92 = load i32, ptr %i.eb, align 4, !dbg !5541, !range !968, !alias.scope !5326, !noalias !5327, !noundef !634 ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.9.131.i85, i64 12, !dbg !5541
  %.val55.i93 = load i32, ptr %i.ec, align 4, !dbg !5541, !alias.scope !5326, !noalias !5327
    #dbg_value(ptr poison, !5386, !DIExpression(), !4952)
    #dbg_value(ptr poison, !5389, !DIExpression(), !4952)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4954)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4954)
    #dbg_value(ptr poison, !975, !DIExpression(), !4954)
    #dbg_value(ptr poison, !980, !DIExpression(), !4956)
    #dbg_value(ptr poison, !982, !DIExpression(), !4956)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4958)
    #dbg_value(ptr poison, !991, !DIExpression(), !4960)
    #dbg_value(ptr poison, !995, !DIExpression(), !4960)
    #dbg_value(ptr poison, !997, !DIExpression(), !4962)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4962)
  %i.ed = icmp eq i32 %.val60.i84, %.val54.i92, !dbg !5542
    #dbg_value(i8 poison, !988, !DIExpression(), !4963)
  %i.ee = icmp uge i32 %.val61.i90, %.val55.i93, !dbg !5543
  %i.ef = icmp samesign uge i32 %.val60.i84, %.val54.i92, !dbg !5543
  %i.eg = select i1 %i.ed, i1 %i.ee, i1 %i.ef, !dbg !5542 ; 2 uses
    #dbg_value(ptr undef, !5229, !DIExpression(), !4885)
    #dbg_value(i1 %i.eg, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4885)
    #dbg_value(i64 1, !5268, !DIExpression(), !4965)
    #dbg_value(i64 1, !5271, !DIExpression(), !4967)
    #dbg_value(i64 1, !5275, !DIExpression(), !4969)
    #dbg_value(ptr %i.dw, !5269, !DIExpression(), !4965)
  %i.eh = getelementptr inbounds i8, ptr %.sroa.43.129.i87, i64 -16, !dbg !5544
    #dbg_value(ptr %i.eh, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %.sroa.01.0.i62.i94 = select i1 %i.eg, ptr %2, ptr %i.eh, !dbg !5545
    #dbg_value(ptr %.sroa.01.0.i62.i94, !5278, !DIExpression(), !4971)
    #dbg_value(ptr %.sroa.01.0.i62.i94, !5234, !DIExpression(), !4972)
    #dbg_value(i64 %i.ea, !5279, !DIExpression(), !4971)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i62.i94, i64 %i.ea, !dbg !5546
    #dbg_value(ptr %i.ei, !5235, !DIExpression(), !4973)
    #dbg_value(ptr %i.ei, !5273, !DIExpression(), !4967)
    #dbg_value(ptr %i.eb, !5272, !DIExpression(), !4967)
  %i.ej = load i64, ptr %i.eb, align 4, !dbg !5547, !alias.scope !5326, !noalias !5394
  store i64 %i.ej, ptr %i.ei, align 4, !dbg !5547, !alias.scope !5327, !noalias !5395
  %i.ek = zext i1 %i.eg to i64, !dbg !5548
  %i.el = add i64 %i.ea, %i.ek, !dbg !5549        ; 2 uses
    #dbg_value(i64 %i.el, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %i.eb, !5276, !DIExpression(), !4969)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i85, i64 16, !dbg !5550 ; 2 uses
    #dbg_value(ptr %i.em, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
  %.val50.i95 = load i32, ptr %i.em, align 4, !dbg !5551, !range !968, !alias.scope !5326, !noalias !5327, !noundef !634 ; 2 uses
  %i.en = getelementptr i8, ptr %.sroa.9.131.i85, i64 20, !dbg !5551
  %.val51.i96 = load i32, ptr %i.en, align 4, !dbg !5551, !alias.scope !5326, !noalias !5327
    #dbg_value(ptr poison, !5386, !DIExpression(), !4977)
    #dbg_value(ptr poison, !5389, !DIExpression(), !4977)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4979)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4979)
    #dbg_value(ptr poison, !975, !DIExpression(), !4979)
    #dbg_value(ptr poison, !980, !DIExpression(), !4981)
    #dbg_value(ptr poison, !982, !DIExpression(), !4981)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4983)
    #dbg_value(ptr poison, !991, !DIExpression(), !4985)
    #dbg_value(ptr poison, !995, !DIExpression(), !4985)
    #dbg_value(ptr poison, !997, !DIExpression(), !4987)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4987)
  %i.eo = icmp eq i32 %.val60.i84, %.val50.i95, !dbg !5552
    #dbg_value(i8 poison, !988, !DIExpression(), !4988)
  %i.ep = icmp uge i32 %.val61.i90, %.val51.i96, !dbg !5553
  %i.eq = icmp samesign uge i32 %.val60.i84, %.val50.i95, !dbg !5553
  %i.er = select i1 %i.eo, i1 %i.ep, i1 %i.eq, !dbg !5552 ; 2 uses
    #dbg_value(ptr undef, !5229, !DIExpression(), !4883)
    #dbg_value(i1 %i.er, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4883)
    #dbg_value(i64 1, !5268, !DIExpression(), !4990)
    #dbg_value(i64 1, !5271, !DIExpression(), !4992)
    #dbg_value(i64 1, !5275, !DIExpression(), !4994)
    #dbg_value(ptr %i.eh, !5269, !DIExpression(), !4990)
  %i.es = getelementptr inbounds i8, ptr %.sroa.43.129.i87, i64 -24, !dbg !5554
    #dbg_value(ptr %i.es, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %.sroa.01.0.i63.i97 = select i1 %i.er, ptr %2, ptr %i.es, !dbg !5555
    #dbg_value(ptr %.sroa.01.0.i63.i97, !5278, !DIExpression(), !4996)
    #dbg_value(ptr %.sroa.01.0.i63.i97, !5234, !DIExpression(), !4997)
    #dbg_value(i64 %i.el, !5279, !DIExpression(), !4996)
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i63.i97, i64 %i.el, !dbg !5556
    #dbg_value(ptr %i.et, !5235, !DIExpression(), !4998)
    #dbg_value(ptr %i.et, !5273, !DIExpression(), !4992)
    #dbg_value(ptr %i.em, !5272, !DIExpression(), !4992)
  %i.eu = load i64, ptr %i.em, align 4, !dbg !5557, !alias.scope !5326, !noalias !5396
  store i64 %i.eu, ptr %i.et, align 4, !dbg !5557, !alias.scope !5327, !noalias !5397
  %i.ev = zext i1 %i.er to i64, !dbg !5558
  %i.ew = add i64 %i.el, %i.ev, !dbg !5559        ; 2 uses
    #dbg_value(i64 %i.ew, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %i.em, !5276, !DIExpression(), !4994)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i85, i64 24, !dbg !5560 ; 2 uses
    #dbg_value(ptr %i.ex, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
  %.val46.i98 = load i32, ptr %i.ex, align 4, !dbg !5561, !range !968, !alias.scope !5326, !noalias !5327, !noundef !634 ; 2 uses
  %i.ey = getelementptr i8, ptr %.sroa.9.131.i85, i64 28, !dbg !5561
  %.val47.i99 = load i32, ptr %i.ey, align 4, !dbg !5561, !alias.scope !5326, !noalias !5327
    #dbg_value(ptr poison, !5386, !DIExpression(), !5002)
    #dbg_value(ptr poison, !5389, !DIExpression(), !5002)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5004)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5004)
    #dbg_value(ptr poison, !975, !DIExpression(), !5004)
    #dbg_value(ptr poison, !980, !DIExpression(), !5006)
    #dbg_value(ptr poison, !982, !DIExpression(), !5006)
    #dbg_declare(ptr poison, !987, !DIExpression(), !5008)
    #dbg_value(ptr poison, !991, !DIExpression(), !5010)
    #dbg_value(ptr poison, !995, !DIExpression(), !5010)
    #dbg_value(ptr poison, !997, !DIExpression(), !5012)
    #dbg_value(ptr poison, !1001, !DIExpression(), !5012)
  %i.ez = icmp eq i32 %.val60.i84, %.val46.i98, !dbg !5562
    #dbg_value(i8 poison, !988, !DIExpression(), !5013)
  %i.fa = icmp uge i32 %.val61.i90, %.val47.i99, !dbg !5563
  %i.fb = icmp samesign uge i32 %.val60.i84, %.val46.i98, !dbg !5563
  %i.fc = select i1 %i.ez, i1 %i.fa, i1 %i.fb, !dbg !5562 ; 2 uses
    #dbg_value(ptr undef, !5229, !DIExpression(), !4881)
    #dbg_value(i1 %i.fc, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4881)
    #dbg_value(i64 1, !5268, !DIExpression(), !5015)
    #dbg_value(i64 1, !5271, !DIExpression(), !5017)
    #dbg_value(i64 1, !5275, !DIExpression(), !5019)
    #dbg_value(ptr %i.es, !5269, !DIExpression(), !5015)
  %i.fd = getelementptr inbounds i8, ptr %.sroa.43.129.i87, i64 -32, !dbg !5564 ; 3 uses
    #dbg_value(ptr %i.fd, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %.sroa.01.0.i64.i100 = select i1 %i.fc, ptr %2, ptr %i.fd, !dbg !5565
    #dbg_value(ptr %.sroa.01.0.i64.i100, !5278, !DIExpression(), !5021)
    #dbg_value(ptr %.sroa.01.0.i64.i100, !5234, !DIExpression(), !5022)
    #dbg_value(i64 %i.ew, !5279, !DIExpression(), !5021)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i64.i100, i64 %i.ew, !dbg !5566
    #dbg_value(ptr %i.fe, !5235, !DIExpression(), !5023)
    #dbg_value(ptr %i.fe, !5273, !DIExpression(), !5017)
    #dbg_value(ptr %i.ex, !5272, !DIExpression(), !5017)
  %i.ff = load i64, ptr %i.ex, align 4, !dbg !5567, !alias.scope !5326, !noalias !5398
  store i64 %i.ff, ptr %i.fe, align 4, !dbg !5567, !alias.scope !5327, !noalias !5399
  %i.fg = zext i1 %i.fc to i64, !dbg !5568
  %i.fh = add i64 %i.ew, %i.fg, !dbg !5569        ; 2 uses
    #dbg_value(i64 %i.fh, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %i.ex, !5276, !DIExpression(), !5019)
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i85, i64 32, !dbg !5570 ; 3 uses
    #dbg_value(ptr %i.fi, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(i64 %i.fh, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %i.fd, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %i.fj = icmp ult ptr %i.fi, %i.dp, !dbg !5530
  br i1 %i.fj, label %bb.t, label %._crit_edge.i62, !dbg !5530

._crit_edge.i62:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i63 = phi ptr [ %.sroa.43.0.i58, %bb.s ], [ %i.fd, %bb.t ], !dbg !5527 ; 2 uses
  %.sroa.27.1.lcssa.i64 = phi i64 [ %.sroa.27.0.i59, %bb.s ], [ %i.fh, %bb.t ], !dbg !5527 ; 2 uses
  %.sroa.9.1.lcssa.i65 = phi ptr [ %.sroa.9.0.i60, %bb.s ], [ %i.fi, %bb.t ], !dbg !5527 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i61, !5362, !DIExpression(), !4915)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.0.0.i61, !dbg !5571 ; 2 uses
    #dbg_value(ptr %i.fk, !5355, !DIExpression(), !5026)
    #dbg_value(ptr %.sroa.9.1.lcssa.i65, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(i64 %.sroa.27.1.lcssa.i64, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %.sroa.43.1.lcssa.i63, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %i.fl = icmp ult ptr %.sroa.9.1.lcssa.i65, %i.fk, !dbg !5572
  br i1 %i.fl, label %.lr.ph38.i74.preheader, label %._crit_edge39.i66, !dbg !5572

.lr.ph38.i74.preheader:                           ; preds = %._crit_edge.i62
  %.val44.i80 = load i32, ptr %11, align 4, !range !968, !alias.scope !5326, !noalias !5327, !noundef !634 ; 2 uses
  %.val45.i81 = load i32, ptr %i.dm, align 4, !alias.scope !5326, !noalias !5327
  br label %.lr.ph38.i74, !dbg !5572

._crit_edge39.i66:                                ; preds = %.lr.ph38.i74, %._crit_edge.i62
  %.sroa.43.2.lcssa.i67 = phi ptr [ %.sroa.43.1.lcssa.i63, %._crit_edge.i62 ], [ %i.fs, %.lr.ph38.i74 ], !dbg !5527
  %.sroa.27.2.lcssa.i68 = phi i64 [ %.sroa.27.1.lcssa.i64, %._crit_edge.i62 ], [ %i.fw, %.lr.ph38.i74 ], !dbg !5527 ; 9 uses
  %.sroa.9.2.lcssa.i69 = phi ptr [ %.sroa.9.1.lcssa.i65, %._crit_edge.i62 ], [ %i.fx, %.lr.ph38.i74 ], !dbg !5527 ; 2 uses
  %i.fm = icmp eq i64 %.sroa.0.0.i61, %.sroa.16.0140295, !dbg !5573
  br i1 %i.fm, label %bb.v, label %bb.u, !dbg !5573

.lr.ph38.i74:                                     ; preds = %.lr.ph38.i74.preheader, %.lr.ph38.i74
  %.sroa.9.236.i75 = phi ptr [ %i.fx, %.lr.ph38.i74 ], [ %.sroa.9.1.lcssa.i65, %.lr.ph38.i74.preheader ] ; 4 uses
  %.sroa.27.235.i76 = phi i64 [ %i.fw, %.lr.ph38.i74 ], [ %.sroa.27.1.lcssa.i64, %.lr.ph38.i74.preheader ] ; 2 uses
  %.sroa.43.234.i77 = phi ptr [ %i.fs, %.lr.ph38.i74 ], [ %.sroa.43.1.lcssa.i63, %.lr.ph38.i74.preheader ]
    #dbg_value(ptr %.sroa.9.236.i75, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(i64 %.sroa.27.235.i76, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %.sroa.43.234.i77, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %.val.i78 = load i32, ptr %.sroa.9.236.i75, align 4, !dbg !5574, !range !968, !alias.scope !5326, !noalias !5327, !noundef !634 ; 2 uses
  %i.fn = getelementptr i8, ptr %.sroa.9.236.i75, i64 4, !dbg !5574
  %.val43.i79 = load i32, ptr %i.fn, align 4, !dbg !5574, !alias.scope !5326, !noalias !5327
    #dbg_value(ptr poison, !5386, !DIExpression(), !5028)
    #dbg_value(ptr poison, !5389, !DIExpression(), !5028)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5030)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5030)
    #dbg_value(ptr poison, !975, !DIExpression(), !5030)
    #dbg_value(ptr poison, !980, !DIExpression(), !5032)
    #dbg_value(ptr poison, !982, !DIExpression(), !5032)
    #dbg_declare(ptr poison, !987, !DIExpression(), !5034)
    #dbg_value(ptr poison, !991, !DIExpression(), !5036)
    #dbg_value(ptr poison, !995, !DIExpression(), !5036)
    #dbg_value(ptr poison, !997, !DIExpression(), !5038)
    #dbg_value(ptr poison, !1001, !DIExpression(), !5038)
  %i.fo = icmp eq i32 %.val44.i80, %.val.i78, !dbg !5575
    #dbg_value(i8 poison, !988, !DIExpression(), !5039)
  %i.fp = icmp uge i32 %.val45.i81, %.val43.i79, !dbg !5576
  %i.fq = icmp samesign uge i32 %.val44.i80, %.val.i78, !dbg !5576
  %i.fr = select i1 %i.fo, i1 %i.fp, i1 %i.fq, !dbg !5575 ; 2 uses
    #dbg_value(ptr undef, !5229, !DIExpression(), !4879)
    #dbg_value(i1 %i.fr, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4879)
    #dbg_value(i64 1, !5268, !DIExpression(), !5041)
    #dbg_value(i64 1, !5271, !DIExpression(), !5043)
    #dbg_value(i64 1, !5275, !DIExpression(), !5045)
    #dbg_value(ptr %.sroa.43.234.i77, !5269, !DIExpression(), !5041)
  %i.fs = getelementptr inbounds i8, ptr %.sroa.43.234.i77, i64 -8, !dbg !5577 ; 3 uses
    #dbg_value(ptr %i.fs, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %.sroa.01.0.i65.i82 = select i1 %i.fr, ptr %2, ptr %i.fs, !dbg !5578
    #dbg_value(ptr %.sroa.01.0.i65.i82, !5278, !DIExpression(), !5047)
    #dbg_value(ptr %.sroa.01.0.i65.i82, !5234, !DIExpression(), !5048)
    #dbg_value(i64 %.sroa.27.235.i76, !5279, !DIExpression(), !5047)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i65.i82, i64 %.sroa.27.235.i76, !dbg !5579
    #dbg_value(ptr %i.ft, !5235, !DIExpression(), !5049)
    #dbg_value(ptr %i.ft, !5273, !DIExpression(), !5043)
    #dbg_value(ptr %.sroa.9.236.i75, !5272, !DIExpression(), !5043)
  %i.fu = load i64, ptr %.sroa.9.236.i75, align 4, !dbg !5580, !alias.scope !5326, !noalias !5400
  store i64 %i.fu, ptr %i.ft, align 4, !dbg !5580, !alias.scope !5327, !noalias !5401
  %i.fv = zext i1 %i.fr to i64, !dbg !5581
  %i.fw = add i64 %.sroa.27.235.i76, %i.fv, !dbg !5582 ; 2 uses
    #dbg_value(i64 %i.fw, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %.sroa.9.236.i75, !5276, !DIExpression(), !5045)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i75, i64 8, !dbg !5583 ; 3 uses
    #dbg_value(ptr %i.fx, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(i64 %i.fw, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %i.fs, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
  %i.fy = icmp ult ptr %i.fx, %i.fk, !dbg !5572
  br i1 %i.fy, label %.lr.ph38.i74, label %._crit_edge39.i66, !dbg !5572

bb.u:                                             ; preds = %._crit_edge39.i66
    #dbg_value(ptr undef, !5229, !DIExpression(), !4877)
    #dbg_value(i1 true, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4877)
    #dbg_value(i64 1, !5268, !DIExpression(), !5053)
    #dbg_value(i64 1, !5271, !DIExpression(), !5055)
    #dbg_value(i64 1, !5275, !DIExpression(), !5057)
    #dbg_value(ptr %.sroa.43.2.lcssa.i67, !5269, !DIExpression(), !5053)
  %i.fz = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i67, i64 -8, !dbg !5584
    #dbg_value(ptr %i.fz, !5351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4922)
    #dbg_value(ptr %2, !5278, !DIExpression(), !5059)
    #dbg_value(ptr %2, !5234, !DIExpression(), !5060)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !5279, !DIExpression(), !5059)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i68, !dbg !5585
    #dbg_value(ptr %i.ga, !5235, !DIExpression(), !5061)
    #dbg_value(ptr %i.ga, !5273, !DIExpression(), !5055)
    #dbg_value(ptr %.sroa.9.2.lcssa.i69, !5272, !DIExpression(), !5055)
  %i.gb = load i64, ptr %.sroa.9.2.lcssa.i69, align 4, !dbg !5586, !alias.scope !5326, !noalias !5402
  store i64 %i.gb, ptr %i.ga, align 4, !dbg !5586, !alias.scope !5327, !noalias !5403
  %i.gc = add i64 %.sroa.27.2.lcssa.i68, 1, !dbg !5587
    #dbg_value(i64 %i.gc, !5351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4922)
    #dbg_value(ptr %.sroa.9.2.lcssa.i69, !5276, !DIExpression(), !5057)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i69, i64 8, !dbg !5588
    #dbg_value(ptr %i.gd, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4922)
    #dbg_value(ptr poison, !5352, !DIExpression(), !4923)
    #dbg_value(ptr poison, !5370, !DIExpression(), !4898)
    #dbg_value(i64 %.sroa.16.0140295, !5344, !DIExpression(), !4888)
    #dbg_value(i64 %.sroa.16.0140295, !5353, !DIExpression(), !4889)
    #dbg_value(i64 %.sroa.16.0140295, !5362, !DIExpression(), !4892)
  br label %bb.s, !dbg !5525

bb.v:                                             ; preds = %._crit_edge39.i66
    #dbg_value(ptr %.sroa.0.0.ph147, !5356, !DIExpression(), !5064)
    #dbg_value(ptr %.sroa.0.0.ph147, !5370, !DIExpression(), !5066)
    #dbg_value(ptr %.sroa.0.0.ph147, !5383, !DIExpression(), !5068)
    #dbg_value(ptr %2, !5369, !DIExpression(), !5066)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !5371, !DIExpression(), !5066)
  %i.ge = shl nuw nsw i64 %.sroa.27.2.lcssa.i68, 3, !dbg !5589
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph147, ptr nonnull align 4 %2, i64 %i.ge, i1 false), !dbg !5589, !alias.scope !5404
  %i.gf = sub i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i68, !dbg !5590 ; 7 uses
    #dbg_value(i64 0, !5357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5069)
    #dbg_value(i64 %i.gf, !5357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5069)
    #dbg_value(ptr undef, !5334, !DIExpression(), !4875)
    #dbg_value(ptr undef, !5331, !DIExpression(), !4874)
    #dbg_value(ptr undef, !5328, !DIExpression(), !4873)
    #dbg_value(ptr undef, !5329, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5070)
  %.not47.i70 = icmp eq i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i68, !dbg !5591
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i68 ; 3 uses
  br i1 %.not47.i70, label %.outer.thread, label %.lr.ph45.i71, !dbg !5592

.lr.ph45.i71:                                     ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.gf, 4, !dbg !5592
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !5592

vector.ph:                                        ; preds = %.lr.ph45.i71
  %n.vec = and i64 %i.gf, -4                      ; 3 uses
  br label %vector.body, !dbg !5592

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !5593 ; 3 uses
  %i.gh = xor i64 %index, -1, !dbg !5594
  %i.gi = getelementptr [8 x i8], ptr %i.dn, i64 %i.gh, !dbg !5595 ; 2 uses
  %i.gj = getelementptr [8 x i8], ptr %i.gg, i64 %index, !dbg !5596 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gi, i64 -8, !dbg !5597
  %i.gl = getelementptr i8, ptr %i.gi, i64 -24, !dbg !5597
  %wide.load = load <2 x i64>, ptr %i.gk, align 4, !dbg !5597, !alias.scope !5327, !noalias !5326
  %wide.load301 = load <2 x i64>, ptr %i.gl, align 4, !dbg !5597, !alias.scope !5327, !noalias !5326
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !5597
  %reverse302 = shufflevector <2 x i64> %wide.load301, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !5597
  %i.gm = getelementptr i8, ptr %i.gj, i64 16, !dbg !5597
  store <2 x i64> %reverse, ptr %i.gj, align 4, !dbg !5597, !alias.scope !5326, !noalias !5327
  store <2 x i64> %reverse302, ptr %i.gm, align 4, !dbg !5597, !alias.scope !5326, !noalias !5327
  %index.next = add nuw i64 %index, 4, !dbg !5593 ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec, !dbg !5592
  br i1 %i.gn, label %middle.block, label %vector.body, !dbg !5592, !llvm.loop !5071

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gf, %n.vec, !dbg !5592
  br i1 %cmp.n, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %scalar.ph.preheader, !dbg !5592

scalar.ph.preheader:                              ; preds = %.lr.ph45.i71, %middle.block
  %.sroa.07.043.i72.ph = phi i64 [ 0, %.lr.ph45.i71 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !5592

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i72 = phi i64 [ %i.go, %scalar.ph ], [ %.sroa.07.043.i72.ph, %scalar.ph.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.07.043.i72, !5332, !DIExpression(), !5072)
    #dbg_value(i64 %.sroa.07.043.i72, !5374, !DIExpression(), !4901)
    #dbg_value(i64 %.sroa.07.043.i72, !5377, !DIExpression(), !4904)
  %i.go = add nuw i64 %.sroa.07.043.i72, 1, !dbg !5593 ; 2 uses
    #dbg_value(i64 %i.go, !5357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5069)
    #dbg_value(i64 %.sroa.07.043.i72, !5358, !DIExpression(), !5073)
  %i.gp = xor i64 %.sroa.07.043.i72, -1, !dbg !5594
    #dbg_value(!DIArgList(i64 %.sroa.16.0140295, i64 %i.gp), !5384, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4919)
  %i.gq = getelementptr [8 x i8], ptr %i.dn, i64 %i.gp, !dbg !5595
    #dbg_value(ptr %i.gq, !5369, !DIExpression(), !4906)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i68, i64 %.sroa.07.043.i72), !5384, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !5068)
  %i.gr = getelementptr [8 x i8], ptr %i.gg, i64 %.sroa.07.043.i72, !dbg !5596
    #dbg_value(ptr %i.gr, !5370, !DIExpression(), !4906)
  %i.gs = load i64, ptr %i.gq, align 4, !dbg !5597, !alias.scope !5327, !noalias !5326
  store i64 %i.gs, ptr %i.gr, align 4, !dbg !5597, !alias.scope !5326, !noalias !5327
    #dbg_value(ptr undef, !5334, !DIExpression(), !4875)
    #dbg_value(ptr undef, !5331, !DIExpression(), !4874)
    #dbg_value(ptr undef, !5328, !DIExpression(), !4873)
    #dbg_value(ptr undef, !5329, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5070)
  %exitcond.not.i73 = icmp eq i64 %i.go, %i.gf, !dbg !5591
  br i1 %exitcond.not.i73, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %scalar.ph, !dbg !5592, !llvm.loop !5074

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit: ; preds = %scalar.ph, %middle.block
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !5117, !DIExpression(), !5405)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !5126, !DIExpression(), !5130)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !5134, !DIExpression(), !5138)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !5406, !DIExpression(), !5416)
  %i.gt = icmp ugt i64 %.sroa.27.2.lcssa.i68, %.sroa.16.0140295, !dbg !5598
  br i1 %i.gt, label %bb.w, label %.outer, !dbg !5598, !prof !769

.outer.thread:                                    ; preds = %bb.v
    #dbg_value(i64 poison, !5117, !DIExpression(), !5405)
    #dbg_value(i64 poison, !5126, !DIExpression(), !5130)
    #dbg_value(i64 poison, !5134, !DIExpression(), !5138)
    #dbg_value(i64 poison, !5406, !DIExpression(), !5416)
    #dbg_value(i64 poison, !5135, !DIExpression(), !5417)
    #dbg_value(i64 poison, !5413, !DIExpression(), !5416)
    #dbg_value(ptr poison, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5416)
    #dbg_value(i64 poison, !5412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5416)
    #dbg_value(ptr %i.gg, !5105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_value(ptr %i.gg, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5122)
    #dbg_value(ptr %i.gg, !5123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5130)
    #dbg_value(ptr %i.gg, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(i64 poison, !5105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(i64 poison, !5118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5122)
    #dbg_value(i64 poison, !5123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5130)
    #dbg_value(i64 poison, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(ptr null, !5108, !DIExpression(), !5121)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5521
end_hunk_0
