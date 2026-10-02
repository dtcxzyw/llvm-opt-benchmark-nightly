Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEE4withNCINvMs4_B6_BF_15with_borrow_mutNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB3d_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many0uE0uECskY9G75ZWc4U_11polars_expr:bb.a
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !12018, !noalias !11839

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.f:                                             ; preds = %.outer, %bb.ca
  %.sroa.015.0.i.i.i.i = phi i64 [ %i.cb, %bb.ca ], [ %.sroa.015.0.i.i.i.i.ph, %.outer ], !dbg !12019 ; 2 uses
  %.sroa.011.0.i.i.i.i = phi i64 [ %.sroa.011.1.i.i.i.i, %bb.ca ], [ %.sroa.011.0.i.i.i.i.ph, %.outer ], !dbg !12020 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.ca ], [ %.sroa.0.0.i.i.i.i.ph, %.outer ], !dbg !12021 ; 4 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.015.0.i.i.i.i, i64 %.sroa.011.0.i.i.i.i), !dbg !12022 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0, !dbg !12023
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !dbg !12017

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %.promoted.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !11852
  %.promoted19.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !11852
  %.phi.trans.insert.i.i.i.promoted.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !11852
  %.promoted23.i.i.i.i = load i64, ptr %i.ao, align 8, !noalias !11852
  %.promoted24.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !11852
  %.promoted25.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !11852
  %.promoted26.i.i.i.i = load i64, ptr %i.av, align 8, !noalias !11852
  %.phi.trans.insert.i.i.i45.promoted.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i45.i.i.i.i, align 8, !noalias !11852
  %.promoted30.i.i.i.i = load i64, ptr %i.aw, align 8, !noalias !11852
  %.promoted31.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !11852
  %.pre35.i.i.i.i = load ptr, ptr %i.p, align 8, !dbg !12024, !alias.scope !11857, !noalias !11858
  br label %bb.g, !dbg !12017

._crit_edge.i.i.i.i:                              ; preds = %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %bb.f
  %i.ca = sub nuw i64 %.sroa.011.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !12025 ; 2 uses
  %i.cb = sub nuw i64 %.sroa.015.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !12026 ; 2 uses
  %i.cc = icmp eq i64 %i.ca, 0, !dbg !12027
  br i1 %i.cc, label %bb.by, label %bb.ca, !dbg !12027

bb.g:                                             ; preds = %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cd = phi ptr [ %.pre35.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ok, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], !dbg !12024 ; 7 uses
  %i.ce = phi i64 [ %.promoted31.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.io, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 4 uses
  %i.cf = phi i64 [ %.promoted30.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ip, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 5 uses
  %.pre.i.i.i4629.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i45.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i4627.i.i.i.i, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.cg = phi i64 [ %.promoted26.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.iq, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.ch = phi i64 [ %.promoted25.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ir, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 6 uses
  %i.ci = phi i64 [ %.promoted24.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fl, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 4 uses
  %i.cj = phi i64 [ %.promoted23.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fm, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 5 uses
  %.pre.i.i.i22.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i20.i.i.i.i, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.ck = phi i64 [ %.promoted19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fn, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.cl = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fo, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 6 uses
  %.sroa.023.018.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.cm, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16extract_all_many00CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.cm = add nuw i64 %.sroa.023.018.i.i.i.i, 1, !dbg !12028 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11857), !dbg !12029
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, null, !dbg !12024
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.h, !dbg !12030

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !11859), !dbg !12031
  call void @llvm.experimental.noalias.scope.decl(metadata !11860), !dbg !12032
  %i.cn = load i64, ptr %i.ak, align 8, !dbg !12033, !alias.scope !11861, !noalias !11862, !noundef !2531 ; 4 uses
  %i.co = icmp eq i64 %i.cn, %i.cl, !dbg !12033
  br i1 %i.co, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, label %bb.i, !dbg !12033

bb.i:                                             ; preds = %bb.h
  %i.cp = add nuw i64 %i.cn, 1, !dbg !12034
  store i64 %i.cp, ptr %i.ak, align 8, !dbg !12034, !alias.scope !11861, !noalias !11862
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40, !dbg !12035
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !12035, !noalias !11863, !noundef !2531
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 48, !dbg !12036
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !12036, !noalias !11863, !noundef !2531
  %i.cu = icmp ult i64 %i.cn, %i.ct, !dbg !12037
  call void @llvm.assume(i1 %i.cu), !dbg !12038
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cn, !dbg !12039 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 64, !dbg !12040
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !12040, !noalias !11863, !noundef !2531
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 72, !dbg !12041
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !12041, !noalias !11863, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !11864), !dbg !12042
  call void @llvm.experimental.noalias.scope.decl(metadata !11865), !dbg !12042
  %i.da = load i32, ptr %i.cv, align 4, !dbg !12043, !alias.scope !11864, !noalias !11866, !noundef !2531 ; 2 uses
  %i.db = icmp ult i32 %i.da, 13, !dbg !12043
  br i1 %i.db, label %bb.k, label %bb.j, !dbg !12043

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !12044
  %i.dd = load i32, ptr %i.dc, align 4, !dbg !12044, !alias.scope !11864, !noalias !11866, !noundef !2531
  %i.de = zext i32 %i.dd to i64, !dbg !12044      ; 2 uses
  %i.df = icmp samesign ugt i64 %i.cz, %i.de, !dbg !12045
  call void @llvm.assume(i1 %i.df), !dbg !12046
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.de, !dbg !12047
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 12, !dbg !12048
  %i.di = load i32, ptr %i.dh, align 4, !dbg !12048, !alias.scope !11864, !noalias !11866, !noundef !2531
  %i.dj = zext i32 %i.di to i64, !dbg !12048
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !12049
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !12049, !alias.scope !11867, !noalias !11868, !noundef !2531
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj, !dbg !12050
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !12051

bb.k:                                             ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 4, !dbg !12052
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !12051

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dn, %bb.k ], [ %i.dm, %bb.j ], !dbg !12053
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i = zext i32 %i.da to i64, !dbg !12053
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !12054

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %bb.h
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ undef, %bb.h ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ null, %bb.h ], !dbg !12055
  call void @llvm.experimental.noalias.scope.decl(metadata !11869), !dbg !12056
  %i.do = icmp eq i64 %i.ck, 0, !dbg !12057
  br i1 %i.do, label %bb.l, label %._crit_edge.i.i.i.i.i.i.i, !dbg !12057

bb.l:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %i.dp = icmp eq i64 %i.cj, 0, !dbg !12058
  br i1 %i.dp, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !12058

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %.sroa.0.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 64), !dbg !12059 ; 2 uses
  %i.dq = sub nuw i64 %i.cj, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !12060 ; 2 uses
  store i64 %i.dq, ptr %i.ao, align 8, !dbg !12060, !alias.scope !11870, !noalias !11862
  %i.dr = load ptr, ptr %i.am, align 8, !dbg !12061, !alias.scope !11870, !noalias !11862, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dr, align 1, !dbg !12062, !noalias !11871
  %i.ds = add i64 %i.ci, -8, !dbg !12063          ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8, !dbg !12064
  store ptr %i.dt, ptr %i.am, align 8, !dbg !12065, !alias.scope !11870, !noalias !11862
  store i64 %i.ds, ptr %i.ap, align 8, !dbg !12065, !alias.scope !11870, !noalias !11862
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !12066

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %i.du = phi i64 [ %i.ds, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ci, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ]
  %i.dv = phi i64 [ %i.dq, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.cj, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ]
  %i.dw = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ck, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], !dbg !12067
  %i.dx = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i22.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], !dbg !12068 ; 2 uses
  %i.dy = trunc i64 %i.dx to i8, !dbg !12068
  %i.dz = lshr i64 %i.dx, 1, !dbg !12069          ; 2 uses
  store i64 %i.dz, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !dbg !12069, !alias.scope !11870, !noalias !11862
  %i.ea = add i64 %i.dw, -1, !dbg !12067          ; 2 uses
  store i64 %i.ea, ptr %i.an, align 8, !dbg !12067, !alias.scope !11870, !noalias !11862
  %i.eb = and i8 %i.dy, 1, !dbg !12070
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !12071

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.l
  %i.ec = phi i64 [ %i.du, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ci, %bb.l ]
  %i.ed = phi i64 [ %i.dv, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.pre.i.i.i21.i.i.i.i = phi i64 [ %i.dz, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre.i.i.i22.i.i.i.i, %bb.l ]
  %i.ee = phi i64 [ %i.ea, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.sroa.0.0.i3.i.i.i.i.i.i = phi i8 [ %i.eb, %._crit_edge.i.i.i.i.i.i.i ], [ 2, %bb.l ], !dbg !12072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !12073, !noalias !11872
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i8 noundef %.sroa.0.0.i3.i.i.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !12074, !noalias !11839

.noexc7.i.i:                                      ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.ef = load i8, ptr %i.l, align 8, !dbg !12075, !range !2878, !noalias !11872, !noundef !2531 ; 2 uses
  %.not.i.i.i.i.i.i.not = icmp eq i8 %i.ef, 2, !dbg !12075 ; 2 uses
  %i.eg = trunc nuw i8 %i.ef to i1, !dbg !12076
  %i.eh = load i64, ptr %i.aq, align 8, !dbg !12076, !noalias !11852
  %i.ei = load ptr, ptr %i.ar, align 8, !dbg !12076, !noalias !11852, !nonnull !2531
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.eg, ptr %i.ei, ptr null, !dbg !12076
  %.sroa.8.0.i.i.i.i = select i1 %.not.i.i.i.i.i.i.not, i64 undef, i64 %i.eh, !dbg !12076
  %.sroa.5.0.i.i.i.i = select i1 %.not.i.i.i.i.i.i.not, ptr undef, ptr %.sroa.01.0.i.i.i.i.i.i, !dbg !12076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !12077, !noalias !11872
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !12031

bb.m:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !11873), !dbg !12078
  %i.ej = load i64, ptr %i.am, align 8, !dbg !12079, !alias.scope !11874, !noalias !11858, !noundef !2531
  %i.ek = icmp ne i64 %i.cl, %i.ej, !dbg !12080
  call void @llvm.assume(i1 %i.ek), !dbg !12080
  %i.el = add nuw i64 %i.cl, 1, !dbg !12081       ; 2 uses
  store i64 %i.el, ptr %i.al, align 8, !dbg !12081, !alias.scope !11874, !noalias !11858
  %i.em = load ptr, ptr %i.ak, align 8, !dbg !12082, !alias.scope !11874, !noalias !11858, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40, !dbg !12083
  %i.eo = load ptr, ptr %i.en, align 8, !dbg !12083, !noalias !11875, !noundef !2531
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 48, !dbg !12084
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !12084, !noalias !11875, !noundef !2531
  %i.er = icmp ult i64 %i.cl, %i.eq, !dbg !12085
  call void @llvm.assume(i1 %i.er), !dbg !12086
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.cl, !dbg !12087 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 64, !dbg !12088
  %i.eu = load ptr, ptr %i.et, align 8, !dbg !12088, !noalias !11875, !noundef !2531
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 72, !dbg !12089
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !12089, !noalias !11875, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !11876), !dbg !12090
  call void @llvm.experimental.noalias.scope.decl(metadata !11877), !dbg !12090
  %i.ex = load i32, ptr %i.es, align 4, !dbg !12091, !alias.scope !11876, !noalias !11878, !noundef !2531 ; 2 uses
  %i.ey = icmp ult i32 %i.ex, 13, !dbg !12091
  br i1 %i.ey, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !12091

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i: ; preds = %bb.m
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 4, !dbg !12092
  br label %bb.n, !dbg !12093

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.m
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !12094
  %i.fb = load i32, ptr %i.fa, align 4, !dbg !12094, !alias.scope !11876, !noalias !11878, !noundef !2531
  %i.fc = zext i32 %i.fb to i64, !dbg !12094      ; 2 uses
  %i.fd = icmp samesign ugt i64 %i.ew, %i.fc, !dbg !12095
  call void @llvm.assume(i1 %i.fd), !dbg !12096
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.fc, !dbg !12097
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 12, !dbg !12098
  %i.fg = load i32, ptr %i.ff, align 4, !dbg !12098, !alias.scope !11876, !noalias !11878, !noundef !2531
  %i.fh = zext i32 %i.fg to i64, !dbg !12098
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8, !dbg !12099
  %i.fj = load ptr, ptr %i.fi, align 8, !dbg !12099, !alias.scope !11879, !noalias !11880, !noundef !2531
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh, !dbg !12100
  br label %bb.n, !dbg !12093

bb.n:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i
  %.sroa.0.0.i.i.i.i11.i.i.i.i.i = phi ptr [ %i.ez, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i ], [ %i.fk, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %.sroa.3.0.i.i.i.i12.i.i.i.i.i = zext i32 %i.ex to i64, !dbg !12101
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !12102

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %bb.n, %.noexc7.i.i
  %i.fl = phi i64 [ %i.ec, %.noexc7.i.i ], [ %i.ci, %bb.n ]
  %i.fm = phi i64 [ %i.ed, %.noexc7.i.i ], [ %i.cj, %bb.n ]
  %.pre.i.i.i20.i.i.i.i = phi i64 [ %.pre.i.i.i21.i.i.i.i, %.noexc7.i.i ], [ %.pre.i.i.i22.i.i.i.i, %bb.n ]
  %i.fn = phi i64 [ %i.ee, %.noexc7.i.i ], [ %i.ck, %bb.n ]
  %i.fo = phi i64 [ %i.cl, %.noexc7.i.i ], [ %i.el, %bb.n ]
  %.sroa.8.2.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i.i, %.noexc7.i.i ], [ %.sroa.3.0.i.i.i.i12.i.i.i.i.i, %bb.n ], !dbg !12103 ; 6 uses
  %.sroa.5.2.i.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %.noexc7.i.i ], [ %.sroa.0.0.i.i.i.i11.i.i.i.i.i, %bb.n ], !dbg !12103 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11881), !dbg !12104
  %i.fp = load ptr, ptr %i.o, align 8, !dbg !12105, !alias.scope !11881, !noalias !11882, !noundef !2531 ; 5 uses
  %.not.i37.i.i.i.i = icmp eq ptr %i.fp, null, !dbg !12105
  br i1 %.not.i37.i.i.i.i, label %bb.t, label %bb.o, !dbg !12106

bb.o:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11883), !dbg !12107
  call void @llvm.experimental.noalias.scope.decl(metadata !11884), !dbg !12108
  %i.fq = load i64, ptr %i.as, align 8, !dbg !12109, !alias.scope !11885, !noalias !11886, !noundef !2531 ; 4 uses
  %i.fr = icmp eq i64 %i.fq, %i.ch, !dbg !12109
  br i1 %i.fr, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i, label %bb.p, !dbg !12109

bb.p:                                             ; preds = %bb.o
  %i.fs = add nuw i64 %i.fq, 1, !dbg !12110
  store i64 %i.fs, ptr %i.as, align 8, !dbg !12110, !alias.scope !11885, !noalias !11886
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 40, !dbg !12111
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !12111, !noalias !11887, !noundef !2531
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 48, !dbg !12112
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !12112, !noalias !11887, !noundef !2531
  %i.fx = icmp ult i64 %i.fq, %i.fw, !dbg !12113
  call void @llvm.assume(i1 %i.fx), !dbg !12114
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.fq, !dbg !12115 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 64, !dbg !12116
  %i.ga = load ptr, ptr %i.fz, align 8, !dbg !12116, !noalias !11887, !noundef !2531
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 72, !dbg !12117
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !12117, !noalias !11887, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !11888), !dbg !12118
  call void @llvm.experimental.noalias.scope.decl(metadata !11889), !dbg !12118
  %i.gd = load i32, ptr %i.fy, align 4, !dbg !12119, !alias.scope !11888, !noalias !11890, !noundef !2531 ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 13, !dbg !12119
  br i1 %i.ge, label %bb.r, label %bb.q, !dbg !12119

bb.q:                                             ; preds = %bb.p
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 8, !dbg !12120
  %i.gg = load i32, ptr %i.gf, align 4, !dbg !12120, !alias.scope !11888, !noalias !11890, !noundef !2531
  %i.gh = zext i32 %i.gg to i64, !dbg !12120      ; 2 uses
  %i.gi = icmp samesign ugt i64 %i.gc, %i.gh, !dbg !12121
  call void @llvm.assume(i1 %i.gi), !dbg !12122
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.gh, !dbg !12123
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 12, !dbg !12124
  %i.gl = load i32, ptr %i.gk, align 4, !dbg !12124, !alias.scope !11888, !noalias !11890, !noundef !2531
  %i.gm = zext i32 %i.gl to i64, !dbg !12124
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 8, !dbg !12125
  %i.go = load ptr, ptr %i.gn, align 8, !dbg !12125, !alias.scope !11891, !noalias !11892, !noundef !2531
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gm, !dbg !12126
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i38.i.i.i.i, !dbg !12127

bb.r:                                             ; preds = %bb.p
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fy, i64 4, !dbg !12128
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i38.i.i.i.i, !dbg !12127

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i38.i.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i.i39.i.i.i.i = phi ptr [ %i.gq, %bb.r ], [ %i.gp, %bb.q ], !dbg !12129
  %.sroa.3.0.i.i.i.i.i.i40.i.i.i.i = zext i32 %i.gd to i64, !dbg !12129
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i, !dbg !12130

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i38.i.i.i.i, %bb.o
  %.sroa.3.0.i.i.i42.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i40.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i38.i.i.i.i ], [ undef, %bb.o ]
  %.sroa.0.0.i.i.i43.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i39.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i38.i.i.i.i ], [ null, %bb.o ], !dbg !12131
  call void @llvm.experimental.noalias.scope.decl(metadata !11893), !dbg !12132
  %i.gr = icmp eq i64 %i.cg, 0, !dbg !12133
  br i1 %i.gr, label %bb.s, label %._crit_edge.i.i.i44.i.i.i.i, !dbg !12133

bb.s:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i
  %i.gs = icmp eq i64 %i.cf, 0, !dbg !12134
  br i1 %i.gs, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i47.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i53.i.i.i.i, !dbg !12134

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i53.i.i.i.i: ; preds = %bb.s
  %.sroa.0.0.i.i.i.i54.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 64), !dbg !12135 ; 2 uses
  %i.gt = sub nuw i64 %i.cf, %.sroa.0.0.i.i.i.i54.i.i.i.i, !dbg !12136 ; 2 uses
  store i64 %i.gt, ptr %i.aw, align 8, !dbg !12136, !alias.scope !11894, !noalias !11886
  %i.gu = load ptr, ptr %i.au, align 8, !dbg !12137, !alias.scope !11894, !noalias !11886, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i55.i.i.i.i = load i64, ptr %i.gu, align 1, !dbg !12138, !noalias !11895
  %i.gv = add i64 %i.ce, -8, !dbg !12139          ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8, !dbg !12140
  store ptr %i.gw, ptr %i.au, align 8, !dbg !12141, !alias.scope !11894, !noalias !11886
  store i64 %i.gv, ptr %i.ax, align 8, !dbg !12141, !alias.scope !11894, !noalias !11886
  br label %._crit_edge.i.i.i44.i.i.i.i, !dbg !12142

._crit_edge.i.i.i44.i.i.i.i:                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i53.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i
  %i.gx = phi i64 [ %i.gv, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i53.i.i.i.i ], [ %i.ce, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i ]
  %i.gy = phi i64 [ %i.gt, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i53.i.i.i.i ], [ %i.cf, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i ]
  %i.gz = phi i64 [ %.sroa.0.0.i.i.i.i54.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i53.i.i.i.i ], [ %i.cg, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i ], !dbg !12143
  %i.ha = phi i64 [ %.sroa.02.0.copyload.i.i.i55.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i53.i.i.i.i ], [ %.pre.i.i.i4629.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i41.i.i.i.i ], !dbg !12144 ; 2 uses
  %i.hb = trunc i64 %i.ha to i8, !dbg !12144
  %i.hc = lshr i64 %i.ha, 1, !dbg !12145          ; 2 uses
  store i64 %i.hc, ptr %.phi.trans.insert.i.i.i45.i.i.i.i, align 8, !dbg !12145, !alias.scope !11894, !noalias !11886
  %i.hd = add i64 %i.gz, -1, !dbg !12143          ; 2 uses
  store i64 %i.hd, ptr %i.av, align 8, !dbg !12143, !alias.scope !11894, !noalias !11886
  %i.he = and i8 %i.hb, 1, !dbg !12146
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i47.i.i.i.i, !dbg !12147

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i47.i.i.i.i: ; preds = %._crit_edge.i.i.i44.i.i.i.i, %bb.s
  %i.hf = phi i64 [ %i.gx, %._crit_edge.i.i.i44.i.i.i.i ], [ %i.ce, %bb.s ]
  %i.hg = phi i64 [ %i.gy, %._crit_edge.i.i.i44.i.i.i.i ], [ 0, %bb.s ]
  %.pre.i.i.i4628.i.i.i.i = phi i64 [ %i.hc, %._crit_edge.i.i.i44.i.i.i.i ], [ %.pre.i.i.i4629.i.i.i.i, %bb.s ]
  %i.hh = phi i64 [ %i.hd, %._crit_edge.i.i.i44.i.i.i.i ], [ 0, %bb.s ]
  %.sroa.0.0.i3.i.i48.i.i.i.i = phi i8 [ %i.he, %._crit_edge.i.i.i44.i.i.i.i ], [ 2, %bb.s ], !dbg !12148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12149, !noalias !11896
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i8 noundef %.sroa.0.0.i3.i.i48.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i43.i.i.i.i, i64 %.sroa.3.0.i.i.i42.i.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.i.i, !dbg !12150, !noalias !11839

.noexc8.i.i:                                      ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i47.i.i.i.i
  %i.hi = load i8, ptr %i.k, align 8, !dbg !12151, !range !2878, !noalias !11896, !noundef !2531 ; 2 uses
  %.not.i.i49.i.i.i.i.not = icmp eq i8 %i.hi, 2, !dbg !12151 ; 2 uses
  %i.hj = trunc nuw i8 %i.hi to i1, !dbg !12152
  %i.hk = load i64, ptr %i.ay, align 8, !dbg !12152, !noalias !11852
  %i.hl = load ptr, ptr %i.az, align 8, !dbg !12152, !noalias !11852, !nonnull !2531
  %.sroa.01.0.i.i50.i.i.i.i = select i1 %i.hj, ptr %i.hl, ptr null, !dbg !12152
  %.sroa.57.0.i.i.i.i = select i1 %.not.i.i49.i.i.i.i.not, ptr undef, ptr %.sroa.01.0.i.i50.i.i.i.i, !dbg !12152
  %.sroa.88.0.i.i.i.i = select i1 %.not.i.i49.i.i.i.i.not, i64 undef, i64 %i.hk, !dbg !12152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12153, !noalias !11896
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit63.i.i.i.i, !dbg !12107

bb.t:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11897), !dbg !12154
  %i.hm = load i64, ptr %i.au, align 8, !dbg !12155, !alias.scope !11898, !noalias !11882, !noundef !2531
  %i.hn = icmp ne i64 %i.ch, %i.hm, !dbg !12156
  call void @llvm.assume(i1 %i.hn), !dbg !12156
  %i.ho = add nuw i64 %i.ch, 1, !dbg !12157       ; 2 uses
  store i64 %i.ho, ptr %i.at, align 8, !dbg !12157, !alias.scope !11898, !noalias !11882
  %i.hp = load ptr, ptr %i.as, align 8, !dbg !12158, !alias.scope !11898, !noalias !11882, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40, !dbg !12159
  %i.hr = load ptr, ptr %i.hq, align 8, !dbg !12159, !noalias !11899, !noundef !2531
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 48, !dbg !12160
  %i.ht = load i64, ptr %i.hs, align 8, !dbg !12160, !noalias !11899, !noundef !2531
  %i.hu = icmp ult i64 %i.ch, %i.ht, !dbg !12161
  call void @llvm.assume(i1 %i.hu), !dbg !12162
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %i.ch, !dbg !12163 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 64, !dbg !12164
  %i.hx = load ptr, ptr %i.hw, align 8, !dbg !12164, !noalias !11899, !noundef !2531
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 72, !dbg !12165
  %i.hz = load i64, ptr %i.hy, align 8, !dbg !12165, !noalias !11899, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !11900), !dbg !12166
  call void @llvm.experimental.noalias.scope.decl(metadata !11901), !dbg !12166
  %i.ia = load i32, ptr %i.hv, align 4, !dbg !12167, !alias.scope !11900, !noalias !11902, !noundef !2531 ; 2 uses
  %i.ib = icmp ult i32 %i.ia, 13, !dbg !12167
  br i1 %i.ib, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i62.i.i.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i56.i.i.i.i, !dbg !12167

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i62.i.i.i.i: ; preds = %bb.t
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 4, !dbg !12168
  br label %bb.u, !dbg !12169

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i56.i.i.i.i: ; preds = %bb.t
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 8, !dbg !12170
  %i.ie = load i32, ptr %i.id, align 4, !dbg !12170, !alias.scope !11900, !noalias !11902, !noundef !2531
  %i.if = zext i32 %i.ie to i64, !dbg !12170      ; 2 uses
  %i.ig = icmp samesign ugt i64 %i.hz, %i.if, !dbg !12171
  call void @llvm.assume(i1 %i.ig), !dbg !12172
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %i.if, !dbg !12173
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hv, i64 12, !dbg !12174
  %i.ij = load i32, ptr %i.ii, align 4, !dbg !12174, !alias.scope !11900, !noalias !11902, !noundef !2531
  %i.ik = zext i32 %i.ij to i64, !dbg !12174
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 8, !dbg !12175
  %i.im = load ptr, ptr %i.il, align 8, !dbg !12175, !alias.scope !11903, !noalias !11904, !nonnull !2531, !noundef !2531
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ik, !dbg !12176
  br label %bb.u, !dbg !12169

bb.u:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i56.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i62.i.i.i.i
  %.sroa.0.0.i.i.i.i11.i58.i.i.i.i = phi ptr [ %i.ic, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i62.i.i.i.i ], [ %i.in, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i56.i.i.i.i ]
  %.sroa.3.0.i.i.i.i12.i59.i.i.i.i = zext i32 %i.ia to i64, !dbg !12177
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit63.i.i.i.i, !dbg !12178

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit63.i.i.i.i: ; preds = %bb.u, %.noexc8.i.i
  %i.io = phi i64 [ %i.hf, %.noexc8.i.i ], [ %i.ce, %bb.u ]
  %i.ip = phi i64 [ %i.hg, %.noexc8.i.i ], [ %i.cf, %bb.u ]
  %.pre.i.i.i4627.i.i.i.i = phi i64 [ %.pre.i.i.i4628.i.i.i.i, %.noexc8.i.i ], [ %.pre.i.i.i4629.i.i.i.i, %bb.u ]
  %i.iq = phi i64 [ %i.hh, %.noexc8.i.i ], [ %i.cg, %bb.u ]
  %i.ir = phi i64 [ %i.ch, %.noexc8.i.i ], [ %i.ho, %bb.u ]
  %.sroa.57.2.i.i.i.i = phi ptr [ %.sroa.57.0.i.i.i.i, %.noexc8.i.i ], [ %.sroa.0.0.i.i.i.i11.i58.i.i.i.i, %bb.u ], !dbg !12179 ; 2 uses
  %.sroa.88.2.i.i.i.i = phi i64 [ %.sroa.88.0.i.i.i.i, %.noexc8.i.i ], [ %.sroa.3.0.i.i.i.i12.i59.i.i.i.i, %bb.u ], !dbg !12179
  %.not.i64.i.i.i.i = icmp eq ptr %.sroa.57.2.i.i.i.i, null, !dbg !12180
  %.not8.i.i.i.i.i = icmp eq ptr %.sroa.5.2.i.i.i.i, null
  %or.cond.i.i.i.i.i = or i1 %.not8.i.i.i.i.i, %.not.i64.i.i.i.i, !dbg !12181
  br i1 %or.cond.i.i.i.i.i, label %bb.v, label %bb.x, !dbg !12181

bb.v:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit63.i.i.i.i
  store i8 0, ptr %i.bg, align 8, !dbg !12182, !alias.scope !11842, !noalias !11906
  call void @llvm.experimental.noalias.scope.decl(metadata !11907), !dbg !12183
  %i.is = load i64, ptr %i.bt, align 8, !dbg !12184, !alias.scope !11908, !noalias !11906, !noundef !2531 ; 4 uses
  %i.it = load ptr, ptr %i.bu, align 8, !dbg !12185, !alias.scope !11908, !noalias !11906, !nonnull !2531 ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %i.it, i64 %i.is, !dbg !12185
  %i.iv = getelementptr i8, ptr %i.iu, i64 -8, !dbg !12185
  %i.iw = load i64, ptr %i.iv, align 8, !dbg !12186, !noalias !11909, !noundef !2531
end_hunk_0
begin_hunk_1_@_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7strings20function_expr_to_udfsd_0NtB2_10ColumnsUdf8call_udfB17_:bb.a
  %i.gf = phi i64 [ %i.gp, %bb.cc ], [ %.promoted41, %.outer35 ] ; 3 uses
  %i.gg = phi i64 [ %i.gq, %bb.cc ], [ %.promoted, %.outer35 ] ; 3 uses
  %.sroa.015.0.i.i.i.i = phi i64 [ %i.gs, %bb.cc ], [ %.sroa.015.0.i.i.i.i.ph, %.outer35 ], !dbg !122244 ; 2 uses
  %.sroa.011.0.i.i.i.i = phi i64 [ %.sroa.011.1.i.i.i.i, %bb.cc ], [ %.sroa.011.0.i.i.i.i.ph, %.outer35 ], !dbg !122245 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.cc ], [ %.sroa.0.0.i.i.i.i.ph, %.outer35 ], !dbg !122246 ; 4 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.015.0.i.i.i.i, i64 %.sroa.011.0.i.i.i.i), !dbg !122247 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0, !dbg !122248
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !dbg !122242

.lr.ph.i.i.i.i:                                   ; preds = %bb.bb
  %i.gh = load ptr, ptr %i.ai, align 8, !alias.scope !121916, !noalias !121917, !noundef !2531 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gh, null
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 72
  %.promoted.i.i.i.i = load i64, ptr %i.ew, align 8, !noalias !121911
  %.promoted16.i.i.i.i = load i64, ptr %i.ey, align 8, !noalias !121911
  %.phi.trans.insert.i.i.i.promoted.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !121911
  %.promoted20.i.i.i.i = load i64, ptr %i.ez, align 8, !noalias !121911
  %.promoted21.i.i.i.i = load i64, ptr %i.fa, align 8, !noalias !121911
  br label %bb.bc, !dbg !122242

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %bb.bb
  %i.gm = phi i64 [ %i.gc, %bb.bb ], [ %i.ng, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.gn = phi i64 [ %i.gd, %bb.bb ], [ %i.nh, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.go = phi i64 [ %i.ge, %bb.bb ], [ %i.ni, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.gp = phi i64 [ %i.gf, %bb.bb ], [ %i.nj, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.gq = phi i64 [ %i.gg, %bb.bb ], [ %i.nk, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.gr = sub nuw i64 %.sroa.011.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !122249 ; 2 uses
  %i.gs = sub nuw i64 %.sroa.015.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !122250 ; 2 uses
  %i.gt = icmp eq i64 %i.gr, 0, !dbg !122251
  br i1 %i.gt, label %bb.ca, label %bb.cc, !dbg !122251

bb.bc:                                            ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gu = phi i64 [ %i.gc, %.lr.ph.i.i.i.i ], [ %i.ng, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.gv = phi i64 [ %i.gd, %.lr.ph.i.i.i.i ], [ %i.nh, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.gw = phi i64 [ %i.ge, %.lr.ph.i.i.i.i ], [ %i.ni, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 2 uses
  %i.gx = phi i64 [ %i.gf, %.lr.ph.i.i.i.i ], [ %i.nj, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 2 uses
  %i.gy = phi i64 [ %i.gg, %.lr.ph.i.i.i.i ], [ %i.nk, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.gz = phi i64 [ %i.gc, %.lr.ph.i.i.i.i ], [ %i.nl, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 4 uses
  %i.ha = phi i64 [ %i.gd, %.lr.ph.i.i.i.i ], [ %i.nm, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 5 uses
  %.pre.i.i.i4526.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i4524.i.i.i.i, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.hb = phi i64 [ %i.gf, %.lr.ph.i.i.i.i ], [ %i.nn, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.hc = phi i64 [ %i.gg, %.lr.ph.i.i.i.i ], [ %i.no, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 6 uses
  %i.hd = phi i64 [ %.promoted21.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.kc, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 4 uses
  %i.he = phi i64 [ %.promoted20.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.kd, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 5 uses
  %.pre.i.i.i19.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i17.i.i.i.i, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.hf = phi i64 [ %.promoted16.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ke, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.hg = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.kf, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 6 uses
  %.sroa.023.015.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.hh, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1l_4iter5SplitB1R_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.hh = add nuw i64 %.sroa.023.015.i.i.i.i, 1, !dbg !122252 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !121916), !dbg !122253
  br i1 %.not.i.i.i.i.i, label %bb.bi, label %bb.bd, !dbg !122254

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !121918), !dbg !122255
  call void @llvm.experimental.noalias.scope.decl(metadata !121919), !dbg !122256
  %i.hi = load i64, ptr %i.ev, align 8, !dbg !122257, !alias.scope !121920, !noalias !121921, !noundef !2531 ; 4 uses
  %i.hj = icmp eq i64 %i.hi, %i.hg, !dbg !122257
  br i1 %i.hj, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, label %bb.be, !dbg !122257

bb.be:                                            ; preds = %bb.bd
  %i.hk = add nuw i64 %i.hi, 1, !dbg !122258
  store i64 %i.hk, ptr %i.ev, align 8, !dbg !122258, !alias.scope !121920, !noalias !121921
  %i.hl = load ptr, ptr %i.gi, align 8, !dbg !122259, !noalias !121922, !noundef !2531
  %i.hm = load i64, ptr %i.gj, align 8, !dbg !122260, !noalias !121922, !noundef !2531
  %i.hn = icmp ult i64 %i.hi, %i.hm, !dbg !122261
  call void @llvm.assume(i1 %i.hn), !dbg !122262
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hi, !dbg !122263 ; 4 uses
  %i.hp = load ptr, ptr %i.gk, align 8, !dbg !122264, !noalias !121922, !noundef !2531
  %i.hq = load i64, ptr %i.gl, align 8, !dbg !122265, !noalias !121922, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !121923), !dbg !122266
  call void @llvm.experimental.noalias.scope.decl(metadata !121924), !dbg !122266
  %i.hr = load i32, ptr %i.ho, align 4, !dbg !122267, !alias.scope !121923, !noalias !121925, !noundef !2531 ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 13, !dbg !122267
  br i1 %i.hs, label %bb.bg, label %bb.bf, !dbg !122267

bb.bf:                                            ; preds = %bb.be
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 8, !dbg !122268
  %i.hu = load i32, ptr %i.ht, align 4, !dbg !122268, !alias.scope !121923, !noalias !121925, !noundef !2531
  %i.hv = zext i32 %i.hu to i64, !dbg !122268     ; 2 uses
  %i.hw = icmp samesign ugt i64 %i.hq, %i.hv, !dbg !122269
  call void @llvm.assume(i1 %i.hw), !dbg !122270
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hp, i64 %i.hv, !dbg !122271
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 12, !dbg !122272
  %i.hz = load i32, ptr %i.hy, align 4, !dbg !122272, !alias.scope !121923, !noalias !121925, !noundef !2531
  %i.ia = zext i32 %i.hz to i64, !dbg !122272
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8, !dbg !122273
  %i.ic = load ptr, ptr %i.ib, align 8, !dbg !122273, !alias.scope !121926, !noalias !121927, !noundef !2531
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !122274
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !122275

bb.bg:                                            ; preds = %bb.be
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ho, i64 4, !dbg !122276
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !122275

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ie, %bb.bg ], [ %i.id, %bb.bf ], !dbg !122277
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i = zext i32 %i.hr to i64, !dbg !122277
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !122278

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %bb.bd
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ undef, %bb.bd ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ null, %bb.bd ], !dbg !122279
  call void @llvm.experimental.noalias.scope.decl(metadata !121928), !dbg !122280
  %i.if = icmp eq i64 %i.hf, 0, !dbg !122281
  br i1 %i.if, label %bb.bh, label %._crit_edge.i.i.i.i.i.i.i, !dbg !122281

bb.bh:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %i.ig = icmp eq i64 %i.he, 0, !dbg !122282
  br i1 %i.ig, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !122282

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.bh
  %.sroa.0.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.he, i64 64), !dbg !122283 ; 2 uses
  %i.ih = sub nuw i64 %i.he, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !122284 ; 2 uses
  store i64 %i.ih, ptr %i.ez, align 8, !dbg !122284, !alias.scope !121929, !noalias !121921
  %i.ii = load ptr, ptr %i.ex, align 8, !dbg !122285, !alias.scope !121929, !noalias !121921, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ii, align 1, !dbg !122286, !noalias !121930
  %i.ij = add i64 %i.hd, -8, !dbg !122287         ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8, !dbg !122288
  store ptr %i.ik, ptr %i.ex, align 8, !dbg !122289, !alias.scope !121929, !noalias !121921
  store i64 %i.ij, ptr %i.fa, align 8, !dbg !122289, !alias.scope !121929, !noalias !121921
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !122290

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %i.il = phi i64 [ %i.ij, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.hd, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ]
  %i.im = phi i64 [ %i.ih, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.he, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ]
  %i.in = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.hf, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], !dbg !122291
  %i.io = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i19.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], !dbg !122292 ; 2 uses
  %i.ip = trunc i64 %i.io to i8, !dbg !122292
  %i.iq = lshr i64 %i.io, 1, !dbg !122293         ; 2 uses
  store i64 %i.iq, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !dbg !122293, !alias.scope !121929, !noalias !121921
  %i.ir = add i64 %i.in, -1, !dbg !122291         ; 2 uses
  store i64 %i.ir, ptr %i.ey, align 8, !dbg !122291, !alias.scope !121929, !noalias !121921
  %i.is = and i8 %i.ip, 1, !dbg !122294
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !122295

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.bh
  %i.it = phi i64 [ %i.il, %._crit_edge.i.i.i.i.i.i.i ], [ %i.hd, %bb.bh ]
  %i.iu = phi i64 [ %i.im, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.bh ]
  %.pre.i.i.i18.i.i.i.i = phi i64 [ %i.iq, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre.i.i.i19.i.i.i.i, %bb.bh ]
  %i.iv = phi i64 [ %i.ir, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.bh ]
  %.sroa.0.0.i3.i.i.i.i.i.i = phi i8 [ %i.is, %._crit_edge.i.i.i.i.i.i.i ], [ 2, %bb.bh ], !dbg !122296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !122297, !noalias !121931
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i8 noundef %.sroa.0.0.i3.i.i.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i)
          to label %.noexc34.i.i.i unwind label %.loopexit.i.i.i, !dbg !122298, !noalias !121871

.noexc34.i.i.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.iw = load i8, ptr %i.ae, align 8, !dbg !122299, !range !2878, !noalias !121931, !noundef !2531 ; 2 uses
  %.not.i.i.i.i.i.i.not = icmp eq i8 %i.iw, 2, !dbg !122299 ; 2 uses
  %i.ix = trunc nuw i8 %i.iw to i1, !dbg !122300
  %i.iy = load i64, ptr %i.fb, align 8, !dbg !122300, !noalias !121911
  %i.iz = load ptr, ptr %i.fc, align 8, !dbg !122300, !noalias !121911, !nonnull !2531
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.ix, ptr %i.iz, ptr null, !dbg !122300
  %.sroa.8.0.i.i.i.i = select i1 %.not.i.i.i.i.i.i.not, i64 undef, i64 %i.iy, !dbg !122300
  %.sroa.5.0.i.i.i.i = select i1 %.not.i.i.i.i.i.i.not, ptr undef, ptr %.sroa.01.0.i.i.i.i.i.i, !dbg !122300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !122301, !noalias !121931
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !122255

bb.bi:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !121932), !dbg !122302
  %i.ja = load i64, ptr %i.ex, align 8, !dbg !122303, !alias.scope !121933, !noalias !121917, !noundef !2531
  %i.jb = icmp ne i64 %i.hg, %i.ja, !dbg !122304
  call void @llvm.assume(i1 %i.jb), !dbg !122304
  %i.jc = add nuw i64 %i.hg, 1, !dbg !122305      ; 2 uses
  store i64 %i.jc, ptr %i.ew, align 8, !dbg !122305, !alias.scope !121933, !noalias !121917
  %i.jd = load ptr, ptr %i.ev, align 8, !dbg !122306, !alias.scope !121933, !noalias !121917, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40, !dbg !122307
  %i.jf = load ptr, ptr %i.je, align 8, !dbg !122307, !noalias !121934, !noundef !2531
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 48, !dbg !122308
  %i.jh = load i64, ptr %i.jg, align 8, !dbg !122308, !noalias !121934, !noundef !2531
  %i.ji = icmp ult i64 %i.hg, %i.jh, !dbg !122309
  call void @llvm.assume(i1 %i.ji), !dbg !122310
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.hg, !dbg !122311 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 64, !dbg !122312
  %i.jl = load ptr, ptr %i.jk, align 8, !dbg !122312, !noalias !121934, !noundef !2531
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 72, !dbg !122313
  %i.jn = load i64, ptr %i.jm, align 8, !dbg !122313, !noalias !121934, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !121935), !dbg !122314
  call void @llvm.experimental.noalias.scope.decl(metadata !121936), !dbg !122314
  %i.jo = load i32, ptr %i.jj, align 4, !dbg !122315, !alias.scope !121935, !noalias !121937, !noundef !2531 ; 2 uses
  %i.jp = icmp ult i32 %i.jo, 13, !dbg !122315
  br i1 %i.jp, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !122315

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i: ; preds = %bb.bi
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 4, !dbg !122316
  br label %bb.bj, !dbg !122317

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.bi
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 8, !dbg !122318
  %i.js = load i32, ptr %i.jr, align 4, !dbg !122318, !alias.scope !121935, !noalias !121937, !noundef !2531
  %i.jt = zext i32 %i.js to i64, !dbg !122318     ; 2 uses
  %i.ju = icmp samesign ugt i64 %i.jn, %i.jt, !dbg !122319
  call void @llvm.assume(i1 %i.ju), !dbg !122320
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.jt, !dbg !122321
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jj, i64 12, !dbg !122322
  %i.jx = load i32, ptr %i.jw, align 4, !dbg !122322, !alias.scope !121935, !noalias !121937, !noundef !2531
  %i.jy = zext i32 %i.jx to i64, !dbg !122322
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 8, !dbg !122323
  %i.ka = load ptr, ptr %i.jz, align 8, !dbg !122323, !alias.scope !121938, !noalias !121939, !noundef !2531
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jy, !dbg !122324
  br label %bb.bj, !dbg !122317

bb.bj:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i
  %.sroa.0.0.i.i.i.i11.i.i.i.i.i = phi ptr [ %i.jq, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i ], [ %i.kb, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %.sroa.3.0.i.i.i.i12.i.i.i.i.i = zext i32 %i.jo to i64, !dbg !122325
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !122326

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %bb.bj, %.noexc34.i.i.i
  %i.kc = phi i64 [ %i.it, %.noexc34.i.i.i ], [ %i.hd, %bb.bj ]
  %i.kd = phi i64 [ %i.iu, %.noexc34.i.i.i ], [ %i.he, %bb.bj ]
  %.pre.i.i.i17.i.i.i.i = phi i64 [ %.pre.i.i.i18.i.i.i.i, %.noexc34.i.i.i ], [ %.pre.i.i.i19.i.i.i.i, %bb.bj ]
  %i.ke = phi i64 [ %i.iv, %.noexc34.i.i.i ], [ %i.hf, %bb.bj ]
  %i.kf = phi i64 [ %i.hg, %.noexc34.i.i.i ], [ %i.jc, %bb.bj ]
  %.sroa.8.2.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i.i, %.noexc34.i.i.i ], [ %.sroa.3.0.i.i.i.i12.i.i.i.i.i, %bb.bj ], !dbg !122327 ; 3 uses
  %.sroa.5.2.i.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %.noexc34.i.i.i ], [ %.sroa.0.0.i.i.i.i11.i.i.i.i.i, %bb.bj ], !dbg !122327 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !121940), !dbg !122328
  br i1 %.not.i36.i.i.i.i, label %bb.bp, label %bb.bk, !dbg !122329

bb.bk:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !121941), !dbg !122330
  call void @llvm.experimental.noalias.scope.decl(metadata !121942), !dbg !122331
  %i.kg = load i64, ptr %i.fd, align 8, !dbg !122332, !alias.scope !121943, !noalias !121944, !noundef !2531 ; 4 uses
  %i.kh = icmp eq i64 %i.kg, %i.hc, !dbg !122332
  br i1 %i.kh, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i, label %bb.bl, !dbg !122332

bb.bl:                                            ; preds = %bb.bk
  %i.ki = add nuw i64 %i.kg, 1, !dbg !122333
  store i64 %i.ki, ptr %i.fd, align 8, !dbg !122333, !alias.scope !121943, !noalias !121944
  %i.kj = load ptr, ptr %i.fx, align 8, !dbg !122334, !noalias !121945, !noundef !2531
  %i.kk = load i64, ptr %i.fy, align 8, !dbg !122335, !noalias !121945, !noundef !2531
  %i.kl = icmp ult i64 %i.kg, %i.kk, !dbg !122336
  call void @llvm.assume(i1 %i.kl), !dbg !122337
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %i.kg, !dbg !122338 ; 4 uses
  %i.kn = load ptr, ptr %i.fz, align 8, !dbg !122339, !noalias !121945, !noundef !2531
  %i.ko = load i64, ptr %i.ga, align 8, !dbg !122340, !noalias !121945, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !121946), !dbg !122341
  call void @llvm.experimental.noalias.scope.decl(metadata !121947), !dbg !122341
  %i.kp = load i32, ptr %i.km, align 4, !dbg !122342, !alias.scope !121946, !noalias !121948, !noundef !2531 ; 2 uses
  %i.kq = icmp ult i32 %i.kp, 13, !dbg !122342
  br i1 %i.kq, label %bb.bn, label %bb.bm, !dbg !122342

bb.bm:                                            ; preds = %bb.bl
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 8, !dbg !122343
  %i.ks = load i32, ptr %i.kr, align 4, !dbg !122343, !alias.scope !121946, !noalias !121948, !noundef !2531
  %i.kt = zext i32 %i.ks to i64, !dbg !122343     ; 2 uses
  %i.ku = icmp samesign ugt i64 %i.ko, %i.kt, !dbg !122344
  call void @llvm.assume(i1 %i.ku), !dbg !122345
  %i.kv = getelementptr inbounds nuw [24 x i8], ptr %i.kn, i64 %i.kt, !dbg !122346
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 12, !dbg !122347
  %i.kx = load i32, ptr %i.kw, align 4, !dbg !122347, !alias.scope !121946, !noalias !121948, !noundef !2531
  %i.ky = zext i32 %i.kx to i64, !dbg !122347
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 8, !dbg !122348
  %i.la = load ptr, ptr %i.kz, align 8, !dbg !122348, !alias.scope !121949, !noalias !121950, !noundef !2531
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ky, !dbg !122349
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, !dbg !122350

bb.bn:                                            ; preds = %bb.bl
  %i.lc = getelementptr inbounds nuw i8, ptr %i.km, i64 4, !dbg !122351
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, !dbg !122350

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i: ; preds = %bb.bn, %bb.bm
  %.sroa.0.0.i.i.i.i.i.i38.i.i.i.i = phi ptr [ %i.lc, %bb.bn ], [ %i.lb, %bb.bm ], !dbg !122352
  %.sroa.3.0.i.i.i.i.i.i39.i.i.i.i = zext i32 %i.kp to i64, !dbg !122352
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i, !dbg !122353

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, %bb.bk
  %.sroa.3.0.i.i.i41.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i39.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i ], [ undef, %bb.bk ]
  %.sroa.0.0.i.i.i42.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i38.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i ], [ null, %bb.bk ], !dbg !122354
  call void @llvm.experimental.noalias.scope.decl(metadata !121951), !dbg !122355
  %i.ld = icmp eq i64 %i.hb, 0, !dbg !122356
  br i1 %i.ld, label %bb.bo, label %._crit_edge.i.i.i43.i.i.i.i, !dbg !122356

bb.bo:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i
  %i.le = icmp eq i64 %i.ha, 0, !dbg !122357
  br i1 %i.le, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i, !dbg !122357

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i: ; preds = %bb.bo
  %.sroa.0.0.i.i.i.i53.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ha, i64 64), !dbg !122358 ; 2 uses
  %i.lf = sub nuw i64 %i.ha, %.sroa.0.0.i.i.i.i53.i.i.i.i, !dbg !122359 ; 3 uses
  store i64 %i.lf, ptr %i.fh, align 8, !dbg !122359, !alias.scope !121952, !noalias !121944
  %i.lg = load ptr, ptr %i.ff, align 8, !dbg !122360, !alias.scope !121952, !noalias !121944, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i54.i.i.i.i = load i64, ptr %i.lg, align 1, !dbg !122361, !noalias !121953
  %i.lh = add i64 %i.gz, -8, !dbg !122362         ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8, !dbg !122363
  store ptr %i.li, ptr %i.ff, align 8, !dbg !122364, !alias.scope !121952, !noalias !121944
  store i64 %i.lh, ptr %i.fi, align 8, !dbg !122364, !alias.scope !121952, !noalias !121944
  br label %._crit_edge.i.i.i43.i.i.i.i, !dbg !122365

._crit_edge.i.i.i43.i.i.i.i:                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i
  %i.lj = phi i64 [ %i.lh, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], [ %i.gu, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i ]
  %i.lk = phi i64 [ %i.lf, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], [ %i.gv, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i ]
  %i.ll = phi i64 [ %i.lh, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], [ %i.gz, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i ]
  %i.lm = phi i64 [ %i.lf, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], [ %i.ha, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i ]
  %i.ln = phi i64 [ %.sroa.0.0.i.i.i.i53.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], [ %i.hb, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i ], !dbg !122366
  %i.lo = phi i64 [ %.sroa.02.0.copyload.i.i.i54.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], [ %.pre.i.i.i4526.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i ], !dbg !122367 ; 2 uses
  %i.lp = trunc i64 %i.lo to i8, !dbg !122367
  %i.lq = lshr i64 %i.lo, 1, !dbg !122368         ; 3 uses
  store i64 %i.lq, ptr %.phi.trans.insert.i.i.i44.i.i.i.i, align 8, !dbg !122368, !alias.scope !121952, !noalias !121944
  %i.lr = add i64 %i.ln, -1, !dbg !122366         ; 3 uses
  store i64 %i.lr, ptr %i.fg, align 8, !dbg !122366, !alias.scope !121952, !noalias !121944
  %i.ls = and i8 %i.lp, 1, !dbg !122369
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i, !dbg !122370

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i: ; preds = %._crit_edge.i.i.i43.i.i.i.i, %bb.bo
  %i.lt = phi i64 [ %i.lj, %._crit_edge.i.i.i43.i.i.i.i ], [ %i.gu, %bb.bo ]
  %i.lu = phi i64 [ %i.lk, %._crit_edge.i.i.i43.i.i.i.i ], [ %i.gv, %bb.bo ]
  %i.lv = phi i64 [ %i.lq, %._crit_edge.i.i.i43.i.i.i.i ], [ %i.gw, %bb.bo ]
  %i.lw = phi i64 [ %i.lr, %._crit_edge.i.i.i43.i.i.i.i ], [ %i.gx, %bb.bo ]
  %i.lx = phi i64 [ %i.ll, %._crit_edge.i.i.i43.i.i.i.i ], [ %i.gz, %bb.bo ]
  %i.ly = phi i64 [ %i.lm, %._crit_edge.i.i.i43.i.i.i.i ], [ 0, %bb.bo ]
  %.pre.i.i.i4525.i.i.i.i = phi i64 [ %i.lq, %._crit_edge.i.i.i43.i.i.i.i ], [ %.pre.i.i.i4526.i.i.i.i, %bb.bo ]
  %i.lz = phi i64 [ %i.lr, %._crit_edge.i.i.i43.i.i.i.i ], [ 0, %bb.bo ]
  %.sroa.0.0.i3.i.i47.i.i.i.i = phi i8 [ %i.ls, %._crit_edge.i.i.i43.i.i.i.i ], [ 2, %bb.bo ], !dbg !122371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !122372, !noalias !121954
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i8 noundef %.sroa.0.0.i3.i.i47.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i42.i.i.i.i, i64 %.sroa.3.0.i.i.i41.i.i.i.i)
          to label %.noexc35.i.i.i unwind label %.loopexit.i.i.i, !dbg !122373, !noalias !121871

.noexc35.i.i.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i
  %i.ma = load i8, ptr %i.ad, align 8, !dbg !122374, !range !2878, !noalias !121954, !noundef !2531 ; 2 uses
  %.not.i.i48.i.i.i.i.not = icmp eq i8 %i.ma, 2, !dbg !122374 ; 2 uses
  %i.mb = trunc nuw i8 %i.ma to i1, !dbg !122375
  %i.mc = load i64, ptr %i.fj, align 8, !dbg !122375, !noalias !121911
  %i.md = load ptr, ptr %i.fk, align 8, !dbg !122375, !noalias !121911, !nonnull !2531
  %.sroa.01.0.i.i49.i.i.i.i = select i1 %i.mb, ptr %i.md, ptr null, !dbg !122375
  %.sroa.57.0.i.i.i.i = select i1 %.not.i.i48.i.i.i.i.not, ptr undef, ptr %.sroa.01.0.i.i49.i.i.i.i, !dbg !122375
  %.sroa.88.0.i.i.i.i = select i1 %.not.i.i48.i.i.i.i.not, i64 undef, i64 %i.mc, !dbg !122375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !122376, !noalias !121954
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i, !dbg !122330

bb.bp:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !121955), !dbg !122377
  %i.me = load i64, ptr %i.ff, align 8, !dbg !122378, !alias.scope !121956, !noalias !121957, !noundef !2531
  %i.mf = icmp ne i64 %i.hc, %i.me, !dbg !122379
  call void @llvm.assume(i1 %i.mf), !dbg !122379
  %i.mg = add nuw i64 %i.hc, 1, !dbg !122380      ; 3 uses
  store i64 %i.mg, ptr %i.fe, align 8, !dbg !122380, !alias.scope !121956, !noalias !121957
  %i.mh = load ptr, ptr %i.fd, align 8, !dbg !122381, !alias.scope !121956, !noalias !121957, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 40, !dbg !122382
  %i.mj = load ptr, ptr %i.mi, align 8, !dbg !122382, !noalias !121958, !noundef !2531
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 48, !dbg !122383
  %i.ml = load i64, ptr %i.mk, align 8, !dbg !122383, !noalias !121958, !noundef !2531
  %i.mm = icmp ult i64 %i.hc, %i.ml, !dbg !122384
  call void @llvm.assume(i1 %i.mm), !dbg !122385
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.hc, !dbg !122386 ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 64, !dbg !122387
  %i.mp = load ptr, ptr %i.mo, align 8, !dbg !122387, !noalias !121958, !noundef !2531
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mh, i64 72, !dbg !122388
  %i.mr = load i64, ptr %i.mq, align 8, !dbg !122388, !noalias !121958, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !121959), !dbg !122389
  call void @llvm.experimental.noalias.scope.decl(metadata !121960), !dbg !122389
  %i.ms = load i32, ptr %i.mn, align 4, !dbg !122390, !alias.scope !121959, !noalias !121961, !noundef !2531 ; 2 uses
  %i.mt = icmp ult i32 %i.ms, 13, !dbg !122390
  br i1 %i.mt, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i, !dbg !122390

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i: ; preds = %bb.bp
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 4, !dbg !122391
  br label %bb.bq, !dbg !122392

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i: ; preds = %bb.bp
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 8, !dbg !122393
  %i.mw = load i32, ptr %i.mv, align 4, !dbg !122393, !alias.scope !121959, !noalias !121961, !noundef !2531
  %i.mx = zext i32 %i.mw to i64, !dbg !122393     ; 2 uses
  %i.my = icmp samesign ugt i64 %i.mr, %i.mx, !dbg !122394
  call void @llvm.assume(i1 %i.my), !dbg !122395
  %i.mz = getelementptr inbounds nuw [24 x i8], ptr %i.mp, i64 %i.mx, !dbg !122396
  %i.na = getelementptr inbounds nuw i8, ptr %i.mn, i64 12, !dbg !122397
  %i.nb = load i32, ptr %i.na, align 4, !dbg !122397, !alias.scope !121959, !noalias !121961, !noundef !2531
  %i.nc = zext i32 %i.nb to i64, !dbg !122397
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 8, !dbg !122398
  %i.ne = load ptr, ptr %i.nd, align 8, !dbg !122398, !alias.scope !121962, !noalias !121963, !nonnull !2531, !noundef !2531
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nc, !dbg !122399
  br label %bb.bq, !dbg !122392

bb.bq:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i
  %.sroa.0.0.i.i.i.i11.i57.i.i.i.i = phi ptr [ %i.mu, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i ], [ %i.nf, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i ]
  %.sroa.3.0.i.i.i.i12.i58.i.i.i.i = zext i32 %i.ms to i64, !dbg !122400
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i, !dbg !122401

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i: ; preds = %bb.bq, %.noexc35.i.i.i
  %i.ng = phi i64 [ %i.lt, %.noexc35.i.i.i ], [ %i.gu, %bb.bq ] ; 2 uses
  %i.nh = phi i64 [ %i.lu, %.noexc35.i.i.i ], [ %i.gv, %bb.bq ] ; 2 uses
  %i.ni = phi i64 [ %i.lv, %.noexc35.i.i.i ], [ %i.gw, %bb.bq ] ; 2 uses
  %i.nj = phi i64 [ %i.lw, %.noexc35.i.i.i ], [ %i.gx, %bb.bq ] ; 2 uses
  %i.nk = phi i64 [ %i.gy, %.noexc35.i.i.i ], [ %i.mg, %bb.bq ] ; 2 uses
  %i.nl = phi i64 [ %i.lx, %.noexc35.i.i.i ], [ %i.gz, %bb.bq ]
  %i.nm = phi i64 [ %i.ly, %.noexc35.i.i.i ], [ %i.ha, %bb.bq ]
  %.pre.i.i.i4524.i.i.i.i = phi i64 [ %.pre.i.i.i4525.i.i.i.i, %.noexc35.i.i.i ], [ %.pre.i.i.i4526.i.i.i.i, %bb.bq ]
  %i.nn = phi i64 [ %i.lz, %.noexc35.i.i.i ], [ %i.hb, %bb.bq ]
  %i.no = phi i64 [ %i.hc, %.noexc35.i.i.i ], [ %i.mg, %bb.bq ]
  %.sroa.57.2.i.i.i.i = phi ptr [ %.sroa.57.0.i.i.i.i, %.noexc35.i.i.i ], [ %.sroa.0.0.i.i.i.i11.i57.i.i.i.i, %bb.bq ], !dbg !122402 ; 2 uses
  %.sroa.88.2.i.i.i.i = phi i64 [ %.sroa.88.0.i.i.i.i, %.noexc35.i.i.i ], [ %.sroa.3.0.i.i.i.i12.i58.i.i.i.i, %bb.bq ], !dbg !122402 ; 2 uses
  %.not.i63.i.i.i.i = icmp eq ptr %.sroa.5.2.i.i.i.i, null, !dbg !122403
  %.not8.i.i.i.i.i = icmp eq ptr %.sroa.57.2.i.i.i.i, null
  %or.cond.i.i.i.i.i = or i1 %.not.i63.i.i.i.i, %.not8.i.i.i.i.i, !dbg !122404
  br i1 %or.cond.i.i.i.i.i, label %bb.br, label %bb.bt, !dbg !122404

bb.br:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i
  store i8 0, ptr %i.fo, align 8, !dbg !122405, !alias.scope !121902, !noalias !121964
  call void @llvm.experimental.noalias.scope.decl(metadata !121965), !dbg !122406
end_hunk_1
begin_hunk_2_@_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7strings20function_expr_to_udfsd_0NtB2_10ColumnsUdf8call_udfB17_:bb.a
  %i.ty = phi i64 [ %i.ui, %bb.fb ], [ %.promoted49, %.outer ] ; 3 uses
  %i.tz = phi i64 [ %i.uj, %bb.fb ], [ %.promoted48, %.outer ] ; 3 uses
  %.sroa.015.0.i.i101.i.i = phi i64 [ %i.ul, %bb.fb ], [ %.sroa.015.0.i.i101.i.i.ph, %.outer ], !dbg !122596 ; 2 uses
  %.sroa.011.0.i.i102.i.i = phi i64 [ %.sroa.011.1.i.i172.i.i, %bb.fb ], [ %.sroa.011.0.i.i102.i.i.ph, %.outer ], !dbg !122597 ; 2 uses
  %.sroa.0.0.i.i104.i.i = phi ptr [ %.sroa.0.1.i.i173.i.i, %bb.fb ], [ %.sroa.0.0.i.i104.i.i.ph, %.outer ], !dbg !122598 ; 4 uses
  %.sroa.0.0.i.i.i105.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.015.0.i.i101.i.i, i64 %.sroa.011.0.i.i102.i.i), !dbg !122599 ; 4 uses
  %.not.i.i106.i.i = icmp eq i64 %.sroa.0.0.i.i.i105.i.i, 0, !dbg !122600
  br i1 %.not.i.i106.i.i, label %._crit_edge.i.i171.i.i, label %.lr.ph.i.i107.i.i, !dbg !122594

.lr.ph.i.i107.i.i:                                ; preds = %bb.ea
  %i.ua = load ptr, ptr %i.i, align 8, !alias.scope !122030, !noalias !122031, !noundef !2531 ; 5 uses
  %.not.i.i.i108.i.i = icmp eq ptr %i.ua, null
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 40
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 48
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 72
  %.promoted.i.i110.i.i = load i64, ptr %i.sp, align 8, !noalias !122025
  %.promoted16.i.i111.i.i = load i64, ptr %i.sr, align 8, !noalias !122025
  %.phi.trans.insert.i.i.i.promoted.i.i112.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i95.i.i, align 8, !noalias !122025
  %.promoted20.i.i113.i.i = load i64, ptr %i.ss, align 8, !noalias !122025
  %.promoted21.i.i114.i.i = load i64, ptr %i.st, align 8, !noalias !122025
  br label %bb.eb, !dbg !122594

._crit_edge.i.i171.i.i:                           ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %bb.ea
  %i.uf = phi i64 [ %i.tv, %bb.ea ], [ %i.aaz, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.ug = phi i64 [ %i.tw, %bb.ea ], [ %i.aba, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.uh = phi i64 [ %i.tx, %bb.ea ], [ %i.abb, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.ui = phi i64 [ %i.ty, %bb.ea ], [ %i.abc, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.uj = phi i64 [ %i.tz, %bb.ea ], [ %i.abd, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.uk = sub nuw i64 %.sroa.011.0.i.i102.i.i, %.sroa.0.0.i.i.i105.i.i, !dbg !122601 ; 2 uses
  %i.ul = sub nuw i64 %.sroa.015.0.i.i101.i.i, %.sroa.0.0.i.i.i105.i.i, !dbg !122602 ; 2 uses
  %i.um = icmp eq i64 %i.uk, 0, !dbg !122603
  br i1 %i.um, label %bb.ez, label %bb.fb, !dbg !122603

bb.eb:                                            ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %.lr.ph.i.i107.i.i
  %i.un = phi i64 [ %i.tv, %.lr.ph.i.i107.i.i ], [ %i.aaz, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.uo = phi i64 [ %i.tw, %.lr.ph.i.i107.i.i ], [ %i.aba, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.up = phi i64 [ %i.tx, %.lr.ph.i.i107.i.i ], [ %i.abb, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 2 uses
  %i.uq = phi i64 [ %i.ty, %.lr.ph.i.i107.i.i ], [ %i.abc, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 2 uses
  %i.ur = phi i64 [ %i.tz, %.lr.ph.i.i107.i.i ], [ %i.abd, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.us = phi i64 [ %i.tv, %.lr.ph.i.i107.i.i ], [ %i.abe, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 4 uses
  %i.ut = phi i64 [ %i.tw, %.lr.ph.i.i107.i.i ], [ %i.abf, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 5 uses
  %.pre.i.i.i4526.i.i120.i.i = phi i64 [ %i.tx, %.lr.ph.i.i107.i.i ], [ %.pre.i.i.i4524.i.i161.i.i, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.uu = phi i64 [ %i.ty, %.lr.ph.i.i107.i.i ], [ %i.abg, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.uv = phi i64 [ %i.tz, %.lr.ph.i.i107.i.i ], [ %i.abh, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 6 uses
  %i.uw = phi i64 [ %.promoted21.i.i114.i.i, %.lr.ph.i.i107.i.i ], [ %i.xv, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 4 uses
  %i.ux = phi i64 [ %.promoted20.i.i113.i.i, %.lr.ph.i.i107.i.i ], [ %i.xw, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 5 uses
  %.pre.i.i.i19.i.i121.i.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i.i112.i.i, %.lr.ph.i.i107.i.i ], [ %.pre.i.i.i17.i.i141.i.i, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.uy = phi i64 [ %.promoted16.i.i111.i.i, %.lr.ph.i.i107.i.i ], [ %i.xx, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 3 uses
  %i.uz = phi i64 [ %.promoted.i.i110.i.i, %.lr.ph.i.i107.i.i ], [ %i.xy, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ] ; 6 uses
  %.sroa.023.015.i.i122.i.i = phi i64 [ 0, %.lr.ph.i.i107.i.i ], [ %i.va, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split12split_helperINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1l_4iter14SplitInclusiveB22_EE0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.va = add nuw i64 %.sroa.023.015.i.i122.i.i, 1, !dbg !122604 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122030), !dbg !122605
  br i1 %.not.i.i.i108.i.i, label %bb.eh, label %bb.ec, !dbg !122606

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.experimental.noalias.scope.decl(metadata !122032), !dbg !122607
  call void @llvm.experimental.noalias.scope.decl(metadata !122033), !dbg !122608
  %i.vb = load i64, ptr %i.so, align 8, !dbg !122609, !alias.scope !122034, !noalias !122035, !noundef !2531 ; 4 uses
  %i.vc = icmp eq i64 %i.vb, %i.uz, !dbg !122609
  br i1 %i.vc, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i, label %bb.ed, !dbg !122609

bb.ed:                                            ; preds = %bb.ec
  %i.vd = add nuw i64 %i.vb, 1, !dbg !122610
  store i64 %i.vd, ptr %i.so, align 8, !dbg !122610, !alias.scope !122034, !noalias !122035
  %i.ve = load ptr, ptr %i.ub, align 8, !dbg !122611, !noalias !122036, !noundef !2531
  %i.vf = load i64, ptr %i.uc, align 8, !dbg !122612, !noalias !122036, !noundef !2531
  %i.vg = icmp ult i64 %i.vb, %i.vf, !dbg !122613
  call void @llvm.assume(i1 %i.vg), !dbg !122614
  %i.vh = getelementptr inbounds nuw [16 x i8], ptr %i.ve, i64 %i.vb, !dbg !122615 ; 4 uses
  %i.vi = load ptr, ptr %i.ud, align 8, !dbg !122616, !noalias !122036, !noundef !2531
  %i.vj = load i64, ptr %i.ue, align 8, !dbg !122617, !noalias !122036, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !122037), !dbg !122618
  call void @llvm.experimental.noalias.scope.decl(metadata !122038), !dbg !122618
  %i.vk = load i32, ptr %i.vh, align 4, !dbg !122619, !alias.scope !122037, !noalias !122039, !noundef !2531 ; 2 uses
  %i.vl = icmp ult i32 %i.vk, 13, !dbg !122619
  br i1 %i.vl, label %bb.ef, label %bb.ee, !dbg !122619

bb.ee:                                            ; preds = %bb.ed
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vh, i64 8, !dbg !122620
  %i.vn = load i32, ptr %i.vm, align 4, !dbg !122620, !alias.scope !122037, !noalias !122039, !noundef !2531
  %i.vo = zext i32 %i.vn to i64, !dbg !122620     ; 2 uses
  %i.vp = icmp samesign ugt i64 %i.vj, %i.vo, !dbg !122621
  call void @llvm.assume(i1 %i.vp), !dbg !122622
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %i.vi, i64 %i.vo, !dbg !122623
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vh, i64 12, !dbg !122624
  %i.vs = load i32, ptr %i.vr, align 4, !dbg !122624, !alias.scope !122037, !noalias !122039, !noundef !2531
  %i.vt = zext i32 %i.vs to i64, !dbg !122624
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 8, !dbg !122625
  %i.vv = load ptr, ptr %i.vu, align 8, !dbg !122625, !alias.scope !122040, !noalias !122041, !noundef !2531
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vt, !dbg !122626
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i123.i.i, !dbg !122627

bb.ef:                                            ; preds = %bb.ed
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vh, i64 4, !dbg !122628
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i123.i.i, !dbg !122627

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i123.i.i: ; preds = %bb.ef, %bb.ee
  %.sroa.0.0.i.i.i.i.i.i.i.i124.i.i = phi ptr [ %i.vx, %bb.ef ], [ %i.vw, %bb.ee ], !dbg !122629
  %.sroa.3.0.i.i.i.i.i.i.i.i125.i.i = zext i32 %i.vk to i64, !dbg !122629
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i, !dbg !122630

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i123.i.i, %bb.ec
  %.sroa.3.0.i.i.i.i.i127.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i125.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i123.i.i ], [ undef, %bb.ec ]
  %.sroa.0.0.i.i.i.i.i128.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i124.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i123.i.i ], [ null, %bb.ec ], !dbg !122631
  call void @llvm.experimental.noalias.scope.decl(metadata !122042), !dbg !122632
  %i.vy = icmp eq i64 %i.uy, 0, !dbg !122633
  br i1 %i.vy, label %bb.eg, label %._crit_edge.i.i.i.i.i129.i.i, !dbg !122633

bb.eg:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i
  %i.vz = icmp eq i64 %i.ux, 0, !dbg !122634
  br i1 %i.vz, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i130.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i198.i.i, !dbg !122634

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i198.i.i: ; preds = %bb.eg
  %.sroa.0.0.i.i.i.i.i.i199.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ux, i64 64), !dbg !122635 ; 2 uses
  %i.wa = sub nuw i64 %i.ux, %.sroa.0.0.i.i.i.i.i.i199.i.i, !dbg !122636 ; 2 uses
  store i64 %i.wa, ptr %i.ss, align 8, !dbg !122636, !alias.scope !122043, !noalias !122035
  %i.wb = load ptr, ptr %i.sq, align 8, !dbg !122637, !alias.scope !122043, !noalias !122035, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i200.i.i = load i64, ptr %i.wb, align 1, !dbg !122638, !noalias !122044
  %i.wc = add i64 %i.uw, -8, !dbg !122639         ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 8, !dbg !122640
  store ptr %i.wd, ptr %i.sq, align 8, !dbg !122641, !alias.scope !122043, !noalias !122035
  store i64 %i.wc, ptr %i.st, align 8, !dbg !122641, !alias.scope !122043, !noalias !122035
  br label %._crit_edge.i.i.i.i.i129.i.i, !dbg !122642

._crit_edge.i.i.i.i.i129.i.i:                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i198.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i
  %i.we = phi i64 [ %i.wc, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i198.i.i ], [ %i.uw, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i ]
  %i.wf = phi i64 [ %i.wa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i198.i.i ], [ %i.ux, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i ]
  %i.wg = phi i64 [ %.sroa.0.0.i.i.i.i.i.i199.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i198.i.i ], [ %i.uy, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i ], !dbg !122643
  %i.wh = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i200.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i198.i.i ], [ %.pre.i.i.i19.i.i121.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i126.i.i ], !dbg !122644 ; 2 uses
  %i.wi = trunc i64 %i.wh to i8, !dbg !122644
  %i.wj = lshr i64 %i.wh, 1, !dbg !122645         ; 2 uses
  store i64 %i.wj, ptr %.phi.trans.insert.i.i.i.i.i95.i.i, align 8, !dbg !122645, !alias.scope !122043, !noalias !122035
  %i.wk = add i64 %i.wg, -1, !dbg !122643         ; 2 uses
  store i64 %i.wk, ptr %i.sr, align 8, !dbg !122643, !alias.scope !122043, !noalias !122035
  %i.wl = and i8 %i.wi, 1, !dbg !122646
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i130.i.i, !dbg !122647

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i130.i.i: ; preds = %._crit_edge.i.i.i.i.i129.i.i, %bb.eg
  %i.wm = phi i64 [ %i.we, %._crit_edge.i.i.i.i.i129.i.i ], [ %i.uw, %bb.eg ]
  %i.wn = phi i64 [ %i.wf, %._crit_edge.i.i.i.i.i129.i.i ], [ 0, %bb.eg ]
  %.pre.i.i.i18.i.i131.i.i = phi i64 [ %i.wj, %._crit_edge.i.i.i.i.i129.i.i ], [ %.pre.i.i.i19.i.i121.i.i, %bb.eg ]
  %i.wo = phi i64 [ %i.wk, %._crit_edge.i.i.i.i.i129.i.i ], [ 0, %bb.eg ]
  %.sroa.0.0.i3.i.i.i.i132.i.i = phi i8 [ %i.wl, %._crit_edge.i.i.i.i.i129.i.i ], [ 2, %bb.eg ], !dbg !122648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !122649, !noalias !122045
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i8 noundef %.sroa.0.0.i3.i.i.i.i132.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i128.i.i, i64 %.sroa.3.0.i.i.i.i.i127.i.i)
          to label %.noexc34.i135.i.i unwind label %.loopexit.i133.i.i, !dbg !122650, !noalias !121985

.noexc34.i135.i.i:                                ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i130.i.i
  %i.wp = load i8, ptr %i.e, align 8, !dbg !122651, !range !2878, !noalias !122045, !noundef !2531 ; 2 uses
  %.not.i.i.i.i136.i.i.not = icmp eq i8 %i.wp, 2, !dbg !122651 ; 2 uses
  %i.wq = trunc nuw i8 %i.wp to i1, !dbg !122652
  %i.wr = load i64, ptr %i.su, align 8, !dbg !122652, !noalias !122025
  %i.ws = load ptr, ptr %i.sv, align 8, !dbg !122652, !noalias !122025, !nonnull !2531
  %.sroa.01.0.i.i.i.i137.i.i = select i1 %i.wq, ptr %i.ws, ptr null, !dbg !122652
  %.sroa.8.0.i.i138.i.i = select i1 %.not.i.i.i.i136.i.i.not, i64 undef, i64 %i.wr, !dbg !122652
  %.sroa.5.0.i.i139.i.i = select i1 %.not.i.i.i.i136.i.i.not, ptr undef, ptr %.sroa.01.0.i.i.i.i137.i.i, !dbg !122652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !122653, !noalias !122045
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i140.i.i, !dbg !122607

bb.eh:                                            ; preds = %bb.eb
  call void @llvm.experimental.noalias.scope.decl(metadata !122046), !dbg !122654
  %i.wt = load i64, ptr %i.sq, align 8, !dbg !122655, !alias.scope !122047, !noalias !122031, !noundef !2531
  %i.wu = icmp ne i64 %i.uz, %i.wt, !dbg !122656
  call void @llvm.assume(i1 %i.wu), !dbg !122656
  %i.wv = add nuw i64 %i.uz, 1, !dbg !122657      ; 2 uses
  store i64 %i.wv, ptr %i.sp, align 8, !dbg !122657, !alias.scope !122047, !noalias !122031
  %i.ww = load ptr, ptr %i.so, align 8, !dbg !122658, !alias.scope !122047, !noalias !122031, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 40, !dbg !122659
  %i.wy = load ptr, ptr %i.wx, align 8, !dbg !122659, !noalias !122048, !noundef !2531
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ww, i64 48, !dbg !122660
  %i.xa = load i64, ptr %i.wz, align 8, !dbg !122660, !noalias !122048, !noundef !2531
  %i.xb = icmp ult i64 %i.uz, %i.xa, !dbg !122661
  call void @llvm.assume(i1 %i.xb), !dbg !122662
  %i.xc = getelementptr inbounds nuw [16 x i8], ptr %i.wy, i64 %i.uz, !dbg !122663 ; 4 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ww, i64 64, !dbg !122664
  %i.xe = load ptr, ptr %i.xd, align 8, !dbg !122664, !noalias !122048, !noundef !2531
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ww, i64 72, !dbg !122665
  %i.xg = load i64, ptr %i.xf, align 8, !dbg !122665, !noalias !122048, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !122049), !dbg !122666
  call void @llvm.experimental.noalias.scope.decl(metadata !122050), !dbg !122666
  %i.xh = load i32, ptr %i.xc, align 4, !dbg !122667, !alias.scope !122049, !noalias !122051, !noundef !2531 ; 2 uses
  %i.xi = icmp ult i32 %i.xh, 13, !dbg !122667
  br i1 %i.xi, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i204.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i201.i.i, !dbg !122667

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i204.i.i: ; preds = %bb.eh
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xc, i64 4, !dbg !122668
  br label %bb.ei, !dbg !122669

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i201.i.i: ; preds = %bb.eh
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xc, i64 8, !dbg !122670
  %i.xl = load i32, ptr %i.xk, align 4, !dbg !122670, !alias.scope !122049, !noalias !122051, !noundef !2531
  %i.xm = zext i32 %i.xl to i64, !dbg !122670     ; 2 uses
  %i.xn = icmp samesign ugt i64 %i.xg, %i.xm, !dbg !122671
  call void @llvm.assume(i1 %i.xn), !dbg !122672
  %i.xo = getelementptr inbounds nuw [24 x i8], ptr %i.xe, i64 %i.xm, !dbg !122673
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xc, i64 12, !dbg !122674
  %i.xq = load i32, ptr %i.xp, align 4, !dbg !122674, !alias.scope !122049, !noalias !122051, !noundef !2531
  %i.xr = zext i32 %i.xq to i64, !dbg !122674
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 8, !dbg !122675
  %i.xt = load ptr, ptr %i.xs, align 8, !dbg !122675, !alias.scope !122052, !noalias !122053, !noundef !2531
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xr, !dbg !122676
  br label %bb.ei, !dbg !122669

bb.ei:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i201.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i204.i.i
  %.sroa.0.0.i.i.i.i11.i.i.i202.i.i = phi ptr [ %i.xj, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i204.i.i ], [ %i.xu, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i201.i.i ]
  %.sroa.3.0.i.i.i.i12.i.i.i203.i.i = zext i32 %i.xh to i64, !dbg !122677
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i140.i.i, !dbg !122678

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i140.i.i: ; preds = %bb.ei, %.noexc34.i135.i.i
  %i.xv = phi i64 [ %i.wm, %.noexc34.i135.i.i ], [ %i.uw, %bb.ei ]
  %i.xw = phi i64 [ %i.wn, %.noexc34.i135.i.i ], [ %i.ux, %bb.ei ]
  %.pre.i.i.i17.i.i141.i.i = phi i64 [ %.pre.i.i.i18.i.i131.i.i, %.noexc34.i135.i.i ], [ %.pre.i.i.i19.i.i121.i.i, %bb.ei ]
  %i.xx = phi i64 [ %i.wo, %.noexc34.i135.i.i ], [ %i.uy, %bb.ei ]
  %i.xy = phi i64 [ %i.uz, %.noexc34.i135.i.i ], [ %i.wv, %bb.ei ]
  %.sroa.8.2.i.i142.i.i = phi i64 [ %.sroa.8.0.i.i138.i.i, %.noexc34.i135.i.i ], [ %.sroa.3.0.i.i.i.i12.i.i.i203.i.i, %bb.ei ], !dbg !122679 ; 3 uses
  %.sroa.5.2.i.i143.i.i = phi ptr [ %.sroa.5.0.i.i139.i.i, %.noexc34.i135.i.i ], [ %.sroa.0.0.i.i.i.i11.i.i.i202.i.i, %bb.ei ], !dbg !122679 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122054), !dbg !122680
  br i1 %.not.i36.i.i109.i.i, label %bb.eo, label %bb.ej, !dbg !122681

bb.ej:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i140.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !122055), !dbg !122682
  call void @llvm.experimental.noalias.scope.decl(metadata !122056), !dbg !122683
  %i.xz = load i64, ptr %i.sw, align 8, !dbg !122684, !alias.scope !122057, !noalias !122058, !noundef !2531 ; 4 uses
  %i.ya = icmp eq i64 %i.xz, %i.uv, !dbg !122684
  br i1 %i.ya, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i, label %bb.ek, !dbg !122684

bb.ek:                                            ; preds = %bb.ej
  %i.yb = add nuw i64 %i.xz, 1, !dbg !122685
  store i64 %i.yb, ptr %i.sw, align 8, !dbg !122685, !alias.scope !122057, !noalias !122058
  %i.yc = load ptr, ptr %i.tq, align 8, !dbg !122686, !noalias !122059, !noundef !2531
  %i.yd = load i64, ptr %i.tr, align 8, !dbg !122687, !noalias !122059, !noundef !2531
  %i.ye = icmp ult i64 %i.xz, %i.yd, !dbg !122688
  call void @llvm.assume(i1 %i.ye), !dbg !122689
  %i.yf = getelementptr inbounds nuw [16 x i8], ptr %i.yc, i64 %i.xz, !dbg !122690 ; 4 uses
  %i.yg = load ptr, ptr %i.ts, align 8, !dbg !122691, !noalias !122059, !noundef !2531
  %i.yh = load i64, ptr %i.tt, align 8, !dbg !122692, !noalias !122059, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !122060), !dbg !122693
  call void @llvm.experimental.noalias.scope.decl(metadata !122061), !dbg !122693
  %i.yi = load i32, ptr %i.yf, align 4, !dbg !122694, !alias.scope !122060, !noalias !122062, !noundef !2531 ; 2 uses
  %i.yj = icmp ult i32 %i.yi, 13, !dbg !122694
  br i1 %i.yj, label %bb.em, label %bb.el, !dbg !122694

bb.el:                                            ; preds = %bb.ek
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yf, i64 8, !dbg !122695
  %i.yl = load i32, ptr %i.yk, align 4, !dbg !122695, !alias.scope !122060, !noalias !122062, !noundef !2531
  %i.ym = zext i32 %i.yl to i64, !dbg !122695     ; 2 uses
  %i.yn = icmp samesign ugt i64 %i.yh, %i.ym, !dbg !122696
  call void @llvm.assume(i1 %i.yn), !dbg !122697
  %i.yo = getelementptr inbounds nuw [24 x i8], ptr %i.yg, i64 %i.ym, !dbg !122698
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yf, i64 12, !dbg !122699
  %i.yq = load i32, ptr %i.yp, align 4, !dbg !122699, !alias.scope !122060, !noalias !122062, !noundef !2531
  %i.yr = zext i32 %i.yq to i64, !dbg !122699
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 8, !dbg !122700
  %i.yt = load ptr, ptr %i.ys, align 8, !dbg !122700, !alias.scope !122063, !noalias !122064, !noundef !2531
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.yr, !dbg !122701
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i145.i.i, !dbg !122702

bb.em:                                            ; preds = %bb.ek
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yf, i64 4, !dbg !122703
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i145.i.i, !dbg !122702

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i145.i.i: ; preds = %bb.em, %bb.el
  %.sroa.0.0.i.i.i.i.i.i38.i.i146.i.i = phi ptr [ %i.yv, %bb.em ], [ %i.yu, %bb.el ], !dbg !122704
  %.sroa.3.0.i.i.i.i.i.i39.i.i147.i.i = zext i32 %i.yi to i64, !dbg !122704
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i, !dbg !122705

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i145.i.i, %bb.ej
  %.sroa.3.0.i.i.i41.i.i149.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i39.i.i147.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i145.i.i ], [ undef, %bb.ej ]
  %.sroa.0.0.i.i.i42.i.i150.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i38.i.i146.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i145.i.i ], [ null, %bb.ej ], !dbg !122706
  call void @llvm.experimental.noalias.scope.decl(metadata !122065), !dbg !122707
  %i.yw = icmp eq i64 %i.uu, 0, !dbg !122708
  br i1 %i.yw, label %bb.en, label %._crit_edge.i.i.i43.i.i151.i.i, !dbg !122708

bb.en:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i
  %i.yx = icmp eq i64 %i.ut, 0, !dbg !122709
  br i1 %i.yx, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i152.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i, !dbg !122709

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i: ; preds = %bb.en
  %.sroa.0.0.i.i.i.i53.i.i192.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ut, i64 64), !dbg !122710 ; 2 uses
  %i.yy = sub nuw i64 %i.ut, %.sroa.0.0.i.i.i.i53.i.i192.i.i, !dbg !122711 ; 3 uses
  store i64 %i.yy, ptr %i.ta, align 8, !dbg !122711, !alias.scope !122066, !noalias !122058
  %i.yz = load ptr, ptr %i.sy, align 8, !dbg !122712, !alias.scope !122066, !noalias !122058, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i54.i.i193.i.i = load i64, ptr %i.yz, align 1, !dbg !122713, !noalias !122067
  %i.za = add i64 %i.us, -8, !dbg !122714         ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 8, !dbg !122715
  store ptr %i.zb, ptr %i.sy, align 8, !dbg !122716, !alias.scope !122066, !noalias !122058
  store i64 %i.za, ptr %i.tb, align 8, !dbg !122716, !alias.scope !122066, !noalias !122058
  br label %._crit_edge.i.i.i43.i.i151.i.i, !dbg !122717

._crit_edge.i.i.i43.i.i151.i.i:                   ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i
  %i.zc = phi i64 [ %i.za, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i ], [ %i.un, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i ]
  %i.zd = phi i64 [ %i.yy, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i ], [ %i.uo, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i ]
  %i.ze = phi i64 [ %i.za, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i ], [ %i.us, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i ]
  %i.zf = phi i64 [ %i.yy, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i ], [ %i.ut, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i ]
  %i.zg = phi i64 [ %.sroa.0.0.i.i.i.i53.i.i192.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i ], [ %i.uu, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i ], !dbg !122718
  %i.zh = phi i64 [ %.sroa.02.0.copyload.i.i.i54.i.i193.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i191.i.i ], [ %.pre.i.i.i4526.i.i120.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i148.i.i ], !dbg !122719 ; 2 uses
  %i.zi = trunc i64 %i.zh to i8, !dbg !122719
  %i.zj = lshr i64 %i.zh, 1, !dbg !122720         ; 3 uses
  store i64 %i.zj, ptr %.phi.trans.insert.i.i.i44.i.i96.i.i, align 8, !dbg !122720, !alias.scope !122066, !noalias !122058
  %i.zk = add i64 %i.zg, -1, !dbg !122718         ; 3 uses
  store i64 %i.zk, ptr %i.sz, align 8, !dbg !122718, !alias.scope !122066, !noalias !122058
  %i.zl = and i8 %i.zi, 1, !dbg !122721
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i152.i.i, !dbg !122722

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i152.i.i: ; preds = %._crit_edge.i.i.i43.i.i151.i.i, %bb.en
  %i.zm = phi i64 [ %i.zc, %._crit_edge.i.i.i43.i.i151.i.i ], [ %i.un, %bb.en ]
  %i.zn = phi i64 [ %i.zd, %._crit_edge.i.i.i43.i.i151.i.i ], [ %i.uo, %bb.en ]
  %i.zo = phi i64 [ %i.zj, %._crit_edge.i.i.i43.i.i151.i.i ], [ %i.up, %bb.en ]
  %i.zp = phi i64 [ %i.zk, %._crit_edge.i.i.i43.i.i151.i.i ], [ %i.uq, %bb.en ]
  %i.zq = phi i64 [ %i.ze, %._crit_edge.i.i.i43.i.i151.i.i ], [ %i.us, %bb.en ]
  %i.zr = phi i64 [ %i.zf, %._crit_edge.i.i.i43.i.i151.i.i ], [ 0, %bb.en ]
  %.pre.i.i.i4525.i.i153.i.i = phi i64 [ %i.zj, %._crit_edge.i.i.i43.i.i151.i.i ], [ %.pre.i.i.i4526.i.i120.i.i, %bb.en ]
  %i.zs = phi i64 [ %i.zk, %._crit_edge.i.i.i43.i.i151.i.i ], [ 0, %bb.en ]
  %.sroa.0.0.i3.i.i47.i.i154.i.i = phi i8 [ %i.zl, %._crit_edge.i.i.i43.i.i151.i.i ], [ 2, %bb.en ], !dbg !122723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !122724, !noalias !122068
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i8 noundef %.sroa.0.0.i3.i.i47.i.i154.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i42.i.i150.i.i, i64 %.sroa.3.0.i.i.i41.i.i149.i.i)
          to label %.noexc35.i155.i.i unwind label %.loopexit.i133.i.i, !dbg !122725, !noalias !121985

.noexc35.i155.i.i:                                ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i152.i.i
  %i.zt = load i8, ptr %i.d, align 8, !dbg !122726, !range !2878, !noalias !122068, !noundef !2531 ; 2 uses
  %.not.i.i48.i.i156.i.i.not = icmp eq i8 %i.zt, 2, !dbg !122726 ; 2 uses
  %i.zu = trunc nuw i8 %i.zt to i1, !dbg !122727
  %i.zv = load i64, ptr %i.tc, align 8, !dbg !122727, !noalias !122025
  %i.zw = load ptr, ptr %i.td, align 8, !dbg !122727, !noalias !122025, !nonnull !2531
  %.sroa.01.0.i.i49.i.i157.i.i = select i1 %i.zu, ptr %i.zw, ptr null, !dbg !122727
  %.sroa.57.0.i.i158.i.i = select i1 %.not.i.i48.i.i156.i.i.not, ptr undef, ptr %.sroa.01.0.i.i49.i.i157.i.i, !dbg !122727
  %.sroa.88.0.i.i159.i.i = select i1 %.not.i.i48.i.i156.i.i.not, i64 undef, i64 %i.zv, !dbg !122727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !122728, !noalias !122068
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i160.i.i, !dbg !122682

bb.eo:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i140.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !122069), !dbg !122729
  %i.zx = load i64, ptr %i.sy, align 8, !dbg !122730, !alias.scope !122070, !noalias !122071, !noundef !2531
  %i.zy = icmp ne i64 %i.uv, %i.zx, !dbg !122731
  call void @llvm.assume(i1 %i.zy), !dbg !122731
  %i.zz = add nuw i64 %i.uv, 1, !dbg !122732      ; 3 uses
  store i64 %i.zz, ptr %i.sx, align 8, !dbg !122732, !alias.scope !122070, !noalias !122071
  %i.aaa = load ptr, ptr %i.sw, align 8, !dbg !122733, !alias.scope !122070, !noalias !122071, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 40, !dbg !122734
  %i.aac = load ptr, ptr %i.aab, align 8, !dbg !122734, !noalias !122072, !noundef !2531
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 48, !dbg !122735
  %i.aae = load i64, ptr %i.aad, align 8, !dbg !122735, !noalias !122072, !noundef !2531
  %i.aaf = icmp ult i64 %i.uv, %i.aae, !dbg !122736
  call void @llvm.assume(i1 %i.aaf), !dbg !122737
  %i.aag = getelementptr inbounds nuw [16 x i8], ptr %i.aac, i64 %i.uv, !dbg !122738 ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaa, i64 64, !dbg !122739
  %i.aai = load ptr, ptr %i.aah, align 8, !dbg !122739, !noalias !122072, !noundef !2531
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaa, i64 72, !dbg !122740
  %i.aak = load i64, ptr %i.aaj, align 8, !dbg !122740, !noalias !122072, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !122073), !dbg !122741
  call void @llvm.experimental.noalias.scope.decl(metadata !122074), !dbg !122741
  %i.aal = load i32, ptr %i.aag, align 4, !dbg !122742, !alias.scope !122073, !noalias !122075, !noundef !2531 ; 2 uses
  %i.aam = icmp ult i32 %i.aal, 13, !dbg !122742
  br i1 %i.aam, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i197.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i194.i.i, !dbg !122742

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i197.i.i: ; preds = %bb.eo
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aag, i64 4, !dbg !122743
  br label %bb.ep, !dbg !122744

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i194.i.i: ; preds = %bb.eo
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aag, i64 8, !dbg !122745
  %i.aap = load i32, ptr %i.aao, align 4, !dbg !122745, !alias.scope !122073, !noalias !122075, !noundef !2531
  %i.aaq = zext i32 %i.aap to i64, !dbg !122745   ; 2 uses
  %i.aar = icmp samesign ugt i64 %i.aak, %i.aaq, !dbg !122746
  call void @llvm.assume(i1 %i.aar), !dbg !122747
  %i.aas = getelementptr inbounds nuw [24 x i8], ptr %i.aai, i64 %i.aaq, !dbg !122748
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aag, i64 12, !dbg !122749
  %i.aau = load i32, ptr %i.aat, align 4, !dbg !122749, !alias.scope !122073, !noalias !122075, !noundef !2531
  %i.aav = zext i32 %i.aau to i64, !dbg !122749
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aas, i64 8, !dbg !122750
  %i.aax = load ptr, ptr %i.aaw, align 8, !dbg !122750, !alias.scope !122076, !noalias !122077, !nonnull !2531, !noundef !2531
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.aav, !dbg !122751
  br label %bb.ep, !dbg !122744

bb.ep:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i194.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i197.i.i
  %.sroa.0.0.i.i.i.i11.i57.i.i195.i.i = phi ptr [ %i.aan, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i197.i.i ], [ %i.aay, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i194.i.i ]
  %.sroa.3.0.i.i.i.i12.i58.i.i196.i.i = zext i32 %i.aal to i64, !dbg !122752
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i160.i.i, !dbg !122753

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i160.i.i: ; preds = %bb.ep, %.noexc35.i155.i.i
  %i.aaz = phi i64 [ %i.zm, %.noexc35.i155.i.i ], [ %i.un, %bb.ep ] ; 2 uses
  %i.aba = phi i64 [ %i.zn, %.noexc35.i155.i.i ], [ %i.uo, %bb.ep ] ; 2 uses
  %i.abb = phi i64 [ %i.zo, %.noexc35.i155.i.i ], [ %i.up, %bb.ep ] ; 2 uses
  %i.abc = phi i64 [ %i.zp, %.noexc35.i155.i.i ], [ %i.uq, %bb.ep ] ; 2 uses
  %i.abd = phi i64 [ %i.ur, %.noexc35.i155.i.i ], [ %i.zz, %bb.ep ] ; 2 uses
  %i.abe = phi i64 [ %i.zq, %.noexc35.i155.i.i ], [ %i.us, %bb.ep ]
  %i.abf = phi i64 [ %i.zr, %.noexc35.i155.i.i ], [ %i.ut, %bb.ep ]
  %.pre.i.i.i4524.i.i161.i.i = phi i64 [ %.pre.i.i.i4525.i.i153.i.i, %.noexc35.i155.i.i ], [ %.pre.i.i.i4526.i.i120.i.i, %bb.ep ]
  %i.abg = phi i64 [ %i.zs, %.noexc35.i155.i.i ], [ %i.uu, %bb.ep ]
  %i.abh = phi i64 [ %i.uv, %.noexc35.i155.i.i ], [ %i.zz, %bb.ep ]
  %.sroa.57.2.i.i163.i.i = phi ptr [ %.sroa.57.0.i.i158.i.i, %.noexc35.i155.i.i ], [ %.sroa.0.0.i.i.i.i11.i57.i.i195.i.i, %bb.ep ], !dbg !122754 ; 2 uses
  %.sroa.88.2.i.i164.i.i = phi i64 [ %.sroa.88.0.i.i159.i.i, %.noexc35.i155.i.i ], [ %.sroa.3.0.i.i.i.i12.i58.i.i196.i.i, %bb.ep ], !dbg !122754 ; 2 uses
  %.not.i63.i.i165.i.i = icmp eq ptr %.sroa.5.2.i.i143.i.i, null, !dbg !122755
  %.not8.i.i.i166.i.i = icmp eq ptr %.sroa.57.2.i.i163.i.i, null
  %or.cond.i.i.i167.i.i = or i1 %.not.i63.i.i165.i.i, %.not8.i.i.i166.i.i, !dbg !122756
  br i1 %or.cond.i.i.i167.i.i, label %bb.eq, label %bb.es, !dbg !122756

bb.eq:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i160.i.i
  store i8 0, ptr %i.th, align 8, !dbg !122757, !alias.scope !122016, !noalias !122078
  call void @llvm.experimental.noalias.scope.decl(metadata !122079), !dbg !122758
end_hunk_2
begin_hunk_3_@_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7strings20function_expr_to_udfsf_0NtB2_10ColumnsUdf8call_udfB17_:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br label %.outer599, !dbg !125251

.outer599:                                        ; preds = %.noexc47.i.i.i, %.noexc18.i.i.i
  %.sroa.015.0.i.i.i.i.ph = phi i64 [ %i.wr, %.noexc47.i.i.i ], [ %i.bx, %.noexc18.i.i.i ]
  %.sroa.011.0.i.i.i.i.ph = phi i64 [ %.sroa.011.1.i.i.i.i, %.noexc47.i.i.i ], [ %i.bv, %.noexc18.i.i.i ]
  %.sroa.03.0.i.i.i.i.ph.pn = phi ptr [ %.sroa.03.0.i.i.i.i.ph, %.noexc47.i.i.i ], [ %.val14.i.i.i, %.noexc18.i.i.i ]
  %.sroa.0.0.i.i.i.i.ph = phi ptr [ %.sroa.0.1.i.i.i.i, %.noexc47.i.i.i ], [ %i.bs, %.noexc18.i.i.i ]
  %.sroa.03.0.i.i.i.i.ph = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.ph.pn, i64 16, !dbg !125252 ; 3 uses
  br label %bb.o, !dbg !125253

.invoke324.i.i.i:                                 ; preds = %bb.m, %bb.l
  %i.ct = phi ptr [ @74, %bb.l ], [ @73, %bb.m ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #36
          to label %.cont325.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !dbg !125254, !noalias !124873

.cont325.i.i.i:                                   ; preds = %.invoke324.i.i.i
  unreachable

bb.o:                                             ; preds = %.outer599, %bb.cq
  %.sroa.015.0.i.i.i.i = phi i64 [ %i.cz, %bb.cq ], [ %.sroa.015.0.i.i.i.i.ph, %.outer599 ], !dbg !125255 ; 2 uses
  %.sroa.011.0.i.i.i.i = phi i64 [ %.sroa.011.1.i.i.i.i, %bb.cq ], [ %.sroa.011.0.i.i.i.i.ph, %.outer599 ], !dbg !125256 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.cq ], [ %.sroa.0.0.i.i.i.i.ph, %.outer599 ], !dbg !125257 ; 4 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.015.0.i.i.i.i, i64 %.sroa.011.0.i.i.i.i), !dbg !125258 ; 4 uses
  %.not136.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0, !dbg !125259
  br i1 %.not136.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, !dbg !125253

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.o
  %.pre.i.i.i.i = load ptr, ptr %i.ac, align 8, !dbg !125260, !alias.scope !124887, !noalias !124888 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 72
  br label %.lr.ph.i.i.i.i, !dbg !125261

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1o_4iter5SplitB1U_EEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %bb.o
  %i.cy = sub nuw i64 %.sroa.011.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !125262 ; 2 uses
  %i.cz = sub nuw i64 %.sroa.015.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !125263 ; 2 uses
  %i.da = icmp eq i64 %i.cy, 0, !dbg !125264
  br i1 %i.da, label %bb.co, label %bb.cq, !dbg !125264

.lr.ph.i.i.i.i:                                   ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1o_4iter5SplitB1U_EEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.023.0135.i.i.i.i = phi i64 [ %i.db, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1o_4iter5SplitB1U_EEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.db = add nuw i64 %.sroa.023.0135.i.i.i.i, 1, !dbg !125265 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124887), !dbg !125266
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.p, !dbg !125261

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !124889), !dbg !125267
  call void @llvm.experimental.noalias.scope.decl(metadata !124890), !dbg !125268
  %i.dc = load i64, ptr %i.by, align 8, !dbg !125269, !alias.scope !124891, !noalias !124892, !noundef !2531 ; 4 uses
  %i.dd = load i64, ptr %i.bz, align 8, !dbg !125270, !alias.scope !124891, !noalias !124892, !noundef !2531
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !125269
  br i1 %i.de, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, label %bb.q, !dbg !125269

bb.q:                                             ; preds = %bb.p
  %i.df = add nuw i64 %i.dc, 1, !dbg !125271
  store i64 %i.df, ptr %i.by, align 8, !dbg !125271, !alias.scope !124891, !noalias !124892
  %i.dg = load ptr, ptr %i.cu, align 8, !dbg !125272, !noalias !124893, !noundef !2531
  %i.dh = load i64, ptr %i.cv, align 8, !dbg !125273, !noalias !124893, !noundef !2531
  %i.di = icmp ult i64 %i.dc, %i.dh, !dbg !125274
  call void @llvm.assume(i1 %i.di), !dbg !125275
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !125276 ; 4 uses
  %i.dk = load ptr, ptr %i.cw, align 8, !dbg !125277, !noalias !124893, !noundef !2531
  %i.dl = load i64, ptr %i.cx, align 8, !dbg !125278, !noalias !124893, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !124894), !dbg !125279
  call void @llvm.experimental.noalias.scope.decl(metadata !124895), !dbg !125279
  %i.dm = load i32, ptr %i.dj, align 4, !dbg !125280, !alias.scope !124894, !noalias !124896, !noundef !2531 ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 13, !dbg !125280
  br i1 %i.dn, label %bb.s, label %bb.r, !dbg !125280

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8, !dbg !125281
  %i.dp = load i32, ptr %i.do, align 4, !dbg !125281, !alias.scope !124894, !noalias !124896, !noundef !2531
  %i.dq = zext i32 %i.dp to i64, !dbg !125281     ; 2 uses
  %i.dr = icmp samesign ugt i64 %i.dl, %i.dq, !dbg !125282
  call void @llvm.assume(i1 %i.dr), !dbg !125283
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dq, !dbg !125284
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 12, !dbg !125285
  %i.du = load i32, ptr %i.dt, align 4, !dbg !125285, !alias.scope !124894, !noalias !124896, !noundef !2531
  %i.dv = zext i32 %i.du to i64, !dbg !125285
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8, !dbg !125286
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !125286, !alias.scope !124897, !noalias !124898, !noundef !2531
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dv, !dbg !125287
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !125288

bb.s:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 4, !dbg !125289
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !125288

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dz, %bb.s ], [ %i.dy, %bb.r ], !dbg !125290
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i = zext i32 %i.dm to i64, !dbg !125290
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !125291

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %bb.p
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ undef, %bb.p ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ null, %bb.p ], !dbg !125292
  call void @llvm.experimental.noalias.scope.decl(metadata !124899), !dbg !125293
  %i.ea = load i64, ptr %i.cb, align 8, !dbg !125294, !alias.scope !124900, !noalias !124892, !noundef !2531 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0, !dbg !125294
  br i1 %i.eb, label %bb.t, label %._crit_edge.i.i.i.i.i.i.i, !dbg !125294

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !dbg !125295, !alias.scope !124900, !noalias !124892
  br label %bb.u, !dbg !125294

bb.t:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %i.ec = load i64, ptr %i.cc, align 8, !dbg !125296, !alias.scope !124900, !noalias !124892, !noundef !2531 ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !125296
  br i1 %i.ed, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !125296

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %.sroa.0.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ec, i64 64), !dbg !125297 ; 2 uses
  %i.ee = sub nuw i64 %i.ec, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !125298
  store i64 %i.ee, ptr %i.cc, align 8, !dbg !125298, !alias.scope !124900, !noalias !124892
  %i.ef = load ptr, ptr %i.ca, align 8, !dbg !125299, !alias.scope !124900, !noalias !124892, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ef, align 1, !dbg !125300, !noalias !124901
  %i.eg = load i64, ptr %i.cd, align 8, !dbg !125301, !alias.scope !124900, !noalias !124892, !noundef !2531
  %i.eh = add i64 %i.eg, -8, !dbg !125302
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8, !dbg !125303
  store ptr %i.ei, ptr %i.ca, align 8, !dbg !125304, !alias.scope !124900, !noalias !124892
  store i64 %i.eh, ptr %i.cd, align 8, !dbg !125304, !alias.scope !124900, !noalias !124892
  br label %bb.u, !dbg !125305

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.ej = phi i64 [ %i.ea, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], !dbg !125306
  %i.ek = phi i64 [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], !dbg !125295 ; 2 uses
  %i.el = trunc i64 %i.ek to i8, !dbg !125295
  %i.em = lshr i64 %i.ek, 1, !dbg !125307
  store i64 %i.em, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !dbg !125307, !alias.scope !124900, !noalias !124892
  %i.en = add i64 %i.ej, -1, !dbg !125306
  store i64 %i.en, ptr %i.cb, align 8, !dbg !125306, !alias.scope !124900, !noalias !124892
  %i.eo = and i8 %i.el, 1, !dbg !125308
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !125309

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.sroa.0.0.i3.i.i.i.i.i.i = phi i8 [ %i.eo, %bb.u ], [ 2, %bb.t ], !dbg !125310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !125311, !noalias !124902
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i8 noundef %.sroa.0.0.i3.i.i.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !dbg !125312, !noalias !124873

.noexc20.i.i.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.ep = load i8, ptr %i.y, align 8, !dbg !125313, !range !2878, !noalias !124902, !noundef !2531 ; 2 uses
  %.not.i.i.i.i.i.i.not = icmp eq i8 %i.ep, 2, !dbg !125313 ; 2 uses
  %i.eq = trunc nuw i8 %i.ep to i1, !dbg !125314
  %i.er = load i64, ptr %i.ce, align 8, !dbg !125314, !noalias !124882
  %i.es = load ptr, ptr %i.cf, align 8, !dbg !125314, !noalias !124882, !nonnull !2531
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.eq, ptr %i.es, ptr null, !dbg !125314
  %.sroa.8.0.i.i.i.i = select i1 %.not.i.i.i.i.i.i.not, i64 undef, i64 %i.er, !dbg !125314
  %.sroa.5.0.i.i.i.i = select i1 %.not.i.i.i.i.i.i.not, ptr undef, ptr %.sroa.01.0.i.i.i.i.i.i, !dbg !125314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !125315, !noalias !124902
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !125267

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !124903), !dbg !125316
  %i.et = load i64, ptr %i.bz, align 8, !dbg !125317, !alias.scope !124904, !noalias !124888, !noundef !2531 ; 4 uses
  %i.eu = load i64, ptr %i.ca, align 8, !dbg !125318, !alias.scope !124904, !noalias !124888, !noundef !2531
  %i.ev = icmp ne i64 %i.et, %i.eu, !dbg !125317
  call void @llvm.assume(i1 %i.ev), !dbg !125317
  %i.ew = add nuw i64 %i.et, 1, !dbg !125319
  store i64 %i.ew, ptr %i.bz, align 8, !dbg !125319, !alias.scope !124904, !noalias !124888
  %i.ex = load ptr, ptr %i.by, align 8, !dbg !125320, !alias.scope !124904, !noalias !124888, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40, !dbg !125321
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !125321, !noalias !124905, !noundef !2531
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 48, !dbg !125322
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !125322, !noalias !124905, !noundef !2531
  %i.fc = icmp ult i64 %i.et, %i.fb, !dbg !125323
  call void @llvm.assume(i1 %i.fc), !dbg !125324
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.et, !dbg !125325 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 64, !dbg !125326
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !125326, !noalias !124905, !noundef !2531
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 72, !dbg !125327
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !125327, !noalias !124905, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !124906), !dbg !125328
  call void @llvm.experimental.noalias.scope.decl(metadata !124907), !dbg !125328
  %i.fi = load i32, ptr %i.fd, align 4, !dbg !125329, !alias.scope !124906, !noalias !124908, !noundef !2531 ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 13, !dbg !125329
  br i1 %i.fj, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !125329

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i: ; preds = %bb.v
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 4, !dbg !125330
  br label %bb.w, !dbg !125331

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !125332
  %i.fm = load i32, ptr %i.fl, align 4, !dbg !125332, !alias.scope !124906, !noalias !124908, !noundef !2531
  %i.fn = zext i32 %i.fm to i64, !dbg !125332     ; 2 uses
  %i.fo = icmp samesign ugt i64 %i.fh, %i.fn, !dbg !125333
  call void @llvm.assume(i1 %i.fo), !dbg !125334
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.fn, !dbg !125335
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 12, !dbg !125336
  %i.fr = load i32, ptr %i.fq, align 4, !dbg !125336, !alias.scope !124906, !noalias !124908, !noundef !2531
  %i.fs = zext i32 %i.fr to i64, !dbg !125336
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 8, !dbg !125337
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !125337, !alias.scope !124909, !noalias !124910, !noundef !2531
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs, !dbg !125338
  br label %bb.w, !dbg !125331

bb.w:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i
  %.sroa.0.0.i.i.i.i11.i.i.i.i.i = phi ptr [ %i.fk, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i ], [ %i.fv, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %.sroa.3.0.i.i.i.i12.i.i.i.i.i = zext i32 %i.fi to i64, !dbg !125339
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !125340

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %bb.w, %.noexc20.i.i.i
  %.sroa.8.2.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i.i, %.noexc20.i.i.i ], [ %.sroa.3.0.i.i.i.i12.i.i.i.i.i, %bb.w ], !dbg !125341 ; 8 uses
  %.sroa.5.2.i.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %.noexc20.i.i.i ], [ %.sroa.0.0.i.i.i.i11.i.i.i.i.i, %bb.w ], !dbg !125341 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124911), !dbg !125342
  %i.fw = load ptr, ptr %i.ab, align 8, !dbg !125343, !alias.scope !124911, !noalias !124912, !noundef !2531 ; 5 uses
  %.not.i36.i.i.i.i = icmp eq ptr %i.fw, null, !dbg !125343
  br i1 %.not.i36.i.i.i.i, label %bb.ad, label %bb.x, !dbg !125344

bb.x:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !124913), !dbg !125345
  call void @llvm.experimental.noalias.scope.decl(metadata !124914), !dbg !125346
  %i.fx = load i64, ptr %i.cg, align 8, !dbg !125347, !alias.scope !124915, !noalias !124916, !noundef !2531 ; 4 uses
  %i.fy = load i64, ptr %i.ch, align 8, !dbg !125348, !alias.scope !124915, !noalias !124916, !noundef !2531
  %i.fz = icmp eq i64 %i.fx, %i.fy, !dbg !125347
  br i1 %i.fz, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i, label %bb.y, !dbg !125347

bb.y:                                             ; preds = %bb.x
  %i.ga = add nuw i64 %i.fx, 1, !dbg !125349
  store i64 %i.ga, ptr %i.cg, align 8, !dbg !125349, !alias.scope !124915, !noalias !124916
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 40, !dbg !125350
  %i.gc = load ptr, ptr %i.gb, align 8, !dbg !125350, !noalias !124917, !noundef !2531
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 48, !dbg !125351
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !125351, !noalias !124917, !noundef !2531
  %i.gf = icmp ult i64 %i.fx, %i.ge, !dbg !125352
  call void @llvm.assume(i1 %i.gf), !dbg !125353
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.fx, !dbg !125354 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 64, !dbg !125355
  %i.gi = load ptr, ptr %i.gh, align 8, !dbg !125355, !noalias !124917, !noundef !2531
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 72, !dbg !125356
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !125356, !noalias !124917, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !124918), !dbg !125357
  call void @llvm.experimental.noalias.scope.decl(metadata !124919), !dbg !125357
  %i.gl = load i32, ptr %i.gg, align 4, !dbg !125358, !alias.scope !124918, !noalias !124920, !noundef !2531 ; 2 uses
  %i.gm = icmp ult i32 %i.gl, 13, !dbg !125358
  br i1 %i.gm, label %bb.aa, label %bb.z, !dbg !125358

bb.z:                                             ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 8, !dbg !125359
  %i.go = load i32, ptr %i.gn, align 4, !dbg !125359, !alias.scope !124918, !noalias !124920, !noundef !2531
  %i.gp = zext i32 %i.go to i64, !dbg !125359     ; 2 uses
  %i.gq = icmp samesign ugt i64 %i.gk, %i.gp, !dbg !125360
  call void @llvm.assume(i1 %i.gq), !dbg !125361
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %i.gp, !dbg !125362
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 12, !dbg !125363
  %i.gt = load i32, ptr %i.gs, align 4, !dbg !125363, !alias.scope !124918, !noalias !124920, !noundef !2531
  %i.gu = zext i32 %i.gt to i64, !dbg !125363
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8, !dbg !125364
  %i.gw = load ptr, ptr %i.gv, align 8, !dbg !125364, !alias.scope !124921, !noalias !124922, !noundef !2531
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gu, !dbg !125365
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, !dbg !125366

bb.aa:                                            ; preds = %bb.y
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gg, i64 4, !dbg !125367
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, !dbg !125366

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i.i38.i.i.i.i = phi ptr [ %i.gy, %bb.aa ], [ %i.gx, %bb.z ], !dbg !125368
  %.sroa.3.0.i.i.i.i.i.i39.i.i.i.i = zext i32 %i.gl to i64, !dbg !125368
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i, !dbg !125369

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, %bb.x
  %.sroa.3.0.i.i.i41.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i39.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i ], [ undef, %bb.x ]
  %.sroa.0.0.i.i.i42.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i38.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i ], [ null, %bb.x ], !dbg !125370
  call void @llvm.experimental.noalias.scope.decl(metadata !124923), !dbg !125371
  %i.gz = load i64, ptr %i.cj, align 8, !dbg !125372, !alias.scope !124924, !noalias !124916, !noundef !2531 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0, !dbg !125372
  br i1 %i.ha, label %bb.ab, label %._crit_edge.i.i.i43.i.i.i.i, !dbg !125372

._crit_edge.i.i.i43.i.i.i.i:                      ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i
  %.pre.i.i.i45.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i44.i.i.i.i, align 8, !dbg !125373, !alias.scope !124924, !noalias !124916
  br label %bb.ac, !dbg !125372

bb.ab:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i
  %i.hb = load i64, ptr %i.ck, align 8, !dbg !125374, !alias.scope !124924, !noalias !124916, !noundef !2531 ; 3 uses
  %i.hc = icmp eq i64 %i.hb, 0, !dbg !125374
  br i1 %i.hc, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i, !dbg !125374

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i: ; preds = %bb.ab
  %.sroa.0.0.i.i.i.i53.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hb, i64 64), !dbg !125375 ; 2 uses
  %i.hd = sub nuw i64 %i.hb, %.sroa.0.0.i.i.i.i53.i.i.i.i, !dbg !125376
  store i64 %i.hd, ptr %i.ck, align 8, !dbg !125376, !alias.scope !124924, !noalias !124916
  %i.he = load ptr, ptr %i.ci, align 8, !dbg !125377, !alias.scope !124924, !noalias !124916, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i54.i.i.i.i = load i64, ptr %i.he, align 1, !dbg !125378, !noalias !124925
  %i.hf = load i64, ptr %i.cl, align 8, !dbg !125379, !alias.scope !124924, !noalias !124916, !noundef !2531
  %i.hg = add i64 %i.hf, -8, !dbg !125380
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8, !dbg !125381
  store ptr %i.hh, ptr %i.ci, align 8, !dbg !125382, !alias.scope !124924, !noalias !124916
  store i64 %i.hg, ptr %i.cl, align 8, !dbg !125382, !alias.scope !124924, !noalias !124916
  br label %bb.ac, !dbg !125383

bb.ac:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i, %._crit_edge.i.i.i43.i.i.i.i
  %i.hi = phi i64 [ %i.gz, %._crit_edge.i.i.i43.i.i.i.i ], [ %.sroa.0.0.i.i.i.i53.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], !dbg !125384
  %i.hj = phi i64 [ %.pre.i.i.i45.i.i.i.i, %._crit_edge.i.i.i43.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i54.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], !dbg !125373 ; 2 uses
  %i.hk = trunc i64 %i.hj to i8, !dbg !125373
  %i.hl = lshr i64 %i.hj, 1, !dbg !125385
  store i64 %i.hl, ptr %.phi.trans.insert.i.i.i44.i.i.i.i, align 8, !dbg !125385, !alias.scope !124924, !noalias !124916
  %i.hm = add i64 %i.hi, -1, !dbg !125384
  store i64 %i.hm, ptr %i.cj, align 8, !dbg !125384, !alias.scope !124924, !noalias !124916
  %i.hn = and i8 %i.hk, 1, !dbg !125386
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i, !dbg !125387

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i3.i.i47.i.i.i.i = phi i8 [ %i.hn, %bb.ac ], [ 2, %bb.ab ], !dbg !125388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !125389, !noalias !124926
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i8 noundef %.sroa.0.0.i3.i.i47.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i42.i.i.i.i, i64 %.sroa.3.0.i.i.i41.i.i.i.i)
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !dbg !125390, !noalias !124873

.noexc21.i.i.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i
  %i.ho = load i8, ptr %i.x, align 8, !dbg !125391, !range !2878, !noalias !124926, !noundef !2531 ; 2 uses
  %.not.i.i48.i.i.i.i.not = icmp eq i8 %i.ho, 2, !dbg !125391 ; 2 uses
  %i.hp = trunc nuw i8 %i.ho to i1, !dbg !125392
  %i.hq = load i64, ptr %i.cm, align 8, !dbg !125392, !noalias !124882
  %i.hr = load ptr, ptr %i.cn, align 8, !dbg !125392, !noalias !124882, !nonnull !2531
  %.sroa.01.0.i.i49.i.i.i.i = select i1 %i.hp, ptr %i.hr, ptr null, !dbg !125392
  %.sroa.87.0.i.i.i.i = select i1 %.not.i.i48.i.i.i.i.not, i64 undef, i64 %i.hq, !dbg !125392
  %.sroa.56.0.i.i.i.i = select i1 %.not.i.i48.i.i.i.i.not, ptr undef, ptr %.sroa.01.0.i.i49.i.i.i.i, !dbg !125392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !125393, !noalias !124926
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i, !dbg !125345

bb.ad:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !124927), !dbg !125394
  %i.hs = load i64, ptr %i.ch, align 8, !dbg !125395, !alias.scope !124928, !noalias !124912, !noundef !2531 ; 4 uses
  %i.ht = load i64, ptr %i.ci, align 8, !dbg !125396, !alias.scope !124928, !noalias !124912, !noundef !2531
  %i.hu = icmp ne i64 %i.hs, %i.ht, !dbg !125395
  call void @llvm.assume(i1 %i.hu), !dbg !125395
  %i.hv = add nuw i64 %i.hs, 1, !dbg !125397
  store i64 %i.hv, ptr %i.ch, align 8, !dbg !125397, !alias.scope !124928, !noalias !124912
  %i.hw = load ptr, ptr %i.cg, align 8, !dbg !125398, !alias.scope !124928, !noalias !124912, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40, !dbg !125399
  %i.hy = load ptr, ptr %i.hx, align 8, !dbg !125399, !noalias !124929, !noundef !2531
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 48, !dbg !125400
  %i.ia = load i64, ptr %i.hz, align 8, !dbg !125400, !noalias !124929, !noundef !2531
  %i.ib = icmp ult i64 %i.hs, %i.ia, !dbg !125401
  call void @llvm.assume(i1 %i.ib), !dbg !125402
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %i.hs, !dbg !125403 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 64, !dbg !125404
  %i.ie = load ptr, ptr %i.id, align 8, !dbg !125404, !noalias !124929, !noundef !2531
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 72, !dbg !125405
  %i.ig = load i64, ptr %i.if, align 8, !dbg !125405, !noalias !124929, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !124930), !dbg !125406
  call void @llvm.experimental.noalias.scope.decl(metadata !124931), !dbg !125406
  %i.ih = load i32, ptr %i.ic, align 4, !dbg !125407, !alias.scope !124930, !noalias !124932, !noundef !2531 ; 2 uses
  %i.ii = icmp ult i32 %i.ih, 13, !dbg !125407
  br i1 %i.ii, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i, !dbg !125407

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i: ; preds = %bb.ad
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 4, !dbg !125408
  br label %bb.ae, !dbg !125409

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i: ; preds = %bb.ad
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 8, !dbg !125410
  %i.il = load i32, ptr %i.ik, align 4, !dbg !125410, !alias.scope !124930, !noalias !124932, !noundef !2531
  %i.im = zext i32 %i.il to i64, !dbg !125410     ; 2 uses
  %i.in = icmp samesign ugt i64 %i.ig, %i.im, !dbg !125411
  call void @llvm.assume(i1 %i.in), !dbg !125412
  %i.io = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %i.im, !dbg !125413
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 12, !dbg !125414
  %i.iq = load i32, ptr %i.ip, align 4, !dbg !125414, !alias.scope !124930, !noalias !124932, !noundef !2531
  %i.ir = zext i32 %i.iq to i64, !dbg !125414
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 8, !dbg !125415
  %i.it = load ptr, ptr %i.is, align 8, !dbg !125415, !alias.scope !124933, !noalias !124934, !nonnull !2531, !noundef !2531
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ir, !dbg !125416
  br label %bb.ae, !dbg !125409

bb.ae:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i
  %.sroa.0.0.i.i.i.i11.i57.i.i.i.i = phi ptr [ %i.ij, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i ], [ %i.iu, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i ]
  %.sroa.3.0.i.i.i.i12.i58.i.i.i.i = zext i32 %i.ih to i64, !dbg !125417
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i, !dbg !125418

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i: ; preds = %bb.ae, %.noexc21.i.i.i
  %.sroa.87.2.i.i.i.i = phi i64 [ %.sroa.87.0.i.i.i.i, %.noexc21.i.i.i ], [ %.sroa.3.0.i.i.i.i12.i58.i.i.i.i, %bb.ae ], !dbg !125419 ; 2 uses
  %.sroa.56.2.i.i.i.i = phi ptr [ %.sroa.56.0.i.i.i.i, %.noexc21.i.i.i ], [ %.sroa.0.0.i.i.i.i11.i57.i.i.i.i, %bb.ae ], !dbg !125419 ; 2 uses
  %.not.i63.i.i.i.i = icmp eq ptr %.sroa.5.2.i.i.i.i, null, !dbg !125420
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.56.2.i.i.i.i, null
  %or.cond.i.i.i.i.i = or i1 %.not.i63.i.i.i.i, %.not14.i.i.i.i.i, !dbg !125421
  br i1 %or.cond.i.i.i.i.i, label %bb.af, label %bb.ag, !dbg !125421

bb.af:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i
  %i.iv = load ptr, ptr %i.co, align 8, !dbg !125422, !noalias !124935, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.iw = load i64, ptr %i.cp, align 8, !dbg !125423, !noalias !124935, !noundef !2531 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.iw, 112, !dbg !125424
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i.i.i.i.i, !dbg !125424
  %i.iy = icmp eq i64 %i.iw, 0, !dbg !125425
  br i1 %i.iy, label %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structINvMNtCscgRAwXFJnXP_4core3stre5splitReEINtNtB1o_4iter5SplitB1U_EEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, label %.lr.ph36.i.i.i.i.i, !dbg !125426

bb.ag:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !125427, !noalias !124938
  %i.iz = load ptr, ptr %i.co, align 8, !dbg !125428, !noalias !124935, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.ja = load i64, ptr %i.cp, align 8, !dbg !125429, !noalias !124935, !noundef !2531
  %i.jb = getelementptr inbounds nuw [112 x i8], ptr %i.iz, i64 %i.ja, !dbg !125430
  store ptr %i.iz, ptr %i.w, align 8, !dbg !125431, !noalias !124938
  store ptr %i.jb, ptr %i.cq, align 8, !dbg !125431, !noalias !124938
end_hunk_3
begin_hunk_4_@_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7strings20function_expr_to_udfsf_0NtB2_10ColumnsUdf8call_udfB17_:bb.a
  %i.abi = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i62.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5.0..sroa_idx.i.i.i63.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.6.0..sroa_idx.i.i.i64.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.abj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %.outer, !dbg !125887

.outer:                                           ; preds = %.noexc47.i192.i.i, %.noexc18.i50.i.i
  %.sroa.015.0.i.i65.i.i.ph = phi i64 [ %i.avi, %.noexc47.i192.i.i ], [ %i.aao, %.noexc18.i50.i.i ]
  %.sroa.011.0.i.i66.i.i.ph = phi i64 [ %.sroa.011.1.i.i186.i.i, %.noexc47.i192.i.i ], [ %i.aam, %.noexc18.i50.i.i ]
  %.sroa.03.0.i.i67.i.i.ph.pn = phi ptr [ %.sroa.03.0.i.i67.i.i.ph, %.noexc47.i192.i.i ], [ %.val14.i39.i.i, %.noexc18.i50.i.i ]
  %.sroa.0.0.i.i68.i.i.ph = phi ptr [ %.sroa.0.1.i.i187.i.i, %.noexc47.i192.i.i ], [ %i.aaj, %.noexc18.i50.i.i ]
  %.sroa.03.0.i.i67.i.i.ph = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i67.i.i.ph.pn, i64 16, !dbg !125888 ; 3 uses
  br label %bb.dt, !dbg !125889

.invoke324.i307.i.i:                              ; preds = %bb.dr, %bb.dq
  %i.abk = phi ptr [ @74, %bb.dq ], [ @73, %bb.dr ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abk) #36
          to label %.cont325.i308.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i43.i.i, !dbg !125890, !noalias !125040

.cont325.i308.i.i:                                ; preds = %.invoke324.i307.i.i
  unreachable

bb.dt:                                            ; preds = %.outer, %bb.gv
  %.sroa.015.0.i.i65.i.i = phi i64 [ %i.abq, %bb.gv ], [ %.sroa.015.0.i.i65.i.i.ph, %.outer ], !dbg !125891 ; 2 uses
  %.sroa.011.0.i.i66.i.i = phi i64 [ %.sroa.011.1.i.i186.i.i, %bb.gv ], [ %.sroa.011.0.i.i66.i.i.ph, %.outer ], !dbg !125892 ; 2 uses
  %.sroa.0.0.i.i68.i.i = phi ptr [ %.sroa.0.1.i.i187.i.i, %bb.gv ], [ %.sroa.0.0.i.i68.i.i.ph, %.outer ], !dbg !125893 ; 4 uses
  %.sroa.0.0.i.i.i69.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.015.0.i.i65.i.i, i64 %.sroa.011.0.i.i66.i.i), !dbg !125894 ; 4 uses
  %.not134.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i69.i.i, 0, !dbg !125895
  br i1 %.not134.i.i.i.i, label %._crit_edge.i.i185.i.i, label %.lr.ph.preheader.i.i70.i.i, !dbg !125889

.lr.ph.preheader.i.i70.i.i:                       ; preds = %bb.dt
  %.pre.i.i71.i.i = load ptr, ptr %i.j, align 8, !dbg !125896, !alias.scope !125054, !noalias !125055 ; 5 uses
  %.not.i.i.i72.i.i = icmp eq ptr %.pre.i.i71.i.i, null
  %i.abl = getelementptr inbounds nuw i8, ptr %.pre.i.i71.i.i, i64 40
  %i.abm = getelementptr inbounds nuw i8, ptr %.pre.i.i71.i.i, i64 48
  %i.abn = getelementptr inbounds nuw i8, ptr %.pre.i.i71.i.i, i64 64
  %i.abo = getelementptr inbounds nuw i8, ptr %.pre.i.i71.i.i, i64 72
  br label %.lr.ph.i.i73.i.i, !dbg !125897

._crit_edge.i.i185.i.i:                           ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1o_4iter14SplitInclusiveB25_EEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %bb.dt
  %i.abp = sub nuw i64 %.sroa.011.0.i.i66.i.i, %.sroa.0.0.i.i.i69.i.i, !dbg !125898 ; 2 uses
  %i.abq = sub nuw i64 %.sroa.015.0.i.i65.i.i, %.sroa.0.0.i.i.i69.i.i, !dbg !125899 ; 2 uses
  %i.abr = icmp eq i64 %i.abp, 0, !dbg !125900
  br i1 %i.abr, label %bb.gt, label %bb.gv, !dbg !125900

.lr.ph.i.i73.i.i:                                 ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1o_4iter14SplitInclusiveB25_EEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %.lr.ph.preheader.i.i70.i.i
  %.sroa.023.0133.i.i.i.i = phi i64 [ %i.abs, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1o_4iter14SplitInclusiveB25_EEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i70.i.i ]
  %i.abs = add nuw i64 %.sroa.023.0133.i.i.i.i, 1, !dbg !125901 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !125054), !dbg !125902
  br i1 %.not.i.i.i72.i.i, label %bb.ea, label %bb.du, !dbg !125897

bb.du:                                            ; preds = %.lr.ph.i.i73.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !125056), !dbg !125903
  call void @llvm.experimental.noalias.scope.decl(metadata !125057), !dbg !125904
  %i.abt = load i64, ptr %i.aap, align 8, !dbg !125905, !alias.scope !125058, !noalias !125059, !noundef !2531 ; 4 uses
  %i.abu = load i64, ptr %i.aaq, align 8, !dbg !125906, !alias.scope !125058, !noalias !125059, !noundef !2531
  %i.abv = icmp eq i64 %i.abt, %i.abu, !dbg !125905
  br i1 %i.abv, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i77.i.i, label %bb.dv, !dbg !125905

bb.dv:                                            ; preds = %bb.du
  %i.abw = add nuw i64 %i.abt, 1, !dbg !125907
  store i64 %i.abw, ptr %i.aap, align 8, !dbg !125907, !alias.scope !125058, !noalias !125059
  %i.abx = load ptr, ptr %i.abl, align 8, !dbg !125908, !noalias !125060, !noundef !2531
  %i.aby = load i64, ptr %i.abm, align 8, !dbg !125909, !noalias !125060, !noundef !2531
  %i.abz = icmp ult i64 %i.abt, %i.aby, !dbg !125910
  call void @llvm.assume(i1 %i.abz), !dbg !125911
  %i.aca = getelementptr inbounds nuw [16 x i8], ptr %i.abx, i64 %i.abt, !dbg !125912 ; 4 uses
  %i.acb = load ptr, ptr %i.abn, align 8, !dbg !125913, !noalias !125060, !noundef !2531
  %i.acc = load i64, ptr %i.abo, align 8, !dbg !125914, !noalias !125060, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !125061), !dbg !125915
  call void @llvm.experimental.noalias.scope.decl(metadata !125062), !dbg !125915
  %i.acd = load i32, ptr %i.aca, align 4, !dbg !125916, !alias.scope !125061, !noalias !125063, !noundef !2531 ; 2 uses
  %i.ace = icmp ult i32 %i.acd, 13, !dbg !125916
  br i1 %i.ace, label %bb.dx, label %bb.dw, !dbg !125916

bb.dw:                                            ; preds = %bb.dv
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aca, i64 8, !dbg !125917
  %i.acg = load i32, ptr %i.acf, align 4, !dbg !125917, !alias.scope !125061, !noalias !125063, !noundef !2531
  %i.ach = zext i32 %i.acg to i64, !dbg !125917   ; 2 uses
  %i.aci = icmp samesign ugt i64 %i.acc, %i.ach, !dbg !125918
  call void @llvm.assume(i1 %i.aci), !dbg !125919
  %i.acj = getelementptr inbounds nuw [24 x i8], ptr %i.acb, i64 %i.ach, !dbg !125920
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aca, i64 12, !dbg !125921
  %i.acl = load i32, ptr %i.ack, align 4, !dbg !125921, !alias.scope !125061, !noalias !125063, !noundef !2531
  %i.acm = zext i32 %i.acl to i64, !dbg !125921
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acj, i64 8, !dbg !125922
  %i.aco = load ptr, ptr %i.acn, align 8, !dbg !125922, !alias.scope !125064, !noalias !125065, !noundef !2531
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.acm, !dbg !125923
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i74.i.i, !dbg !125924

bb.dx:                                            ; preds = %bb.dv
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aca, i64 4, !dbg !125925
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i74.i.i, !dbg !125924

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i74.i.i: ; preds = %bb.dx, %bb.dw
  %.sroa.0.0.i.i.i.i.i.i.i.i75.i.i = phi ptr [ %i.acq, %bb.dx ], [ %i.acp, %bb.dw ], !dbg !125926
  %.sroa.3.0.i.i.i.i.i.i.i.i76.i.i = zext i32 %i.acd to i64, !dbg !125926
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i77.i.i, !dbg !125927

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i77.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i74.i.i, %bb.du
  %.sroa.3.0.i.i.i.i.i78.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i76.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i74.i.i ], [ undef, %bb.du ]
  %.sroa.0.0.i.i.i.i.i79.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i75.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i74.i.i ], [ null, %bb.du ], !dbg !125928
  call void @llvm.experimental.noalias.scope.decl(metadata !125066), !dbg !125929
  %i.acr = load i64, ptr %i.aas, align 8, !dbg !125930, !alias.scope !125067, !noalias !125059, !noundef !2531 ; 2 uses
  %i.acs = icmp eq i64 %i.acr, 0, !dbg !125930
  br i1 %i.acs, label %bb.dy, label %._crit_edge.i.i.i.i.i80.i.i, !dbg !125930

._crit_edge.i.i.i.i.i80.i.i:                      ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i77.i.i
  %.pre.i.i.i.i.i81.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i51.i.i, align 8, !dbg !125931, !alias.scope !125067, !noalias !125059
  br label %bb.dz, !dbg !125930

bb.dy:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i77.i.i
  %i.act = load i64, ptr %i.aat, align 8, !dbg !125932, !alias.scope !125067, !noalias !125059, !noundef !2531 ; 3 uses
  %i.acu = icmp eq i64 %i.act, 0, !dbg !125932
  br i1 %i.acu, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i82.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i300.i.i, !dbg !125932

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i300.i.i: ; preds = %bb.dy
  %.sroa.0.0.i.i.i.i.i.i301.i.i = call noundef i64 @llvm.umin.i64(i64 %i.act, i64 64), !dbg !125933 ; 2 uses
  %i.acv = sub nuw i64 %i.act, %.sroa.0.0.i.i.i.i.i.i301.i.i, !dbg !125934
  store i64 %i.acv, ptr %i.aat, align 8, !dbg !125934, !alias.scope !125067, !noalias !125059
  %i.acw = load ptr, ptr %i.aar, align 8, !dbg !125935, !alias.scope !125067, !noalias !125059, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i302.i.i = load i64, ptr %i.acw, align 1, !dbg !125936, !noalias !125068
  %i.acx = load i64, ptr %i.aau, align 8, !dbg !125937, !alias.scope !125067, !noalias !125059, !noundef !2531
  %i.acy = add i64 %i.acx, -8, !dbg !125938
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acw, i64 8, !dbg !125939
  store ptr %i.acz, ptr %i.aar, align 8, !dbg !125940, !alias.scope !125067, !noalias !125059
  store i64 %i.acy, ptr %i.aau, align 8, !dbg !125940, !alias.scope !125067, !noalias !125059
  br label %bb.dz, !dbg !125941

bb.dz:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i300.i.i, %._crit_edge.i.i.i.i.i80.i.i
  %i.ada = phi i64 [ %i.acr, %._crit_edge.i.i.i.i.i80.i.i ], [ %.sroa.0.0.i.i.i.i.i.i301.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i300.i.i ], !dbg !125942
  %i.adb = phi i64 [ %.pre.i.i.i.i.i81.i.i, %._crit_edge.i.i.i.i.i80.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i302.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i300.i.i ], !dbg !125931 ; 2 uses
  %i.adc = trunc i64 %i.adb to i8, !dbg !125931
  %i.add = lshr i64 %i.adb, 1, !dbg !125943
  store i64 %i.add, ptr %.phi.trans.insert.i.i.i.i.i51.i.i, align 8, !dbg !125943, !alias.scope !125067, !noalias !125059
  %i.ade = add i64 %i.ada, -1, !dbg !125942
  store i64 %i.ade, ptr %i.aas, align 8, !dbg !125942, !alias.scope !125067, !noalias !125059
  %i.adf = and i8 %i.adc, 1, !dbg !125944
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i82.i.i, !dbg !125945

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i82.i.i: ; preds = %bb.dz, %bb.dy
  %.sroa.0.0.i3.i.i.i.i83.i.i = phi i8 [ %i.adf, %bb.dz ], [ 2, %bb.dy ], !dbg !125946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !125947, !noalias !125069
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i8 noundef %.sroa.0.0.i3.i.i.i.i83.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i79.i.i, i64 %.sroa.3.0.i.i.i.i.i78.i.i)
          to label %.noexc20.i86.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i84.i.i, !dbg !125948, !noalias !125040

.noexc20.i86.i.i:                                 ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i82.i.i
  %i.adg = load i8, ptr %i.f, align 8, !dbg !125949, !range !2878, !noalias !125069, !noundef !2531 ; 2 uses
  %.not.i.i.i.i87.i.i.not = icmp eq i8 %i.adg, 2, !dbg !125949 ; 2 uses
  %i.adh = trunc nuw i8 %i.adg to i1, !dbg !125950
  %i.adi = load i64, ptr %i.aav, align 8, !dbg !125950, !noalias !125049
  %i.adj = load ptr, ptr %i.aaw, align 8, !dbg !125950, !noalias !125049, !nonnull !2531
  %.sroa.01.0.i.i.i.i88.i.i = select i1 %i.adh, ptr %i.adj, ptr null, !dbg !125950
  %.sroa.8.0.i.i89.i.i = select i1 %.not.i.i.i.i87.i.i.not, i64 undef, i64 %i.adi, !dbg !125950
  %.sroa.5.0.i.i90.i.i = select i1 %.not.i.i.i.i87.i.i.not, ptr undef, ptr %.sroa.01.0.i.i.i.i88.i.i, !dbg !125950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !125951, !noalias !125069
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i91.i.i, !dbg !125903

bb.ea:                                            ; preds = %.lr.ph.i.i73.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !125070), !dbg !125952
  %i.adk = load i64, ptr %i.aaq, align 8, !dbg !125953, !alias.scope !125071, !noalias !125055, !noundef !2531 ; 4 uses
  %i.adl = load i64, ptr %i.aar, align 8, !dbg !125954, !alias.scope !125071, !noalias !125055, !noundef !2531
  %i.adm = icmp ne i64 %i.adk, %i.adl, !dbg !125953
  call void @llvm.assume(i1 %i.adm), !dbg !125953
  %i.adn = add nuw i64 %i.adk, 1, !dbg !125955
  store i64 %i.adn, ptr %i.aaq, align 8, !dbg !125955, !alias.scope !125071, !noalias !125055
  %i.ado = load ptr, ptr %i.aap, align 8, !dbg !125956, !alias.scope !125071, !noalias !125055, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 40, !dbg !125957
  %i.adq = load ptr, ptr %i.adp, align 8, !dbg !125957, !noalias !125072, !noundef !2531
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 48, !dbg !125958
  %i.ads = load i64, ptr %i.adr, align 8, !dbg !125958, !noalias !125072, !noundef !2531
  %i.adt = icmp ult i64 %i.adk, %i.ads, !dbg !125959
  call void @llvm.assume(i1 %i.adt), !dbg !125960
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.adq, i64 %i.adk, !dbg !125961 ; 4 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ado, i64 64, !dbg !125962
  %i.adw = load ptr, ptr %i.adv, align 8, !dbg !125962, !noalias !125072, !noundef !2531
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ado, i64 72, !dbg !125963
  %i.ady = load i64, ptr %i.adx, align 8, !dbg !125963, !noalias !125072, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !125073), !dbg !125964
  call void @llvm.experimental.noalias.scope.decl(metadata !125074), !dbg !125964
  %i.adz = load i32, ptr %i.adu, align 4, !dbg !125965, !alias.scope !125073, !noalias !125075, !noundef !2531 ; 2 uses
  %i.aea = icmp ult i32 %i.adz, 13, !dbg !125965
  br i1 %i.aea, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i306.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i303.i.i, !dbg !125965

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i306.i.i: ; preds = %bb.ea
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adu, i64 4, !dbg !125966
  br label %bb.eb, !dbg !125967

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i303.i.i: ; preds = %bb.ea
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adu, i64 8, !dbg !125968
  %i.aed = load i32, ptr %i.aec, align 4, !dbg !125968, !alias.scope !125073, !noalias !125075, !noundef !2531
  %i.aee = zext i32 %i.aed to i64, !dbg !125968   ; 2 uses
  %i.aef = icmp samesign ugt i64 %i.ady, %i.aee, !dbg !125969
  call void @llvm.assume(i1 %i.aef), !dbg !125970
  %i.aeg = getelementptr inbounds nuw [24 x i8], ptr %i.adw, i64 %i.aee, !dbg !125971
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adu, i64 12, !dbg !125972
  %i.aei = load i32, ptr %i.aeh, align 4, !dbg !125972, !alias.scope !125073, !noalias !125075, !noundef !2531
  %i.aej = zext i32 %i.aei to i64, !dbg !125972
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8, !dbg !125973
  %i.ael = load ptr, ptr %i.aek, align 8, !dbg !125973, !alias.scope !125076, !noalias !125077, !noundef !2531
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aej, !dbg !125974
  br label %bb.eb, !dbg !125967

bb.eb:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i303.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i306.i.i
  %.sroa.0.0.i.i.i.i11.i.i.i304.i.i = phi ptr [ %i.aeb, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i306.i.i ], [ %i.aem, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i303.i.i ]
  %.sroa.3.0.i.i.i.i12.i.i.i305.i.i = zext i32 %i.adz to i64, !dbg !125975
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i91.i.i, !dbg !125976

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i91.i.i: ; preds = %bb.eb, %.noexc20.i86.i.i
  %.sroa.8.2.i.i92.i.i = phi i64 [ %.sroa.8.0.i.i89.i.i, %.noexc20.i86.i.i ], [ %.sroa.3.0.i.i.i.i12.i.i.i305.i.i, %bb.eb ], !dbg !125977 ; 4 uses
  %.sroa.5.2.i.i93.i.i = phi ptr [ %.sroa.5.0.i.i90.i.i, %.noexc20.i86.i.i ], [ %.sroa.0.0.i.i.i.i11.i.i.i304.i.i, %bb.eb ], !dbg !125977 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !125078), !dbg !125978
  %i.aen = load ptr, ptr %i.i, align 8, !dbg !125979, !alias.scope !125078, !noalias !125079, !noundef !2531 ; 5 uses
  %.not.i36.i.i95.i.i = icmp eq ptr %i.aen, null, !dbg !125979
  br i1 %.not.i36.i.i95.i.i, label %bb.ei, label %bb.ec, !dbg !125980

bb.ec:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i91.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !125080), !dbg !125981
  call void @llvm.experimental.noalias.scope.decl(metadata !125081), !dbg !125982
  %i.aeo = load i64, ptr %i.aax, align 8, !dbg !125983, !alias.scope !125082, !noalias !125083, !noundef !2531 ; 4 uses
  %i.aep = load i64, ptr %i.aay, align 8, !dbg !125984, !alias.scope !125082, !noalias !125083, !noundef !2531
  %i.aeq = icmp eq i64 %i.aeo, %i.aep, !dbg !125983
  br i1 %i.aeq, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i99.i.i, label %bb.ed, !dbg !125983

bb.ed:                                            ; preds = %bb.ec
  %i.aer = add nuw i64 %i.aeo, 1, !dbg !125985
  store i64 %i.aer, ptr %i.aax, align 8, !dbg !125985, !alias.scope !125082, !noalias !125083
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aen, i64 40, !dbg !125986
  %i.aet = load ptr, ptr %i.aes, align 8, !dbg !125986, !noalias !125084, !noundef !2531
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aen, i64 48, !dbg !125987
  %i.aev = load i64, ptr %i.aeu, align 8, !dbg !125987, !noalias !125084, !noundef !2531
  %i.aew = icmp ult i64 %i.aeo, %i.aev, !dbg !125988
  call void @llvm.assume(i1 %i.aew), !dbg !125989
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.aet, i64 %i.aeo, !dbg !125990 ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aen, i64 64, !dbg !125991
  %i.aez = load ptr, ptr %i.aey, align 8, !dbg !125991, !noalias !125084, !noundef !2531
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aen, i64 72, !dbg !125992
  %i.afb = load i64, ptr %i.afa, align 8, !dbg !125992, !noalias !125084, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !125085), !dbg !125993
  call void @llvm.experimental.noalias.scope.decl(metadata !125086), !dbg !125993
  %i.afc = load i32, ptr %i.aex, align 4, !dbg !125994, !alias.scope !125085, !noalias !125087, !noundef !2531 ; 2 uses
  %i.afd = icmp ult i32 %i.afc, 13, !dbg !125994
  br i1 %i.afd, label %bb.ef, label %bb.ee, !dbg !125994

bb.ee:                                            ; preds = %bb.ed
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aex, i64 8, !dbg !125995
  %i.aff = load i32, ptr %i.afe, align 4, !dbg !125995, !alias.scope !125085, !noalias !125087, !noundef !2531
  %i.afg = zext i32 %i.aff to i64, !dbg !125995   ; 2 uses
  %i.afh = icmp samesign ugt i64 %i.afb, %i.afg, !dbg !125996
  call void @llvm.assume(i1 %i.afh), !dbg !125997
  %i.afi = getelementptr inbounds nuw [24 x i8], ptr %i.aez, i64 %i.afg, !dbg !125998
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aex, i64 12, !dbg !125999
  %i.afk = load i32, ptr %i.afj, align 4, !dbg !125999, !alias.scope !125085, !noalias !125087, !noundef !2531
  %i.afl = zext i32 %i.afk to i64, !dbg !125999
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afi, i64 8, !dbg !126000
  %i.afn = load ptr, ptr %i.afm, align 8, !dbg !126000, !alias.scope !125088, !noalias !125089, !noundef !2531
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.afl, !dbg !126001
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i96.i.i, !dbg !126002

bb.ef:                                            ; preds = %bb.ed
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aex, i64 4, !dbg !126003
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i96.i.i, !dbg !126002

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i96.i.i: ; preds = %bb.ef, %bb.ee
  %.sroa.0.0.i.i.i.i.i.i38.i.i97.i.i = phi ptr [ %i.afp, %bb.ef ], [ %i.afo, %bb.ee ], !dbg !126004
  %.sroa.3.0.i.i.i.i.i.i39.i.i98.i.i = zext i32 %i.afc to i64, !dbg !126004
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i99.i.i, !dbg !126005

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i99.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i96.i.i, %bb.ec
  %.sroa.3.0.i.i.i41.i.i100.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i39.i.i98.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i96.i.i ], [ undef, %bb.ec ]
  %.sroa.0.0.i.i.i42.i.i101.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i38.i.i97.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i96.i.i ], [ null, %bb.ec ], !dbg !126006
  call void @llvm.experimental.noalias.scope.decl(metadata !125090), !dbg !126007
  %i.afq = load i64, ptr %i.aba, align 8, !dbg !126008, !alias.scope !125091, !noalias !125083, !noundef !2531 ; 2 uses
  %i.afr = icmp eq i64 %i.afq, 0, !dbg !126008
  br i1 %i.afr, label %bb.eg, label %._crit_edge.i.i.i43.i.i102.i.i, !dbg !126008

._crit_edge.i.i.i43.i.i102.i.i:                   ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i99.i.i
  %.pre.i.i.i45.i.i103.i.i = load i64, ptr %.phi.trans.insert.i.i.i44.i.i52.i.i, align 8, !dbg !126009, !alias.scope !125091, !noalias !125083
  br label %bb.eh, !dbg !126008

bb.eg:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i99.i.i
  %i.afs = load i64, ptr %i.abb, align 8, !dbg !126010, !alias.scope !125091, !noalias !125083, !noundef !2531 ; 3 uses
  %i.aft = icmp eq i64 %i.afs, 0, !dbg !126010
  br i1 %i.aft, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i104.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i293.i.i, !dbg !126010

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i293.i.i: ; preds = %bb.eg
  %.sroa.0.0.i.i.i.i53.i.i294.i.i = call noundef i64 @llvm.umin.i64(i64 %i.afs, i64 64), !dbg !126011 ; 2 uses
  %i.afu = sub nuw i64 %i.afs, %.sroa.0.0.i.i.i.i53.i.i294.i.i, !dbg !126012
  store i64 %i.afu, ptr %i.abb, align 8, !dbg !126012, !alias.scope !125091, !noalias !125083
  %i.afv = load ptr, ptr %i.aaz, align 8, !dbg !126013, !alias.scope !125091, !noalias !125083, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i54.i.i295.i.i = load i64, ptr %i.afv, align 1, !dbg !126014, !noalias !125092
  %i.afw = load i64, ptr %i.abc, align 8, !dbg !126015, !alias.scope !125091, !noalias !125083, !noundef !2531
  %i.afx = add i64 %i.afw, -8, !dbg !126016
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 8, !dbg !126017
  store ptr %i.afy, ptr %i.aaz, align 8, !dbg !126018, !alias.scope !125091, !noalias !125083
  store i64 %i.afx, ptr %i.abc, align 8, !dbg !126018, !alias.scope !125091, !noalias !125083
  br label %bb.eh, !dbg !126019

bb.eh:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i293.i.i, %._crit_edge.i.i.i43.i.i102.i.i
  %i.afz = phi i64 [ %i.afq, %._crit_edge.i.i.i43.i.i102.i.i ], [ %.sroa.0.0.i.i.i.i53.i.i294.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i293.i.i ], !dbg !126020
  %i.aga = phi i64 [ %.pre.i.i.i45.i.i103.i.i, %._crit_edge.i.i.i43.i.i102.i.i ], [ %.sroa.02.0.copyload.i.i.i54.i.i295.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i293.i.i ], !dbg !126009 ; 2 uses
  %i.agb = trunc i64 %i.aga to i8, !dbg !126009
  %i.agc = lshr i64 %i.aga, 1, !dbg !126021
  store i64 %i.agc, ptr %.phi.trans.insert.i.i.i44.i.i52.i.i, align 8, !dbg !126021, !alias.scope !125091, !noalias !125083
  %i.agd = add i64 %i.afz, -1, !dbg !126020
  store i64 %i.agd, ptr %i.aba, align 8, !dbg !126020, !alias.scope !125091, !noalias !125083
  %i.age = and i8 %i.agb, 1, !dbg !126022
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i104.i.i, !dbg !126023

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i104.i.i: ; preds = %bb.eh, %bb.eg
  %.sroa.0.0.i3.i.i47.i.i105.i.i = phi i8 [ %i.age, %bb.eh ], [ 2, %bb.eg ], !dbg !126024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !126025, !noalias !125093
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i8 noundef %.sroa.0.0.i3.i.i47.i.i105.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i42.i.i101.i.i, i64 %.sroa.3.0.i.i.i41.i.i100.i.i)
          to label %.noexc21.i106.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i84.i.i, !dbg !126026, !noalias !125040

.noexc21.i106.i.i:                                ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i104.i.i
  %i.agf = load i8, ptr %i.e, align 8, !dbg !126027, !range !2878, !noalias !125093, !noundef !2531 ; 2 uses
  %.not.i.i48.i.i107.i.i.not = icmp eq i8 %i.agf, 2, !dbg !126027 ; 2 uses
  %i.agg = trunc nuw i8 %i.agf to i1, !dbg !126028
  %i.agh = load i64, ptr %i.abd, align 8, !dbg !126028, !noalias !125049
  %i.agi = load ptr, ptr %i.abe, align 8, !dbg !126028, !noalias !125049, !nonnull !2531
  %.sroa.01.0.i.i49.i.i108.i.i = select i1 %i.agg, ptr %i.agi, ptr null, !dbg !126028
  %.sroa.87.0.i.i109.i.i = select i1 %.not.i.i48.i.i107.i.i.not, i64 undef, i64 %i.agh, !dbg !126028
  %.sroa.56.0.i.i110.i.i = select i1 %.not.i.i48.i.i107.i.i.not, ptr undef, ptr %.sroa.01.0.i.i49.i.i108.i.i, !dbg !126028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !126029, !noalias !125093
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i111.i.i, !dbg !125981

bb.ei:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i91.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !125094), !dbg !126030
  %i.agj = load i64, ptr %i.aay, align 8, !dbg !126031, !alias.scope !125095, !noalias !125079, !noundef !2531 ; 4 uses
  %i.agk = load i64, ptr %i.aaz, align 8, !dbg !126032, !alias.scope !125095, !noalias !125079, !noundef !2531
  %i.agl = icmp ne i64 %i.agj, %i.agk, !dbg !126031
  call void @llvm.assume(i1 %i.agl), !dbg !126031
  %i.agm = add nuw i64 %i.agj, 1, !dbg !126033
  store i64 %i.agm, ptr %i.aay, align 8, !dbg !126033, !alias.scope !125095, !noalias !125079
  %i.agn = load ptr, ptr %i.aax, align 8, !dbg !126034, !alias.scope !125095, !noalias !125079, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 40, !dbg !126035
  %i.agp = load ptr, ptr %i.ago, align 8, !dbg !126035, !noalias !125096, !noundef !2531
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agn, i64 48, !dbg !126036
  %i.agr = load i64, ptr %i.agq, align 8, !dbg !126036, !noalias !125096, !noundef !2531
  %i.ags = icmp ult i64 %i.agj, %i.agr, !dbg !126037
  call void @llvm.assume(i1 %i.ags), !dbg !126038
  %i.agt = getelementptr inbounds nuw [16 x i8], ptr %i.agp, i64 %i.agj, !dbg !126039 ; 4 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agn, i64 64, !dbg !126040
  %i.agv = load ptr, ptr %i.agu, align 8, !dbg !126040, !noalias !125096, !noundef !2531
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agn, i64 72, !dbg !126041
  %i.agx = load i64, ptr %i.agw, align 8, !dbg !126041, !noalias !125096, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !125097), !dbg !126042
  call void @llvm.experimental.noalias.scope.decl(metadata !125098), !dbg !126042
  %i.agy = load i32, ptr %i.agt, align 4, !dbg !126043, !alias.scope !125097, !noalias !125099, !noundef !2531 ; 2 uses
  %i.agz = icmp ult i32 %i.agy, 13, !dbg !126043
  br i1 %i.agz, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i299.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i296.i.i, !dbg !126043

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i299.i.i: ; preds = %bb.ei
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agt, i64 4, !dbg !126044
  br label %bb.ej, !dbg !126045

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i296.i.i: ; preds = %bb.ei
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agt, i64 8, !dbg !126046
  %i.ahc = load i32, ptr %i.ahb, align 4, !dbg !126046, !alias.scope !125097, !noalias !125099, !noundef !2531
  %i.ahd = zext i32 %i.ahc to i64, !dbg !126046   ; 2 uses
  %i.ahe = icmp samesign ugt i64 %i.agx, %i.ahd, !dbg !126047
  call void @llvm.assume(i1 %i.ahe), !dbg !126048
  %i.ahf = getelementptr inbounds nuw [24 x i8], ptr %i.agv, i64 %i.ahd, !dbg !126049
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agt, i64 12, !dbg !126050
  %i.ahh = load i32, ptr %i.ahg, align 4, !dbg !126050, !alias.scope !125097, !noalias !125099, !noundef !2531
  %i.ahi = zext i32 %i.ahh to i64, !dbg !126050
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8, !dbg !126051
  %i.ahk = load ptr, ptr %i.ahj, align 8, !dbg !126051, !alias.scope !125100, !noalias !125101, !nonnull !2531, !noundef !2531
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahi, !dbg !126052
  br label %bb.ej, !dbg !126045

bb.ej:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i296.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i299.i.i
  %.sroa.0.0.i.i.i.i11.i57.i.i297.i.i = phi ptr [ %i.aha, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i299.i.i ], [ %i.ahl, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i296.i.i ]
  %.sroa.3.0.i.i.i.i12.i58.i.i298.i.i = zext i32 %i.agy to i64, !dbg !126053
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i111.i.i, !dbg !126054

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i111.i.i: ; preds = %bb.ej, %.noexc21.i106.i.i
  %.sroa.87.2.i.i112.i.i = phi i64 [ %.sroa.87.0.i.i109.i.i, %.noexc21.i106.i.i ], [ %.sroa.3.0.i.i.i.i12.i58.i.i298.i.i, %bb.ej ], !dbg !126055 ; 2 uses
  %.sroa.56.2.i.i113.i.i = phi ptr [ %.sroa.56.0.i.i110.i.i, %.noexc21.i106.i.i ], [ %.sroa.0.0.i.i.i.i11.i57.i.i297.i.i, %bb.ej ], !dbg !126055 ; 2 uses
  %.not.i63.i.i115.i.i = icmp eq ptr %.sroa.5.2.i.i93.i.i, null, !dbg !126056
  %.not14.i.i.i116.i.i = icmp eq ptr %.sroa.56.2.i.i113.i.i, null
  %or.cond.i.i.i117.i.i = or i1 %.not.i63.i.i115.i.i, %.not14.i.i.i116.i.i, !dbg !126057
  br i1 %or.cond.i.i.i117.i.i, label %bb.ek, label %bb.el, !dbg !126057

bb.ek:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i111.i.i
  %i.ahm = load ptr, ptr %i.abf, align 8, !dbg !126058, !noalias !125102, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.ahn = load i64, ptr %i.abg, align 8, !dbg !126059, !noalias !125102, !noundef !2531 ; 2 uses
  %.idx.i.i.i276.i.i = mul nuw nsw i64 %i.ahn, 112, !dbg !126060
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %.idx.i.i.i276.i.i, !dbg !126060
  %i.ahp = icmp eq i64 %i.ahn, 0, !dbg !126061
  br i1 %i.ahp, label %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structINvMNtCscgRAwXFJnXP_4core3stre15split_inclusiveReEINtNtB1o_4iter14SplitInclusiveB25_EEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, label %.lr.ph36.i.i.i277.i.i, !dbg !126062

bb.el:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i111.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !126063, !noalias !125105
  %i.ahq = load ptr, ptr %i.abf, align 8, !dbg !126064, !noalias !125102, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.ahr = load i64, ptr %i.abg, align 8, !dbg !126065, !noalias !125102, !noundef !2531
  %i.ahs = getelementptr inbounds nuw [112 x i8], ptr %i.ahq, i64 %i.ahr, !dbg !126066
  store ptr %i.ahq, ptr %i.d, align 8, !dbg !126067, !noalias !125105
  store ptr %i.ahs, ptr %i.abh, align 8, !dbg !126067, !noalias !125105
end_hunk_4
begin_hunk_5_@_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7strings20function_expr_to_udfsg_0NtB2_10ColumnsUdf8call_udfB17_:bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.v, align 8, !alias.scope !127498, !noalias !127511
  br label %.outer, !dbg !127713

.outer:                                           ; preds = %.noexc47.i.i.i, %.noexc18.i.i.i
  %.sroa.015.0.i.i.i.i.ph = phi i64 [ %i.vz, %.noexc47.i.i.i ], [ %i.bb, %.noexc18.i.i.i ]
  %.sroa.011.0.i.i.i.i.ph = phi i64 [ %.sroa.011.1.i.i.i.i, %.noexc47.i.i.i ], [ %i.az, %.noexc18.i.i.i ]
  %.sroa.03.0.i.i.i.i.ph.pn = phi ptr [ %.sroa.03.0.i.i.i.i.ph, %.noexc47.i.i.i ], [ %.val14.i.i.i, %.noexc18.i.i.i ]
  %.sroa.0.0.i.i.i.i.ph = phi ptr [ %.sroa.0.1.i.i.i.i, %.noexc47.i.i.i ], [ %i.aw, %.noexc18.i.i.i ]
  %.sroa.03.0.i.i.i.i.ph = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.ph.pn, i64 16, !dbg !127714 ; 3 uses
  br label %bb.n, !dbg !127715

.invoke324.i.i.i:                                 ; preds = %bb.l, %bb.k
  %i.by = phi ptr [ @74, %bb.k ], [ @73, %bb.l ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #36
          to label %.cont325.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !dbg !127716, !noalias !127500

.cont325.i.i.i:                                   ; preds = %.invoke324.i.i.i
  unreachable

bb.n:                                             ; preds = %.outer, %bb.ct
  %.sroa.015.0.i.i.i.i = phi i64 [ %i.ce, %bb.ct ], [ %.sroa.015.0.i.i.i.i.ph, %.outer ], !dbg !127717 ; 2 uses
  %.sroa.011.0.i.i.i.i = phi i64 [ %.sroa.011.1.i.i.i.i, %bb.ct ], [ %.sroa.011.0.i.i.i.i.ph, %.outer ], !dbg !127718 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.ct ], [ %.sroa.0.0.i.i.i.i.ph, %.outer ], !dbg !127719 ; 4 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.015.0.i.i.i.i, i64 %.sroa.011.0.i.i.i.i), !dbg !127720 ; 4 uses
  %.not129.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0, !dbg !127721
  br i1 %.not129.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, !dbg !127715

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %.pre.i.i.i.i = load ptr, ptr %i.i, align 8, !dbg !127722, !alias.scope !127516, !noalias !127517 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 72
  br label %.lr.ph.i.i.i.i, !dbg !127723

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1u_9datatypes10StringTypeENtNtB6_9namespace19StringNameSpaceImpl6splitn0INtNtNtCscgRAwXFJnXP_4core3str4iter6SplitNReEEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %bb.n
  %i.cd = sub nuw i64 %.sroa.011.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !127724 ; 2 uses
  %i.ce = sub nuw i64 %.sroa.015.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !127725 ; 2 uses
  %i.cf = icmp eq i64 %i.cd, 0, !dbg !127726
  br i1 %i.cf, label %bb.cr, label %bb.ct, !dbg !127726

.lr.ph.i.i.i.i:                                   ; preds = %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1u_9datatypes10StringTypeENtNtB6_9namespace19StringNameSpaceImpl6splitn0INtNtNtCscgRAwXFJnXP_4core3str4iter6SplitNReEEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.023.0128.i.i.i.i = phi i64 [ %i.cg, %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1u_9datatypes10StringTypeENtNtB6_9namespace19StringNameSpaceImpl6splitn0INtNtNtCscgRAwXFJnXP_4core3str4iter6SplitNReEEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.cg = add nuw i64 %.sroa.023.0128.i.i.i.i, 1, !dbg !127727 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127516), !dbg !127728
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.o, !dbg !127723

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127518), !dbg !127729
  call void @llvm.experimental.noalias.scope.decl(metadata !127519), !dbg !127730
  %i.ch = load i64, ptr %i.bc, align 8, !dbg !127731, !alias.scope !127520, !noalias !127521, !noundef !2531 ; 4 uses
  %i.ci = load i64, ptr %i.bd, align 8, !dbg !127732, !alias.scope !127520, !noalias !127521, !noundef !2531
  %i.cj = icmp eq i64 %i.ch, %i.ci, !dbg !127731
  br i1 %i.cj, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, label %bb.p, !dbg !127731

bb.p:                                             ; preds = %bb.o
  %i.ck = add nuw i64 %i.ch, 1, !dbg !127733
  store i64 %i.ck, ptr %i.bc, align 8, !dbg !127733, !alias.scope !127520, !noalias !127521
  %i.cl = load ptr, ptr %i.bz, align 8, !dbg !127734, !noalias !127522, !noundef !2531
  %i.cm = load i64, ptr %i.ca, align 8, !dbg !127735, !noalias !127522, !noundef !2531
  %i.cn = icmp ult i64 %i.ch, %i.cm, !dbg !127736
  call void @llvm.assume(i1 %i.cn), !dbg !127737
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch, !dbg !127738 ; 4 uses
  %i.cp = load ptr, ptr %i.cb, align 8, !dbg !127739, !noalias !127522, !noundef !2531
  %i.cq = load i64, ptr %i.cc, align 8, !dbg !127740, !noalias !127522, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !127523), !dbg !127741
  call void @llvm.experimental.noalias.scope.decl(metadata !127524), !dbg !127741
  %i.cr = load i32, ptr %i.co, align 4, !dbg !127742, !alias.scope !127523, !noalias !127525, !noundef !2531 ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 13, !dbg !127742
  br i1 %i.cs, label %bb.r, label %bb.q, !dbg !127742

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !127743
  %i.cu = load i32, ptr %i.ct, align 4, !dbg !127743, !alias.scope !127523, !noalias !127525, !noundef !2531
  %i.cv = zext i32 %i.cu to i64, !dbg !127743     ; 2 uses
  %i.cw = icmp samesign ugt i64 %i.cq, %i.cv, !dbg !127744
  call void @llvm.assume(i1 %i.cw), !dbg !127745
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cv, !dbg !127746
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 12, !dbg !127747
  %i.cz = load i32, ptr %i.cy, align 4, !dbg !127747, !alias.scope !127523, !noalias !127525, !noundef !2531
  %i.da = zext i32 %i.cz to i64, !dbg !127747
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8, !dbg !127748
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !127748, !alias.scope !127526, !noalias !127527, !noundef !2531
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da, !dbg !127749
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !127750

bb.r:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 4, !dbg !127751
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !127750

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.de, %bb.r ], [ %i.dd, %bb.q ], !dbg !127752
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i = zext i32 %i.cr to i64, !dbg !127752
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !127753

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %bb.o
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ undef, %bb.o ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ null, %bb.o ], !dbg !127754
  call void @llvm.experimental.noalias.scope.decl(metadata !127528), !dbg !127755
  %i.df = load i64, ptr %i.bf, align 8, !dbg !127756, !alias.scope !127529, !noalias !127521, !noundef !2531 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0, !dbg !127756
  br i1 %i.dg, label %bb.s, label %._crit_edge.i.i.i.i.i.i.i, !dbg !127756

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !dbg !127757, !alias.scope !127529, !noalias !127521
  br label %bb.t, !dbg !127756

bb.s:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %i.dh = load i64, ptr %i.bg, align 8, !dbg !127758, !alias.scope !127529, !noalias !127521, !noundef !2531 ; 3 uses
  %i.di = icmp eq i64 %i.dh, 0, !dbg !127758
  br i1 %i.di, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !127758

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %.sroa.0.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dh, i64 64), !dbg !127759 ; 2 uses
  %i.dj = sub nuw i64 %i.dh, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !127760
  store i64 %i.dj, ptr %i.bg, align 8, !dbg !127760, !alias.scope !127529, !noalias !127521
  %i.dk = load ptr, ptr %i.be, align 8, !dbg !127761, !alias.scope !127529, !noalias !127521, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dk, align 1, !dbg !127762, !noalias !127530
  %i.dl = load i64, ptr %i.bh, align 8, !dbg !127763, !alias.scope !127529, !noalias !127521, !noundef !2531
  %i.dm = add i64 %i.dl, -8, !dbg !127764
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8, !dbg !127765
  store ptr %i.dn, ptr %i.be, align 8, !dbg !127766, !alias.scope !127529, !noalias !127521
  store i64 %i.dm, ptr %i.bh, align 8, !dbg !127766, !alias.scope !127529, !noalias !127521
  br label %bb.t, !dbg !127767

bb.t:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.do = phi i64 [ %i.df, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], !dbg !127768
  %i.dp = phi i64 [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], !dbg !127757 ; 2 uses
  %i.dq = trunc i64 %i.dp to i8, !dbg !127757
  %i.dr = lshr i64 %i.dp, 1, !dbg !127769
  store i64 %i.dr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !dbg !127769, !alias.scope !127529, !noalias !127521
  %i.ds = add i64 %i.do, -1, !dbg !127768
  store i64 %i.ds, ptr %i.bf, align 8, !dbg !127768, !alias.scope !127529, !noalias !127521
  %i.dt = and i8 %i.dq, 1, !dbg !127770
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !127771

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i3.i.i.i.i.i.i = phi i8 [ %i.dt, %bb.t ], [ 2, %bb.s ], !dbg !127772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !127773, !noalias !127531
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i8 noundef %.sroa.0.0.i3.i.i.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !dbg !127774, !noalias !127500

.noexc20.i.i.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.du = load i8, ptr %i.e, align 8, !dbg !127775, !range !2878, !noalias !127531, !noundef !2531 ; 2 uses
  %.not.i.i.i.i.i.i.not = icmp eq i8 %i.du, 2, !dbg !127775 ; 2 uses
  %i.dv = trunc nuw i8 %i.du to i1, !dbg !127776
  %i.dw = load i64, ptr %i.bi, align 8, !dbg !127776, !noalias !127510
  %i.dx = load ptr, ptr %i.bj, align 8, !dbg !127776, !noalias !127510, !nonnull !2531
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.dv, ptr %i.dx, ptr null, !dbg !127776
  %.sroa.8.0.i.i.i.i = select i1 %.not.i.i.i.i.i.i.not, i64 undef, i64 %i.dw, !dbg !127776
  %.sroa.5.0.i.i.i.i = select i1 %.not.i.i.i.i.i.i.not, ptr undef, ptr %.sroa.01.0.i.i.i.i.i.i, !dbg !127776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !127777, !noalias !127531
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !127729

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127532), !dbg !127778
  %i.dy = load i64, ptr %i.bd, align 8, !dbg !127779, !alias.scope !127533, !noalias !127517, !noundef !2531 ; 4 uses
  %i.dz = load i64, ptr %i.be, align 8, !dbg !127780, !alias.scope !127533, !noalias !127517, !noundef !2531
  %i.ea = icmp ne i64 %i.dy, %i.dz, !dbg !127779
  call void @llvm.assume(i1 %i.ea), !dbg !127779
  %i.eb = add nuw i64 %i.dy, 1, !dbg !127781
  store i64 %i.eb, ptr %i.bd, align 8, !dbg !127781, !alias.scope !127533, !noalias !127517
  %i.ec = load ptr, ptr %i.bc, align 8, !dbg !127782, !alias.scope !127533, !noalias !127517, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40, !dbg !127783
  %i.ee = load ptr, ptr %i.ed, align 8, !dbg !127783, !noalias !127534, !noundef !2531
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 48, !dbg !127784
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !127784, !noalias !127534, !noundef !2531
  %i.eh = icmp ult i64 %i.dy, %i.eg, !dbg !127785
  call void @llvm.assume(i1 %i.eh), !dbg !127786
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.dy, !dbg !127787 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 64, !dbg !127788
  %i.ek = load ptr, ptr %i.ej, align 8, !dbg !127788, !noalias !127534, !noundef !2531
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 72, !dbg !127789
  %i.em = load i64, ptr %i.el, align 8, !dbg !127789, !noalias !127534, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !127535), !dbg !127790
  call void @llvm.experimental.noalias.scope.decl(metadata !127536), !dbg !127790
  %i.en = load i32, ptr %i.ei, align 4, !dbg !127791, !alias.scope !127535, !noalias !127537, !noundef !2531 ; 2 uses
  %i.eo = icmp ult i32 %i.en, 13, !dbg !127791
  br i1 %i.eo, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !127791

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i: ; preds = %bb.u
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 4, !dbg !127792
  br label %bb.v, !dbg !127793

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 8, !dbg !127794
  %i.er = load i32, ptr %i.eq, align 4, !dbg !127794, !alias.scope !127535, !noalias !127537, !noundef !2531
  %i.es = zext i32 %i.er to i64, !dbg !127794     ; 2 uses
  %i.et = icmp samesign ugt i64 %i.em, %i.es, !dbg !127795
  call void @llvm.assume(i1 %i.et), !dbg !127796
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.es, !dbg !127797
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 12, !dbg !127798
  %i.ew = load i32, ptr %i.ev, align 4, !dbg !127798, !alias.scope !127535, !noalias !127537, !noundef !2531
  %i.ex = zext i32 %i.ew to i64, !dbg !127798
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8, !dbg !127799
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !127799, !alias.scope !127538, !noalias !127539, !noundef !2531
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ex, !dbg !127800
  br label %bb.v, !dbg !127793

bb.v:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i
  %.sroa.0.0.i.i.i.i11.i.i.i.i.i = phi ptr [ %i.ep, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.i.i.i ], [ %i.fa, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %.sroa.3.0.i.i.i.i12.i.i.i.i.i = zext i32 %i.en to i64, !dbg !127801
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !127802

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %bb.v, %.noexc20.i.i.i
  %.sroa.8.2.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i.i, %.noexc20.i.i.i ], [ %.sroa.3.0.i.i.i.i12.i.i.i.i.i, %bb.v ], !dbg !127803 ; 9 uses
  %.sroa.5.2.i.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %.noexc20.i.i.i ], [ %.sroa.0.0.i.i.i.i11.i.i.i.i.i, %bb.v ], !dbg !127803 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127540), !dbg !127804
  %i.fb = load ptr, ptr %i.h, align 8, !dbg !127805, !alias.scope !127540, !noalias !127541, !noundef !2531 ; 5 uses
  %.not.i36.i.i.i.i = icmp eq ptr %i.fb, null, !dbg !127805
  br i1 %.not.i36.i.i.i.i, label %bb.ac, label %bb.w, !dbg !127806

bb.w:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127542), !dbg !127807
  call void @llvm.experimental.noalias.scope.decl(metadata !127543), !dbg !127808
  %i.fc = load i64, ptr %i.bk, align 8, !dbg !127809, !alias.scope !127544, !noalias !127545, !noundef !2531 ; 4 uses
  %i.fd = load i64, ptr %i.bl, align 8, !dbg !127810, !alias.scope !127544, !noalias !127545, !noundef !2531
  %i.fe = icmp eq i64 %i.fc, %i.fd, !dbg !127809
  br i1 %i.fe, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i, label %bb.x, !dbg !127809

bb.x:                                             ; preds = %bb.w
  %i.ff = add nuw i64 %i.fc, 1, !dbg !127811
  store i64 %i.ff, ptr %i.bk, align 8, !dbg !127811, !alias.scope !127544, !noalias !127545
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 40, !dbg !127812
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !127812, !noalias !127546, !noundef !2531
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 48, !dbg !127813
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !127813, !noalias !127546, !noundef !2531
  %i.fk = icmp ult i64 %i.fc, %i.fj, !dbg !127814
  call void @llvm.assume(i1 %i.fk), !dbg !127815
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.fc, !dbg !127816 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 64, !dbg !127817
  %i.fn = load ptr, ptr %i.fm, align 8, !dbg !127817, !noalias !127546, !noundef !2531
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 72, !dbg !127818
  %i.fp = load i64, ptr %i.fo, align 8, !dbg !127818, !noalias !127546, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !127547), !dbg !127819
  call void @llvm.experimental.noalias.scope.decl(metadata !127548), !dbg !127819
  %i.fq = load i32, ptr %i.fl, align 4, !dbg !127820, !alias.scope !127547, !noalias !127549, !noundef !2531 ; 2 uses
  %i.fr = icmp ult i32 %i.fq, 13, !dbg !127820
  br i1 %i.fr, label %bb.z, label %bb.y, !dbg !127820

bb.y:                                             ; preds = %bb.x
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8, !dbg !127821
  %i.ft = load i32, ptr %i.fs, align 4, !dbg !127821, !alias.scope !127547, !noalias !127549, !noundef !2531
  %i.fu = zext i32 %i.ft to i64, !dbg !127821     ; 2 uses
  %i.fv = icmp samesign ugt i64 %i.fp, %i.fu, !dbg !127822
  call void @llvm.assume(i1 %i.fv), !dbg !127823
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.fu, !dbg !127824
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 12, !dbg !127825
  %i.fy = load i32, ptr %i.fx, align 4, !dbg !127825, !alias.scope !127547, !noalias !127549, !noundef !2531
  %i.fz = zext i32 %i.fy to i64, !dbg !127825
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8, !dbg !127826
  %i.gb = load ptr, ptr %i.ga, align 8, !dbg !127826, !alias.scope !127550, !noalias !127551, !noundef !2531
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fz, !dbg !127827
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, !dbg !127828

bb.z:                                             ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 4, !dbg !127829
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, !dbg !127828

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.0.0.i.i.i.i.i.i38.i.i.i.i = phi ptr [ %i.gd, %bb.z ], [ %i.gc, %bb.y ], !dbg !127830
  %.sroa.3.0.i.i.i.i.i.i39.i.i.i.i = zext i32 %i.fq to i64, !dbg !127830
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i, !dbg !127831

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i, %bb.w
  %.sroa.3.0.i.i.i41.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i39.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i ], [ undef, %bb.w ]
  %.sroa.0.0.i.i.i42.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i38.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i.i.i37.i.i.i.i ], [ null, %bb.w ], !dbg !127832
  call void @llvm.experimental.noalias.scope.decl(metadata !127552), !dbg !127833
  %i.ge = load i64, ptr %i.bn, align 8, !dbg !127834, !alias.scope !127553, !noalias !127545, !noundef !2531 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0, !dbg !127834
  br i1 %i.gf, label %bb.aa, label %._crit_edge.i.i.i43.i.i.i.i, !dbg !127834

._crit_edge.i.i.i43.i.i.i.i:                      ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i
  %.pre.i.i.i45.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i44.i.i.i.i, align 8, !dbg !127835, !alias.scope !127553, !noalias !127545
  br label %bb.ab, !dbg !127834

bb.aa:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i40.i.i.i.i
  %i.gg = load i64, ptr %i.bo, align 8, !dbg !127836, !alias.scope !127553, !noalias !127545, !noundef !2531 ; 3 uses
  %i.gh = icmp eq i64 %i.gg, 0, !dbg !127836
  br i1 %i.gh, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i, !dbg !127836

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i: ; preds = %bb.aa
  %.sroa.0.0.i.i.i.i53.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gg, i64 64), !dbg !127837 ; 2 uses
  %i.gi = sub nuw i64 %i.gg, %.sroa.0.0.i.i.i.i53.i.i.i.i, !dbg !127838
  store i64 %i.gi, ptr %i.bo, align 8, !dbg !127838, !alias.scope !127553, !noalias !127545
  %i.gj = load ptr, ptr %i.bm, align 8, !dbg !127839, !alias.scope !127553, !noalias !127545, !nonnull !2531, !noundef !2531 ; 2 uses
  %.sroa.02.0.copyload.i.i.i54.i.i.i.i = load i64, ptr %i.gj, align 1, !dbg !127840, !noalias !127554
  %i.gk = load i64, ptr %i.bp, align 8, !dbg !127841, !alias.scope !127553, !noalias !127545, !noundef !2531
  %i.gl = add i64 %i.gk, -8, !dbg !127842
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8, !dbg !127843
  store ptr %i.gm, ptr %i.bm, align 8, !dbg !127844, !alias.scope !127553, !noalias !127545
  store i64 %i.gl, ptr %i.bp, align 8, !dbg !127844, !alias.scope !127553, !noalias !127545
  br label %bb.ab, !dbg !127845

bb.ab:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i, %._crit_edge.i.i.i43.i.i.i.i
  %i.gn = phi i64 [ %i.ge, %._crit_edge.i.i.i43.i.i.i.i ], [ %.sroa.0.0.i.i.i.i53.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], !dbg !127846
  %i.go = phi i64 [ %.pre.i.i.i45.i.i.i.i, %._crit_edge.i.i.i43.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i54.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i52.i.i.i.i ], !dbg !127835 ; 2 uses
  %i.gp = trunc i64 %i.go to i8, !dbg !127835
  %i.gq = lshr i64 %i.go, 1, !dbg !127847
  store i64 %i.gq, ptr %.phi.trans.insert.i.i.i44.i.i.i.i, align 8, !dbg !127847, !alias.scope !127553, !noalias !127545
  %i.gr = add i64 %i.gn, -1, !dbg !127846
  store i64 %i.gr, ptr %i.bn, align 8, !dbg !127846, !alias.scope !127553, !noalias !127545
  %i.gs = and i8 %i.gp, 1, !dbg !127848
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i, !dbg !127849

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i3.i.i47.i.i.i.i = phi i8 [ %i.gs, %bb.ab ], [ 2, %bb.aa ], !dbg !127850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !127851, !noalias !127555
  invoke void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i8 noundef %.sroa.0.0.i3.i.i47.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i42.i.i.i.i, i64 %.sroa.3.0.i.i.i41.i.i.i.i)
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !dbg !127852, !noalias !127500

.noexc21.i.i.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i46.i.i.i.i
  %i.gt = load i8, ptr %i.d, align 8, !dbg !127853, !range !2878, !noalias !127555, !noundef !2531 ; 2 uses
  %.not.i.i48.i.i.i.i.not = icmp eq i8 %i.gt, 2, !dbg !127853 ; 2 uses
  %i.gu = trunc nuw i8 %i.gt to i1, !dbg !127854
  %i.gv = load i64, ptr %i.bq, align 8, !dbg !127854, !noalias !127510
  %i.gw = load ptr, ptr %i.br, align 8, !dbg !127854, !noalias !127510, !nonnull !2531
  %.sroa.01.0.i.i49.i.i.i.i = select i1 %i.gu, ptr %i.gw, ptr null, !dbg !127854
  %.sroa.87.0.i.i.i.i = select i1 %.not.i.i48.i.i.i.i.not, i64 undef, i64 %i.gv, !dbg !127854
  %.sroa.56.0.i.i.i.i = select i1 %.not.i.i48.i.i.i.i.not, ptr undef, ptr %.sroa.01.0.i.i49.i.i.i.i, !dbg !127854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !127855, !noalias !127555
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i, !dbg !127807

bb.ac:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127556), !dbg !127856
  %i.gx = load i64, ptr %i.bl, align 8, !dbg !127857, !alias.scope !127557, !noalias !127541, !noundef !2531 ; 4 uses
  %i.gy = load i64, ptr %i.bm, align 8, !dbg !127858, !alias.scope !127557, !noalias !127541, !noundef !2531
  %i.gz = icmp ne i64 %i.gx, %i.gy, !dbg !127857
  call void @llvm.assume(i1 %i.gz), !dbg !127857
  %i.ha = add nuw i64 %i.gx, 1, !dbg !127859
  store i64 %i.ha, ptr %i.bl, align 8, !dbg !127859, !alias.scope !127557, !noalias !127541
  %i.hb = load ptr, ptr %i.bk, align 8, !dbg !127860, !alias.scope !127557, !noalias !127541, !nonnull !2531, !align !2689, !noundef !2531 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 40, !dbg !127861
  %i.hd = load ptr, ptr %i.hc, align 8, !dbg !127861, !noalias !127558, !noundef !2531
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 48, !dbg !127862
  %i.hf = load i64, ptr %i.he, align 8, !dbg !127862, !noalias !127558, !noundef !2531
  %i.hg = icmp ult i64 %i.gx, %i.hf, !dbg !127863
  call void @llvm.assume(i1 %i.hg), !dbg !127864
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.gx, !dbg !127865 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 64, !dbg !127866
  %i.hj = load ptr, ptr %i.hi, align 8, !dbg !127866, !noalias !127558, !noundef !2531
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 72, !dbg !127867
  %i.hl = load i64, ptr %i.hk, align 8, !dbg !127867, !noalias !127558, !noundef !2531
  call void @llvm.experimental.noalias.scope.decl(metadata !127559), !dbg !127868
  call void @llvm.experimental.noalias.scope.decl(metadata !127560), !dbg !127868
  %i.hm = load i32, ptr %i.hh, align 4, !dbg !127869, !alias.scope !127559, !noalias !127561, !noundef !2531 ; 2 uses
  %i.hn = icmp ult i32 %i.hm, 13, !dbg !127869
  br i1 %i.hn, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i, !dbg !127869

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i: ; preds = %bb.ac
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 4, !dbg !127870
  br label %bb.ad, !dbg !127871

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i: ; preds = %bb.ac
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 8, !dbg !127872
  %i.hq = load i32, ptr %i.hp, align 4, !dbg !127872, !alias.scope !127559, !noalias !127561, !noundef !2531
  %i.hr = zext i32 %i.hq to i64, !dbg !127872     ; 2 uses
  %i.hs = icmp samesign ugt i64 %i.hl, %i.hr, !dbg !127873
  call void @llvm.assume(i1 %i.hs), !dbg !127874
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %i.hr, !dbg !127875
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 12, !dbg !127876
  %i.hv = load i32, ptr %i.hu, align 4, !dbg !127876, !alias.scope !127559, !noalias !127561, !noundef !2531
  %i.hw = zext i32 %i.hv to i64, !dbg !127876
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8, !dbg !127877
  %i.hy = load ptr, ptr %i.hx, align 8, !dbg !127877, !alias.scope !127562, !noalias !127563, !nonnull !2531, !noundef !2531
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hw, !dbg !127878
  br label %bb.ad, !dbg !127871

bb.ad:                                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i
  %.sroa.0.0.i.i.i.i11.i57.i.i.i.i = phi ptr [ %i.ho, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i61.i.i.i.i ], [ %i.hz, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i55.i.i.i.i ]
  %.sroa.3.0.i.i.i.i12.i58.i.i.i.i = zext i32 %i.hm to i64, !dbg !127879
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i, !dbg !127880

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i: ; preds = %bb.ad, %.noexc21.i.i.i
  %.sroa.87.2.i.i.i.i = phi i64 [ %.sroa.87.0.i.i.i.i, %.noexc21.i.i.i ], [ %.sroa.3.0.i.i.i.i12.i58.i.i.i.i, %bb.ad ], !dbg !127881 ; 2 uses
  %.sroa.56.2.i.i.i.i = phi ptr [ %.sroa.56.0.i.i.i.i, %.noexc21.i.i.i ], [ %.sroa.0.0.i.i.i.i11.i57.i.i.i.i, %bb.ad ], !dbg !127881 ; 2 uses
  %.not.i63.i.i.i.i = icmp eq ptr %.sroa.5.2.i.i.i.i, null, !dbg !127882
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.56.2.i.i.i.i, null
  %or.cond.i.i.i.i.i = or i1 %.not.i63.i.i.i.i, %.not14.i.i.i.i.i, !dbg !127883
  br i1 %or.cond.i.i.i.i.i, label %bb.ae, label %bb.af, !dbg !127883

bb.ae:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i
  %i.ia = load ptr, ptr %i.bs, align 8, !dbg !127884, !noalias !127564, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.ib = load i64, ptr %i.bt, align 8, !dbg !127885, !noalias !127564, !noundef !2531 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.ib, 112, !dbg !127886
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx.i.i.i.i.i, !dbg !127886
  %i.id = icmp eq i64 %i.ib, 0, !dbg !127887
  br i1 %i.id, label %_RNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings5split15split_to_structNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1u_9datatypes10StringTypeENtNtB6_9namespace19StringNameSpaceImpl6splitn0INtNtNtCscgRAwXFJnXP_4core3str4iter6SplitNReEEs1_0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, label %.lr.ph37.i.i.i.i.i, !dbg !127888

bb.af:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit62.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !127889, !noalias !127567
  %i.ie = load ptr, ptr %i.bs, align 8, !dbg !127890, !noalias !127564, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.if = load i64, ptr %i.bt, align 8, !dbg !127891, !noalias !127564, !noundef !2531
  %i.ig = getelementptr inbounds nuw [112 x i8], ptr %i.ie, i64 %i.if, !dbg !127892
  store ptr %i.ie, ptr %i.c, align 8, !dbg !127893, !noalias !127567
  store ptr %i.ig, ptr %i.bu, align 8, !dbg !127893, !noalias !127567
end_hunk_5
