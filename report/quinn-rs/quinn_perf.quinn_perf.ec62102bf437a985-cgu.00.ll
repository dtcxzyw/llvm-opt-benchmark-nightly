Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.00?download=true
inline.NumInlined: 1623
inline.NumDeleted: 551
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvNtCs7OITKvp9Irj_4perf6client3run0Cskigd7sy4fqX_10quinn_perf:bb.a
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskigd7sy4fqX_10quinn_perf.exit.i.i385, !dbg !34294

bb.o:                                             ; preds = %bb.p, %.loopexit.i.i.i395
    #dbg_value(ptr %.val.i.i376, !34018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34244)
    #dbg_value(ptr %.val.i.i376, !34039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34246)
    #dbg_value(ptr %.val.i.i376, !34013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34248)
    #dbg_value(i64 poison, !34018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34244)
    #dbg_value(i64 poison, !34039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34246)
    #dbg_value(i64 poison, !34013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34248)
    #dbg_value(i64 %i.ex, !34036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34244)
    #dbg_value(i64 %i.ex, !34044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34246)
    #dbg_value(i64 %i.ex, !33981, !DIExpression(), !34250)
    #dbg_value(i64 %i.ex, !34014, !DIExpression(), !34248)
    #dbg_value(i64 %i.ec, !34036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34244)
    #dbg_value(i64 %i.ec, !34044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34246)
    #dbg_value(i64 %i.ec, !33980, !DIExpression(), !34250)
  %i.ey = icmp ult i64 %i.ec, %i.ex, !dbg !34252
    #dbg_value(i64 %.val13.i.i377, !34018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34244)
    #dbg_value(i64 %.val13.i.i377, !34039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34246)
    #dbg_value(i64 %.val13.i.i377, !34013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34248)
    #dbg_value(!DIArgList(i64 %i.ec, i64 %i.ex), !34045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !34246)
    #dbg_value(!DIArgList(i64 %i.ec, i64 %i.ex), !34015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !34248)
  br i1 %i.ey, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskigd7sy4fqX_10quinn_perf.exit.i.i385, label %.lr.ph.split.i.i.i383, !dbg !34252

bb.p:                                             ; preds = %.loopexit.i.i.i395
  %i.ez = sub nuw i64 %i.ex, %i.ef, !dbg !34295   ; 2 uses
    #dbg_value(i64 %i.ez, !33967, !DIExpression(), !34284)
    #dbg_value(i64 %i.ez, !34036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34285)
    #dbg_value(i64 %i.ez, !34044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34287)
    #dbg_value(i64 %i.ez, !33981, !DIExpression(), !34289)
    #dbg_value(i64 %i.ez, !34014, !DIExpression(), !34291)
    #dbg_value(!DIArgList(ptr %.val.i.i376, i64 %i.ez), !33969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34296)
    #dbg_value(!DIArgList(ptr %.val.i.i376, i64 %i.ez), !34121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34297)
    #dbg_value(i64 %i.ef, !33969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34296)
    #dbg_value(i64 %i.ef, !34121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34297)
    #dbg_value(ptr poison, !34143, !DIExpression(), !34300)
    #dbg_value(i64 %i.ef, !33980, !DIExpression(), !34234)
    #dbg_value(i64 %i.ef, !34015, !DIExpression(), !34239)
    #dbg_value(ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, !34013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34239)
    #dbg_value(i64 4, !34013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34239)
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i.i376, i64 %i.ez, !dbg !34301
    #dbg_value(ptr %i.fa, !33969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34296)
    #dbg_value(ptr %i.fa, !34121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34297)
    #dbg_value(ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, !34129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34297)
    #dbg_value(i64 %i.ef, !34129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34297)
    #dbg_value(ptr poison, !34144, !DIExpression(), !34302)
    #dbg_value(i64 %i.ef, !34130, !DIExpression(), !34303)
    #dbg_value(i64 %i.ef, !34153, !DIExpression(), !34304)
    #dbg_value(i64 %i.ef, !34161, !DIExpression(), !34306)
    #dbg_value(ptr %i.fa, !34159, !DIExpression(), !34304)
    #dbg_value(ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, !34160, !DIExpression(), !34304)
  %bcmp.i.i.i400 = tail call i32 @bcmp(ptr nonnull %i.fa, ptr nonnull %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, i64 %i.ef), !dbg !34307, !noalias !34242
  %i.fb = icmp eq i32 %bcmp.i.i.i400, 0, !dbg !34307
  br i1 %i.fb, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i401, label %bb.o, !dbg !34308

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i401: ; preds = %bb.p
    #dbg_value(ptr %.val.i.i376, !33882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34223)
    #dbg_value(ptr %.val.i.i376, !33892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34224)
    #dbg_value(ptr %.val.i.i376, !33902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34226)
    #dbg_value(i64 %i.ez, !33884, !DIExpression(), !34309)
    #dbg_value(i64 %i.ez, !33897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34224)
    #dbg_value(i64 %i.ez, !33910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34226)
    #dbg_value(i64 %i.ex, !33886, !DIExpression(), !34309)
  %i.fc = load i64, ptr %i.cx, align 8, !dbg !34310, !alias.scope !34213, !noundef !64 ; 2 uses
    #dbg_value(i64 %i.fc, !33897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34224)
    #dbg_value(i64 %i.fc, !33910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34226)
    #dbg_value(ptr %.val.i.i376, !33911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34311)
    #dbg_value(i64 poison, !33911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34311)
  %i.fd = sub nuw i64 %i.ez, %i.fc, !dbg !34312
    #dbg_value(!DIArgList(ptr %.val.i.i376, i64 %i.fc), !33887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34313)
    #dbg_value(i64 %i.fd, !33887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34313)
  store i64 %i.ex, ptr %i.cx, align 8, !dbg !34314, !alias.scope !34213
  br label %select.unfold814, !dbg !34315

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskigd7sy4fqX_10quinn_perf.exit.i.i385: ; preds = %bb.o, %.loopexit54.i.i.i384, %bb.l
    #dbg_value(ptr %i.cx, !34171, !DIExpression(), !34316)
  store i8 1, ptr %.sroa.7.0..sroa_idx.i, align 1, !dbg !34318, !alias.scope !34319
  %i.fe = load i8, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !34322, !range !10713, !alias.scope !34319, !noundef !64
  %i.ff = trunc nuw i8 %i.fe to i1, !dbg !34322
  %.pre.i14.i.i386 = load i64, ptr %i.cx, align 8, !dbg !34323, !alias.scope !34319 ; 3 uses
  %.pre13.i.i.i388 = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !34316, !alias.scope !34319 ; 2 uses
  %.not.i15.i.i389 = icmp ne i64 %.pre13.i.i.i388, %.pre.i14.i.i386
  %or.cond.not.i.i.i390 = select i1 %i.ff, i1 true, i1 %.not.i15.i.i389, !dbg !34322
  %i.fg = sub nuw i64 %.pre13.i.i.i388, %.pre.i14.i.i386, !dbg !34322
  br i1 %or.cond.not.i.i.i390, label %select.unfold814, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, !dbg !34324

bb.q:                                             ; preds = %bb.m
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac, !dbg !34325

select.unfold814:                                 ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskigd7sy4fqX_10quinn_perf.exit.i.i385, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i401
  %.sroa.4.1.i.i393 = phi i64 [ %i.fd, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i401 ], [ %i.fg, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskigd7sy4fqX_10quinn_perf.exit.i.i385 ], !dbg !34200 ; 2 uses
  %.pn921 = phi i64 [ %i.fc, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i401 ], [ %.pre.i14.i.i386, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskigd7sy4fqX_10quinn_perf.exit.i.i385 ]
  %.sroa.0.1.i.i394 = getelementptr inbounds nuw i8, ptr %.val.i.i376, i64 %.pn921, !dbg !34223 ; 3 uses
    #dbg_value(ptr %.sroa.0.1.i.i394, !34327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34359)
    #dbg_value(i64 %.sroa.4.1.i.i393, !34327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34359)
    #dbg_value(i32 29032448, !34355, !DIExpression(), !34359)
    #dbg_declare(ptr poison, !34356, !DIExpression(), !34361)
    #dbg_value(ptr %.sroa.0.1.i.i394, !34357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34362)
    #dbg_value(i64 %.sroa.4.1.i.i393, !34357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34362)
    #dbg_declare(ptr poison, !34363, !DIExpression(), !34369)
    #dbg_value(ptr %.sroa.0.1.i.i394, !34368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34371)
    #dbg_value(ptr %.sroa.0.1.i.i394, !34372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34379)
    #dbg_value(ptr %.sroa.0.1.i.i394, !34381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34386)
    #dbg_value(ptr %.sroa.0.1.i.i394, !34388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34395)
    #dbg_value(i64 %.sroa.4.1.i.i393, !34368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34371)
    #dbg_value(i64 %.sroa.4.1.i.i393, !34372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34379)
    #dbg_value(i64 %.sroa.4.1.i.i393, !34381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34386)
    #dbg_value(i64 %.sroa.4.1.i.i393, !34388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34395)
    #dbg_value(i32 10, !34394, !DIExpression(), !34395)
    #dbg_value(ptr %.sroa.0.1.i.i394, !34397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(ptr %.sroa.0.1.i.i394, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(i64 %.sroa.4.1.i.i393, !34397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i64 %.sroa.4.1.i.i393, !34407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i32 10, !34402, !DIExpression(), !34467)
    #dbg_value(i32 10, !34470, !DIExpression(), !34477)
    #dbg_value(i8 0, !34403, !DIExpression(), !34479)
    #dbg_value(i8 0, !34475, !DIExpression(), !34477)
  switch i64 %.sroa.4.1.i.i393, label %thread-pre-split.i.i.i [
    i64 0, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit
    i64 1, label %bb.r
  ], !dbg !34480

bb.r:                                             ; preds = %select.unfold814
  %i.fi = load i8, ptr %.sroa.0.1.i.i394, align 1, !dbg !34481, !alias.scope !34482, !noundef !64 ; 2 uses
  switch i8 %i.fi, label %bb.s [
    i8 43, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit
    i8 45, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit
  ], !dbg !34481

thread-pre-split.i.i.i:                           ; preds = %select.unfold814
  %.pr.i.i.i = load i8, ptr %.sroa.0.1.i.i394, align 1, !dbg !34481, !alias.scope !34482
  br label %bb.s, !dbg !34481

bb.s:                                             ; preds = %thread-pre-split.i.i.i, %bb.r
  %i.fj = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.fi, %bb.r ], !dbg !34481
  %cond.i.i.i = icmp eq i8 %i.fj, 43, !dbg !34481 ; 2 uses
  %i.fk = sext i1 %cond.i.i.i to i64, !dbg !34481
  %.sroa.15.0.i.i.i = add nsw i64 %.sroa.4.1.i.i393, %i.fk, !dbg !34481 ; 6 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64, !dbg !34481
  %.sroa.0.0.i.i.i410 = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i394, i64 %.sroa.0.0.idx.i.i.i, !dbg !34481 ; 5 uses
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i16 0, !34413, !DIExpression(), !34489)
    #dbg_value(i16 0, !34490, !DIExpression(), !34503)
    #dbg_value(i16 0, !34505, !DIExpression(), !34515)
    #dbg_value(i16 0, !34517, !DIExpression(), !34521)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34477)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34476, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34477)
  %i.fl = icmp samesign ult i64 %.sroa.15.0.i.i.i, 5
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i16 0, !34517, !DIExpression(), !34521)
    #dbg_value(i16 0, !34517, !DIExpression(), !34521)
    #dbg_value(i16 0, !34505, !DIExpression(), !34515)
    #dbg_value(i16 0, !34505, !DIExpression(), !34515)
    #dbg_value(i16 0, !34490, !DIExpression(), !34503)
    #dbg_value(i16 0, !34490, !DIExpression(), !34503)
    #dbg_value(i16 0, !34413, !DIExpression(), !34489)
    #dbg_value(i16 0, !34413, !DIExpression(), !34489)
  br i1 %i.fl, label %.preheader.i.i.i, label %.preheader76.i.i.i.preheader, !dbg !34523

.preheader.i.i.i:                                 ; preds = %bb.s
  %.not7284.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0, !dbg !34524
  br i1 %.not7284.i.i.i, label %.loopexit.i.i.i411, label %.lr.ph.i.i.i, !dbg !34524

.preheader76.i.i.i:                               ; preds = %bb.v
    #dbg_value(ptr %i.fo, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %i.fo, !34397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(i64 %i.fp, !34407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i64 %i.fp, !34397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i16 %i.fx, !34517, !DIExpression(), !34521)
    #dbg_value(i16 %i.fx, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %i.fx, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %i.fx, !34413, !DIExpression(), !34489)
  %.not71.i.i.i = icmp eq i64 %i.fp, 0, !dbg !34525
  br i1 %.not71.i.i.i, label %.loopexit.i.i.i411, label %.preheader76.i.i.i.preheader, !dbg !34525

.loopexit.i.i.i411:                               ; preds = %.preheader76.i.i.i, %bb.w, %bb.x, %bb.y, %bb.z, %.preheader.i.i.i
  %.sroa.043.1.i.i.i = phi i16 [ %i.hb, %bb.z ], [ 0, %.preheader.i.i.i ], [ %i.gd, %bb.w ], [ %i.gl, %bb.x ], [ %i.gt, %bb.y ], [ %i.fx, %.preheader76.i.i.i ], !dbg !34526
    #dbg_value(i16 %.sroa.043.1.i.i.i, !34517, !DIExpression(), !34521)
    #dbg_value(i16 %.sroa.043.1.i.i.i, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %.sroa.043.1.i.i.i, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %.sroa.043.1.i.i.i, !34413, !DIExpression(), !34489)
  %i.fm = zext i16 %.sroa.043.1.i.i.i to i32, !dbg !34527
  %i.fn = shl nuw i32 %i.fm, 16, !dbg !34527
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, !dbg !34527

.preheader76.i.i.i.preheader:                     ; preds = %bb.s, %.preheader76.i.i.i
  %.sroa.0.1.i.i.i1063 = phi ptr [ %i.fo, %.preheader76.i.i.i ], [ %.sroa.0.0.i.i.i410, %bb.s ] ; 2 uses
  %.sroa.15.1.i.i.i1062 = phi i64 [ %i.fp, %.preheader76.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.s ]
  %.sroa.043.0.i.i.i1061 = phi i16 [ %i.fx, %.preheader76.i.i.i ], [ 0, %bb.s ]
    #dbg_value(ptr %.sroa.0.1.i.i.i1063, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(i64 %.sroa.15.1.i.i.i1062, !34407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i16 %.sroa.043.0.i.i.i1061, !34517, !DIExpression(), !34521)
    #dbg_value(ptr %.sroa.0.1.i.i.i1063, !34430, !DIExpression(), !34528)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i1063, i64 1, !dbg !34529
  %i.fp = add nsw i64 %.sroa.15.1.i.i.i1062, -1, !dbg !34529 ; 2 uses
    #dbg_value(ptr %i.fo, !34432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34528)
    #dbg_value(i64 %i.fp, !34432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34528)
    #dbg_value(i16 10, !34496, !DIExpression(), !34503)
    #dbg_value(i16 10, !34514, !DIExpression(), !34515)
  %2 = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i.i.i1061, i16 10), !dbg !34530 ; 2 uses
  %3 = extractvalue { i16, i1 } %2, 0, !dbg !34530 ; 2 uses
  %4 = extractvalue { i16, i1 } %2, 1, !dbg !34530
    #dbg_value(i16 %3, !34497, !DIExpression(), !34531)
    #dbg_value(i1 %4, !34499, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !34531)
    #dbg_value(i1 %4, !34532, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !34539)
  %i.fq = load i8, ptr %.sroa.0.1.i.i.i1063, align 1, !dbg !34541, !alias.scope !34482, !noundef !64 ; 2 uses
  br i1 %4, label %bb.u, label %bb.t, !dbg !34542, !prof !10700

bb.t:                                             ; preds = %.preheader76.i.i.i.preheader
    #dbg_value(i16 %3, !34433, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !34543)
    #dbg_value(i16 1, !34433, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !34543)
  %i.fr = zext i8 %i.fq to i32, !dbg !34544
    #dbg_value(i32 %i.fr, !34545, !DIExpression(), !34557)
    #dbg_value(i32 10, !34554, !DIExpression(), !34557)
    #dbg_value(i32 65, !34559, !DIExpression(), !34566)
    #dbg_value(i32 48, !34559, !DIExpression(), !34568)
    #dbg_value(i32 %i.fr, !34565, !DIExpression(), !34568)
  %i.fs = add nsw i32 %i.fr, -48, !dbg !34570     ; 2 uses
    #dbg_value(i32 %i.fs, !34555, !DIExpression(), !34571)
  %i.ft = icmp ult i32 %i.fs, 10, !dbg !34572
  br i1 %i.ft, label %bb.v, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, !dbg !34573

bb.u:                                             ; preds = %.preheader76.i.i.i.preheader
    #dbg_value(i16 poison, !34433, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !34543)
    #dbg_value(i16 poison, !34433, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !34543)
    #dbg_value(i8 %i.fq, !34545, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !34574)
    #dbg_value(i32 10, !34554, !DIExpression(), !34574)
    #dbg_value(i32 65, !34559, !DIExpression(), !34576)
    #dbg_value(i32 48, !34559, !DIExpression(), !34578)
    #dbg_value(i8 %i.fq, !34565, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !34578)
    #dbg_value(i8 %i.fq, !34555, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !34580)
  %i.fu = add i8 %i.fq, -48, !dbg !34581
  %i.fv = icmp ult i8 %i.fu, 10, !dbg !34581
  %spec.select.i.i.i = select i1 %i.fv, i32 513, i32 257, !dbg !34573
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, !dbg !34573

bb.v:                                             ; preds = %bb.t
  %i.fw = trunc nuw nsw i32 %i.fs to i16, !dbg !34582
    #dbg_value(i16 %i.fw, !34446, !DIExpression(), !34583)
    #dbg_value(i16 %3, !34413, !DIExpression(), !34489)
    #dbg_value(i16 %3, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %3, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %3, !34517, !DIExpression(), !34521)
    #dbg_value(i16 %i.fw, !34520, !DIExpression(), !34521)
  %i.fx = add i16 %3, %i.fw, !dbg !34584          ; 3 uses
  %i.fy = icmp ult i16 %i.fx, %3, !dbg !34584
    #dbg_value(i1 %i.fy, !34532, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !34585)
  br i1 %i.fy, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, label %.preheader76.i.i.i, !dbg !34587, !prof !10700

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34415, !DIExpression(), !34588)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34418, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34418, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34588)
    #dbg_value(i16 0, !34413, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34489)
    #dbg_value(i16 0, !34490, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34503)
    #dbg_value(i16 0, !34505, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34515)
    #dbg_value(i16 0, !34517, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34521)
  %i.fz = load i8, ptr %.sroa.0.0.i.i.i410, align 1, !dbg !34589, !alias.scope !34482, !noundef !64
  %i.ga = zext i8 %i.fz to i32, !dbg !34590
    #dbg_value(i32 %i.ga, !34545, !DIExpression(), !34591)
    #dbg_value(i32 10, !34554, !DIExpression(), !34591)
    #dbg_value(i32 65, !34559, !DIExpression(), !34593)
    #dbg_value(i32 48, !34559, !DIExpression(), !34595)
    #dbg_value(i32 %i.ga, !34565, !DIExpression(), !34595)
  %i.gb = add nsw i32 %i.ga, -48, !dbg !34597     ; 2 uses
    #dbg_value(i32 %i.gb, !34555, !DIExpression(), !34598)
  %i.gc = icmp ult i32 %i.gb, 10, !dbg !34599
  br i1 %i.gc, label %bb.w, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, !dbg !34600

bb.w:                                             ; preds = %.lr.ph.i.i.i
    #dbg_value(i16 0, !34413, !DIExpression(), !34489)
    #dbg_value(i16 0, !34490, !DIExpression(), !34503)
    #dbg_value(i16 0, !34505, !DIExpression(), !34515)
    #dbg_value(i16 0, !34517, !DIExpression(), !34521)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34418, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34588)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34418, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(i32 %i.gb, !34419, !DIExpression(), !34601)
  %i.gd = trunc nuw nsw i32 %i.gb to i16, !dbg !34602 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34407, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34397, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34407, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34397, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i16 %i.gd, !34517, !DIExpression(), !34521)
    #dbg_value(i16 %i.gd, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %i.gd, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %i.gd, !34413, !DIExpression(), !34489)
  %.not72.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 1, !dbg !34524
  br i1 %.not72.i.i.i, label %.loopexit.i.i.i411, label %.lr.ph.i.i.i.1, !dbg !34524

.lr.ph.i.i.i.1:                                   ; preds = %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i410, i64 1, !dbg !34603
    #dbg_value(ptr %i.ge, !34418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(ptr %i.ge, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %i.ge, !34397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(ptr %i.ge, !34415, !DIExpression(), !34588)
    #dbg_value(ptr %i.ge, !34418, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34418, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34588)
    #dbg_value(i16 %i.gd, !34413, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34489)
    #dbg_value(i16 %i.gd, !34490, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34503)
    #dbg_value(i16 %i.gd, !34505, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34515)
    #dbg_value(i16 %i.gd, !34517, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34521)
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !34589, !alias.scope !34482, !noundef !64
  %i.gg = zext i8 %i.gf to i32, !dbg !34590
    #dbg_value(i32 %i.gg, !34545, !DIExpression(), !34591)
    #dbg_value(i32 10, !34554, !DIExpression(), !34591)
    #dbg_value(i32 65, !34559, !DIExpression(), !34593)
    #dbg_value(i32 48, !34559, !DIExpression(), !34595)
    #dbg_value(i32 %i.gg, !34565, !DIExpression(), !34595)
  %i.gh = add nsw i32 %i.gg, -48, !dbg !34597     ; 2 uses
    #dbg_value(i32 %i.gh, !34555, !DIExpression(), !34598)
  %i.gi = icmp ult i32 %i.gh, 10, !dbg !34599
  br i1 %i.gi, label %bb.x, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, !dbg !34600

bb.x:                                             ; preds = %.lr.ph.i.i.i.1
  %i.gj = mul nuw nsw i16 %i.gd, 10, !dbg !34604
    #dbg_value(i16 %i.gj, !34413, !DIExpression(), !34489)
    #dbg_value(i16 %i.gj, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %i.gj, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %i.gj, !34517, !DIExpression(), !34521)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34418, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34588)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34418, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(i32 %i.gh, !34419, !DIExpression(), !34601)
  %i.gk = trunc nuw nsw i32 %i.gh to i16, !dbg !34602
  %i.gl = add nuw nsw i16 %i.gj, %i.gk, !dbg !34605 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34407, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34397, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34407, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34397, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i16 %i.gl, !34517, !DIExpression(), !34521)
    #dbg_value(i16 %i.gl, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %i.gl, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %i.gl, !34413, !DIExpression(), !34489)
  %.not72.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i, 2, !dbg !34524
  br i1 %.not72.i.i.i.1, label %.loopexit.i.i.i411, label %.lr.ph.i.i.i.2, !dbg !34524

.lr.ph.i.i.i.2:                                   ; preds = %bb.x
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i410, i64 2, !dbg !34603
    #dbg_value(ptr %i.gm, !34418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(ptr %i.gm, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %i.gm, !34397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(ptr %i.gm, !34415, !DIExpression(), !34588)
    #dbg_value(ptr %i.gm, !34418, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34418, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34588)
    #dbg_value(i16 %i.gl, !34413, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34489)
    #dbg_value(i16 %i.gl, !34490, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34503)
    #dbg_value(i16 %i.gl, !34505, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34515)
    #dbg_value(i16 %i.gl, !34517, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34521)
  %i.gn = load i8, ptr %i.gm, align 1, !dbg !34589, !alias.scope !34482, !noundef !64
  %i.go = zext i8 %i.gn to i32, !dbg !34590
    #dbg_value(i32 %i.go, !34545, !DIExpression(), !34591)
    #dbg_value(i32 10, !34554, !DIExpression(), !34591)
    #dbg_value(i32 65, !34559, !DIExpression(), !34593)
    #dbg_value(i32 48, !34559, !DIExpression(), !34595)
    #dbg_value(i32 %i.go, !34565, !DIExpression(), !34595)
  %i.gp = add nsw i32 %i.go, -48, !dbg !34597     ; 2 uses
    #dbg_value(i32 %i.gp, !34555, !DIExpression(), !34598)
  %i.gq = icmp ult i32 %i.gp, 10, !dbg !34599
  br i1 %i.gq, label %bb.y, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, !dbg !34600

bb.y:                                             ; preds = %.lr.ph.i.i.i.2
  %i.gr = mul nuw i16 %i.gl, 10, !dbg !34604
    #dbg_value(i16 %i.gr, !34413, !DIExpression(), !34489)
    #dbg_value(i16 %i.gr, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %i.gr, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %i.gr, !34517, !DIExpression(), !34521)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34418, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34588)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34418, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(i32 %i.gp, !34419, !DIExpression(), !34601)
  %i.gs = trunc nuw nsw i32 %i.gp to i16, !dbg !34602
  %i.gt = add nuw nsw i16 %i.gr, %i.gs, !dbg !34605 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34407, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34397, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34407, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34397, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i16 %i.gt, !34517, !DIExpression(), !34521)
    #dbg_value(i16 %i.gt, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %i.gt, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %i.gt, !34413, !DIExpression(), !34489)
  %.not72.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i, 3, !dbg !34524
  br i1 %.not72.i.i.i.2, label %.loopexit.i.i.i411, label %.lr.ph.i.i.i.3, !dbg !34524

.lr.ph.i.i.i.3:                                   ; preds = %bb.y
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i410, i64 3, !dbg !34603
    #dbg_value(ptr %i.gu, !34418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(ptr %i.gu, !34407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %i.gu, !34397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(ptr %i.gu, !34415, !DIExpression(), !34588)
    #dbg_value(ptr %i.gu, !34418, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34418, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34588)
    #dbg_value(i16 %i.gt, !34413, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34489)
    #dbg_value(i16 %i.gt, !34490, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34503)
    #dbg_value(i16 %i.gt, !34505, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34515)
    #dbg_value(i16 %i.gt, !34517, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !34521)
  %i.gv = load i8, ptr %i.gu, align 1, !dbg !34589, !alias.scope !34482, !noundef !64
  %i.gw = zext i8 %i.gv to i32, !dbg !34590
    #dbg_value(i32 %i.gw, !34545, !DIExpression(), !34591)
    #dbg_value(i32 10, !34554, !DIExpression(), !34591)
    #dbg_value(i32 65, !34559, !DIExpression(), !34593)
    #dbg_value(i32 48, !34559, !DIExpression(), !34595)
    #dbg_value(i32 %i.gw, !34565, !DIExpression(), !34595)
  %i.gx = add nsw i32 %i.gw, -48, !dbg !34597     ; 2 uses
    #dbg_value(i32 %i.gx, !34555, !DIExpression(), !34598)
  %i.gy = icmp ult i32 %i.gx, 10, !dbg !34599
  br i1 %i.gy, label %bb.z, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit, !dbg !34600

bb.z:                                             ; preds = %.lr.ph.i.i.i.3
  %i.gz = mul i16 %i.gt, 10, !dbg !34604
    #dbg_value(i16 %i.gz, !34413, !DIExpression(), !34489)
    #dbg_value(i16 %i.gz, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %i.gz, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %i.gz, !34517, !DIExpression(), !34521)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34418, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34588)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34418, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34588)
    #dbg_value(i32 %i.gx, !34419, !DIExpression(), !34601)
  %i.ha = trunc nuw nsw i32 %i.gx to i16, !dbg !34602
  %i.hb = add i16 %i.gz, %i.ha, !dbg !34605
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34407, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34469)
    #dbg_value(ptr %.sroa.0.0.i.i.i410, !34397, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !34467)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34407, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34469)
    #dbg_value(i64 %.sroa.15.0.i.i.i, !34397, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !34467)
    #dbg_value(i16 %i.hb, !34517, !DIExpression(), !34521)
    #dbg_value(i16 %i.hb, !34505, !DIExpression(), !34515)
    #dbg_value(i16 %i.hb, !34490, !DIExpression(), !34503)
    #dbg_value(i16 %i.hb, !34413, !DIExpression(), !34489)
  br label %.loopexit.i.i.i411, !dbg !34524

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.v, %bb.t, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %select.unfold.thread, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskigd7sy4fqX_10quinn_perf.exit.i.i385, %select.unfold, %bb.u, %.loopexit.i.i.i411, %bb.r, %bb.r, %select.unfold814
  %.sroa.06.0.i = phi i32 [ 29032448, %select.unfold ], [ 29032448, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskigd7sy4fqX_10quinn_perf.exit.i.i385 ], [ %i.fn, %.loopexit.i.i.i411 ], [ 257, %bb.r ], [ 1, %select.unfold814 ], [ 257, %bb.r ], [ %spec.select.i.i.i, %bb.u ], [ 29032448, %select.unfold.thread ], [ 257, %.lr.ph.i.i.i ], [ 257, %.lr.ph.i.i.i.3 ], [ 257, %.lr.ph.i.i.i.2 ], [ 257, %.lr.ph.i.i.i.1 ], [ 257, %bb.t ], [ 513, %bb.v ], !dbg !34359
  invoke void @_RINvXNtCsbHiBx3jRrxb_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResulttNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContexttB1b_E7contextReECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cn, i32 %.sroa.06.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 12)
          to label %bb.ab unwind label %bb.aa, !dbg !34606

bb.aa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE6map_orINtNtB5_6result6ResulttNtNtNtB5_3num5error13ParseIntErrorENCNCNvNtCs7OITKvp9Irj_4perf6client3run00ECskigd7sy4fqX_10quinn_perf.exit
    #dbg_declare(ptr %i.cn, !34607, !DIExpression(), !34645)
  %i.hd = load i16, ptr %i.cn, align 8, !dbg !34647, !range !34648, !alias.scope !34649, !noalias !34652, !noundef !64
  %i.he = trunc nuw i16 %i.hd to i1, !dbg !34654
  br i1 %i.he, label %bb.ai, label %bb.ad, !dbg !34654

bb.ac:                                            ; preds = %bb.aa, %bb.q
  %.pn83 = phi { ptr, i32 } [ %i.fh, %bb.q ], [ %i.hc, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !34655
  br label %bb.am, !dbg !34325
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCs7OITKvp9Irj_4perf12noprotectionNtB5_24NoProtectionClientConfigNtNtCshovLROGBtMy_11quinn_proto6crypto12ClientConfig13start_session
declare void @_RNvXs3_NtCs7OITKvp9Irj_4perf12noprotectionNtB5_24NoProtectionClientConfigNtNtCshovLROGBtMy_11quinn_proto6crypto12ClientConfig13start_session(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtCshovLROGBtMy_11quinn_proto6configNtB5_12ClientConfig3new(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs8_NtCshovLROGBtMy_11quinn_proto6configNtB5_12ClientConfig16transport_config(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsB8MOEg02Qk_5quinn8endpointNtB2_8Endpoint12connect_with(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsB8MOEg02Qk_5quinn10connectionNtB4_10ConnectingNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNtCsbHiBx3jRrxb_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEINtB5_7ContextB1a_B1V_E7contextReECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs7OITKvp9Irj_4perf5statsNtB2_5StatsNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([544 x i8]) align 8 captures(none) dereferenceable(544)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsar2VadbF9t7_5tokio4time5sleep5sleep(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvNtCs7OITKvp9Irj_4perf6client3run0s5_0ENtNtB7_6future6Future4pollCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsB8MOEg02Qk_5quinn10connectionNtB5_10Connection5close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCs7OITKvp9Irj_4perf5statsNtB4_5Stats10print_json(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(544), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsB8MOEg02Qk_5quinn11send_streamNtB2_10SendStream6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs0_NtCs7OITKvp9Irj_4perf5statsNtB5_15OpenStreamStats10new_sender(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvXNtCsbHiBx3jRrxb_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEINtB5_7ContextuB1b_E7contextReECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsB8MOEg02Qk_5quinn10connectionNtB5_10Connection8open_uni(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCsB8MOEg02Qk_5quinn10connectionNtB5_7OpenUniNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtCseEeXhZwqjpo_16rustls_pki_types13PrivateKeyDerNtNtB5_3pem9PemObject13from_pem_fileRNtNtCsG258MDvU3F_3std4path7PathBufECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCsbHiBx3jRrxb_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultNtCseEeXhZwqjpo_16rustls_pki_types13PrivateKeyDerNtNtB1c_3pem5ErrorEINtB5_7ContextB1a_B1X_E7contextReECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerNtNtB5_3pem9PemObject13pem_file_iterRNtNtCsG258MDvU3F_3std4path7PathBufECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCsbHiBx3jRrxb_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultINtNtCseEeXhZwqjpo_16rustls_pki_types3pem8ReadIterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtB1f_14CertificateDerENtB1d_5ErrorEINtB5_7ContextB1a_B3O_E7contextReECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCsbHiBx3jRrxb_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerENtNtB1J_3pem5ErrorEINtB5_7ContextB1a_B2w_E7contextReECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCscbFFjjIlwRm_5rcgen27generate_simple_self_signedINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBU_6string6StringEECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([320 x i8]) align 8 captures(none) dereferenceable(320), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCscbFFjjIlwRm_5rcgen8key_pairNtB5_7KeyPair13serialize_der(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsjx2R6KBUtVL_6rustls6server11server_connNtB4_12ServerConfig21builder_with_provider(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjx2R6KBUtVL_6rustls7builderINtB5_13ConfigBuilderNtNtNtB7_6server11server_conn12ServerConfigNtB5_13WantsVersionsE22with_protocol_versionsCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsjx2R6KBUtVL_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE19with_no_client_auth(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsjx2R6KBUtVL_6rustls6server7builderINtNtB8_7builder13ConfigBuilderNtNtB6_11server_conn12ServerConfigNtB4_15WantsServerCertE16with_single_cert(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs9_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_16QuicServerConfigINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCsjx2R6KBUtVL_6rustls6server11server_conn12ServerConfigE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_16QuicServerConfigNtB7_12ServerConfig12initial_keys(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(21)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_16QuicServerConfigNtB7_12ServerConfig9retry_tag(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 1 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(21), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsb_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_16QuicServerConfigNtB7_12ServerConfig13start_session(ptr noundef nonnull, i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs7OITKvp9Irj_4perf12noprotectionNtB5_24NoProtectionServerConfigNtNtCshovLROGBtMy_11quinn_proto6crypto12ServerConfig12initial_keys(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(21)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs7OITKvp9Irj_4perf12noprotectionNtB5_24NoProtectionServerConfigNtNtCshovLROGBtMy_11quinn_proto6crypto12ServerConfig9retry_tag(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 1 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(21), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtCs7OITKvp9Irj_4perf12noprotectionNtB5_24NoProtectionServerConfigNtNtCshovLROGBtMy_11quinn_proto6crypto12ServerConfig13start_session(ptr noundef nonnull, i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCshovLROGBtMy_11quinn_proto6configNtB5_12ServerConfig11with_crypto(ptr dead_on_unwind noalias nofree noundef writable sret([184 x i8]) align 8 captures(address) dereferenceable(184), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtCshovLROGBtMy_11quinn_proto6configNtB5_12ServerConfig16transport_config(ptr noalias nofree noundef align 8 dereferenceable(184), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCsbHiBx3jRrxb_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsB8MOEg02Qk_5quinn8endpoint8EndpointNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1P_E7contextReECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsB8MOEg02Qk_5quinn8endpointNtB2_8Endpoint10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCsB8MOEg02Qk_5quinn8endpointNtB5_6AcceptNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([384 x i8]) align 8 captures(none) dereferenceable(384), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCsar2VadbF9t7_5tokio4task5spawn5spawnNCNCNvNtCs7OITKvp9Irj_4perf6server3run00ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1184), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsB8MOEg02Qk_5quinn8endpointNtB2_8Endpoint6accept(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCsB8MOEg02Qk_5quinn8incomingNtB5_8IncomingNtNtNtCskKLDkoKarTP_4core6future11into_future10IntoFuture11into_future(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(384)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsB8MOEg02Qk_5quinn8incomingNtB5_14IncomingFutureNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsB8MOEg02Qk_5quinn10connectionNtB5_10Connection14remote_address(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 4 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsar2VadbF9t7_5tokio6future10maybe_done10maybe_doneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0ECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsar2VadbF9t7_5tokio6future10maybe_done10maybe_doneNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi0ECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsar2VadbF9t7_5tokio6future10maybe_done10maybe_doneNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0ECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvNtCs7OITKvp9Irj_4perf6server6handle0s_0ENtNtB7_6future6Future4pollCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvXNtCsbHiBx3jRrxb_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorEINtB5_7ContextuB1b_E7contextReECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdIYt8sV98we_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdIYt8sV98we_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn8endpoint5StateEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyENtNtCskKLDkoKarTP_4core7default7Default7defaultCskigd7sy4fqX_10quinn_perf() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14insert_no_growCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE11rustc_entryCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.umul.with.overflow.i16(i16, i16) #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs14_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcNtNtCsjx2R6KBUtVL_6rustls6crypto14CryptoProviderEINtNtCskKLDkoKarTP_4core7convert4FromBH_E4fromCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjx2R6KBUtVL_6rustls6suites20SupportedCipherSuiteEINtNtCskKLDkoKarTP_4core7convert4FromRSBF_E4fromCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCscbFFjjIlwRm_5rcgen5error17InvalidAsn1StringNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_NtNtCs7OITKvp9Irj_4perf5stats11StreamStatsEEEENtNtCskKLDkoKarTP_4core7default7Default7defaultCskigd7sy4fqX_10quinn_perf() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjx2R6KBUtVL_6rustls6crypto14CryptoProviderENtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputINtNtB7_5boxed3BoxDNtNtCshovLROGBtMy_11quinn_proto13cid_generator21ConnectionIdGeneratorEL_ENtNtBO_6marker4SendNtB33_4SyncEL_E9drop_slowB1U_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtCshovLROGBtMy_11quinn_proto6shared12ConnectionIdNtNtBO_6marker4SendNtB2p_4SyncEL_E9drop_slowB1B_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto10congestion17ControllerFactoryNtNtCskKLDkoKarTP_4core6marker4SendNtB1J_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto5token10TokenStoreEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto5token8TokenLogEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto6config10TimeSourceEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto6crypto12ClientConfigEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto6crypto12ServerConfigEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto6crypto17HandshakeTokenKeyEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto6crypto7HmacKeyEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsjx2R6KBUtVL_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsjx2R6KBUtVL_6rustls6verify18ClientCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsjx2R6KBUtVL_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsjx2R6KBUtVL_6rustls7key_log6KeyLogEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCsjx2R6KBUtVL_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsjx2R6KBUtVL_6rustls6client11client_conn18ClientSessionStoreEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsjx2R6KBUtVL_6rustls6client11client_conn18ResolvesClientCertEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsjx2R6KBUtVL_6rustls6server11server_conn15ProducesTicketsEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsjx2R6KBUtVL_6rustls6server11server_conn18ResolvesServerCertEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsjx2R6KBUtVL_6rustls6server11server_conn20StoresServerSessionsEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_NtNtCs7OITKvp9Irj_4perf5stats11StreamStatsEEEE9drop_slowB1S_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCs7IHJO2Xhr2x_4qlog8streamer12QlogStreamerEE9drop_slowCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf5stats11StreamStatsE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn8endpoint13EndpointInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsjx2R6KBUtVL_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsjx2R6KBUtVL_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto6config9transport15TransportConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls16QuicClientConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls16QuicServerConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjx2R6KBUtVL_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjx2R6KBUtVL_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error25EncryptedClientHelloErrorNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error14InvalidMessageNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error16PeerIncompatibleNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error14PeerMisbehavedNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums16AlertDescriptionNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error16CertificateErrorNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error23CertRevocationListErrorNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error16InconsistentKeysNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1
end_hunk_1
