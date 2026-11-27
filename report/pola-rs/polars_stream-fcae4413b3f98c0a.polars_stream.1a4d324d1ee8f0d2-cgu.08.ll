Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.08?download=true
inline.NumInlined: 6106
inline.NumDeleted: 2143
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3rle21rle_lengths_helper_caNtNtCs1LHh8CLbVkQ_11polars_core9datatypes16BinaryOffsetTypeECs2g09Ig8GZd6_13polars_stream:bb.a
  %i.cf = load i8, ptr %i.ce, align 1, !dbg !47413, !noundef !3603
  %i.cg = trunc i64 %i.cb to i8, !dbg !47414
  %i.ch = and i8 %i.cg, 7, !dbg !47414
  %i.ci = xor i8 %i.cf, -1, !dbg !47415
  %i.cj = lshr i8 %i.ci, %i.ch, !dbg !47415
  %i.ck = trunc i8 %i.cj to i1, !dbg !47416
  br i1 %i.ck, label %.lr.ph, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtNtB7_12static_array11StaticArray13get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit, !dbg !47417

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtNtB7_12static_array11StaticArray13get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes16BinaryOffsetTypeE22index_to_chunked_indexCs2g09Ig8GZd6_13polars_stream.exit64, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array17is_null_uncheckedCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 40, !dbg !47418
  %i.cm = load ptr, ptr %i.cl, align 8, !dbg !47418, !noundef !3603 ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.cm, align 8, !dbg !47419, !noundef !3603 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !47420
  %.val.i.i.i = load i64, ptr %i.cn, align 8, !dbg !47421, !noundef !3603
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 64, !dbg !47422
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !47422, !noundef !3603 ; 2 uses
  %i.cq = sub nuw i64 %.val.i.i.i, %.val1.i.i.i, !dbg !47423
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.val1.i.i.i, !dbg !47424
  %.not31 = icmp eq ptr %i.cp, null, !dbg !47425  ; 2 uses
  %spec.select188 = select i1 %.not31, i64 undef, i64 %i.cq, !dbg !47426
  %spec.select189 = select i1 %.not31, ptr null, ptr %i.cr, !dbg !47426
  br label %.lr.ph, !dbg !47426

bb.l:                                             ; preds = %.lr.ph248, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread
  %.sroa.014.0247 = phi i64 [ 0, %.lr.ph248 ], [ %.sroa.014.1.lcssa, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %.sroa.017.0246 = phi i32 [ 0, %.lr.ph248 ], [ %.sroa.017.1.lcssa, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %.sroa.019.0245 = phi ptr [ %i.ai, %.lr.ph248 ], [ %i.cs, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %.sroa.077.0244 = phi ptr [ %i.as, %.lr.ph248 ], [ %.sroa.077.1.lcssa, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %.sroa.578.0243 = phi i64 [ %i.au, %.lr.ph248 ], [ %.sroa.578.1.lcssa, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.019.0245, i64 16, !dbg !47427 ; 2 uses
  %i.ct = load ptr, ptr %.sroa.019.0245, align 8, !dbg !47428, !nonnull !3603, !noundef !3603 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48, !dbg !47429 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !47429, !noalias !47294, !noundef !3603
  %i.cw = add i64 %i.cv, -1, !dbg !47430          ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0, !dbg !47431
  br i1 %i.cx, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.lr.ph, !dbg !47431

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.lr.ph: ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !47431

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.lr.ph, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread
  %.sroa.014.1234 = phi i64 [ %.sroa.014.0247, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.lr.ph ], [ %i.dp, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %.sroa.017.1233 = phi i32 [ %.sroa.017.0246, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.lr.ph ], [ %i.do, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %.sroa.077.1232 = phi ptr [ %.sroa.077.0244, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.lr.ph ], [ %i.di, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 3 uses
  %.sroa.578.1231 = phi i64 [ %.sroa.578.0243, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.lr.ph ], [ %i.dh, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 3 uses
  %.sroa.483.0230 = phi i64 [ 0, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.lr.ph ], [ %i.da, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %i.da = add nuw i64 %.sroa.483.0230, 1, !dbg !47432 ; 4 uses
  %i.db = load ptr, ptr %i.cy, align 8, !dbg !47433, !noalias !47295, !noundef !3603 ; 2 uses
  %i.dc = load i64, ptr %i.cu, align 8, !dbg !47434, !noalias !47295, !noundef !3603
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.sroa.483.0230, !dbg !47435
  %.val1.i.i.i65 = load i64, ptr %i.dd, align 8, !dbg !47436, !noalias !47295, !noundef !3603 ; 2 uses
  %i.de = icmp ult i64 %i.da, %i.dc, !dbg !47437
  tail call void @llvm.assume(i1 %i.de), !dbg !47438
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da, !dbg !47439
  %.val.i.i.i66 = load i64, ptr %i.df, align 8, !dbg !47440, !noalias !47295, !noundef !3603
  %i.dg = load ptr, ptr %i.cz, align 8, !dbg !47441, !noalias !47295, !noundef !3603 ; 2 uses
  %i.dh = sub nuw i64 %.val.i.i.i66, %.val1.i.i.i65, !dbg !47442 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.val1.i.i.i65, !dbg !47443 ; 3 uses
  %.not30 = icmp eq ptr %i.dg, null, !dbg !47444
  br i1 %.not30, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.m, !dbg !47444

bb.m:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.077.1232) ]
  %i.dj = icmp eq i64 %i.dh, %.sroa.578.1231, !dbg !47445
  br i1 %i.dj, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !47445

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.m
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.di, ptr nonnull readonly %.sroa.077.1232, i64 range(i64 0, -9223372036854775808) %.sroa.578.1231), !dbg !47446, !alias.scope !47296
  %bcmp.i.i.i.i.fr = freeze i32 %bcmp.i.i.i.i, !dbg !47446
  %i.dk = icmp ne i32 %bcmp.i.i.i.i.fr, 0, !dbg !47446 ; 2 uses
  %i.dl = add i32 %.sroa.017.1233, 1, !dbg !47447
  %i.dm = select i1 %i.dk, i32 1, i32 %i.dl, !dbg !47448
  %i.dn = zext i1 %i.dk to i64, !dbg !47449
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !47448

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit, %bb.m
  %.sroa.0.0.i.i.i102 = phi i64 [ %i.dn, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit ], [ 1, %bb.m ]
  %i.do = phi i32 [ %i.dm, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit ], [ 1, %bb.m ], !dbg !47448 ; 3 uses
  %i.dp = add i64 %.sroa.0.0.i.i.i102, %.sroa.014.1234, !dbg !47450 ; 3 uses
  %i.dq = load ptr, ptr %i.av, align 8, !dbg !47451, !nonnull !3603, !noundef !3603
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dp, !dbg !47452
  store i32 %i.do, ptr %i.dr, align 4, !dbg !47453
  %i.ds = icmp eq i64 %i.da, %i.cw, !dbg !47431
  br i1 %i.ds, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !47431

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread, %bb.l
  %.sroa.578.1.lcssa = phi i64 [ %.sroa.578.0243, %bb.l ], [ %i.dh, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.578.1231, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !47234
  %.sroa.077.1.lcssa = phi ptr [ %.sroa.077.0244, %bb.l ], [ %i.di, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.077.1232, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !47234
  %.sroa.017.1.lcssa = phi i32 [ %.sroa.017.0246, %bb.l ], [ %i.do, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.017.1233, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !47454
  %.sroa.014.1.lcssa = phi i64 [ %.sroa.014.0247, %bb.l ], [ %i.dp, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2neCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.014.1234, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !47455 ; 2 uses
  %i.dt = icmp eq ptr %i.cs, %i.an, !dbg !47456
  br i1 %i.dt, label %.sink.split, label %bb.l, !dbg !47381

.lr.ph:                                           ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array17is_null_uncheckedCs2g09Ig8GZd6_13polars_stream.exit.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtNtB7_12static_array11StaticArray13get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.6.0 = phi i64 [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array17is_null_uncheckedCs2g09Ig8GZd6_13polars_stream.exit.i ], [ %spec.select188, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtNtB7_12static_array11StaticArray13get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !47457
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array17is_null_uncheckedCs2g09Ig8GZd6_13polars_stream.exit.i ], [ %spec.select189, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtNtB7_12static_array11StaticArray13get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !47458 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bq, 4, !dbg !47459
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx, !dbg !47459
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.n, !dbg !47342

bb.n:                                             ; preds = %.lr.ph, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.dy = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %i.hg, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 4 uses
  %i.dz = phi i64 [ undef, %.lr.ph ], [ %i.hf, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 3 uses
  %.sroa.03.0228 = phi i64 [ 0, %.lr.ph ], [ %.sroa.03.1196, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 4 uses
  %.sroa.06.0227 = phi i32 [ 0, %.lr.ph ], [ %.sroa.06.1198, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 4 uses
  %.sroa.08.0226 = phi ptr [ %i.bp, %.lr.ph ], [ %i.ea, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 2 uses
  %.sroa.0.1225 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.2200, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 5 uses
  %.sroa.6.1224 = phi i64 [ %.sroa.6.0, %.lr.ph ], [ %.sroa.6.2202, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.08.0226, i64 16, !dbg !47460 ; 2 uses
  %i.eb = load ptr, ptr %.sroa.08.0226, align 8, !dbg !47461, !nonnull !3603, !noundef !3603
  call void @_RNvXs4_NtNtCs8774dFTUdNv_12polars_arrow5array12static_arrayINtNtB7_6binary11BinaryArrayxENtB5_11StaticArray4iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.eb), !dbg !47462
  %.sroa.070.0.copyload = load ptr, ptr %i.b, align 8, !dbg !47463 ; 4 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !47463 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !47463 ; 6 uses
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !47463 ; 4 uses
  %.not.i = icmp eq ptr %.sroa.070.0.copyload, null
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.070.0.copyload, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.070.0.copyload, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.070.0.copyload, i64 64
  br i1 %.not.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.n
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 8, !dbg !47463
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !47463
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !47463
  br label %.split, !dbg !47464

.split.us:                                        ; preds = %bb.n
  %i.ef = icmp eq i64 %.sroa.7.0.copyload, %.sroa.10.0.copyload, !dbg !47465
  br i1 %i.ef, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph, !dbg !47465

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph: ; preds = %.split.us
  %i.eg = inttoptr i64 %.sroa.4.0.copyload to ptr ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 64 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 40 ; 2 uses
  %i.ek = add i64 %.sroa.7.0.copyload, 1, !dbg !47466 ; 4 uses
  %i.el = load i64, ptr %i.eh, align 8, !dbg !47467, !noalias !47324, !noundef !3603
  %i.em = icmp ult i64 %i.ek, %i.el, !dbg !47468
  call void @llvm.assume(i1 %i.em), !dbg !47469
  %i.en = load ptr, ptr %i.ei, align 8, !dbg !47470, !noalias !47324, !noundef !3603 ; 2 uses
  %.not3.i.us284 = icmp eq ptr %i.en, null, !dbg !47471
  br i1 %.not3.i.us284, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %.thread166.us.lr.ph, !dbg !47472

.thread166.us.lr.ph:                              ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph
  %i.eo = icmp eq ptr %i.dy, null, !dbg !47473
  %i.ep = load ptr, ptr %i.ej, align 8, !dbg !47474, !noalias !47324, !noundef !3603 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.7.0.copyload, !dbg !47475
  %.val1.i.i.i.i.us.peel = load i64, ptr %i.eq, align 8, !dbg !47476, !noalias !47324, !noundef !3603 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 %.val1.i.i.i.i.us.peel, !dbg !47477 ; 6 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ek, !dbg !47478
  %.val.i.i.i.i.us.peel = load i64, ptr %i.es, align 8, !dbg !47479, !noalias !47324, !noundef !3603
  %i.et = sub nuw i64 %.val.i.i.i.i.us.peel, %.val1.i.i.i.i.us.peel, !dbg !47480 ; 6 uses
  br i1 %i.eo, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel, label %bb.o, !dbg !47481

bb.o:                                             ; preds = %.thread166.us.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1225) ]
  %i.eu = icmp eq i64 %i.et, %.sroa.6.1224, !dbg !47482
  br i1 %i.eu, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.peel, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel, !dbg !47482

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.peel: ; preds = %bb.o
  %bcmp.i.i.i.us.peel = call i32 @bcmp(ptr nonnull readonly %i.er, ptr nonnull readonly %.sroa.0.1225, i64 range(i64 0, -9223372036854775808) %.sroa.6.1224), !dbg !47483, !alias.scope !47327
  %bcmp.i.i.i.us.fr.peel = freeze i32 %bcmp.i.i.i.us.peel, !dbg !47483
  %i.ev = icmp ne i32 %bcmp.i.i.i.us.fr.peel, 0, !dbg !47483 ; 2 uses
  %i.ew = add i32 %.sroa.06.0227, 1, !dbg !47484
  %spec.select.peel = select i1 %i.ev, i32 1, i32 %i.ew, !dbg !47485
  %i.ex = zext i1 %i.ev to i64, !dbg !47486
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel, !dbg !47485

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel: ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.peel, %bb.o, %.thread166.us.lr.ph
  %i.ey = phi i64 [ 1, %bb.o ], [ %i.ex, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.peel ], [ 1, %.thread166.us.lr.ph ]
  %i.ez = phi i32 [ 1, %bb.o ], [ %spec.select.peel, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.peel ], [ 1, %.thread166.us.lr.ph ], !dbg !47485 ; 4 uses
  %i.fa = add i64 %.sroa.03.0228, %i.ey, !dbg !47487 ; 4 uses
  %i.fb = load ptr, ptr %i.dx, align 8, !dbg !47488, !nonnull !3603, !noundef !3603
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fa, !dbg !47489
  store i32 %i.ez, ptr %i.fc, align 4, !dbg !47490
  %i.fd = icmp eq i64 %i.ek, %.sroa.10.0.copyload, !dbg !47465
  br i1 %i.fd, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel, !dbg !47465

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel: ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel
  %i.fe = add i64 %.sroa.7.0.copyload, 2, !dbg !47466 ; 2 uses
  %i.ff = load i64, ptr %i.eh, align 8, !dbg !47467, !noalias !47324, !noundef !3603
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !47468
  call void @llvm.assume(i1 %i.fg), !dbg !47469
  %i.fh = load ptr, ptr %i.ei, align 8, !dbg !47470, !noalias !47324, !noundef !3603 ; 2 uses
  %.not3.i.us.peel = icmp eq ptr %i.fh, null, !dbg !47471
  br i1 %.not3.i.us.peel, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %.thread166.us, !dbg !47472

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us: ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread
  %i.fi = add i64 %i.fn, 1, !dbg !47466           ; 2 uses
  %i.fj = load i64, ptr %i.eh, align 8, !dbg !47467, !noalias !47324, !noundef !3603
  %i.fk = icmp ult i64 %i.fi, %i.fj, !dbg !47468
  call void @llvm.assume(i1 %i.fk), !dbg !47469
  %i.fl = load ptr, ptr %i.ei, align 8, !dbg !47470, !noalias !47324, !noundef !3603 ; 2 uses
  %.not3.i.us = icmp eq ptr %i.fl, null, !dbg !47471
  br i1 %.not3.i.us, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %.thread166.us, !dbg !47472, !llvm.loop !47186

.thread166.us:                                    ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us
  %i.fm = phi ptr [ %i.fl, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ], [ %i.fh, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ]
  %i.fn = phi i64 [ %i.fi, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ], [ %i.fe, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ] ; 4 uses
  %.sroa.7.0.us208289 = phi i64 [ %i.fn, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ], [ %i.ek, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ]
  %.sroa.6.2.us209288 = phi i64 [ %i.fs, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ], [ %i.et, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ] ; 2 uses
  %.sroa.0.2.us210287 = phi ptr [ %i.fq, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ], [ %i.er, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ] ; 2 uses
  %.sroa.06.1.us211286 = phi i32 [ %i.fy, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ], [ %i.ez, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ]
  %.sroa.03.1.us212285 = phi i64 [ %i.fz, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ], [ %i.fa, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ]
  %i.fo = load ptr, ptr %i.ej, align 8, !dbg !47474, !noalias !47324, !noundef !3603 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.sroa.7.0.us208289, !dbg !47475
  %.val1.i.i.i.i.us = load i64, ptr %i.fp, align 8, !dbg !47476, !noalias !47324, !noundef !3603 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.val1.i.i.i.i.us, !dbg !47477 ; 6 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn, !dbg !47478
  %.val.i.i.i.i.us = load i64, ptr %i.fr, align 8, !dbg !47479, !noalias !47324, !noundef !3603
  %i.fs = sub nuw i64 %.val.i.i.i.i.us, %.val1.i.i.i.i.us, !dbg !47480 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.us210287) ]
  %i.ft = icmp eq i64 %i.fs, %.sroa.6.2.us209288, !dbg !47482
  br i1 %i.ft, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread, !dbg !47482

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us: ; preds = %.thread166.us
  %bcmp.i.i.i.us = call i32 @bcmp(ptr nonnull readonly %i.fq, ptr nonnull readonly %.sroa.0.2.us210287, i64 range(i64 0, -9223372036854775808) %.sroa.6.2.us209288), !dbg !47483, !alias.scope !47327
  %bcmp.i.i.i.us.fr = freeze i32 %bcmp.i.i.i.us, !dbg !47483
  %i.fu = icmp ne i32 %bcmp.i.i.i.us.fr, 0, !dbg !47483 ; 2 uses
  %i.fv = add i32 %.sroa.06.1.us211286, 1, !dbg !47484
  %spec.select = select i1 %i.fu, i32 1, i32 %i.fv, !dbg !47485
  %i.fw = zext i1 %i.fu to i64, !dbg !47486
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread, !dbg !47485

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread: ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us, %.thread166.us
  %i.fx = phi i64 [ 1, %.thread166.us ], [ %i.fw, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us ]
  %i.fy = phi i32 [ 1, %.thread166.us ], [ %spec.select, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us ], !dbg !47485 ; 4 uses
  %i.fz = add i64 %.sroa.03.1.us212285, %i.fx, !dbg !47487 ; 4 uses
  %i.ga = load ptr, ptr %i.dx, align 8, !dbg !47488, !nonnull !3603, !noundef !3603
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fz, !dbg !47489
  store i32 %i.fy, ptr %i.gb, align 4, !dbg !47490
  %i.gc = icmp eq i64 %i.fn, %.sroa.10.0.copyload, !dbg !47465
  br i1 %i.gc, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us, !dbg !47465

.split:                                           ; preds = %.split.preheader, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread
  %.sroa.19.0 = phi i64 [ %.sroa.19.2, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.19.0.copyload, %.split.preheader ], !dbg !47463 ; 4 uses
  %.sroa.17.0 = phi i64 [ %.sroa.17.1, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.17.0.copyload, %.split.preheader ], !dbg !47463 ; 2 uses
  %.sroa.15.0 = phi i64 [ %.sroa.15.1, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.15.0.copyload, %.split.preheader ], !dbg !47463 ; 2 uses
  %.sroa.10.0 = phi i64 [ %.sroa.10.2, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.10.0.copyload, %.split.preheader ], !dbg !47463 ; 3 uses
  %.sroa.4.0 = phi i64 [ %.sroa.4.1, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.4.0.copyload, %.split.preheader ], !dbg !47463 ; 3 uses
  %.sroa.6.2 = phi i64 [ %i.hm, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.6.1224, %.split.preheader ], !dbg !47234 ; 5 uses
  %.sroa.0.2 = phi ptr [ %i.hn, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.0.1225, %.split.preheader ], !dbg !47234 ; 3 uses
  %.sroa.06.1 = phi i32 [ %i.ho, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.06.0227, %.split.preheader ], !dbg !47491 ; 2 uses
  %.sroa.03.1 = phi i64 [ %i.hp, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.03.0228, %.split.preheader ], !dbg !47492 ; 2 uses
  %i.gd = phi i64 [ %i.hm, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.dz, %.split.preheader ] ; 3 uses
  %i.ge = phi ptr [ %i.hn, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.dy, %.split.preheader ]
  %.fr = freeze ptr %i.ge, !dbg !47473            ; 2 uses
  %i.gf = icmp eq i64 %.sroa.4.0, %.sroa.7.0.copyload, !dbg !47464
  br i1 %i.gf, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i, label %bb.p, !dbg !47464

bb.p:                                             ; preds = %.split
  %i.gg = add i64 %.sroa.4.0, 1, !dbg !47493      ; 3 uses
  %i.gh = load ptr, ptr %i.ec, align 8, !dbg !47494, !noalias !47339, !noundef !3603 ; 2 uses
  %i.gi = load i64, ptr %i.ed, align 8, !dbg !47495, !noalias !47339, !noundef !3603
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.sroa.4.0, !dbg !47496
  %.val1.i.i.i.i.i = load i64, ptr %i.gj, align 8, !dbg !47497, !noalias !47339, !noundef !3603 ; 2 uses
  %i.gk = icmp ult i64 %i.gg, %i.gi, !dbg !47498
  call void @llvm.assume(i1 %i.gk), !dbg !47499
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gg, !dbg !47500
  %.val.i.i.i.i.i = load i64, ptr %i.gl, align 8, !dbg !47501, !noalias !47339, !noundef !3603
  %i.gm = load ptr, ptr %i.ee, align 8, !dbg !47502, !noalias !47339, !noundef !3603
  %i.gn = sub nuw i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i, !dbg !47503
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.val1.i.i.i.i.i, !dbg !47504
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !47505

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.p, %.split
  %.sroa.4.1 = phi i64 [ %.sroa.7.0.copyload, %.split ], [ %i.gg, %bb.p ], !dbg !47463
  %.sroa.3.0.i.i.i = phi i64 [ undef, %.split ], [ %i.gn, %bb.p ]
  %.sroa.0.0.i.i.i69 = phi ptr [ null, %.split ], [ %i.go, %bb.p ], !dbg !47506
  %i.gp = icmp eq i64 %.sroa.17.0, 0, !dbg !47507
  br i1 %i.gp, label %bb.q, label %._crit_edge.i.i.i, !dbg !47507

bb.q:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.gq = icmp eq i64 %.sroa.19.0, 0, !dbg !47508
  br i1 %i.gq, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !47508

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.q
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.19.0, i64 64), !dbg !47509 ; 2 uses
  %i.gr = sub nuw i64 %.sroa.19.0, %.sroa.0.0.i.i.i.i, !dbg !47510
  %i.gs = inttoptr i64 %.sroa.10.0 to ptr, !dbg !47511 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.gs, align 1, !dbg !47512, !noalias !47340
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8, !dbg !47513
  %i.gu = ptrtoint ptr %i.gt to i64, !dbg !47514
  br label %._crit_edge.i.i.i, !dbg !47515

._crit_edge.i.i.i:                                ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  %.sroa.19.1 = phi i64 [ %i.gr, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.19.0, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i ], !dbg !47463
  %.sroa.10.1 = phi i64 [ %i.gu, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.10.0, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i ], !dbg !47463
  %i.gv = phi i64 [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.17.0, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i ], !dbg !47516
  %i.gw = phi i64 [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.15.0, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i ], !dbg !47517 ; 2 uses
  %i.gx = trunc i64 %i.gw to i8, !dbg !47517
  %i.gy = lshr i64 %i.gw, 1, !dbg !47518
  %i.gz = add i64 %i.gv, -1, !dbg !47516
  %i.ha = and i8 %i.gx, 1, !dbg !47519
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !47520

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.q
  %.sroa.19.2 = phi i64 [ 0, %bb.q ], [ %.sroa.19.1, %._crit_edge.i.i.i ], !dbg !47463
  %.sroa.17.1 = phi i64 [ 0, %bb.q ], [ %i.gz, %._crit_edge.i.i.i ], !dbg !47463
  %.sroa.15.1 = phi i64 [ %.sroa.15.0, %bb.q ], [ %i.gy, %._crit_edge.i.i.i ], !dbg !47463
  %.sroa.10.2 = phi i64 [ %.sroa.10.0, %bb.q ], [ %.sroa.10.1, %._crit_edge.i.i.i ], !dbg !47463
  %.sroa.0.0.i3.i.i = phi i8 [ 2, %bb.q ], [ %i.ha, %._crit_edge.i.i.i ], !dbg !47521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !47522, !noalias !47341
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRShECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %.sroa.0.0.i3.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i69, i64 %.sroa.3.0.i.i.i), !dbg !47523, !noalias !47341
  %i.hb = load i8, ptr %i.a, align 8, !dbg !47524, !range !4179, !noalias !47341, !noundef !3603 ; 2 uses
  %.not.i.i = icmp eq i8 %i.hb, 2, !dbg !47524
  br i1 %.not.i.i, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread134, !dbg !47525

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread134: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.hc = trunc nuw i8 %i.hb to i1, !dbg !47526
  %i.hd = load i64, ptr %i.dv, align 8, !dbg !47526, !noalias !47341, !noundef !3603 ; 3 uses
  %i.he = load ptr, ptr %i.dw, align 8, !dbg !47527, !noalias !47341, !nonnull !3603 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !47528, !noalias !47341
  %.not34.not = icmp eq ptr %.fr, null, !dbg !47473 ; 2 uses
  br i1 %i.hc, label %.thread166, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit, !dbg !47529

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !47528, !noalias !47341
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !47529

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph, %.split.us, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.6.2202 = phi i64 [ %.sroa.6.2, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.6.1224, %.split.us ], [ %.sroa.6.1224, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph ], [ %i.et, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel ], [ %i.et, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ], [ %i.fs, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread ], [ %i.fs, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ]
  %.sroa.0.2200 = phi ptr [ %.sroa.0.2, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.0.1225, %.split.us ], [ %.sroa.0.1225, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph ], [ %i.er, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel ], [ %i.er, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ], [ %i.fq, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread ], [ %i.fq, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ]
  %.sroa.06.1198 = phi i32 [ %.sroa.06.1, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.06.0227, %.split.us ], [ %.sroa.06.0227, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph ], [ %i.ez, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel ], [ %i.ez, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ], [ %i.fy, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread ], [ %i.fy, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ]
  %.sroa.03.1196 = phi i64 [ %.sroa.03.1, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.03.0228, %.split.us ], [ %.sroa.03.0228, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph ], [ %i.fa, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel ], [ %i.fa, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ], [ %i.fz, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread ], [ %i.fz, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ] ; 2 uses
  %i.hf = phi i64 [ %i.gd, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.dz, %.split.us ], [ %i.dz, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph ], [ %i.et, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel ], [ %i.et, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ], [ %i.fs, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread ], [ %i.fs, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ]
  %i.hg = phi ptr [ %.fr, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.dy, %.split.us ], [ %i.dy, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.lr.ph ], [ %i.er, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread.peel ], [ %i.er, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us.peel ], [ %i.fq, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.us.thread ], [ %i.fq, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_6binary11BinaryArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.us ]
  %i.hh = icmp eq ptr %i.ea, %i.du, !dbg !47530
  br i1 %i.hh, label %.sink.split, label %bb.n, !dbg !47342

.thread166:                                       ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread134
  br i1 %.not34.not, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.s, !dbg !47481

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_6binary11BinaryArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread134
  br i1 %.not34.not, label %bb.r, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !47485

bb.r:                                             ; preds = %.split276, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit
  %i.hi = phi i64 [ %.sroa.6.2, %.split276 ], [ %i.gd, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit ]
  %i.hj = phi ptr [ %i.he, %.split276 ], [ null, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit ]
  %i.hk = add i32 %.sroa.06.1, 1, !dbg !47484
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !47485

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.s, %.thread166, %.split276, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit, %bb.r
  %i.hl = phi i64 [ 0, %bb.r ], [ 1, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit ], [ 1, %.split276 ], [ 1, %.thread166 ], [ 1, %bb.s ]
  %i.hm = phi i64 [ %i.hi, %bb.r ], [ %i.gd, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.6.2, %.split276 ], [ %i.hd, %.thread166 ], [ %i.hd, %bb.s ] ; 2 uses
  %i.hn = phi ptr [ %i.hj, %bb.r ], [ null, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.he, %.split276 ], [ %i.he, %.thread166 ], [ %i.he, %bb.s ] ; 2 uses
  %i.ho = phi i32 [ %i.hk, %bb.r ], [ 1, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit ], [ 1, %.split276 ], [ 1, %.thread166 ], [ 1, %bb.s ], !dbg !47485 ; 2 uses
  %i.hp = add i64 %.sroa.03.1, %i.hl, !dbg !47487 ; 2 uses
  %i.hq = load ptr, ptr %i.dx, align 8, !dbg !47488, !nonnull !3603, !noundef !3603
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hp, !dbg !47489
  store i32 %i.ho, ptr %i.hr, align 4, !dbg !47490
  br label %.split, !dbg !47531

bb.s:                                             ; preds = %.thread166
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  %i.hs = icmp eq i64 %i.hd, %.sroa.6.2, !dbg !47482
  br i1 %i.hs, label %.split276, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !47482

.split276:                                        ; preds = %bb.s
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.he, ptr nonnull readonly %.sroa.0.2, i64 range(i64 0, -9223372036854775808) %.sroa.6.2), !dbg !47483, !alias.scope !47327
  %bcmp.i.i.i.fr = freeze i32 %bcmp.i.i.i, !dbg !47483
  %.not281 = icmp eq i32 %bcmp.i.i.i.fr, 0, !dbg !47483
  br i1 %.not281, label %bb.r, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !47485
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read11deserialize4readINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, ptr noalias noundef align 8 dereferenceable(32) %5, ptr noalias noundef align 8 dereferenceable(24) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, i64 noundef %8, i1 noundef zeroext %9, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %10, i64 noundef range(i64 0, 2) %11, i64 %12, i16 noundef range(i16 0, 5) %13, ptr noalias noundef align 8 dereferenceable(24) %14, i1 noundef zeroext %15) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !47532 !guid !48438 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.653.i203 = alloca [24 x i8], align 8     ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 8 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [72 x i8], align 8                ; 7 uses
  %i.o = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.610.i204 = alloca [32 x i8], align 8     ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [72 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
end_hunk_0
