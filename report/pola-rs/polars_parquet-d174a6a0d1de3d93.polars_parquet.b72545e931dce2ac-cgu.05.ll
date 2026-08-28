Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.05?download=true
inline.NumInlined: 2523
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2l_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB1w_7binview5basic12encode_deltas_0EEEBa_:bb.a
  %.sroa.0.2124 = phi i64 [ %i.ff, %bb.ac ], [ %.sroa.0.1133, %.preheader ] ; 2 uses
  %.sroa.012.0123 = phi i64 [ %.sroa.0.0.i86, %bb.ac ], [ -9223372036854775808, %.preheader ]
  %.sroa.087.0122 = phi i64 [ %.sroa.0.0.i85, %bb.ac ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0121 = phi i64 [ %i.fj, %bb.ac ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0120 = phi i64 [ %i.bu, %bb.ac ], [ 256, %.preheader ]
  %i.bu = add nsw i64 %.sroa.7.0120, -1, !dbg !13108 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.ap, !dbg !13109
  br i1 %i.bv, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i, label %bb.p, !dbg !13088

bb.p:                                             ; preds = %.preheader.split
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16, !dbg !13111 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.bt, align 4, !dbg !13113, !noalias !13116, !noundef !12
  %i.bx = zext i32 %.val.i.i.i.i to i64, !dbg !13124
  %i.by = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.bx, 1, !dbg !13126
  %i.bz = add i64 %i.br, -1, !dbg !13127          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !13130

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.p, %.preheader.split
  %.val64163 = phi i64 [ %i.bz, %bb.p ], [ %.val64159, %.preheader.split ] ; 4 uses
  %i.ca = phi i64 [ %i.bz, %bb.p ], [ %i.br, %.preheader.split ]
  %i.cb = phi ptr [ %i.bw, %bb.p ], [ %i.bs, %.preheader.split ] ; 2 uses
  %i.cc = phi ptr [ %i.bw, %bb.p ], [ %i.bt, %.preheader.split ]
  %i.cd = phi { i64, i64 } [ %i.by, %bb.p ], [ { i64 0, i64 undef }, %.preheader.split ] ; 2 uses
  %i.ce = extractvalue { i64, i64 } %i.cd, 0, !dbg !13131
  %i.cf = trunc nuw i64 %i.ce to i1, !dbg !13132
  br i1 %i.cf, label %bb.q, label %.split.us, !dbg !13132

bb.q:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i
  %i.cg = udiv i64 %.sroa.4.0121, %.zext, !dbg !13135 ; 3 uses
  %i.ch = urem i64 %.sroa.4.0121, %.zext, !dbg !13138
  %i.ci = icmp samesign ult i64 %i.cg, 4, !dbg !13139
  br i1 %i.ci, label %bb.ac, label %bb.ab, !dbg !13139

.split.us:                                        ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i, %bb.ac
  %.us-phi.ph = phi i64 [ %.sroa.087.0122, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i ], [ %.sroa.0.0.i85, %bb.ac ] ; 7 uses
  %.us-phi125.ph = phi i64 [ %.sroa.0.2124, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i ], [ %i.ff, %bb.ac ]
  %i.cj = sub i64 %.val64161, %.val64163, !dbg !13141
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 256), !dbg !13142 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13146
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !13149
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bk), !dbg !13160
  call void @llvm.experimental.noalias.scope.decl(metadata !13163), !dbg !13166
  %.val.i75 = load i64, ptr %i.bl, align 8, !dbg !13171, !alias.scope !13163, !noalias !13175, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bm, align 8, !dbg !13171, !alias.scope !13163, !noalias !13175, !noundef !12 ; 4 uses
  %i.cl = sub i64 %.val8.i, %.val.i75, !dbg !13177 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !13179
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !13189

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i77 = load ptr, ptr %i.c, align 8, !alias.scope !13190, !noalias !13175, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !13190, !noalias !13175, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.cl, 4, !dbg !13189
  %.val1.i.i222 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !13189
  %.val.i.i77223 = ptrtoaddr ptr %.val.i.i77 to i64
  %i.cm = sub i64 %.val.i.i77223, %.val1.i.i222, !dbg !13189
  %diff.check = icmp ugt i64 %i.cm, -32, !dbg !13189
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !13189
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !13189

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.cl, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !13193

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !13193 ; 2 uses
  %i.cn = add i64 %index, %.val.i75, !dbg !13199  ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.cn, !dbg !13202 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cn, !dbg !13205 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !13208
  %wide.load = load <2 x i64>, ptr %i.co, align 8, !dbg !13208, !noalias !13209
  %wide.load224 = load <2 x i64>, ptr %i.cq, align 8, !dbg !13208, !noalias !13209
  %i.cr = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !13210
  %i.cs = sub <2 x i64> %wide.load224, %broadcast.splat, !dbg !13210
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16, !dbg !13218
  store <2 x i64> %i.cr, ptr %i.cp, align 8, !dbg !13218, !alias.scope !13219, !noalias !13209
  store <2 x i64> %i.cs, ptr %i.ct, align 8, !dbg !13218, !alias.scope !13219, !noalias !13209
  %index.next = add nuw i64 %index, 4, !dbg !13193 ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec, !dbg !13189
  br i1 %i.cu, label %middle.block, label %vector.body, !dbg !13189, !llvm.loop !13224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec, !dbg !13189
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !13189

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cv = sub i64 %.val8.i, %.val.i75, !dbg !13189
  %xtraiter = and i64 %i.cv, 3, !dbg !13189       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13189
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !13189

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.cw, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !13193 ; 2 uses
  %i.cx = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !13199 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.cx, !dbg !13202
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cx, !dbg !13205
  %.val10.i.prol = load i64, ptr %i.cy, align 8, !dbg !13208, !noalias !13209, !noundef !12
  %i.da = sub i64 %.val10.i.prol, %.us-phi.ph, !dbg !13210
  store i64 %i.da, ptr %i.cz, align 8, !dbg !13218, !alias.scope !13219, !noalias !13209
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13189 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13189
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !13189, !llvm.loop !13225

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.cw, %scalar.ph.prol ]
  %i.db = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !13189
  %i.dc = add i64 %i.db, %.val.i75, !dbg !13189
  %i.dd = icmp ugt i64 %i.dc, -4, !dbg !13189
  br i1 %i.dd, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !13189

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !13189
  %invariant.op256 = add i64 2, %.val.i75, !dbg !13189
  %invariant.op258 = add i64 3, %.val.i75, !dbg !13189
  br label %scalar.ph, !dbg !13189

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.do, %scalar.ph ] ; 5 uses
  %i.de = add i64 %.sroa.0.012.i, %.val.i75, !dbg !13199 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.de, !dbg !13202
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.de, !dbg !13205
  %.val10.i = load i64, ptr %i.df, align 8, !dbg !13208, !noalias !13209, !noundef !12
  %i.dh = sub i64 %.val10.i, %.us-phi.ph, !dbg !13210
  store i64 %i.dh, ptr %i.dg, align 8, !dbg !13218, !alias.scope !13219, !noalias !13209
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass, !dbg !13202
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !13205
  %.val10.i.1 = load i64, ptr %i.di, align 8, !dbg !13208, !noalias !13209, !noundef !12
  %i.dk = sub i64 %.val10.i.1, %.us-phi.ph, !dbg !13210
  store i64 %i.dk, ptr %i.dj, align 8, !dbg !13218, !alias.scope !13219, !noalias !13209
  %.reass257 = add i64 %.sroa.0.012.i, %invariant.op256 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass257, !dbg !13202
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass257, !dbg !13205
  %.val10.i.2 = load i64, ptr %i.dl, align 8, !dbg !13208, !noalias !13209, !noundef !12
  %i.dn = sub i64 %.val10.i.2, %.us-phi.ph, !dbg !13210
  store i64 %i.dn, ptr %i.dm, align 8, !dbg !13218, !alias.scope !13219, !noalias !13209
  %i.do = add nuw i64 %.sroa.0.012.i, 4, !dbg !13193 ; 2 uses
  %.reass259 = add i64 %.sroa.0.012.i, %invariant.op258 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass259, !dbg !13202
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass259, !dbg !13205
  %.val10.i.3 = load i64, ptr %i.dp, align 8, !dbg !13208, !noalias !13209, !noundef !12
  %i.dr = sub i64 %.val10.i.3, %.us-phi.ph, !dbg !13210
  store i64 %i.dr, ptr %i.dq, align 8, !dbg !13218, !alias.scope !13219, !noalias !13209
  %exitcond.not.i.3 = icmp eq i64 %i.do, %i.cl, !dbg !13179
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !13189, !llvm.loop !13226

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13228
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi.ph), !dbg !13228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !13229
  %i.ds = load i64, ptr %i.bo, align 8, !dbg !13230, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13231
  %i.dt = icmp ult i64 %i.ds, 11
  br i1 %i.dt, label %bb.s, label %bb.r, !dbg !13232, !prof !239

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !13243
  unreachable

bb.s:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ds), !dbg !13244
  %i.du = load i64, ptr %i.m, align 8, !dbg !13250, !alias.scope !13252, !noundef !12 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, -1, !dbg !13255
  call void @llvm.assume(i1 %i.dv), !dbg !13256
  %.not.i78 = icmp eq i64 %i.ds, 0, !dbg !13257
  br i1 %.not.i78, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, label %bb.t, !dbg !13257

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %i.bp, align 8, !dbg !13258, !alias.scope !13252, !nonnull !12, !noundef !12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du, !dbg !13263
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull readonly align 1 %i.b, i64 %i.ds, i1 false), !dbg !13265
  %.pre.i79 = load i64, ptr %i.m, align 8, !dbg !13267, !alias.scope !13252
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, !dbg !13268

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80: ; preds = %bb.s, %bb.t
  %i.dy = phi i64 [ %.pre.i79, %bb.t ], [ %i.du, %bb.s ], !dbg !13267
  %i.dz = add i64 %i.dy, %i.ds, !dbg !13267
  store i64 %i.dz, ptr %i.m, align 8, !dbg !13267, !alias.scope !13252
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !13269
  %i.ea = load i64, ptr %i.m, align 8, !dbg !13276, !alias.scope !13278, !noundef !12 ; 2 uses
  %i.eb = icmp sgt i64 %i.ea, -1, !dbg !13281
  call void @llvm.assume(i1 %i.eb), !dbg !13282
  %i.ec = load ptr, ptr %i.bp, align 8, !dbg !13283, !alias.scope !13278, !nonnull !12, !noundef !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea, !dbg !13288
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !13290
  %.pre.i82 = load i64, ptr %i.m, align 8, !dbg !13292, !alias.scope !13278
  %i.ee = add i64 %.pre.i82, %2, !dbg !13292      ; 2 uses
  store i64 %i.ee, ptr %i.m, align 8, !dbg !13292, !alias.scope !13278
  br label %.lr.ph, !dbg !13293

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ef = phi i64 [ %i.fd, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ee, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 7 uses
  %.sroa.027.0130 = phi i64 [ %i.eg, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 3 uses
  %.sroa.016.0129 = phi i64 [ %i.ej, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 2 uses
  %i.eg = add nuw i64 %.sroa.027.0130, 1, !dbg !13296 ; 3 uses
  %i.eh = icmp eq i64 %.sroa.016.0129, 0, !dbg !13293
  br i1 %i.eh, label %._crit_edge, label %bb.u, !dbg !13293

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13307
  %i.ei = icmp eq i64 %.val64163, 0, !dbg !13085
  br i1 %i.ei, label %._crit_edge134, label %.preheader, !dbg !13085

bb.u:                                             ; preds = %.lr.ph
  %i.ej = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0129, i64 %.zext), !dbg !13308
  %i.ek = mul nuw nsw i64 %.sroa.027.0130, %.zext, !dbg !13311 ; 2 uses
  %i.el = mul nuw nsw i64 %i.eg, %.zext, !dbg !13312 ; 2 uses
  %i.em = icmp samesign ult i64 %i.el, 257, !dbg !13313
  br i1 %i.em, label %bb.w, label %bb.v, !dbg !13313, !prof !1798

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ek, i64 noundef %i.el, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !13322
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0130, !dbg !13323
  %i.eo = load i8, ptr %i.en, align 1, !dbg !13323, !noundef !12 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ek, !dbg !13324
  %i.eq = zext i8 %i.eo to i64, !dbg !13329       ; 2 uses
  %.not.i84 = icmp eq i8 %i.eo, 0, !dbg !13331
  br i1 %.not.i84, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.x, !dbg !13331

bb.x:                                             ; preds = %bb.w
  %i.er = icmp sgt i64 %i.ef, -1, !dbg !13332
  call void @llvm.assume(i1 %i.er), !dbg !13334
  %i.es = mul nuw nsw i64 %i.eq, %.zext, !dbg !13335
  %i.et = add nuw nsw i64 %i.es, 7, !dbg !13336
  %i.eu = lshr i64 %i.et, 3, !dbg !13336
  %i.ev = add nuw i64 %i.ef, %i.eu, !dbg !13340   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ev, i8 noundef 0), !dbg !13341, !noalias !13342
  %i.ew = load i64, ptr %i.m, align 8, !dbg !13345, !alias.scope !13349, !noalias !13342, !noundef !12 ; 4 uses
  %i.ex = icmp ugt i64 %i.ef, %i.ew, !dbg !13351
  br i1 %i.ex, label %bb.z, label %bb.y, !dbg !13351, !prof !1188

bb.y:                                             ; preds = %bb.x
  %i.ey = load ptr, ptr %i.bp, align 8, !dbg !13354, !alias.scope !13349, !noalias !13342, !nonnull !12, !noundef !12
  %i.ez = sub nuw i64 %i.ew, %i.ef, !dbg !13359
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ef, !dbg !13360
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ep, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eq, ptr noalias noundef nonnull %i.fa, i64 noundef %i.ez), !dbg !13362
  %i.fb = load i64, ptr %i.m, align 8, !dbg !13363, !alias.scope !13349, !noalias !13342, !noundef !12 ; 2 uses
  %i.fc = icmp ugt i64 %i.ev, %i.fb, !dbg !13365
  br i1 %i.fc, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.aa, !dbg !13365

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ef, i64 noundef %i.ew, i64 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !13366, !noalias !13342
  unreachable, !dbg !13366

bb.aa:                                            ; preds = %bb.y
  store i64 %i.ev, ptr %i.m, align 8, !dbg !13367, !alias.scope !13349, !noalias !13342
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !13368

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.w, %bb.y, %bb.aa
  %i.fd = phi i64 [ %i.ef, %bb.w ], [ %i.fb, %bb.y ], [ %i.ev, %bb.aa ]
  %exitcond.not = icmp eq i64 %i.eg, %2, !dbg !13369
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !13371

bb.ab:                                            ; preds = %bb.q
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !13139
  unreachable

bb.ac:                                            ; preds = %bb.q
  %i.fe = icmp eq i64 %i.ch, 0, !dbg !13138       ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.cd, 1, !dbg !13131 ; 3 uses
  %i.fg = sub i64 %i.ff, %.sroa.0.2124, !dbg !13372 ; 5 uses
  %i.fh = call i64 @llvm.smax.i64(i64 %i.fg, i64 %.sroa.012.0123), !dbg !13375
  %.sroa.0.0.i86 = select i1 %i.fe, i64 %i.fg, i64 %i.fh, !dbg !13138 ; 2 uses
  %i.fi = call i64 @llvm.smin.i64(i64 %i.fg, i64 %.sroa.087.0122), !dbg !13377
  %.sroa.0.0.i85 = select i1 %i.fe, i64 %i.fg, i64 %i.fi, !dbg !13138 ; 3 uses
  %i.fj = add nuw nsw i64 %.sroa.4.0121, 1, !dbg !13379
  %i.fk = sub i64 %.sroa.0.0.i86, %.sroa.0.0.i85, !dbg !13382
  %i.fl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fk, i1 false), !dbg !13385
  %i.fm = trunc nuw nsw i64 %i.fl to i8, !dbg !13385
  %i.fn = sub nuw nsw i8 64, %i.fm, !dbg !13388
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cg, !dbg !13139
  store i8 %i.fn, ptr %i.fo, align 1, !dbg !13139
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0121, !dbg !13389
  store i64 %i.fg, ptr %i.fp, align 8, !dbg !13389
  %i.fq = icmp eq i64 %i.bu, 0, !dbg !13390
  br i1 %i.fq, label %.split.us, label %.preheader.split, !dbg !13390
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB35_7binview4view4ViewEENCNvNtNtB1w_7binview5basic12encode_delta0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13391 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !13392

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !13397
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !13398
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !13398
  %.zext = zext nneg i16 %i.j to i64, !dbg !13398 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13399
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !13401
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !13402 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !13404, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !13416
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !13417
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13424 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !13424, !alias.scope !13426, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !13429
  call void @llvm.assume(i1 %i.o), !dbg !13430
  %.not.i = icmp eq i64 %i.k, 0, !dbg !13431
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !13431

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13432
  %i.q = load ptr, ptr %i.p, align 8, !dbg !13432, !alias.scope !13426, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !13437
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !13439
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !13441, !alias.scope !13426
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !13442

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !13441
  %i.t = add i64 %i.s, %i.k, !dbg !13441
  store i64 %i.t, ptr %i.m, align 8, !dbg !13441, !alias.scope !13426
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !13443 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !13444, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !13455
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !13456
  %i.w = load i64, ptr %i.m, align 8, !dbg !13462, !alias.scope !13464, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !13467
  call void @llvm.assume(i1 %i.x), !dbg !13468
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !13469
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !13469

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13470
  %i.z = load ptr, ptr %i.y, align 8, !dbg !13470, !alias.scope !13464, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !13475
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !13477
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !13479, !alias.scope !13464
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !13480

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !13479
  %i.ac = add i64 %i.ab, %i.u, !dbg !13479
  store i64 %i.ac, ptr %i.m, align 8, !dbg !13479, !alias.scope !13464
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !13481 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !13481, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !13482 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !13484, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !13495
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !13496
  %i.ag = load i64, ptr %i.m, align 8, !dbg !13502, !alias.scope !13504, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !13507
  call void @llvm.assume(i1 %i.ah), !dbg !13508
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !13509
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !13509

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13510
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !13510, !alias.scope !13504, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !13515
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !13517
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !13519, !alias.scope !13504
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !13520

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !13519
  %i.am = add i64 %i.al, %i.ae, !dbg !13519
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB35_7binview4view4ViewEENCNvNtNtB1w_7binview5basic12encode_delta0EEEBa_:bb.a
  %i.fy = icmp ult i64 %.lcssa.sink.i, %.val3.i.i.i.i.i, !dbg !13863
  call void @llvm.assume(i1 %i.fy), !dbg !13867
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null, !dbg !13868
  br i1 %.not.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i, label %bb.ab, !dbg !13870

bb.ab:                                            ; preds = %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %.lcssa.sink.i, !dbg !13871
  %.val.i.i.i.i = load i32, ptr %i.fz, align 4, !dbg !13872, !noalias !13874, !noundef !12
  %i.ga = zext i32 %.val.i.i.i.i to i64, !dbg !13875
  %i.gb = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ga, 1, !dbg !13877
  %i.gc = add i64 %i.cm, -1, !dbg !13878          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !13881

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i
  %.promoted306312 = phi i64 [ %i.fx, %bb.ab ], [ %i.fx, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %.promoted306313, %.preheader.i ], [ %.promoted306313, %bb.q ] ; 2 uses
  %i.gd = phi i64 [ %i.fx, %bb.ab ], [ %i.fx, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %i.cl, %.preheader.i ], [ %i.cl, %bb.q ]
  %.val64 = phi i64 [ %i.gc, %bb.ab ], [ %.val64183, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %.val64183, %.preheader.i ], [ %.val64183, %bb.q ] ; 4 uses
  %i.ge = phi i64 [ %i.gc, %bb.ab ], [ %i.cm, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.promoted132146 = phi i64 [ %.promoted132147, %bb.ab ], [ %.promoted132147, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %.promoted132148, %.preheader.i ], [ %.promoted132148, %bb.q ] ; 2 uses
  %.promoted142 = phi i64 [ %i.fw, %bb.ab ], [ %i.fw, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %.promoted144, %.preheader.i ], [ %i.fo, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fv, %bb.ab ], [ %i.fv, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %i.gg = phi i64 [ %i.fw, %bb.ab ], [ %i.fw, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %i.co, %.preheader.i ], [ %i.fo, %bb.q ]
  %i.gh = phi { i64, i64 } [ %i.gb, %bb.ab ], [ { i64 0, i64 undef }, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gi = extractvalue { i64, i64 } %i.gh, 0, !dbg !13882
  %i.gj = trunc nuw i64 %i.gi to i1, !dbg !13883
  br i1 %i.gj, label %bb.ac, label %bb.ad, !dbg !13883

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gk = udiv i64 %.sroa.4.0128, %.zext, !dbg !13886 ; 3 uses
  %i.gl = urem i64 %.sroa.4.0128, %.zext, !dbg !13889
  %i.gm = icmp samesign ult i64 %i.gk, 4, !dbg !13890
  br i1 %i.gm, label %bb.ap, label %bb.ao, !dbg !13890

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.089.0.lcssa = phi i64 [ %.sroa.0.0.i85, %bb.ap ], [ %.sroa.089.0129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !13892 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jj, %bb.ap ], [ %.sroa.0.2131, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !13893
  %i.gn = sub i64 %.val64184, %.val64, !dbg !13894
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gn, i64 256), !dbg !13895 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13899
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !13902
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.go, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bx), !dbg !13913
  call void @llvm.experimental.noalias.scope.decl(metadata !13916), !dbg !13919
  %.val.i75 = load i64, ptr %i.by, align 8, !dbg !13924, !alias.scope !13916, !noalias !13928, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bz, align 8, !dbg !13924, !alias.scope !13916, !noalias !13928, !noundef !12 ; 4 uses
  %i.gp = sub i64 %.val8.i, %.val.i75, !dbg !13930 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !13932
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !13942

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i77 = load ptr, ptr %i.c, align 8, !alias.scope !13943, !noalias !13928, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !13943, !noalias !13928, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gp, 4, !dbg !13942
  %.val1.i.i262 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !13942
  %.val.i.i77263 = ptrtoaddr ptr %.val.i.i77 to i64
  %i.gq = sub i64 %.val.i.i77263, %.val1.i.i262, !dbg !13942
  %diff.check = icmp ugt i64 %i.gq, -32, !dbg !13942
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !13942
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !13942

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gp, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.089.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !13946

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !13946 ; 2 uses
  %i.gr = add i64 %index, %.val.i75, !dbg !13952  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.gr, !dbg !13955 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gr, !dbg !13958 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16, !dbg !13961
  %wide.load = load <2 x i64>, ptr %i.gs, align 8, !dbg !13961, !noalias !13962
  %wide.load264 = load <2 x i64>, ptr %i.gu, align 8, !dbg !13961, !noalias !13962
  %i.gv = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !13963
  %i.gw = sub <2 x i64> %wide.load264, %broadcast.splat, !dbg !13963
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !13971
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !dbg !13971, !alias.scope !13972, !noalias !13962
  store <2 x i64> %i.gw, ptr %i.gx, align 8, !dbg !13971, !alias.scope !13972, !noalias !13962
  %index.next = add nuw i64 %index, 4, !dbg !13946 ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec, !dbg !13942
  br i1 %i.gy, label %middle.block, label %vector.body, !dbg !13942, !llvm.loop !13977

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec, !dbg !13942
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !13942

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.val8.i, %.val.i75, !dbg !13942
  %xtraiter = and i64 %i.gz, 3, !dbg !13942       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13942
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !13942

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ha, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !13946 ; 2 uses
  %i.hb = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !13952 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.hb, !dbg !13955
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hb, !dbg !13958
  %.val10.i.prol = load i64, ptr %i.hc, align 8, !dbg !13961, !noalias !13962, !noundef !12
  %i.he = sub i64 %.val10.i.prol, %.sroa.089.0.lcssa, !dbg !13963
  store i64 %i.he, ptr %i.hd, align 8, !dbg !13971, !alias.scope !13972, !noalias !13962
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13942 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13942
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !13942, !llvm.loop !13978

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %i.hf = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !13942
  %i.hg = add i64 %i.hf, %.val.i75, !dbg !13942
  %i.hh = icmp ugt i64 %i.hg, -4, !dbg !13942
  br i1 %i.hh, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !13942

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !13942
  %invariant.op307 = add i64 2, %.val.i75, !dbg !13942
  %invariant.op309 = add i64 3, %.val.i75, !dbg !13942
  br label %scalar.ph, !dbg !13942

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hs, %scalar.ph ] ; 5 uses
  %i.hi = add i64 %.sroa.0.012.i, %.val.i75, !dbg !13952 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.hi, !dbg !13955
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hi, !dbg !13958
  %.val10.i = load i64, ptr %i.hj, align 8, !dbg !13961, !noalias !13962, !noundef !12
  %i.hl = sub i64 %.val10.i, %.sroa.089.0.lcssa, !dbg !13963
  store i64 %i.hl, ptr %i.hk, align 8, !dbg !13971, !alias.scope !13972, !noalias !13962
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass, !dbg !13955
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !13958
  %.val10.i.1 = load i64, ptr %i.hm, align 8, !dbg !13961, !noalias !13962, !noundef !12
  %i.ho = sub i64 %.val10.i.1, %.sroa.089.0.lcssa, !dbg !13963
  store i64 %i.ho, ptr %i.hn, align 8, !dbg !13971, !alias.scope !13972, !noalias !13962
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass308, !dbg !13955
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !13958
  %.val10.i.2 = load i64, ptr %i.hp, align 8, !dbg !13961, !noalias !13962, !noundef !12
  %i.hr = sub i64 %.val10.i.2, %.sroa.089.0.lcssa, !dbg !13963
  store i64 %i.hr, ptr %i.hq, align 8, !dbg !13971, !alias.scope !13972, !noalias !13962
  %i.hs = add nuw i64 %.sroa.0.012.i, 4, !dbg !13946 ; 2 uses
  %.reass310 = add i64 %.sroa.0.012.i, %invariant.op309 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass310, !dbg !13955
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass310, !dbg !13958
  %.val10.i.3 = load i64, ptr %i.ht, align 8, !dbg !13961, !noalias !13962, !noundef !12
  %i.hv = sub i64 %.val10.i.3, %.sroa.089.0.lcssa, !dbg !13963
  store i64 %i.hv, ptr %i.hu, align 8, !dbg !13971, !alias.scope !13972, !noalias !13962
  %exitcond.not.i.3 = icmp eq i64 %i.hs, %i.gp, !dbg !13932
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !13942, !llvm.loop !13979

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13981
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.089.0.lcssa), !dbg !13981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !13982
  %i.hw = load i64, ptr %i.cb, align 8, !dbg !13983, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13984
  %i.hx = icmp ult i64 %i.hw, 11
  br i1 %i.hx, label %bb.af, label %bb.ae, !dbg !13985, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hw, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !13996
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hw), !dbg !13997
  %i.hy = load i64, ptr %i.m, align 8, !dbg !14003, !alias.scope !14005, !noundef !12 ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1, !dbg !14008
  call void @llvm.assume(i1 %i.hz), !dbg !14009
  %.not.i78 = icmp eq i64 %i.hw, 0, !dbg !14010
  br i1 %.not.i78, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, label %bb.ag, !dbg !14010

bb.ag:                                            ; preds = %bb.af
  %i.ia = load ptr, ptr %i.cc, align 8, !dbg !14011, !alias.scope !14005, !nonnull !12, !noundef !12
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy, !dbg !14016
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ib, ptr nonnull readonly align 1 %i.b, i64 %i.hw, i1 false), !dbg !14018
  %.pre.i79 = load i64, ptr %i.m, align 8, !dbg !14020, !alias.scope !14005
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, !dbg !14021

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80: ; preds = %bb.af, %bb.ag
  %i.ic = phi i64 [ %.pre.i79, %bb.ag ], [ %i.hy, %bb.af ], !dbg !14020
  %i.id = add i64 %i.ic, %i.hw, !dbg !14020
  store i64 %i.id, ptr %i.m, align 8, !dbg !14020, !alias.scope !14005
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !14022
  %i.ie = load i64, ptr %i.m, align 8, !dbg !14029, !alias.scope !14031, !noundef !12 ; 2 uses
  %i.if = icmp sgt i64 %i.ie, -1, !dbg !14034
  call void @llvm.assume(i1 %i.if), !dbg !14035
  %i.ig = load ptr, ptr %i.cc, align 8, !dbg !14036, !alias.scope !14031, !nonnull !12, !noundef !12
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie, !dbg !14041
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !14043
  %.pre.i82 = load i64, ptr %i.m, align 8, !dbg !14045, !alias.scope !14031
  %i.ii = add i64 %.pre.i82, %2, !dbg !14045      ; 2 uses
  store i64 %i.ii, ptr %i.m, align 8, !dbg !14045, !alias.scope !14031
  br label %.lr.ph, !dbg !14046

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ij = phi i64 [ %i.jh, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ii, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 7 uses
  %.sroa.027.0136 = phi i64 [ %i.ik, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 3 uses
  %.sroa.016.0135 = phi i64 [ %i.in, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 2 uses
  %i.ik = add nuw i64 %.sroa.027.0136, 1, !dbg !14049 ; 3 uses
  %i.il = icmp eq i64 %.sroa.016.0135, 0, !dbg !14046
  br i1 %i.il, label %._crit_edge, label %bb.ah, !dbg !14046

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14060
  %i.im = icmp eq i64 %.val64, 0, !dbg !13638
  br i1 %i.im, label %._crit_edge140, label %.preheader, !dbg !13638

bb.ah:                                            ; preds = %.lr.ph
  %i.in = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0135, i64 %.zext), !dbg !14061
  %i.io = mul nuw nsw i64 %.sroa.027.0136, %.zext, !dbg !14064 ; 2 uses
  %i.ip = mul nuw nsw i64 %i.ik, %.zext, !dbg !14065 ; 2 uses
  %i.iq = icmp samesign ult i64 %i.ip, 257, !dbg !14066
  br i1 %i.iq, label %bb.aj, label %bb.ai, !dbg !14066, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.io, i64 noundef %i.ip, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !14075
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0136, !dbg !14076
  %i.is = load i8, ptr %i.ir, align 1, !dbg !14076, !noundef !12 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.io, !dbg !14077
  %i.iu = zext i8 %i.is to i64, !dbg !14082       ; 2 uses
  %.not.i84 = icmp eq i8 %i.is, 0, !dbg !14084
  br i1 %.not.i84, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !14084

bb.ak:                                            ; preds = %bb.aj
  %i.iv = icmp sgt i64 %i.ij, -1, !dbg !14085
  call void @llvm.assume(i1 %i.iv), !dbg !14087
  %i.iw = mul nuw nsw i64 %i.iu, %.zext, !dbg !14088
  %i.ix = add nuw nsw i64 %i.iw, 7, !dbg !14089
  %i.iy = lshr i64 %i.ix, 3, !dbg !14089
  %i.iz = add nuw i64 %i.ij, %i.iy, !dbg !14091   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iz, i8 noundef 0), !dbg !14092, !noalias !14093
  %i.ja = load i64, ptr %i.m, align 8, !dbg !14096, !alias.scope !14100, !noalias !14093, !noundef !12 ; 4 uses
  %i.jb = icmp ugt i64 %i.ij, %i.ja, !dbg !14102
  br i1 %i.jb, label %bb.am, label %bb.al, !dbg !14102, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.jc = load ptr, ptr %i.cc, align 8, !dbg !14105, !alias.scope !14100, !noalias !14093, !nonnull !12, !noundef !12
  %i.jd = sub nuw i64 %i.ja, %i.ij, !dbg !14110
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ij, !dbg !14111
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.it, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iu, ptr noalias noundef nonnull %i.je, i64 noundef %i.jd), !dbg !14113
  %i.jf = load i64, ptr %i.m, align 8, !dbg !14114, !alias.scope !14100, !noalias !14093, !noundef !12 ; 2 uses
  %i.jg = icmp ugt i64 %i.iz, %i.jf, !dbg !14116
  br i1 %i.jg, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !14116

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ij, i64 noundef %i.ja, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !14117, !noalias !14093
  unreachable, !dbg !14117

bb.an:                                            ; preds = %bb.al
  store i64 %i.iz, ptr %i.m, align 8, !dbg !14118, !alias.scope !14100, !noalias !14093
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !14119

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jh = phi i64 [ %i.ij, %bb.aj ], [ %i.jf, %bb.al ], [ %i.iz, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ik, %2, !dbg !14120
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !14122

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !13890
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.ji = icmp eq i64 %i.gl, 0, !dbg !13889       ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.gh, 1, !dbg !13882 ; 3 uses
  %i.jk = sub i64 %i.jj, %.sroa.0.2131, !dbg !14123 ; 5 uses
  %i.jl = call i64 @llvm.smax.i64(i64 %i.jk, i64 %.sroa.012.0130), !dbg !14126
  %.sroa.0.0.i86 = select i1 %i.ji, i64 %i.jk, i64 %i.jl, !dbg !13889 ; 2 uses
  %i.jm = call i64 @llvm.smin.i64(i64 %i.jk, i64 %.sroa.089.0129), !dbg !14128
  %.sroa.0.0.i85 = select i1 %i.ji, i64 %i.jk, i64 %i.jm, !dbg !13889 ; 3 uses
  %i.jn = add nuw nsw i64 %.sroa.4.0128, 1, !dbg !14130
  %i.jo = sub i64 %.sroa.0.0.i86, %.sroa.0.0.i85, !dbg !14133
  %i.jp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 false), !dbg !14136
  %i.jq = trunc nuw nsw i64 %i.jp to i8, !dbg !14136
  %i.jr = sub nuw nsw i8 64, %i.jq, !dbg !14139
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gk, !dbg !13890
  store i8 %i.jr, ptr %i.js, align 1, !dbg !13890
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0128, !dbg !14140
  store i64 %i.jk, ptr %i.jt, align 8, !dbg !14140
  %i.ju = icmp eq i64 %i.cp, 0, !dbg !13647
  br i1 %i.ju, label %bb.ad, label %bb.p, !dbg !13647
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB1w_9primitive5basic12encode_deltaalE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14141 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !14142

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !14147
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !14148
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !14148
  %.zext = zext nneg i16 %i.j to i64, !dbg !14148 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !14151
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14152 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !14154, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !14166
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !14167
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14174 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !14174, !alias.scope !14176, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !14179
  call void @llvm.assume(i1 %i.o), !dbg !14180
  %.not.i = icmp eq i64 %i.k, 0, !dbg !14181
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !14181

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14182
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14182, !alias.scope !14176, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !14187
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !14189
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !14191, !alias.scope !14176
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !14192

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !14191
  %i.t = add i64 %i.s, %i.k, !dbg !14191
  store i64 %i.t, ptr %i.m, align 8, !dbg !14191, !alias.scope !14176
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14193 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !14194, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !14205
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !14206
  %i.w = load i64, ptr %i.m, align 8, !dbg !14212, !alias.scope !14214, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !14217
  call void @llvm.assume(i1 %i.x), !dbg !14218
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !14219
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !14219

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14220
  %i.z = load ptr, ptr %i.y, align 8, !dbg !14220, !alias.scope !14214, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !14225
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !14227
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !14229, !alias.scope !14214
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !14230

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !14229
  %i.ac = add i64 %i.ab, %i.u, !dbg !14229
  store i64 %i.ac, ptr %i.m, align 8, !dbg !14229, !alias.scope !14214
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !14231 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !14231, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14232 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !14234, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !14245
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !14246
  %i.ag = load i64, ptr %i.m, align 8, !dbg !14252, !alias.scope !14254, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !14257
  call void @llvm.assume(i1 %i.ah), !dbg !14258
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !14259
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !14259

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14260
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !14260, !alias.scope !14254, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !14265
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !14267
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !14269, !alias.scope !14254
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !14270

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !14269
  %i.am = add i64 %i.al, %i.ae, !dbg !14269
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB1w_9primitive5basic12encode_deltaalE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !14559 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !14559          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !14559, !alias.scope !14393, !noalias !14396
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !14560
  call void @llvm.assume(i1 %i.fz), !dbg !14564
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.lcssa.sink.i, !dbg !14565
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !14566, !alias.scope !14567, !noalias !14570, !noundef !12
  %i.gc = sext i8 %i.gb to i64, !dbg !14571
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !14576
  %i.ge = add i64 %i.cn, -1, !dbg !14577          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !14580

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab
  %.promoted304310 = phi i64 [ %i.fy, %bb.ab ], [ %.promoted304311, %.preheader.i ], [ %.promoted304311, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fy, %bb.ab ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.val64 = phi i64 [ %i.ge, %bb.ab ], [ %.val64181, %.preheader.i ], [ %.val64181, %bb.q ] ; 4 uses
  %i.gg = phi i64 [ %i.ge, %bb.ab ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %.promoted130144 = phi i64 [ %.promoted130145, %bb.ab ], [ %.promoted130146, %.preheader.i ], [ %.promoted130146, %bb.q ] ; 2 uses
  %.promoted140 = phi i64 [ %i.fx, %bb.ab ], [ %.promoted142, %.preheader.i ], [ %i.fp, %bb.q ] ; 2 uses
  %i.gh = phi i64 [ %i.fw, %bb.ab ], [ %i.co, %.preheader.i ], [ %i.co, %bb.q ]
  %i.gi = phi i64 [ %i.fx, %bb.ab ], [ %i.cp, %.preheader.i ], [ %i.fp, %bb.q ]
  %i.gj = phi { i64, i64 } [ %i.gd, %bb.ab ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !14581
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !14582
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !14582

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !14585 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !14588
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !14589
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !14589

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !14591 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !14592
  %i.gp = sub i64 %.val64182, %.val64, !dbg !14593
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !14594 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14598
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !14601
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !14612
  call void @llvm.experimental.noalias.scope.decl(metadata !14615), !dbg !14618
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !14623, !alias.scope !14615, !noalias !14627, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !14623, !alias.scope !14615, !noalias !14627, !noundef !12 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !14629 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !14631
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !14641

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !14642, !noalias !14627, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !14642, !noalias !14627, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !14641
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !14641
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !14641
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !14641
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !14641
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !14641

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !14645

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !14645 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !14651  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !14654 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !14657 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !14660
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !14660, !noalias !14661
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !14660, !noalias !14661
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !14662
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !14662
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !14670
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !14670, !alias.scope !14671, !noalias !14661
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !14670, !alias.scope !14671, !noalias !14661
  %index.next = add nuw i64 %index, 4, !dbg !14645 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !14641
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !14641, !llvm.loop !14676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !14641
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !14641

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !14641
  %xtraiter = and i64 %i.hb, 3, !dbg !14641       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !14641
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !14641

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !14645 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !14651 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !14654
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !14657
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !14660, !noalias !14661, !noundef !12
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !14662
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !14670, !alias.scope !14671, !noalias !14661
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !14641 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !14641
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !14641, !llvm.loop !14677

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !14641
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !14641
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !14641
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !14641

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !14641
  %invariant.op305 = add i64 2, %.val.i75, !dbg !14641
  %invariant.op307 = add i64 3, %.val.i75, !dbg !14641
  br label %scalar.ph, !dbg !14641

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !14651 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !14654
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !14657
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !14660, !noalias !14661, !noundef !12
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !14662
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !14670, !alias.scope !14671, !noalias !14661
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !14654
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !14657
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !14660, !noalias !14661, !noundef !12
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !14662
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !14670, !alias.scope !14671, !noalias !14661
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !14654
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !14657
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !14660, !noalias !14661, !noundef !12
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !14662
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !14670, !alias.scope !14671, !noalias !14661
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !14645 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !14654
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !14657
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !14660, !noalias !14661, !noundef !12
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !14662
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !14670, !alias.scope !14671, !noalias !14661
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !14631
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !14641, !llvm.loop !14678

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14680
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !14680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !14681
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !14682, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14683
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !14684, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !14695
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !14696
  %i.ia = load i64, ptr %i.m, align 8, !dbg !14702, !alias.scope !14704, !noundef !12 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !14707
  call void @llvm.assume(i1 %i.ib), !dbg !14708
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !14709
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !14709

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !14710, !alias.scope !14704, !nonnull !12, !noundef !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !14715
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !14717
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !14719, !alias.scope !14704
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !14720

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !14719
  %i.if = add i64 %i.ie, %i.hy, !dbg !14719
  store i64 %i.if, ptr %i.m, align 8, !dbg !14719, !alias.scope !14704
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !14721
  %i.ig = load i64, ptr %i.m, align 8, !dbg !14728, !alias.scope !14730, !noundef !12 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !14733
  call void @llvm.assume(i1 %i.ih), !dbg !14734
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !14735, !alias.scope !14730, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !14740
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !14742
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !14744, !alias.scope !14730
  %i.ik = add i64 %.pre.i81, %2, !dbg !14744      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !14744, !alias.scope !14730
  br label %.lr.ph, !dbg !14745

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw i64 %.sroa.027.0134, 1, !dbg !14748 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !14745
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !14745

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14759
  %i.io = icmp eq i64 %.val64, 0, !dbg !14391
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !14391

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !14760
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !14763 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !14764 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !14765
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !14765, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !14774
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !14775
  %i.iu = load i8, ptr %i.it, align 1, !dbg !14775, !noundef !12 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !14776
  %i.iw = zext i8 %i.iu to i64, !dbg !14781       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !14783
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !14783

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !14784
  call void @llvm.assume(i1 %i.ix), !dbg !14786
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !14787
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !14788
  %i.ja = lshr i64 %i.iz, 3, !dbg !14788
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !14790   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !14791, !noalias !14792
  %i.jc = load i64, ptr %i.m, align 8, !dbg !14795, !alias.scope !14799, !noalias !14792, !noundef !12 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !14801
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !14801, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !14804, !alias.scope !14799, !noalias !14792, !nonnull !12, !noundef !12
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !14809
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !14810
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !14812
  %i.jh = load i64, ptr %i.m, align 8, !dbg !14813, !alias.scope !14799, !noalias !14792, !noundef !12 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !14815
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !14815

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !14816, !noalias !14792
  unreachable, !dbg !14816

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !14817, !alias.scope !14799, !noalias !14792
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !14818

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !14819
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !14821

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !14589
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !14588       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !14581 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !14822 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !14825
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !14588 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !14827
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !14588 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !14829
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !14832
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !14835
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !14835
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !14838
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !14589
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !14589
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !14839
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !14839
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !14400
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !14400
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB1w_9primitive5basic12encode_deltahlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14840 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !14841

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !14846
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !14847
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !14847
  %.zext = zext nneg i16 %i.j to i64, !dbg !14847 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14848
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !14850
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14851 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !14853, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !14865
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !14866
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14873 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !14873, !alias.scope !14875, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !14878
  call void @llvm.assume(i1 %i.o), !dbg !14879
  %.not.i = icmp eq i64 %i.k, 0, !dbg !14880
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !14880

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14881
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14881, !alias.scope !14875, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !14886
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !14888
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !14890, !alias.scope !14875
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !14891

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !14890
  %i.t = add i64 %i.s, %i.k, !dbg !14890
  store i64 %i.t, ptr %i.m, align 8, !dbg !14890, !alias.scope !14875
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14892 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !14893, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !14904
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !14905
  %i.w = load i64, ptr %i.m, align 8, !dbg !14911, !alias.scope !14913, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !14916
  call void @llvm.assume(i1 %i.x), !dbg !14917
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !14918
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !14918

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14919
  %i.z = load ptr, ptr %i.y, align 8, !dbg !14919, !alias.scope !14913, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !14924
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !14926
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !14928, !alias.scope !14913
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !14929

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !14928
  %i.ac = add i64 %i.ab, %i.u, !dbg !14928
  store i64 %i.ac, ptr %i.m, align 8, !dbg !14928, !alias.scope !14913
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !14930 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !14930, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14931 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !14933, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !14944
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !14945
  %i.ag = load i64, ptr %i.m, align 8, !dbg !14951, !alias.scope !14953, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !14956
  call void @llvm.assume(i1 %i.ah), !dbg !14957
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !14958
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !14958

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14959
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !14959, !alias.scope !14953, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !14964
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !14966
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !14968, !alias.scope !14953
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !14969

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !14968
  %i.am = add i64 %i.al, %i.ae, !dbg !14968
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB1w_9primitive5basic12encode_deltahlE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !15250 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !15250          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !15250, !alias.scope !15084, !noalias !15087
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !15251
  call void @llvm.assume(i1 %i.fz), !dbg !15255
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.lcssa.sink.i, !dbg !15256
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !15257, !alias.scope !15258, !noalias !15261, !noundef !12
  %i.gc = zext i8 %i.gb to i64, !dbg !15262
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !15267
  %i.ge = add i64 %i.cn, -1, !dbg !15268          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !15271

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab
  %.promoted304310 = phi i64 [ %i.fy, %bb.ab ], [ %.promoted304311, %.preheader.i ], [ %.promoted304311, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fy, %bb.ab ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.val64 = phi i64 [ %i.ge, %bb.ab ], [ %.val64181, %.preheader.i ], [ %.val64181, %bb.q ] ; 4 uses
  %i.gg = phi i64 [ %i.ge, %bb.ab ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %.promoted130144 = phi i64 [ %.promoted130145, %bb.ab ], [ %.promoted130146, %.preheader.i ], [ %.promoted130146, %bb.q ] ; 2 uses
  %.promoted140 = phi i64 [ %i.fx, %bb.ab ], [ %.promoted142, %.preheader.i ], [ %i.fp, %bb.q ] ; 2 uses
  %i.gh = phi i64 [ %i.fw, %bb.ab ], [ %i.co, %.preheader.i ], [ %i.co, %bb.q ]
  %i.gi = phi i64 [ %i.fx, %bb.ab ], [ %i.cp, %.preheader.i ], [ %i.fp, %bb.q ]
  %i.gj = phi { i64, i64 } [ %i.gd, %bb.ab ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !15272
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !15273
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !15273

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !15276 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !15279
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !15280
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !15280

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !15282 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !15283
  %i.gp = sub i64 %.val64182, %.val64, !dbg !15284
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !15285 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15289
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !15292
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !15303
  call void @llvm.experimental.noalias.scope.decl(metadata !15306), !dbg !15309
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !15314, !alias.scope !15306, !noalias !15318, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !15314, !alias.scope !15306, !noalias !15318, !noundef !12 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !15320 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !15322
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !15332

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15333, !noalias !15318, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !15333, !noalias !15318, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !15332
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !15332
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !15332
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !15332
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !15332
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !15332

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !15336

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !15336 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !15342  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !15345 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !15348 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !15351
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !15351, !noalias !15352
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !15351, !noalias !15352
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !15353
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !15353
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !15361
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !15361, !alias.scope !15362, !noalias !15352
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !15361, !alias.scope !15362, !noalias !15352
  %index.next = add nuw i64 %index, 4, !dbg !15336 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !15332
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !15332, !llvm.loop !15367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !15332
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !15332

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !15332
  %xtraiter = and i64 %i.hb, 3, !dbg !15332       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !15332
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !15332

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !15336 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !15342 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !15345
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !15348
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !15351, !noalias !15352, !noundef !12
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !15353
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !15361, !alias.scope !15362, !noalias !15352
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !15332 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !15332
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !15332, !llvm.loop !15368

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !15332
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !15332
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !15332
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !15332

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !15332
  %invariant.op305 = add i64 2, %.val.i75, !dbg !15332
  %invariant.op307 = add i64 3, %.val.i75, !dbg !15332
  br label %scalar.ph, !dbg !15332

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !15342 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !15345
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !15348
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !15351, !noalias !15352, !noundef !12
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !15353
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !15361, !alias.scope !15362, !noalias !15352
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !15345
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !15348
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !15351, !noalias !15352, !noundef !12
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !15353
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !15361, !alias.scope !15362, !noalias !15352
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !15345
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !15348
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !15351, !noalias !15352, !noundef !12
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !15353
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !15361, !alias.scope !15362, !noalias !15352
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !15336 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !15345
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !15348
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !15351, !noalias !15352, !noundef !12
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !15353
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !15361, !alias.scope !15362, !noalias !15352
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !15322
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !15332, !llvm.loop !15369

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15371
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !15371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !15372
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !15373, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15374
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !15375, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !15386
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !15387
  %i.ia = load i64, ptr %i.m, align 8, !dbg !15393, !alias.scope !15395, !noundef !12 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !15398
  call void @llvm.assume(i1 %i.ib), !dbg !15399
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !15400
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !15400

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !15401, !alias.scope !15395, !nonnull !12, !noundef !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !15406
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !15408
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !15410, !alias.scope !15395
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !15411

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !15410
  %i.if = add i64 %i.ie, %i.hy, !dbg !15410
  store i64 %i.if, ptr %i.m, align 8, !dbg !15410, !alias.scope !15395
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !15412
  %i.ig = load i64, ptr %i.m, align 8, !dbg !15419, !alias.scope !15421, !noundef !12 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !15424
  call void @llvm.assume(i1 %i.ih), !dbg !15425
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !15426, !alias.scope !15421, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !15431
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !15433
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !15435, !alias.scope !15421
  %i.ik = add i64 %.pre.i81, %2, !dbg !15435      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !15435, !alias.scope !15421
  br label %.lr.ph, !dbg !15436

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw i64 %.sroa.027.0134, 1, !dbg !15439 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !15436
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !15436

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15450
  %i.io = icmp eq i64 %.val64, 0, !dbg !15082
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !15082

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !15451
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !15454 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !15455 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !15456
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !15456, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !15465
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !15466
  %i.iu = load i8, ptr %i.it, align 1, !dbg !15466, !noundef !12 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !15467
  %i.iw = zext i8 %i.iu to i64, !dbg !15472       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !15474
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !15474

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !15475
  call void @llvm.assume(i1 %i.ix), !dbg !15477
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !15478
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !15479
  %i.ja = lshr i64 %i.iz, 3, !dbg !15479
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !15481   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !15482, !noalias !15483
  %i.jc = load i64, ptr %i.m, align 8, !dbg !15486, !alias.scope !15490, !noalias !15483, !noundef !12 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !15492
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !15492, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !15495, !alias.scope !15490, !noalias !15483, !nonnull !12, !noundef !12
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !15500
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !15501
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !15503
  %i.jh = load i64, ptr %i.m, align 8, !dbg !15504, !alias.scope !15490, !noalias !15483, !noundef !12 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !15506
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !15506

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !15507, !noalias !15483
  unreachable, !dbg !15507

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !15508, !alias.scope !15490, !noalias !15483
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !15509

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !15510
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !15512

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !15280
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !15279       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !15272 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !15513 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !15516
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !15279 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !15518
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !15279 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !15520
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !15523
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !15526
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !15526
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !15529
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !15280
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !15280
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !15530
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !15530
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !15091
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !15091
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB1w_9primitive5basic12encode_deltallE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15531 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !15532

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !15537
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !15538
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !15538
  %.zext = zext nneg i16 %i.j to i64, !dbg !15538 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15539
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !15541
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15542 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !15544, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !15556
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !15557
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15564 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !15564, !alias.scope !15566, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !15569
  call void @llvm.assume(i1 %i.o), !dbg !15570
  %.not.i = icmp eq i64 %i.k, 0, !dbg !15571
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !15571

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15572
  %i.q = load ptr, ptr %i.p, align 8, !dbg !15572, !alias.scope !15566, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !15577
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !15579
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !15581, !alias.scope !15566
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !15582

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !15581
  %i.t = add i64 %i.s, %i.k, !dbg !15581
  store i64 %i.t, ptr %i.m, align 8, !dbg !15581, !alias.scope !15566
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15583 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !15584, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !15595
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !15596
  %i.w = load i64, ptr %i.m, align 8, !dbg !15602, !alias.scope !15604, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !15607
  call void @llvm.assume(i1 %i.x), !dbg !15608
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !15609
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !15609

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15610
  %i.z = load ptr, ptr %i.y, align 8, !dbg !15610, !alias.scope !15604, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !15615
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !15617
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !15619, !alias.scope !15604
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !15620

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !15619
  %i.ac = add i64 %i.ab, %i.u, !dbg !15619
  store i64 %i.ac, ptr %i.m, align 8, !dbg !15619, !alias.scope !15604
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15621 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !15621, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15622 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !15624, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !15635
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !15636
  %i.ag = load i64, ptr %i.m, align 8, !dbg !15642, !alias.scope !15644, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !15647
  call void @llvm.assume(i1 %i.ah), !dbg !15648
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !15649
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !15649

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15650
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !15650, !alias.scope !15644, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !15655
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !15657
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !15659, !alias.scope !15644
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !15660

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !15659
  %i.am = add i64 %i.al, %i.ae, !dbg !15659
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB1w_9primitive5basic12encode_deltallE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !15941 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !15941          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !15941, !alias.scope !15775, !noalias !15778
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !15942
  call void @llvm.assume(i1 %i.fz), !dbg !15946
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.lcssa.sink.i, !dbg !15947
  %i.gb = load i32, ptr %i.ga, align 4, !dbg !15948, !alias.scope !15949, !noalias !15952, !noundef !12
  %i.gc = sext i32 %i.gb to i64, !dbg !15953
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !15958
  %i.ge = add i64 %i.cn, -1, !dbg !15959          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !15962

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab
  %.promoted304310 = phi i64 [ %i.fy, %bb.ab ], [ %.promoted304311, %.preheader.i ], [ %.promoted304311, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fy, %bb.ab ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.val64 = phi i64 [ %i.ge, %bb.ab ], [ %.val64181, %.preheader.i ], [ %.val64181, %bb.q ] ; 4 uses
  %i.gg = phi i64 [ %i.ge, %bb.ab ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %.promoted130144 = phi i64 [ %.promoted130145, %bb.ab ], [ %.promoted130146, %.preheader.i ], [ %.promoted130146, %bb.q ] ; 2 uses
  %.promoted140 = phi i64 [ %i.fx, %bb.ab ], [ %.promoted142, %.preheader.i ], [ %i.fp, %bb.q ] ; 2 uses
  %i.gh = phi i64 [ %i.fw, %bb.ab ], [ %i.co, %.preheader.i ], [ %i.co, %bb.q ]
  %i.gi = phi i64 [ %i.fx, %bb.ab ], [ %i.cp, %.preheader.i ], [ %i.fp, %bb.q ]
  %i.gj = phi { i64, i64 } [ %i.gd, %bb.ab ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !15963
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !15964
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !15964

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !15967 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !15970
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !15971
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !15971

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !15973 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !15974
  %i.gp = sub i64 %.val64182, %.val64, !dbg !15975
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !15976 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15980
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !15983
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !15994
  call void @llvm.experimental.noalias.scope.decl(metadata !15997), !dbg !16000
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !16005, !alias.scope !15997, !noalias !16009, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !16005, !alias.scope !15997, !noalias !16009, !noundef !12 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !16011 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !16013
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !16023

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !16024, !noalias !16009, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !16024, !noalias !16009, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !16023
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !16023
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !16023
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !16023
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !16023
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !16023

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16027

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16027 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !16033  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !16036 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !16039 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !16042
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !16042, !noalias !16043
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !16042, !noalias !16043
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !16044
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !16044
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !16052
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !16052, !alias.scope !16053, !noalias !16043
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !16052, !alias.scope !16053, !noalias !16043
  %index.next = add nuw i64 %index, 4, !dbg !16027 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !16023
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !16023, !llvm.loop !16058

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !16023
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !16023

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !16023
  %xtraiter = and i64 %i.hb, 3, !dbg !16023       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !16023
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !16023

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !16027 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !16033 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !16036
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !16039
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !16042, !noalias !16043, !noundef !12
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !16044
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !16052, !alias.scope !16053, !noalias !16043
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !16023 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !16023
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !16023, !llvm.loop !16059

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !16023
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !16023
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !16023
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !16023

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !16023
  %invariant.op305 = add i64 2, %.val.i75, !dbg !16023
  %invariant.op307 = add i64 3, %.val.i75, !dbg !16023
  br label %scalar.ph, !dbg !16023

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !16033 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !16036
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !16039
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !16042, !noalias !16043, !noundef !12
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !16044
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !16052, !alias.scope !16053, !noalias !16043
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !16036
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !16039
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !16042, !noalias !16043, !noundef !12
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !16044
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !16052, !alias.scope !16053, !noalias !16043
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !16036
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !16039
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !16042, !noalias !16043, !noundef !12
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !16044
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !16052, !alias.scope !16053, !noalias !16043
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !16027 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !16036
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !16039
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !16042, !noalias !16043, !noundef !12
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !16044
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !16052, !alias.scope !16053, !noalias !16043
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !16013
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !16023, !llvm.loop !16060

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16062
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !16062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !16063
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !16064, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16065
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !16066, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !16077
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !16078
  %i.ia = load i64, ptr %i.m, align 8, !dbg !16084, !alias.scope !16086, !noundef !12 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !16089
  call void @llvm.assume(i1 %i.ib), !dbg !16090
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !16091
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !16091

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !16092, !alias.scope !16086, !nonnull !12, !noundef !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !16097
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !16099
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !16101, !alias.scope !16086
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !16102

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !16101
  %i.if = add i64 %i.ie, %i.hy, !dbg !16101
  store i64 %i.if, ptr %i.m, align 8, !dbg !16101, !alias.scope !16086
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !16103
  %i.ig = load i64, ptr %i.m, align 8, !dbg !16110, !alias.scope !16112, !noundef !12 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !16115
  call void @llvm.assume(i1 %i.ih), !dbg !16116
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !16117, !alias.scope !16112, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !16122
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !16124
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !16126, !alias.scope !16112
  %i.ik = add i64 %.pre.i81, %2, !dbg !16126      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !16126, !alias.scope !16112
  br label %.lr.ph, !dbg !16127

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw i64 %.sroa.027.0134, 1, !dbg !16130 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !16127
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !16127

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16141
  %i.io = icmp eq i64 %.val64, 0, !dbg !15773
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !15773

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !16142
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !16145 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !16146 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !16147
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !16147, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !16156
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !16157
  %i.iu = load i8, ptr %i.it, align 1, !dbg !16157, !noundef !12 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !16158
  %i.iw = zext i8 %i.iu to i64, !dbg !16163       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !16165
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !16165

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !16166
  call void @llvm.assume(i1 %i.ix), !dbg !16168
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !16169
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !16170
  %i.ja = lshr i64 %i.iz, 3, !dbg !16170
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !16172   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !16173, !noalias !16174
  %i.jc = load i64, ptr %i.m, align 8, !dbg !16177, !alias.scope !16181, !noalias !16174, !noundef !12 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !16183
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !16183, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !16186, !alias.scope !16181, !noalias !16174, !nonnull !12, !noundef !12
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !16191
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !16192
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !16194
  %i.jh = load i64, ptr %i.m, align 8, !dbg !16195, !alias.scope !16181, !noalias !16174, !noundef !12 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !16197
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !16197

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !16198, !noalias !16174
  unreachable, !dbg !16198

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !16199, !alias.scope !16181, !noalias !16174
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !16200

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !16201
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !16203

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !15971
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !15970       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !15963 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !16204 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !16207
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !15970 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !16209
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !15970 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !16211
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !16214
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !16217
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !16217
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !16220
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !15971
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !15971
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !16221
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !16221
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !15782
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !15782
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB1w_9primitive5basic12encode_deltamlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16222 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !16223

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !16228
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !16229
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !16229
  %.zext = zext nneg i16 %i.j to i64, !dbg !16229 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16230
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !16232
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16233 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !16235, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !16247
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !16248
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16255 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !16255, !alias.scope !16257, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !16260
  call void @llvm.assume(i1 %i.o), !dbg !16261
  %.not.i = icmp eq i64 %i.k, 0, !dbg !16262
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !16262

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16263
  %i.q = load ptr, ptr %i.p, align 8, !dbg !16263, !alias.scope !16257, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !16268
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !16270
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !16272, !alias.scope !16257
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !16273

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !16272
  %i.t = add i64 %i.s, %i.k, !dbg !16272
  store i64 %i.t, ptr %i.m, align 8, !dbg !16272, !alias.scope !16257
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16274 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !16275, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !16286
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !16287
  %i.w = load i64, ptr %i.m, align 8, !dbg !16293, !alias.scope !16295, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !16298
  call void @llvm.assume(i1 %i.x), !dbg !16299
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !16300
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !16300

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16301
  %i.z = load ptr, ptr %i.y, align 8, !dbg !16301, !alias.scope !16295, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !16306
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !16308
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !16310, !alias.scope !16295
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !16311

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !16310
  %i.ac = add i64 %i.ab, %i.u, !dbg !16310
  store i64 %i.ac, ptr %i.m, align 8, !dbg !16310, !alias.scope !16295
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !16312 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !16312, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16313 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !16315, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !16326
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !16327
  %i.ag = load i64, ptr %i.m, align 8, !dbg !16333, !alias.scope !16335, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !16338
  call void @llvm.assume(i1 %i.ah), !dbg !16339
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !16340
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !16340

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16341
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !16341, !alias.scope !16335, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !16346
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !16348
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !16350, !alias.scope !16335
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !16351

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !16350
  %i.am = add i64 %i.al, %i.ae, !dbg !16350
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB1w_9primitive5basic12encode_deltamlE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !16632 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !16632          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !16632, !alias.scope !16466, !noalias !16469
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !16633
  call void @llvm.assume(i1 %i.fz), !dbg !16637
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.lcssa.sink.i, !dbg !16638
  %i.gb = load i32, ptr %i.ga, align 4, !dbg !16639, !alias.scope !16640, !noalias !16643, !noundef !12
  %i.gc = sext i32 %i.gb to i64, !dbg !16644
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !16649
  %i.ge = add i64 %i.cn, -1, !dbg !16650          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !16653

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab
  %.promoted304310 = phi i64 [ %i.fy, %bb.ab ], [ %.promoted304311, %.preheader.i ], [ %.promoted304311, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fy, %bb.ab ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.val64 = phi i64 [ %i.ge, %bb.ab ], [ %.val64181, %.preheader.i ], [ %.val64181, %bb.q ] ; 4 uses
  %i.gg = phi i64 [ %i.ge, %bb.ab ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %.promoted130144 = phi i64 [ %.promoted130145, %bb.ab ], [ %.promoted130146, %.preheader.i ], [ %.promoted130146, %bb.q ] ; 2 uses
  %.promoted140 = phi i64 [ %i.fx, %bb.ab ], [ %.promoted142, %.preheader.i ], [ %i.fp, %bb.q ] ; 2 uses
  %i.gh = phi i64 [ %i.fw, %bb.ab ], [ %i.co, %.preheader.i ], [ %i.co, %bb.q ]
  %i.gi = phi i64 [ %i.fx, %bb.ab ], [ %i.cp, %.preheader.i ], [ %i.fp, %bb.q ]
  %i.gj = phi { i64, i64 } [ %i.gd, %bb.ab ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !16654
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !16655
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !16655

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !16658 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !16661
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !16662
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !16662

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !16664 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !16665
  %i.gp = sub i64 %.val64182, %.val64, !dbg !16666
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !16667 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16671
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !16674
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !16685
  call void @llvm.experimental.noalias.scope.decl(metadata !16688), !dbg !16691
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !16696, !alias.scope !16688, !noalias !16700, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !16696, !alias.scope !16688, !noalias !16700, !noundef !12 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !16702 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !16704
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !16714

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !16715, !noalias !16700, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !16715, !noalias !16700, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !16714
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !16714
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !16714
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !16714
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !16714
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !16714

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16718

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16718 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !16724  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !16727 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !16730 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !16733
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !16733, !noalias !16734
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !16733, !noalias !16734
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !16735
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !16735
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !16743
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !16743, !alias.scope !16744, !noalias !16734
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !16743, !alias.scope !16744, !noalias !16734
  %index.next = add nuw i64 %index, 4, !dbg !16718 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !16714
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !16714, !llvm.loop !16749

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !16714
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !16714

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !16714
  %xtraiter = and i64 %i.hb, 3, !dbg !16714       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !16714
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !16714

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !16718 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !16724 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !16727
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !16730
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !16733, !noalias !16734, !noundef !12
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !16735
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !16743, !alias.scope !16744, !noalias !16734
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !16714 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !16714
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !16714, !llvm.loop !16750

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !16714
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !16714
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !16714
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !16714

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !16714
  %invariant.op305 = add i64 2, %.val.i75, !dbg !16714
  %invariant.op307 = add i64 3, %.val.i75, !dbg !16714
  br label %scalar.ph, !dbg !16714

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !16724 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !16727
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !16730
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !16733, !noalias !16734, !noundef !12
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !16735
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !16743, !alias.scope !16744, !noalias !16734
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !16727
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !16730
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !16733, !noalias !16734, !noundef !12
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !16735
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !16743, !alias.scope !16744, !noalias !16734
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !16727
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !16730
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !16733, !noalias !16734, !noundef !12
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !16735
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !16743, !alias.scope !16744, !noalias !16734
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !16718 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !16727
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !16730
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !16733, !noalias !16734, !noundef !12
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !16735
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !16743, !alias.scope !16744, !noalias !16734
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !16704
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !16714, !llvm.loop !16751

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16753
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !16753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !16754
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !16755, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16756
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !16757, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !16768
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !16769
  %i.ia = load i64, ptr %i.m, align 8, !dbg !16775, !alias.scope !16777, !noundef !12 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !16780
  call void @llvm.assume(i1 %i.ib), !dbg !16781
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !16782
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !16782

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !16783, !alias.scope !16777, !nonnull !12, !noundef !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !16788
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !16790
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !16792, !alias.scope !16777
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !16793

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !16792
  %i.if = add i64 %i.ie, %i.hy, !dbg !16792
  store i64 %i.if, ptr %i.m, align 8, !dbg !16792, !alias.scope !16777
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !16794
  %i.ig = load i64, ptr %i.m, align 8, !dbg !16801, !alias.scope !16803, !noundef !12 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !16806
  call void @llvm.assume(i1 %i.ih), !dbg !16807
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !16808, !alias.scope !16803, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !16813
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !16815
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !16817, !alias.scope !16803
  %i.ik = add i64 %.pre.i81, %2, !dbg !16817      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !16817, !alias.scope !16803
  br label %.lr.ph, !dbg !16818

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw i64 %.sroa.027.0134, 1, !dbg !16821 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !16818
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !16818

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16832
  %i.io = icmp eq i64 %.val64, 0, !dbg !16464
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !16464

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !16833
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !16836 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !16837 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !16838
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !16838, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !16847
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !16848
  %i.iu = load i8, ptr %i.it, align 1, !dbg !16848, !noundef !12 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !16849
  %i.iw = zext i8 %i.iu to i64, !dbg !16854       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !16856
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !16856

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !16857
  call void @llvm.assume(i1 %i.ix), !dbg !16859
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !16860
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !16861
  %i.ja = lshr i64 %i.iz, 3, !dbg !16861
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !16863   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !16864, !noalias !16865
  %i.jc = load i64, ptr %i.m, align 8, !dbg !16868, !alias.scope !16872, !noalias !16865, !noundef !12 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !16874
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !16874, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !16877, !alias.scope !16872, !noalias !16865, !nonnull !12, !noundef !12
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !16882
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !16883
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !16885
  %i.jh = load i64, ptr %i.m, align 8, !dbg !16886, !alias.scope !16872, !noalias !16865, !noundef !12 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !16888
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !16888

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !16889, !noalias !16865
  unreachable, !dbg !16889

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !16890, !alias.scope !16872, !noalias !16865
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !16891

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !16892
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !16894

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !16662
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !16661       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !16654 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !16895 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !16898
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !16661 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !16900
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !16661 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !16902
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !16905
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !16908
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !16908
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !16911
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !16662
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !16662
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !16912
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !16912
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !16473
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !16473
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB1w_9primitive5basic12encode_deltaslE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16913 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !16914

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !16919
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !16920
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !16920
  %.zext = zext nneg i16 %i.j to i64, !dbg !16920 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16921
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !16923
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16924 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !16926, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !16938
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !16939
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16946 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !16946, !alias.scope !16948, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !16951
  call void @llvm.assume(i1 %i.o), !dbg !16952
  %.not.i = icmp eq i64 %i.k, 0, !dbg !16953
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !16953

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16954
  %i.q = load ptr, ptr %i.p, align 8, !dbg !16954, !alias.scope !16948, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !16959
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !16961
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !16963, !alias.scope !16948
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !16964

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !16963
  %i.t = add i64 %i.s, %i.k, !dbg !16963
  store i64 %i.t, ptr %i.m, align 8, !dbg !16963, !alias.scope !16948
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16965 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !16966, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !16977
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !16978
  %i.w = load i64, ptr %i.m, align 8, !dbg !16984, !alias.scope !16986, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !16989
  call void @llvm.assume(i1 %i.x), !dbg !16990
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !16991
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !16991

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16992
  %i.z = load ptr, ptr %i.y, align 8, !dbg !16992, !alias.scope !16986, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !16997
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !16999
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !17001, !alias.scope !16986
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !17002

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !17001
  %i.ac = add i64 %i.ab, %i.u, !dbg !17001
  store i64 %i.ac, ptr %i.m, align 8, !dbg !17001, !alias.scope !16986
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17003 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !17003, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17004 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !17006, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !17017
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !17018
  %i.ag = load i64, ptr %i.m, align 8, !dbg !17024, !alias.scope !17026, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !17029
  call void @llvm.assume(i1 %i.ah), !dbg !17030
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !17031
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !17031

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17032
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !17032, !alias.scope !17026, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !17037
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !17039
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !17041, !alias.scope !17026
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !17042

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !17041
  %i.am = add i64 %i.al, %i.ae, !dbg !17041
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB1w_9primitive5basic12encode_deltaslE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !17323 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !17323          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !17323, !alias.scope !17157, !noalias !17160
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !17324
  call void @llvm.assume(i1 %i.fz), !dbg !17328
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %.lcssa.sink.i, !dbg !17329
  %i.gb = load i16, ptr %i.ga, align 2, !dbg !17330, !alias.scope !17331, !noalias !17334, !noundef !12
  %i.gc = sext i16 %i.gb to i64, !dbg !17335
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !17340
  %i.ge = add i64 %i.cn, -1, !dbg !17341          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !17344

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab
  %.promoted304310 = phi i64 [ %i.fy, %bb.ab ], [ %.promoted304311, %.preheader.i ], [ %.promoted304311, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fy, %bb.ab ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.val64 = phi i64 [ %i.ge, %bb.ab ], [ %.val64181, %.preheader.i ], [ %.val64181, %bb.q ] ; 4 uses
  %i.gg = phi i64 [ %i.ge, %bb.ab ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %.promoted130144 = phi i64 [ %.promoted130145, %bb.ab ], [ %.promoted130146, %.preheader.i ], [ %.promoted130146, %bb.q ] ; 2 uses
  %.promoted140 = phi i64 [ %i.fx, %bb.ab ], [ %.promoted142, %.preheader.i ], [ %i.fp, %bb.q ] ; 2 uses
  %i.gh = phi i64 [ %i.fw, %bb.ab ], [ %i.co, %.preheader.i ], [ %i.co, %bb.q ]
  %i.gi = phi i64 [ %i.fx, %bb.ab ], [ %i.cp, %.preheader.i ], [ %i.fp, %bb.q ]
  %i.gj = phi { i64, i64 } [ %i.gd, %bb.ab ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !17345
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !17346
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !17346

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !17349 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !17352
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !17353
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !17353

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !17355 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !17356
  %i.gp = sub i64 %.val64182, %.val64, !dbg !17357
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !17358 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17362
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !17365
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !17376
  call void @llvm.experimental.noalias.scope.decl(metadata !17379), !dbg !17382
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !17387, !alias.scope !17379, !noalias !17391, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !17387, !alias.scope !17379, !noalias !17391, !noundef !12 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !17393 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !17395
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !17405

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !17406, !noalias !17391, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !17406, !noalias !17391, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !17405
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !17405
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !17405
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !17405
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !17405
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !17405

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !17409

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !17409 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !17415  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !17418 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !17421 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !17424
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !17424, !noalias !17425
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !17424, !noalias !17425
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !17426
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !17426
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !17434
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !17434, !alias.scope !17435, !noalias !17425
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !17434, !alias.scope !17435, !noalias !17425
  %index.next = add nuw i64 %index, 4, !dbg !17409 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !17405
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !17405, !llvm.loop !17440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !17405
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !17405

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !17405
  %xtraiter = and i64 %i.hb, 3, !dbg !17405       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !17405
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !17405

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !17409 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !17415 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !17418
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !17421
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !17424, !noalias !17425, !noundef !12
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !17426
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !17434, !alias.scope !17435, !noalias !17425
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !17405 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !17405
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !17405, !llvm.loop !17441

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !17405
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !17405
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !17405
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !17405

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !17405
  %invariant.op305 = add i64 2, %.val.i75, !dbg !17405
  %invariant.op307 = add i64 3, %.val.i75, !dbg !17405
  br label %scalar.ph, !dbg !17405

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !17415 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !17418
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !17421
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !17424, !noalias !17425, !noundef !12
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !17426
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !17434, !alias.scope !17435, !noalias !17425
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !17418
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !17421
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !17424, !noalias !17425, !noundef !12
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !17426
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !17434, !alias.scope !17435, !noalias !17425
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !17418
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !17421
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !17424, !noalias !17425, !noundef !12
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !17426
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !17434, !alias.scope !17435, !noalias !17425
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !17409 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !17418
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !17421
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !17424, !noalias !17425, !noundef !12
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !17426
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !17434, !alias.scope !17435, !noalias !17425
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !17395
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !17405, !llvm.loop !17442

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17444
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !17444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !17445
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !17446, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17447
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !17448, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !17459
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !17460
  %i.ia = load i64, ptr %i.m, align 8, !dbg !17466, !alias.scope !17468, !noundef !12 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !17471
  call void @llvm.assume(i1 %i.ib), !dbg !17472
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !17473
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !17473

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !17474, !alias.scope !17468, !nonnull !12, !noundef !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !17479
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !17481
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !17483, !alias.scope !17468
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !17484

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !17483
  %i.if = add i64 %i.ie, %i.hy, !dbg !17483
  store i64 %i.if, ptr %i.m, align 8, !dbg !17483, !alias.scope !17468
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !17485
  %i.ig = load i64, ptr %i.m, align 8, !dbg !17492, !alias.scope !17494, !noundef !12 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !17497
  call void @llvm.assume(i1 %i.ih), !dbg !17498
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !17499, !alias.scope !17494, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !17504
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !17506
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !17508, !alias.scope !17494
  %i.ik = add i64 %.pre.i81, %2, !dbg !17508      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !17508, !alias.scope !17494
  br label %.lr.ph, !dbg !17509

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw i64 %.sroa.027.0134, 1, !dbg !17512 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !17509
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !17509

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17523
  %i.io = icmp eq i64 %.val64, 0, !dbg !17155
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !17155

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !17524
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !17527 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !17528 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !17529
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !17529, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !17538
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !17539
  %i.iu = load i8, ptr %i.it, align 1, !dbg !17539, !noundef !12 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !17540
  %i.iw = zext i8 %i.iu to i64, !dbg !17545       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !17547
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !17547

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !17548
  call void @llvm.assume(i1 %i.ix), !dbg !17550
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !17551
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !17552
  %i.ja = lshr i64 %i.iz, 3, !dbg !17552
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !17554   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !17555, !noalias !17556
  %i.jc = load i64, ptr %i.m, align 8, !dbg !17559, !alias.scope !17563, !noalias !17556, !noundef !12 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !17565
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !17565, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !17568, !alias.scope !17563, !noalias !17556, !nonnull !12, !noundef !12
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !17573
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !17574
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !17576
  %i.jh = load i64, ptr %i.m, align 8, !dbg !17577, !alias.scope !17563, !noalias !17556, !noundef !12 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !17579
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !17579

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !17580, !noalias !17556
  unreachable, !dbg !17580

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !17581, !alias.scope !17563, !noalias !17556
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !17582

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !17583
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !17585

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !17353
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !17352       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !17345 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !17586 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !17589
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !17352 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !17591
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !17352 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !17593
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !17596
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !17599
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !17599
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !17602
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !17353
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !17353
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !17603
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !17603
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !17164
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !17164
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB1w_9primitive5basic12encode_deltatlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17604 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !17605

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !17610
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !17611
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !17611
  %.zext = zext nneg i16 %i.j to i64, !dbg !17611 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17612
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !17614
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17615 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !17617, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !17629
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !17630
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17637 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !17637, !alias.scope !17639, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !17642
  call void @llvm.assume(i1 %i.o), !dbg !17643
  %.not.i = icmp eq i64 %i.k, 0, !dbg !17644
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !17644

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17645
  %i.q = load ptr, ptr %i.p, align 8, !dbg !17645, !alias.scope !17639, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !17650
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !17652
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !17654, !alias.scope !17639
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17655

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !17654
  %i.t = add i64 %i.s, %i.k, !dbg !17654
  store i64 %i.t, ptr %i.m, align 8, !dbg !17654, !alias.scope !17639
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17656 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !17657, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !17668
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !17669
  %i.w = load i64, ptr %i.m, align 8, !dbg !17675, !alias.scope !17677, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !17680
  call void @llvm.assume(i1 %i.x), !dbg !17681
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !17682
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !17682

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17683
  %i.z = load ptr, ptr %i.y, align 8, !dbg !17683, !alias.scope !17677, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !17688
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !17690
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !17692, !alias.scope !17677
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !17693

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !17692
  %i.ac = add i64 %i.ab, %i.u, !dbg !17692
  store i64 %i.ac, ptr %i.m, align 8, !dbg !17692, !alias.scope !17677
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17694 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !17694, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17695 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !17697, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !17708
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !17709
  %i.ag = load i64, ptr %i.m, align 8, !dbg !17715, !alias.scope !17717, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !17720
  call void @llvm.assume(i1 %i.ah), !dbg !17721
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !17722
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !17722

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17723
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !17723, !alias.scope !17717, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !17728
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !17730
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !17732, !alias.scope !17717
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !17733

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !17732
  %i.am = add i64 %i.al, %i.ae, !dbg !17732
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB1w_9primitive5basic12encode_deltatlE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !18014 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !18014          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !18014, !alias.scope !17848, !noalias !17851
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !18015
  call void @llvm.assume(i1 %i.fz), !dbg !18019
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %.lcssa.sink.i, !dbg !18020
  %i.gb = load i16, ptr %i.ga, align 2, !dbg !18021, !alias.scope !18022, !noalias !18025, !noundef !12
  %i.gc = zext i16 %i.gb to i64, !dbg !18026
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !18031
  %i.ge = add i64 %i.cn, -1, !dbg !18032          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !18035

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab
  %.promoted304310 = phi i64 [ %i.fy, %bb.ab ], [ %.promoted304311, %.preheader.i ], [ %.promoted304311, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fy, %bb.ab ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.val64 = phi i64 [ %i.ge, %bb.ab ], [ %.val64181, %.preheader.i ], [ %.val64181, %bb.q ] ; 4 uses
  %i.gg = phi i64 [ %i.ge, %bb.ab ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %.promoted130144 = phi i64 [ %.promoted130145, %bb.ab ], [ %.promoted130146, %.preheader.i ], [ %.promoted130146, %bb.q ] ; 2 uses
  %.promoted140 = phi i64 [ %i.fx, %bb.ab ], [ %.promoted142, %.preheader.i ], [ %i.fp, %bb.q ] ; 2 uses
  %i.gh = phi i64 [ %i.fw, %bb.ab ], [ %i.co, %.preheader.i ], [ %i.co, %bb.q ]
  %i.gi = phi i64 [ %i.fx, %bb.ab ], [ %i.cp, %.preheader.i ], [ %i.fp, %bb.q ]
  %i.gj = phi { i64, i64 } [ %i.gd, %bb.ab ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !18036
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !18037
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !18037

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !18040 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !18043
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !18044
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !18044

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !18046 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !18047
  %i.gp = sub i64 %.val64182, %.val64, !dbg !18048
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !18049 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18053
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !18056
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !18067
  call void @llvm.experimental.noalias.scope.decl(metadata !18070), !dbg !18073
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !18078, !alias.scope !18070, !noalias !18082, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !18078, !alias.scope !18070, !noalias !18082, !noundef !12 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !18084 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !18086
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !18096

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !18097, !noalias !18082, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !18097, !noalias !18082, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !18096
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !18096
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !18096
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !18096
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !18096
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !18096

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !18100

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18100 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !18106  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !18109 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !18112 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !18115
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !18115, !noalias !18116
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !18115, !noalias !18116
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !18117
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !18117
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !18125
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !18125, !alias.scope !18126, !noalias !18116
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !18125, !alias.scope !18126, !noalias !18116
  %index.next = add nuw i64 %index, 4, !dbg !18100 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !18096
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !18096, !llvm.loop !18131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !18096
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !18096

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !18096
  %xtraiter = and i64 %i.hb, 3, !dbg !18096       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18096
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18096

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !18100 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !18106 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !18109
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !18112
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !18115, !noalias !18116, !noundef !12
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !18117
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !18125, !alias.scope !18126, !noalias !18116
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18096 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18096
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18096, !llvm.loop !18132

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !18096
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !18096
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !18096
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !18096

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !18096
  %invariant.op305 = add i64 2, %.val.i75, !dbg !18096
  %invariant.op307 = add i64 3, %.val.i75, !dbg !18096
  br label %scalar.ph, !dbg !18096

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !18106 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !18109
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !18112
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !18115, !noalias !18116, !noundef !12
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !18117
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !18125, !alias.scope !18126, !noalias !18116
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !18109
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !18112
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !18115, !noalias !18116, !noundef !12
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !18117
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !18125, !alias.scope !18126, !noalias !18116
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !18109
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !18112
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !18115, !noalias !18116, !noundef !12
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !18117
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !18125, !alias.scope !18126, !noalias !18116
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !18100 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !18109
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !18112
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !18115, !noalias !18116, !noundef !12
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !18117
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !18125, !alias.scope !18126, !noalias !18116
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !18086
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !18096, !llvm.loop !18133

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18135
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !18135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !18136
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !18137, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18138
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !18139, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !18150
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !18151
  %i.ia = load i64, ptr %i.m, align 8, !dbg !18157, !alias.scope !18159, !noundef !12 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !18162
  call void @llvm.assume(i1 %i.ib), !dbg !18163
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !18164
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !18164

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !18165, !alias.scope !18159, !nonnull !12, !noundef !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !18170
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !18172
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !18174, !alias.scope !18159
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !18175

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !18174
  %i.if = add i64 %i.ie, %i.hy, !dbg !18174
  store i64 %i.if, ptr %i.m, align 8, !dbg !18174, !alias.scope !18159
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !18176
  %i.ig = load i64, ptr %i.m, align 8, !dbg !18183, !alias.scope !18185, !noundef !12 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !18188
  call void @llvm.assume(i1 %i.ih), !dbg !18189
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !18190, !alias.scope !18185, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !18195
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !18197
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !18199, !alias.scope !18185
  %i.ik = add i64 %.pre.i81, %2, !dbg !18199      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !18199, !alias.scope !18185
  br label %.lr.ph, !dbg !18200

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw i64 %.sroa.027.0134, 1, !dbg !18203 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !18200
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !18200

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18214
  %i.io = icmp eq i64 %.val64, 0, !dbg !17846
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !17846

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !18215
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !18218 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !18219 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !18220
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !18220, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !18229
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !18230
  %i.iu = load i8, ptr %i.it, align 1, !dbg !18230, !noundef !12 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !18231
  %i.iw = zext i8 %i.iu to i64, !dbg !18236       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !18238
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !18238

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !18239
  call void @llvm.assume(i1 %i.ix), !dbg !18241
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !18242
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !18243
  %i.ja = lshr i64 %i.iz, 3, !dbg !18243
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !18245   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !18246, !noalias !18247
  %i.jc = load i64, ptr %i.m, align 8, !dbg !18250, !alias.scope !18254, !noalias !18247, !noundef !12 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !18256
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !18256, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !18259, !alias.scope !18254, !noalias !18247, !nonnull !12, !noundef !12
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !18264
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !18265
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !18267
  %i.jh = load i64, ptr %i.m, align 8, !dbg !18268, !alias.scope !18254, !noalias !18247, !noundef !12 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !18270
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !18270

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !18271, !noalias !18247
  unreachable, !dbg !18271

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !18272, !alias.scope !18254, !noalias !18247
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !18273

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !18274
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !18276

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !18044
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !18043       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !18036 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !18277 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !18280
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !18043 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !18282
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !18043 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !18284
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !18287
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !18290
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !18290
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !18293
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !18044
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !18044
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !18294
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !18294
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !17855
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !17855
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB1w_9primitive5basic12encode_deltaxxE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18295 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !18296

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !18301
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !18302
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !18302
  %.zext = zext nneg i16 %i.j to i64, !dbg !18302 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !18305
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18306 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !18308, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !18320
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !18321
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18328 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !18328, !alias.scope !18330, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !18333
  call void @llvm.assume(i1 %i.o), !dbg !18334
  %.not.i = icmp eq i64 %i.k, 0, !dbg !18335
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !18335

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18336
  %i.q = load ptr, ptr %i.p, align 8, !dbg !18336, !alias.scope !18330, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !18341
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !18343
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !18345, !alias.scope !18330
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !18346

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !18345
  %i.t = add i64 %i.s, %i.k, !dbg !18345
  store i64 %i.t, ptr %i.m, align 8, !dbg !18345, !alias.scope !18330
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18347 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !18348, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !18359
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !18360
  %i.w = load i64, ptr %i.m, align 8, !dbg !18366, !alias.scope !18368, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !18371
  call void @llvm.assume(i1 %i.x), !dbg !18372
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !18373
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !18373

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18374
  %i.z = load ptr, ptr %i.y, align 8, !dbg !18374, !alias.scope !18368, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !18379
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !18381
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !18383, !alias.scope !18368
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !18384

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !18383
  %i.ac = add i64 %i.ab, %i.u, !dbg !18383
  store i64 %i.ac, ptr %i.m, align 8, !dbg !18383, !alias.scope !18368
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !18385 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !18385, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18386 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !18388, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !18399
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !18400
  %i.ag = load i64, ptr %i.m, align 8, !dbg !18406, !alias.scope !18408, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !18411
  call void @llvm.assume(i1 %i.ah), !dbg !18412
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !18413
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !18413

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18414
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !18414, !alias.scope !18408, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !18419
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !18421
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !18423, !alias.scope !18408
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !18424

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !18423
  %i.am = add i64 %i.al, %i.ae, !dbg !18423
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB1w_9primitive5basic12encode_deltaxxE0EEEBa_:bb.a
  %i.fv = phi i64 [ %i.fu, %bb.aa ], [ %i.cn, %bb.p ]
  %.lcssa.sink.i = phi i64 [ %i.fo, %bb.aa ], [ %i.co, %bb.p ] ; 3 uses
  %i.fw = add nuw i64 %.lcssa.sink.i, 1, !dbg !18695 ; 2 uses
  %i.fx = add i64 %i.cl, -1, !dbg !18695          ; 3 uses
  store i64 %i.fx, ptr %i.bw, align 8, !dbg !18695, !alias.scope !18529, !noalias !18532
  %i.fy = icmp ult i64 %.lcssa.sink.i, %i.ck, !dbg !18696
  call void @llvm.assume(i1 %i.fy), !dbg !18700
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.lcssa.sink.i, !dbg !18701
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !18702, !alias.scope !18703, !noalias !18706, !noundef !12
  %i.gb = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ga, 1, !dbg !18707
  %i.gc = add i64 %i.cm, -1, !dbg !18708          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !18711

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab
  %.promoted304310 = phi i64 [ %i.fx, %bb.ab ], [ %.promoted304311, %.preheader.i ], [ %.promoted304311, %bb.q ] ; 2 uses
  %i.gd = phi i64 [ %i.fx, %bb.ab ], [ %i.cl, %.preheader.i ], [ %i.cl, %bb.q ]
  %.val64 = phi i64 [ %i.gc, %bb.ab ], [ %.val64181, %.preheader.i ], [ %.val64181, %bb.q ] ; 4 uses
  %i.ge = phi i64 [ %i.gc, %bb.ab ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.promoted130144 = phi i64 [ %.promoted130145, %bb.ab ], [ %.promoted130146, %.preheader.i ], [ %.promoted130146, %bb.q ] ; 2 uses
  %.promoted140 = phi i64 [ %i.fw, %bb.ab ], [ %.promoted142, %.preheader.i ], [ %i.fo, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fv, %bb.ab ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %i.gg = phi i64 [ %i.fw, %bb.ab ], [ %i.co, %.preheader.i ], [ %i.fo, %bb.q ]
  %i.gh = phi { i64, i64 } [ %i.gb, %bb.ab ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gi = extractvalue { i64, i64 } %i.gh, 0, !dbg !18712
  %i.gj = trunc nuw i64 %i.gi to i1, !dbg !18713
  br i1 %i.gj, label %bb.ac, label %bb.ad, !dbg !18713

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gk = udiv i64 %.sroa.4.0126, %.zext, !dbg !18716 ; 3 uses
  %i.gl = urem i64 %.sroa.4.0126, %.zext, !dbg !18719
  %i.gm = icmp samesign ult i64 %i.gk, 4, !dbg !18720
  br i1 %i.gm, label %bb.ap, label %bb.ao, !dbg !18720

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !18722 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jj, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !18723
  %i.gn = sub i64 %.val64182, %.val64, !dbg !18724
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gn, i64 256), !dbg !18725 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18729
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !18732
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.go, ptr noundef nonnull %i.g, ptr noundef nonnull %i.by), !dbg !18743
  call void @llvm.experimental.noalias.scope.decl(metadata !18746), !dbg !18749
  %.val.i75 = load i64, ptr %i.bz, align 8, !dbg !18754, !alias.scope !18746, !noalias !18758, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.ca, align 8, !dbg !18754, !alias.scope !18746, !noalias !18758, !noundef !12 ; 4 uses
  %i.gp = sub i64 %.val8.i, %.val.i75, !dbg !18760 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !18762
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !18772

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !18773, !noalias !18758, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !18773, !noalias !18758, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gp, 4, !dbg !18772
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !18772
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gq = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !18772
  %diff.check = icmp ugt i64 %i.gq, -32, !dbg !18772
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !18772
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !18772

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gp, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !18776

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18776 ; 2 uses
  %i.gr = add i64 %index, %.val.i75, !dbg !18782  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gr, !dbg !18785 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gr, !dbg !18788 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16, !dbg !18791
  %wide.load = load <2 x i64>, ptr %i.gs, align 8, !dbg !18791, !noalias !18792
  %wide.load262 = load <2 x i64>, ptr %i.gu, align 8, !dbg !18791, !noalias !18792
  %i.gv = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !18793
  %i.gw = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !18793
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !18801
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !dbg !18801, !alias.scope !18802, !noalias !18792
  store <2 x i64> %i.gw, ptr %i.gx, align 8, !dbg !18801, !alias.scope !18802, !noalias !18792
  %index.next = add nuw i64 %index, 4, !dbg !18776 ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec, !dbg !18772
  br i1 %i.gy, label %middle.block, label %vector.body, !dbg !18772, !llvm.loop !18807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec, !dbg !18772
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !18772

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.val8.i, %.val.i75, !dbg !18772
  %xtraiter = and i64 %i.gz, 3, !dbg !18772       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18772
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18772

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ha, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !18776 ; 2 uses
  %i.hb = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !18782 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hb, !dbg !18785
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hb, !dbg !18788
  %.val10.i.prol = load i64, ptr %i.hc, align 8, !dbg !18791, !noalias !18792, !noundef !12
  %i.he = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !18793
  store i64 %i.he, ptr %i.hd, align 8, !dbg !18801, !alias.scope !18802, !noalias !18792
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18772 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18772
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18772, !llvm.loop !18808

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %i.hf = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !18772
  %i.hg = add i64 %i.hf, %.val.i75, !dbg !18772
  %i.hh = icmp ugt i64 %i.hg, -4, !dbg !18772
  br i1 %i.hh, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !18772

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !18772
  %invariant.op305 = add i64 2, %.val.i75, !dbg !18772
  %invariant.op307 = add i64 3, %.val.i75, !dbg !18772
  br label %scalar.ph, !dbg !18772

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hs, %scalar.ph ] ; 5 uses
  %i.hi = add i64 %.sroa.0.012.i, %.val.i75, !dbg !18782 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hi, !dbg !18785
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hi, !dbg !18788
  %.val10.i = load i64, ptr %i.hj, align 8, !dbg !18791, !noalias !18792, !noundef !12
  %i.hl = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !18793
  store i64 %i.hl, ptr %i.hk, align 8, !dbg !18801, !alias.scope !18802, !noalias !18792
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !18785
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !18788
  %.val10.i.1 = load i64, ptr %i.hm, align 8, !dbg !18791, !noalias !18792, !noundef !12
  %i.ho = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !18793
  store i64 %i.ho, ptr %i.hn, align 8, !dbg !18801, !alias.scope !18802, !noalias !18792
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !18785
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !18788
  %.val10.i.2 = load i64, ptr %i.hp, align 8, !dbg !18791, !noalias !18792, !noundef !12
  %i.hr = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !18793
  store i64 %i.hr, ptr %i.hq, align 8, !dbg !18801, !alias.scope !18802, !noalias !18792
  %i.hs = add nuw i64 %.sroa.0.012.i, 4, !dbg !18776 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !18785
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !18788
  %.val10.i.3 = load i64, ptr %i.ht, align 8, !dbg !18791, !noalias !18792, !noundef !12
  %i.hv = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !18793
  store i64 %i.hv, ptr %i.hu, align 8, !dbg !18801, !alias.scope !18802, !noalias !18792
  %exitcond.not.i.3 = icmp eq i64 %i.hs, %i.gp, !dbg !18762
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !18772, !llvm.loop !18809

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18811
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !18811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !18812
  %i.hw = load i64, ptr %i.cc, align 8, !dbg !18813, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18814
  %i.hx = icmp ult i64 %i.hw, 11
  br i1 %i.hx, label %bb.af, label %bb.ae, !dbg !18815, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hw, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !18826
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hw), !dbg !18827
  %i.hy = load i64, ptr %i.m, align 8, !dbg !18833, !alias.scope !18835, !noundef !12 ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1, !dbg !18838
  call void @llvm.assume(i1 %i.hz), !dbg !18839
  %.not.i77 = icmp eq i64 %i.hw, 0, !dbg !18840
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !18840

bb.ag:                                            ; preds = %bb.af
  %i.ia = load ptr, ptr %i.cd, align 8, !dbg !18841, !alias.scope !18835, !nonnull !12, !noundef !12
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy, !dbg !18846
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ib, ptr nonnull readonly align 1 %i.b, i64 %i.hw, i1 false), !dbg !18848
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !18850, !alias.scope !18835
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !18851

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ic = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hy, %bb.af ], !dbg !18850
  %i.id = add i64 %i.ic, %i.hw, !dbg !18850
  store i64 %i.id, ptr %i.m, align 8, !dbg !18850, !alias.scope !18835
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !18852
  %i.ie = load i64, ptr %i.m, align 8, !dbg !18859, !alias.scope !18861, !noundef !12 ; 2 uses
  %i.if = icmp sgt i64 %i.ie, -1, !dbg !18864
  call void @llvm.assume(i1 %i.if), !dbg !18865
  %i.ig = load ptr, ptr %i.cd, align 8, !dbg !18866, !alias.scope !18861, !nonnull !12, !noundef !12
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie, !dbg !18871
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !18873
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !18875, !alias.scope !18861
  %i.ii = add i64 %.pre.i81, %2, !dbg !18875      ; 2 uses
  store i64 %i.ii, ptr %i.m, align 8, !dbg !18875, !alias.scope !18861
  br label %.lr.ph, !dbg !18876

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ij = phi i64 [ %i.jh, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ii, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.ik, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.in, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.ik = add nuw i64 %.sroa.027.0134, 1, !dbg !18879 ; 3 uses
  %i.il = icmp eq i64 %.sroa.016.0133, 0, !dbg !18876
  br i1 %i.il, label %._crit_edge, label %bb.ah, !dbg !18876

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18890
  %i.im = icmp eq i64 %.val64, 0, !dbg !18527
  br i1 %i.im, label %._crit_edge138, label %.preheader, !dbg !18527

bb.ah:                                            ; preds = %.lr.ph
  %i.in = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !18891
  %i.io = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !18894 ; 2 uses
  %i.ip = mul nuw nsw i64 %i.ik, %.zext, !dbg !18895 ; 2 uses
  %i.iq = icmp samesign ult i64 %i.ip, 257, !dbg !18896
  br i1 %i.iq, label %bb.aj, label %bb.ai, !dbg !18896, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.io, i64 noundef %i.ip, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !18905
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !18906
  %i.is = load i8, ptr %i.ir, align 1, !dbg !18906, !noundef !12 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.io, !dbg !18907
  %i.iu = zext i8 %i.is to i64, !dbg !18912       ; 2 uses
  %.not.i83 = icmp eq i8 %i.is, 0, !dbg !18914
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !18914

bb.ak:                                            ; preds = %bb.aj
  %i.iv = icmp sgt i64 %i.ij, -1, !dbg !18915
  call void @llvm.assume(i1 %i.iv), !dbg !18917
  %i.iw = mul nuw nsw i64 %i.iu, %.zext, !dbg !18918
  %i.ix = add nuw nsw i64 %i.iw, 7, !dbg !18919
  %i.iy = lshr i64 %i.ix, 3, !dbg !18919
  %i.iz = add nuw i64 %i.ij, %i.iy, !dbg !18921   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iz, i8 noundef 0), !dbg !18922, !noalias !18923
  %i.ja = load i64, ptr %i.m, align 8, !dbg !18926, !alias.scope !18930, !noalias !18923, !noundef !12 ; 4 uses
  %i.jb = icmp ugt i64 %i.ij, %i.ja, !dbg !18932
  br i1 %i.jb, label %bb.am, label %bb.al, !dbg !18932, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.jc = load ptr, ptr %i.cd, align 8, !dbg !18935, !alias.scope !18930, !noalias !18923, !nonnull !12, !noundef !12
  %i.jd = sub nuw i64 %i.ja, %i.ij, !dbg !18940
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ij, !dbg !18941
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.it, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iu, ptr noalias noundef nonnull %i.je, i64 noundef %i.jd), !dbg !18943
  %i.jf = load i64, ptr %i.m, align 8, !dbg !18944, !alias.scope !18930, !noalias !18923, !noundef !12 ; 2 uses
  %i.jg = icmp ugt i64 %i.iz, %i.jf, !dbg !18946
  br i1 %i.jg, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !18946

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ij, i64 noundef %i.ja, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !18947, !noalias !18923
  unreachable, !dbg !18947

bb.an:                                            ; preds = %bb.al
  store i64 %i.iz, ptr %i.m, align 8, !dbg !18948, !alias.scope !18930, !noalias !18923
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !18949

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jh = phi i64 [ %i.ij, %bb.aj ], [ %i.jf, %bb.al ], [ %i.iz, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ik, %2, !dbg !18950
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !18952

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !18720
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.ji = icmp eq i64 %i.gl, 0, !dbg !18719       ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.gh, 1, !dbg !18712 ; 3 uses
  %i.jk = sub i64 %i.jj, %.sroa.0.2129, !dbg !18953 ; 5 uses
  %i.jl = call i64 @llvm.smax.i64(i64 %i.jk, i64 %.sroa.012.0128), !dbg !18956
  %.sroa.0.0.i85 = select i1 %i.ji, i64 %i.jk, i64 %i.jl, !dbg !18719 ; 2 uses
  %i.jm = call i64 @llvm.smin.i64(i64 %i.jk, i64 %.sroa.087.0127), !dbg !18958
  %.sroa.0.0.i84 = select i1 %i.ji, i64 %i.jk, i64 %i.jm, !dbg !18719 ; 3 uses
  %i.jn = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !18960
  %i.jo = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !18963
  %i.jp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 false), !dbg !18966
  %i.jq = trunc nuw nsw i64 %i.jp to i8, !dbg !18966
  %i.jr = sub nuw nsw i8 64, %i.jq, !dbg !18969
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gk, !dbg !18720
  store i8 %i.jr, ptr %i.js, align 1, !dbg !18720
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !18970
  store i64 %i.jk, ptr %i.jt, align 8, !dbg !18970
  %i.ju = icmp eq i64 %i.cp, 0, !dbg !18536
  br i1 %i.ju, label %bb.ad, label %bb.p, !dbg !18536
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB1w_9primitive5basic12encode_deltayxE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18971 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !18972

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !18977
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !18978
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !18978
  %.zext = zext nneg i16 %i.j to i64, !dbg !18978 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18979
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !18981
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18982 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !18984, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !18996
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !18997
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19004 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !19004, !alias.scope !19006, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !19009
  call void @llvm.assume(i1 %i.o), !dbg !19010
  %.not.i = icmp eq i64 %i.k, 0, !dbg !19011
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !19011

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19012
  %i.q = load ptr, ptr %i.p, align 8, !dbg !19012, !alias.scope !19006, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !19017
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !19019
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !19021, !alias.scope !19006
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !19022

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !19021
  %i.t = add i64 %i.s, %i.k, !dbg !19021
  store i64 %i.t, ptr %i.m, align 8, !dbg !19021, !alias.scope !19006
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19023 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !19024, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !19035
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !19036
  %i.w = load i64, ptr %i.m, align 8, !dbg !19042, !alias.scope !19044, !noundef !12 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !19047
  call void @llvm.assume(i1 %i.x), !dbg !19048
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !19049
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !19049

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19050
  %i.z = load ptr, ptr %i.y, align 8, !dbg !19050, !alias.scope !19044, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !19055
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !19057
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !19059, !alias.scope !19044
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !19060

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !19059
  %i.ac = add i64 %i.ab, %i.u, !dbg !19059
  store i64 %i.ac, ptr %i.m, align 8, !dbg !19059, !alias.scope !19044
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !19061 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !19061, !noundef !12
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19062 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !19064, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !19075
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !19076
  %i.ag = load i64, ptr %i.m, align 8, !dbg !19082, !alias.scope !19084, !noundef !12 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !19087
  call void @llvm.assume(i1 %i.ah), !dbg !19088
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !19089
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !19089

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19090
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !19090, !alias.scope !19084, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !19095
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !19097
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !19099, !alias.scope !19084
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !19100

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !19099
  %i.am = add i64 %i.al, %i.ae, !dbg !19099
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB1w_9primitive5basic12encode_deltayxE0EEEBa_:bb.a
  %i.fv = phi i64 [ %i.fu, %bb.aa ], [ %i.cn, %bb.p ]
  %.lcssa.sink.i = phi i64 [ %i.fo, %bb.aa ], [ %i.co, %bb.p ] ; 3 uses
  %i.fw = add nuw i64 %.lcssa.sink.i, 1, !dbg !19371 ; 2 uses
  %i.fx = add i64 %i.cl, -1, !dbg !19371          ; 3 uses
  store i64 %i.fx, ptr %i.bw, align 8, !dbg !19371, !alias.scope !19205, !noalias !19208
  %i.fy = icmp ult i64 %.lcssa.sink.i, %i.ck, !dbg !19372
  call void @llvm.assume(i1 %i.fy), !dbg !19376
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.lcssa.sink.i, !dbg !19377
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !19378, !alias.scope !19379, !noalias !19382, !noundef !12
  %i.gb = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ga, 1, !dbg !19383
  %i.gc = add i64 %i.cm, -1, !dbg !19384          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !19387

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.q, %.preheader.i, %bb.ab
  %.promoted304310 = phi i64 [ %i.fx, %bb.ab ], [ %.promoted304311, %.preheader.i ], [ %.promoted304311, %bb.q ] ; 2 uses
  %i.gd = phi i64 [ %i.fx, %bb.ab ], [ %i.cl, %.preheader.i ], [ %i.cl, %bb.q ]
  %.val64 = phi i64 [ %i.gc, %bb.ab ], [ %.val64181, %.preheader.i ], [ %.val64181, %bb.q ] ; 4 uses
  %i.ge = phi i64 [ %i.gc, %bb.ab ], [ %i.cm, %.preheader.i ], [ %i.cm, %bb.q ]
  %.promoted130144 = phi i64 [ %.promoted130145, %bb.ab ], [ %.promoted130146, %.preheader.i ], [ %.promoted130146, %bb.q ] ; 2 uses
  %.promoted140 = phi i64 [ %i.fw, %bb.ab ], [ %.promoted142, %.preheader.i ], [ %i.fo, %bb.q ] ; 2 uses
  %i.gf = phi i64 [ %i.fv, %bb.ab ], [ %i.cn, %.preheader.i ], [ %i.cn, %bb.q ]
  %i.gg = phi i64 [ %i.fw, %bb.ab ], [ %i.co, %.preheader.i ], [ %i.fo, %bb.q ]
  %i.gh = phi { i64, i64 } [ %i.gb, %bb.ab ], [ { i64 0, i64 undef }, %.preheader.i ], [ { i64 0, i64 undef }, %bb.q ] ; 2 uses
  %i.gi = extractvalue { i64, i64 } %i.gh, 0, !dbg !19388
  %i.gj = trunc nuw i64 %i.gi to i1, !dbg !19389
  br i1 %i.gj, label %bb.ac, label %bb.ad, !dbg !19389

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gk = udiv i64 %.sroa.4.0126, %.zext, !dbg !19392 ; 3 uses
  %i.gl = urem i64 %.sroa.4.0126, %.zext, !dbg !19395
  %i.gm = icmp samesign ult i64 %i.gk, 4, !dbg !19396
  br i1 %i.gm, label %bb.ap, label %bb.ao, !dbg !19396

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !19398 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jj, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !19399
  %i.gn = sub i64 %.val64182, %.val64, !dbg !19400
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gn, i64 256), !dbg !19401 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19405
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !19408
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.go, ptr noundef nonnull %i.g, ptr noundef nonnull %i.by), !dbg !19419
  call void @llvm.experimental.noalias.scope.decl(metadata !19422), !dbg !19425
  %.val.i75 = load i64, ptr %i.bz, align 8, !dbg !19430, !alias.scope !19422, !noalias !19434, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.ca, align 8, !dbg !19430, !alias.scope !19422, !noalias !19434, !noundef !12 ; 4 uses
  %i.gp = sub i64 %.val8.i, %.val.i75, !dbg !19436 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !19438
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !19448

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !19449, !noalias !19434, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !19449, !noalias !19434, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gp, 4, !dbg !19448
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !19448
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gq = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !19448
  %diff.check = icmp ugt i64 %i.gq, -32, !dbg !19448
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !19448
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !19448

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gp, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !19452

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !19452 ; 2 uses
  %i.gr = add i64 %index, %.val.i75, !dbg !19458  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gr, !dbg !19461 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gr, !dbg !19464 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16, !dbg !19467
  %wide.load = load <2 x i64>, ptr %i.gs, align 8, !dbg !19467, !noalias !19468
  %wide.load262 = load <2 x i64>, ptr %i.gu, align 8, !dbg !19467, !noalias !19468
  %i.gv = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !19469
  %i.gw = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !19469
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !19477
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !dbg !19477, !alias.scope !19478, !noalias !19468
  store <2 x i64> %i.gw, ptr %i.gx, align 8, !dbg !19477, !alias.scope !19478, !noalias !19468
  %index.next = add nuw i64 %index, 4, !dbg !19452 ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec, !dbg !19448
  br i1 %i.gy, label %middle.block, label %vector.body, !dbg !19448, !llvm.loop !19483

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec, !dbg !19448
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !19448

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.val8.i, %.val.i75, !dbg !19448
  %xtraiter = and i64 %i.gz, 3, !dbg !19448       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !19448
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19448

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ha, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !19452 ; 2 uses
  %i.hb = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !19458 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hb, !dbg !19461
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hb, !dbg !19464
  %.val10.i.prol = load i64, ptr %i.hc, align 8, !dbg !19467, !noalias !19468, !noundef !12
  %i.he = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !19469
  store i64 %i.he, ptr %i.hd, align 8, !dbg !19477, !alias.scope !19478, !noalias !19468
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !19448 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !19448
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19448, !llvm.loop !19484

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %i.hf = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !19448
  %i.hg = add i64 %i.hf, %.val.i75, !dbg !19448
  %i.hh = icmp ugt i64 %i.hg, -4, !dbg !19448
  br i1 %i.hh, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !19448

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !19448
  %invariant.op305 = add i64 2, %.val.i75, !dbg !19448
  %invariant.op307 = add i64 3, %.val.i75, !dbg !19448
  br label %scalar.ph, !dbg !19448

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hs, %scalar.ph ] ; 5 uses
  %i.hi = add i64 %.sroa.0.012.i, %.val.i75, !dbg !19458 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hi, !dbg !19461
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hi, !dbg !19464
  %.val10.i = load i64, ptr %i.hj, align 8, !dbg !19467, !noalias !19468, !noundef !12
  %i.hl = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !19469
  store i64 %i.hl, ptr %i.hk, align 8, !dbg !19477, !alias.scope !19478, !noalias !19468
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !19461
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !19464
  %.val10.i.1 = load i64, ptr %i.hm, align 8, !dbg !19467, !noalias !19468, !noundef !12
  %i.ho = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !19469
  store i64 %i.ho, ptr %i.hn, align 8, !dbg !19477, !alias.scope !19478, !noalias !19468
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !19461
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !19464
  %.val10.i.2 = load i64, ptr %i.hp, align 8, !dbg !19467, !noalias !19468, !noundef !12
  %i.hr = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !19469
  store i64 %i.hr, ptr %i.hq, align 8, !dbg !19477, !alias.scope !19478, !noalias !19468
  %i.hs = add nuw i64 %.sroa.0.012.i, 4, !dbg !19452 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !19461
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !19464
  %.val10.i.3 = load i64, ptr %i.ht, align 8, !dbg !19467, !noalias !19468, !noundef !12
  %i.hv = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !19469
  store i64 %i.hv, ptr %i.hu, align 8, !dbg !19477, !alias.scope !19478, !noalias !19468
  %exitcond.not.i.3 = icmp eq i64 %i.hs, %i.gp, !dbg !19438
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !19448, !llvm.loop !19485

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19487
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !19487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !19488
  %i.hw = load i64, ptr %i.cc, align 8, !dbg !19489, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19490
  %i.hx = icmp ult i64 %i.hw, 11
  br i1 %i.hx, label %bb.af, label %bb.ae, !dbg !19491, !prof !239

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hw, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !19502
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hw), !dbg !19503
  %i.hy = load i64, ptr %i.m, align 8, !dbg !19509, !alias.scope !19511, !noundef !12 ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1, !dbg !19514
  call void @llvm.assume(i1 %i.hz), !dbg !19515
  %.not.i77 = icmp eq i64 %i.hw, 0, !dbg !19516
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !19516

bb.ag:                                            ; preds = %bb.af
  %i.ia = load ptr, ptr %i.cd, align 8, !dbg !19517, !alias.scope !19511, !nonnull !12, !noundef !12
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy, !dbg !19522
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ib, ptr nonnull readonly align 1 %i.b, i64 %i.hw, i1 false), !dbg !19524
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !19526, !alias.scope !19511
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !19527

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ic = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hy, %bb.af ], !dbg !19526
  %i.id = add i64 %i.ic, %i.hw, !dbg !19526
  store i64 %i.id, ptr %i.m, align 8, !dbg !19526, !alias.scope !19511
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !19528
  %i.ie = load i64, ptr %i.m, align 8, !dbg !19535, !alias.scope !19537, !noundef !12 ; 2 uses
  %i.if = icmp sgt i64 %i.ie, -1, !dbg !19540
  call void @llvm.assume(i1 %i.if), !dbg !19541
  %i.ig = load ptr, ptr %i.cd, align 8, !dbg !19542, !alias.scope !19537, !nonnull !12, !noundef !12
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie, !dbg !19547
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !19549
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !19551, !alias.scope !19537
  %i.ii = add i64 %.pre.i81, %2, !dbg !19551      ; 2 uses
  store i64 %i.ii, ptr %i.m, align 8, !dbg !19551, !alias.scope !19537
  br label %.lr.ph, !dbg !19552

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ij = phi i64 [ %i.jh, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ii, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.ik, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.in, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.ik = add nuw i64 %.sroa.027.0134, 1, !dbg !19555 ; 3 uses
  %i.il = icmp eq i64 %.sroa.016.0133, 0, !dbg !19552
  br i1 %i.il, label %._crit_edge, label %bb.ah, !dbg !19552

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19566
  %i.im = icmp eq i64 %.val64, 0, !dbg !19203
  br i1 %i.im, label %._crit_edge138, label %.preheader, !dbg !19203

bb.ah:                                            ; preds = %.lr.ph
  %i.in = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !19567
  %i.io = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !19570 ; 2 uses
  %i.ip = mul nuw nsw i64 %i.ik, %.zext, !dbg !19571 ; 2 uses
  %i.iq = icmp samesign ult i64 %i.ip, 257, !dbg !19572
  br i1 %i.iq, label %bb.aj, label %bb.ai, !dbg !19572, !prof !1798

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.io, i64 noundef %i.ip, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !19581
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !19582
  %i.is = load i8, ptr %i.ir, align 1, !dbg !19582, !noundef !12 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.io, !dbg !19583
  %i.iu = zext i8 %i.is to i64, !dbg !19588       ; 2 uses
  %.not.i83 = icmp eq i8 %i.is, 0, !dbg !19590
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !19590

bb.ak:                                            ; preds = %bb.aj
  %i.iv = icmp sgt i64 %i.ij, -1, !dbg !19591
  call void @llvm.assume(i1 %i.iv), !dbg !19593
  %i.iw = mul nuw nsw i64 %i.iu, %.zext, !dbg !19594
  %i.ix = add nuw nsw i64 %i.iw, 7, !dbg !19595
  %i.iy = lshr i64 %i.ix, 3, !dbg !19595
  %i.iz = add nuw i64 %i.ij, %i.iy, !dbg !19597   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iz, i8 noundef 0), !dbg !19598, !noalias !19599
  %i.ja = load i64, ptr %i.m, align 8, !dbg !19602, !alias.scope !19606, !noalias !19599, !noundef !12 ; 4 uses
  %i.jb = icmp ugt i64 %i.ij, %i.ja, !dbg !19608
  br i1 %i.jb, label %bb.am, label %bb.al, !dbg !19608, !prof !1188

bb.al:                                            ; preds = %bb.ak
  %i.jc = load ptr, ptr %i.cd, align 8, !dbg !19611, !alias.scope !19606, !noalias !19599, !nonnull !12, !noundef !12
  %i.jd = sub nuw i64 %i.ja, %i.ij, !dbg !19616
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ij, !dbg !19617
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.it, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iu, ptr noalias noundef nonnull %i.je, i64 noundef %i.jd), !dbg !19619
  %i.jf = load i64, ptr %i.m, align 8, !dbg !19620, !alias.scope !19606, !noalias !19599, !noundef !12 ; 2 uses
  %i.jg = icmp ugt i64 %i.iz, %i.jf, !dbg !19622
  br i1 %i.jg, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !19622

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ij, i64 noundef %i.ja, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !19623, !noalias !19599
  unreachable, !dbg !19623

bb.an:                                            ; preds = %bb.al
  store i64 %i.iz, ptr %i.m, align 8, !dbg !19624, !alias.scope !19606, !noalias !19599
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !19625

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jh = phi i64 [ %i.ij, %bb.aj ], [ %i.jf, %bb.al ], [ %i.iz, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ik, %2, !dbg !19626
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !19628

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !19396
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.ji = icmp eq i64 %i.gl, 0, !dbg !19395       ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.gh, 1, !dbg !19388 ; 3 uses
  %i.jk = sub i64 %i.jj, %.sroa.0.2129, !dbg !19629 ; 5 uses
  %i.jl = call i64 @llvm.smax.i64(i64 %i.jk, i64 %.sroa.012.0128), !dbg !19632
  %.sroa.0.0.i85 = select i1 %i.ji, i64 %i.jk, i64 %i.jl, !dbg !19395 ; 2 uses
  %i.jm = call i64 @llvm.smin.i64(i64 %i.jk, i64 %.sroa.087.0127), !dbg !19634
  %.sroa.0.0.i84 = select i1 %i.ji, i64 %i.jk, i64 %i.jm, !dbg !19395 ; 3 uses
  %i.jn = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !19636
  %i.jo = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !19639
  %i.jp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 false), !dbg !19642
  %i.jq = trunc nuw nsw i64 %i.jp to i8, !dbg !19642
  %i.jr = sub nuw nsw i8 64, %i.jq, !dbg !19645
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gk, !dbg !19396
  store i8 %i.jr, ptr %i.js, align 1, !dbg !19396
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !19646
  store i64 %i.jk, ptr %i.jt, align 8, !dbg !19646
  %i.ju = icmp eq i64 %i.cp, 0, !dbg !19212
  br i1 %i.ju, label %bb.ad, label %bb.p, !dbg !19212
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteraENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaalEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19647 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !19648

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !19653
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !19654
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !19654
  %.zext = zext nneg i16 %i.l to i64, !dbg !19654 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !19655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !19657
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19658 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !19660, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !19672
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !19673
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !19680 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !19680, !alias.scope !19682, !noundef !12 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !19685
  call void @llvm.assume(i1 %i.q), !dbg !19686
  %.not.i = icmp eq i64 %i.m, 0, !dbg !19687
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !19687

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !19688
  %i.s = load ptr, ptr %i.r, align 8, !dbg !19688, !alias.scope !19682, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !19693
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !19695
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !19697, !alias.scope !19682
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !19698

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !19697
  %i.v = add i64 %i.u, %i.m, !dbg !19697
  store i64 %i.v, ptr %i.o, align 8, !dbg !19697, !alias.scope !19682
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19699 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !19700, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !19711
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !19712
  %i.y = load i64, ptr %i.o, align 8, !dbg !19718, !alias.scope !19720, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !19723
  call void @llvm.assume(i1 %i.z), !dbg !19724
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !19725
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !19725

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !19726
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !19726, !alias.scope !19720, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !19731
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !19733
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !19735, !alias.scope !19720
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !19736

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !19735
  %i.ae = add i64 %i.ad, %i.w, !dbg !19735
  store i64 %i.ae, ptr %i.o, align 8, !dbg !19735, !alias.scope !19720
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !19737
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19738 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !19740, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !19751
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !19752
  %i.ai = load i64, ptr %i.o, align 8, !dbg !19758, !alias.scope !19760, !noundef !12 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !19763
  call void @llvm.assume(i1 %i.aj), !dbg !19764
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !19765
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !19765

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !19766
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !19766, !alias.scope !19760, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !19771
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !19773
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !19775, !alias.scope !19760
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !19776

end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteraENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaalEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !19860

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !19875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !19876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !19877
  ret void, !dbg !19878

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !19879 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19880), !dbg !19883
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !19884
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !19860

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1, !dbg !19886 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !19888, !alias.scope !19889, !noalias !19892
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !19896 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !19899
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !19900
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !19900

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !19902
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !19903
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !19904 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !19908 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19910
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !19912
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !19923
  call void @llvm.experimental.noalias.scope.decl(metadata !19926), !dbg !19929
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !19934, !alias.scope !19926, !noalias !19938, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !19934, !alias.scope !19926, !noalias !19938, !noundef !12 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !19940 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !19942
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !19952

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !19953, !noalias !19938, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !19953, !noalias !19938, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !19952
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !19952
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !19952
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !19952
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !19952
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !19952

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !19956

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !19956 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !19962  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !19965 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !19968 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !19971
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !19971, !noalias !19972
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !19971, !noalias !19972
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !19973
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !19973
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !19981
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !19981, !alias.scope !19982, !noalias !19972
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !19981, !alias.scope !19982, !noalias !19972
  %index.next = add nuw i64 %index, 4, !dbg !19956 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !19952
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !19952, !llvm.loop !19987

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !19952
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !19952

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !19952
  %xtraiter = and i64 %i.cg, 3, !dbg !19952       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !19952
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19952

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !19956 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !19962 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !19965
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !19968
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !19971, !noalias !19972, !noundef !12
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !19973
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !19981, !alias.scope !19982, !noalias !19972
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !19952 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !19952
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19952, !llvm.loop !19988

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !19952
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !19952
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !19952
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !19952

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !19952
  %invariant.op248 = add i64 2, %.val.i73, !dbg !19952
  %invariant.op250 = add i64 3, %.val.i73, !dbg !19952
  br label %scalar.ph, !dbg !19952

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !19962 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !19965
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !19968
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !19971, !noalias !19972, !noundef !12
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !19973
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !19981, !alias.scope !19982, !noalias !19972
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !19965
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !19968
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !19971, !noalias !19972, !noundef !12
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !19973
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !19981, !alias.scope !19982, !noalias !19972
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !19965
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !19968
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !19971, !noalias !19972, !noundef !12
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !19973
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !19981, !alias.scope !19982, !noalias !19972
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !19956 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !19965
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !19968
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !19971, !noalias !19972, !noundef !12
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !19973
  store i64 %i.dc, ptr %i.db, align 8, !dbg !19981, !alias.scope !19982, !noalias !19972
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !19942
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !19952, !llvm.loop !19989

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19991
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !19991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !19992
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !19993, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19994
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !19995, !prof !239

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !20006
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !20007
  %i.df = load i64, ptr %i.o, align 8, !dbg !20013, !alias.scope !20015, !noundef !12 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !20018
  call void @llvm.assume(i1 %i.dg), !dbg !20019
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !20020
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !20020

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !20021, !alias.scope !20015, !nonnull !12, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !20026
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !20028
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !20030, !alias.scope !20015
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !20031

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !20030
  %i.dk = add i64 %i.dj, %i.dd, !dbg !20030
  store i64 %i.dk, ptr %i.o, align 8, !dbg !20030, !alias.scope !20015
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !20032
  %i.dl = load i64, ptr %i.o, align 8, !dbg !20039, !alias.scope !20041, !noundef !12 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !20044
  call void @llvm.assume(i1 %i.dm), !dbg !20045
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !20046, !alias.scope !20041, !nonnull !12, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !20051
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !20053
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !20055, !alias.scope !20041
  %i.dp = add i64 %.pre.i79, %3, !dbg !20055      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !20055, !alias.scope !20041
  br label %.lr.ph, !dbg !20056

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw i64 %.sroa.027.0132, 1, !dbg !20059 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !20056
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !20056

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20070
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !19858
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !19858

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !20071
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !20074 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !20075 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !20076
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !20076, !prof !1798

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !20085
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !20086
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !20086, !noundef !12 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !20087
  %i.eb = zext i8 %i.dz to i64, !dbg !20092       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !20094
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !20094

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !20095
  call void @llvm.assume(i1 %i.ec), !dbg !20097
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !20098
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !20099
  %i.ef = lshr i64 %i.ee, 3, !dbg !20099
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !20101   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !20102, !noalias !20103
  %i.eh = load i64, ptr %i.o, align 8, !dbg !20106, !alias.scope !20110, !noalias !20103, !noundef !12 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !20112
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !20112, !prof !1188

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !20115, !alias.scope !20110, !noalias !20103, !nonnull !12, !noundef !12
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !20120
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !20121
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !20123
  %i.em = load i64, ptr %i.o, align 8, !dbg !20124, !alias.scope !20110, !noalias !20103, !noundef !12 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !20126
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !20126

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !20127, !noalias !20103
  unreachable, !dbg !20127

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !20128, !alias.scope !20110, !noalias !20103
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !20129

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !20130
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !20132

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !19900
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !19899       ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bl, align 1, !dbg !20133, !noalias !20136, !noundef !12
  %i.eq = sext i8 %.val.i.i.i to i64, !dbg !20137 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !20140 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !20143
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !19899 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !20145
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !19899 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !20147
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !20150
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !20153
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !20153
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !20156
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !19900
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !19900
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !20157
  store i64 %i.er, ptr %i.fa, align 8, !dbg !20157
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !20158
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !20158
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterhENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltahlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20159 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !20160

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !20165
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !20166
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !20166
  %.zext = zext nneg i16 %i.l to i64, !dbg !20166 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !20167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !20169
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20170 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !20172, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !20184
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !20185
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !20192 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !20192, !alias.scope !20194, !noundef !12 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !20197
  call void @llvm.assume(i1 %i.q), !dbg !20198
  %.not.i = icmp eq i64 %i.m, 0, !dbg !20199
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !20199

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20200
  %i.s = load ptr, ptr %i.r, align 8, !dbg !20200, !alias.scope !20194, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !20205
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !20207
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !20209, !alias.scope !20194
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !20210

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !20209
  %i.v = add i64 %i.u, %i.m, !dbg !20209
  store i64 %i.v, ptr %i.o, align 8, !dbg !20209, !alias.scope !20194
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20211 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !20212, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !20223
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !20224
  %i.y = load i64, ptr %i.o, align 8, !dbg !20230, !alias.scope !20232, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !20235
  call void @llvm.assume(i1 %i.z), !dbg !20236
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !20237
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !20237

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20238
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !20238, !alias.scope !20232, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !20243
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !20245
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !20247, !alias.scope !20232
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !20248

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !20247
  %i.ae = add i64 %i.ad, %i.w, !dbg !20247
  store i64 %i.ae, ptr %i.o, align 8, !dbg !20247, !alias.scope !20232
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20249
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20250 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !20252, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !20263
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !20264
  %i.ai = load i64, ptr %i.o, align 8, !dbg !20270, !alias.scope !20272, !noundef !12 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !20275
  call void @llvm.assume(i1 %i.aj), !dbg !20276
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !20277
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !20277

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20278
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !20278, !alias.scope !20272, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !20283
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !20285
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !20287, !alias.scope !20272
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !20288
end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterhENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltahlEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !20372

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !20389
  ret void, !dbg !20390

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !20391 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20392), !dbg !20395
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !20396
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !20372

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1, !dbg !20398 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !20400, !alias.scope !20401, !noalias !20404
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !20408 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !20411
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !20412
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !20412

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20414
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !20415
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !20416 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20420 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20422
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !20424
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !20435
  call void @llvm.experimental.noalias.scope.decl(metadata !20438), !dbg !20441
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !20446, !alias.scope !20438, !noalias !20450, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !20446, !alias.scope !20438, !noalias !20450, !noundef !12 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !20452 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !20454
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !20464

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !20465, !noalias !20450, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !20465, !noalias !20450, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !20464
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !20464
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !20464
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !20464
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !20464
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !20464

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !20468

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20468 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !20474  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !20477 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !20480 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !20483
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !20483, !noalias !20484
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !20483, !noalias !20484
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !20485
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !20485
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !20493
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !20493, !alias.scope !20494, !noalias !20484
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !20493, !alias.scope !20494, !noalias !20484
  %index.next = add nuw i64 %index, 4, !dbg !20468 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !20464
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !20464, !llvm.loop !20499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !20464
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !20464

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !20464
  %xtraiter = and i64 %i.cg, 3, !dbg !20464       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20464
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20464

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !20468 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !20474 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !20477
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !20480
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !20483, !noalias !20484, !noundef !12
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !20485
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !20493, !alias.scope !20494, !noalias !20484
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !20464 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !20464
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20464, !llvm.loop !20500

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !20464
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !20464
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !20464
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !20464

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !20464
  %invariant.op248 = add i64 2, %.val.i73, !dbg !20464
  %invariant.op250 = add i64 3, %.val.i73, !dbg !20464
  br label %scalar.ph, !dbg !20464

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !20474 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !20477
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !20480
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !20483, !noalias !20484, !noundef !12
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !20485
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !20493, !alias.scope !20494, !noalias !20484
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !20477
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !20480
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !20483, !noalias !20484, !noundef !12
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !20485
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !20493, !alias.scope !20494, !noalias !20484
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !20477
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !20480
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !20483, !noalias !20484, !noundef !12
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !20485
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !20493, !alias.scope !20494, !noalias !20484
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !20468 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !20477
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !20480
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !20483, !noalias !20484, !noundef !12
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !20485
  store i64 %i.dc, ptr %i.db, align 8, !dbg !20493, !alias.scope !20494, !noalias !20484
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !20454
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !20464, !llvm.loop !20501

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20503
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !20503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !20504
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !20505, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20506
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !20507, !prof !239

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !20518
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !20519
  %i.df = load i64, ptr %i.o, align 8, !dbg !20525, !alias.scope !20527, !noundef !12 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !20530
  call void @llvm.assume(i1 %i.dg), !dbg !20531
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !20532
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !20532

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !20533, !alias.scope !20527, !nonnull !12, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !20538
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !20540
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !20542, !alias.scope !20527
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !20543

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !20542
  %i.dk = add i64 %i.dj, %i.dd, !dbg !20542
  store i64 %i.dk, ptr %i.o, align 8, !dbg !20542, !alias.scope !20527
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !20544
  %i.dl = load i64, ptr %i.o, align 8, !dbg !20551, !alias.scope !20553, !noundef !12 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !20556
  call void @llvm.assume(i1 %i.dm), !dbg !20557
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !20558, !alias.scope !20553, !nonnull !12, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !20563
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !20565
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !20567, !alias.scope !20553
  %i.dp = add i64 %.pre.i79, %3, !dbg !20567      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !20567, !alias.scope !20553
  br label %.lr.ph, !dbg !20568

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw i64 %.sroa.027.0132, 1, !dbg !20571 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !20568
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !20568

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20582
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !20370
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !20370

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !20583
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !20586 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !20587 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !20588
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !20588, !prof !1798

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !20597
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !20598
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !20598, !noundef !12 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !20599
  %i.eb = zext i8 %i.dz to i64, !dbg !20604       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !20606
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !20606

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !20607
  call void @llvm.assume(i1 %i.ec), !dbg !20609
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !20610
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !20611
  %i.ef = lshr i64 %i.ee, 3, !dbg !20611
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !20613   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !20614, !noalias !20615
  %i.eh = load i64, ptr %i.o, align 8, !dbg !20618, !alias.scope !20622, !noalias !20615, !noundef !12 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !20624
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !20624, !prof !1188

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !20627, !alias.scope !20622, !noalias !20615, !nonnull !12, !noundef !12
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !20632
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !20633
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !20635
  %i.em = load i64, ptr %i.o, align 8, !dbg !20636, !alias.scope !20622, !noalias !20615, !noundef !12 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !20638
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !20638

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !20639, !noalias !20615
  unreachable, !dbg !20639

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !20640, !alias.scope !20622, !noalias !20615
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !20641

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !20642
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !20644

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !20412
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !20411       ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bl, align 1, !dbg !20645, !noalias !20648, !noundef !12
  %i.eq = zext i8 %.val.i.i.i to i64, !dbg !20649 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !20652 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !20655
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !20411 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !20657
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !20411 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !20659
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !20662
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !20665
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !20665
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !20668
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !20412
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !20412
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !20669
  store i64 %i.er, ptr %i.fa, align 8, !dbg !20669
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !20670
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !20670
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterlENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltallEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20671 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !20672

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !20677
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !20678
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !20678
  %.zext = zext nneg i16 %i.l to i64, !dbg !20678 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !20679
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !20681
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20682 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !20684, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !20696
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !20697
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !20704 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !20704, !alias.scope !20706, !noundef !12 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !20709
  call void @llvm.assume(i1 %i.q), !dbg !20710
  %.not.i = icmp eq i64 %i.m, 0, !dbg !20711
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !20711

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20712
  %i.s = load ptr, ptr %i.r, align 8, !dbg !20712, !alias.scope !20706, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !20717
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !20719
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !20721, !alias.scope !20706
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !20722

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !20721
  %i.v = add i64 %i.u, %i.m, !dbg !20721
  store i64 %i.v, ptr %i.o, align 8, !dbg !20721, !alias.scope !20706
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20723 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !20724, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !20735
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !20736
  %i.y = load i64, ptr %i.o, align 8, !dbg !20742, !alias.scope !20744, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !20747
  call void @llvm.assume(i1 %i.z), !dbg !20748
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !20749
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !20749

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20750
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !20750, !alias.scope !20744, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !20755
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !20757
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !20759, !alias.scope !20744
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !20760

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !20759
  %i.ae = add i64 %i.ad, %i.w, !dbg !20759
  store i64 %i.ae, ptr %i.o, align 8, !dbg !20759, !alias.scope !20744
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20761
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20762 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !20764, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !20775
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !20776
  %i.ai = load i64, ptr %i.o, align 8, !dbg !20782, !alias.scope !20784, !noundef !12 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !20787
  call void @llvm.assume(i1 %i.aj), !dbg !20788
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !20789
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !20789

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20790
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !20790, !alias.scope !20784, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !20795
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !20797
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !20799, !alias.scope !20784
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !20800
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterlENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltallEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !20884

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !20901
  ret void, !dbg !20902

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !20903 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20904), !dbg !20907
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !20908
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !20884

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4, !dbg !20910 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !20912, !alias.scope !20913, !noalias !20916
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !20920 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !20923
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !20924
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !20924

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20926
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !20927
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !20928 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20932 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20934
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !20936
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !20947
  call void @llvm.experimental.noalias.scope.decl(metadata !20950), !dbg !20953
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !20958, !alias.scope !20950, !noalias !20962, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !20958, !alias.scope !20950, !noalias !20962, !noundef !12 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !20964 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !20966
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !20976

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !20977, !noalias !20962, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !20977, !noalias !20962, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !20976
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !20976
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !20976
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !20976
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !20976
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !20976

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !20980

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20980 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !20986  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !20989 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !20992 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !20995
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !20995, !noalias !20996
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !20995, !noalias !20996
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !20997
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !20997
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !21005
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !21005, !alias.scope !21006, !noalias !20996
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !21005, !alias.scope !21006, !noalias !20996
  %index.next = add nuw i64 %index, 4, !dbg !20980 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !20976
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !20976, !llvm.loop !21011

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !20976
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !20976

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !20976
  %xtraiter = and i64 %i.cg, 3, !dbg !20976       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20976
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20976

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !20980 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !20986 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !20989
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !20992
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !20995, !noalias !20996, !noundef !12
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !20997
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !21005, !alias.scope !21006, !noalias !20996
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !20976 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !20976
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20976, !llvm.loop !21012

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !20976
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !20976
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !20976
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !20976

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !20976
  %invariant.op248 = add i64 2, %.val.i73, !dbg !20976
  %invariant.op250 = add i64 3, %.val.i73, !dbg !20976
  br label %scalar.ph, !dbg !20976

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !20986 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !20989
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !20992
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !20995, !noalias !20996, !noundef !12
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !20997
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !21005, !alias.scope !21006, !noalias !20996
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !20989
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !20992
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !20995, !noalias !20996, !noundef !12
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !20997
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !21005, !alias.scope !21006, !noalias !20996
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !20989
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !20992
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !20995, !noalias !20996, !noundef !12
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !20997
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !21005, !alias.scope !21006, !noalias !20996
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !20980 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !20989
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !20992
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !20995, !noalias !20996, !noundef !12
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !20997
  store i64 %i.dc, ptr %i.db, align 8, !dbg !21005, !alias.scope !21006, !noalias !20996
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !20966
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !20976, !llvm.loop !21013

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21015
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !21015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !21016
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !21017, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21018
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !21019, !prof !239

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !21030
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !21031
  %i.df = load i64, ptr %i.o, align 8, !dbg !21037, !alias.scope !21039, !noundef !12 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !21042
  call void @llvm.assume(i1 %i.dg), !dbg !21043
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !21044
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !21044

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !21045, !alias.scope !21039, !nonnull !12, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !21050
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !21052
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !21054, !alias.scope !21039
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !21055

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !21054
  %i.dk = add i64 %i.dj, %i.dd, !dbg !21054
  store i64 %i.dk, ptr %i.o, align 8, !dbg !21054, !alias.scope !21039
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !21056
  %i.dl = load i64, ptr %i.o, align 8, !dbg !21063, !alias.scope !21065, !noundef !12 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !21068
  call void @llvm.assume(i1 %i.dm), !dbg !21069
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !21070, !alias.scope !21065, !nonnull !12, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !21075
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !21077
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !21079, !alias.scope !21065
  %i.dp = add i64 %.pre.i79, %3, !dbg !21079      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !21079, !alias.scope !21065
  br label %.lr.ph, !dbg !21080

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw i64 %.sroa.027.0132, 1, !dbg !21083 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !21080
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !21080

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21094
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !20882
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !20882

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !21095
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !21098 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !21099 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !21100
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !21100, !prof !1798

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !21109
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !21110
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !21110, !noundef !12 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !21111
  %i.eb = zext i8 %i.dz to i64, !dbg !21116       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !21118
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !21118

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !21119
  call void @llvm.assume(i1 %i.ec), !dbg !21121
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !21122
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !21123
  %i.ef = lshr i64 %i.ee, 3, !dbg !21123
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !21125   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !21126, !noalias !21127
  %i.eh = load i64, ptr %i.o, align 8, !dbg !21130, !alias.scope !21134, !noalias !21127, !noundef !12 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !21136
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !21136, !prof !1188

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !21139, !alias.scope !21134, !noalias !21127, !nonnull !12, !noundef !12
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !21144
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !21145
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !21147
  %i.em = load i64, ptr %i.o, align 8, !dbg !21148, !alias.scope !21134, !noalias !21127, !noundef !12 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !21150
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !21150

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !21151, !noalias !21127
  unreachable, !dbg !21151

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !21152, !alias.scope !21134, !noalias !21127
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !21153

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !21154
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !21156

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !20924
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !20923       ; 2 uses
  %.val.i.i.i = load i32, ptr %i.bl, align 4, !dbg !21157, !noalias !21160, !noundef !12
  %i.eq = sext i32 %.val.i.i.i to i64, !dbg !21161 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !21164 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !21167
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !20923 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !21169
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !20923 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !21171
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !21174
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !21177
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !21177
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !21180
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !20924
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !20924
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !21181
  store i64 %i.er, ptr %i.fa, align 8, !dbg !21181
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !21182
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !21182
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltamlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21183 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !21184

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !21189
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !21190
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !21190
  %.zext = zext nneg i16 %i.l to i64, !dbg !21190 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !21193
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21194 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !21196, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !21208
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !21209
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21216 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !21216, !alias.scope !21218, !noundef !12 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !21221
  call void @llvm.assume(i1 %i.q), !dbg !21222
  %.not.i = icmp eq i64 %i.m, 0, !dbg !21223
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !21223

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21224
  %i.s = load ptr, ptr %i.r, align 8, !dbg !21224, !alias.scope !21218, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !21229
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !21231
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !21233, !alias.scope !21218
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !21234

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !21233
  %i.v = add i64 %i.u, %i.m, !dbg !21233
  store i64 %i.v, ptr %i.o, align 8, !dbg !21233, !alias.scope !21218
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21235 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !21236, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !21247
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !21248
  %i.y = load i64, ptr %i.o, align 8, !dbg !21254, !alias.scope !21256, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !21259
  call void @llvm.assume(i1 %i.z), !dbg !21260
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !21261
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !21261

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21262
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !21262, !alias.scope !21256, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !21267
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !21269
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !21271, !alias.scope !21256
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !21272

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !21271
  %i.ae = add i64 %i.ad, %i.w, !dbg !21271
  store i64 %i.ae, ptr %i.o, align 8, !dbg !21271, !alias.scope !21256
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21273
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21274 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !21276, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !21287
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !21288
  %i.ai = load i64, ptr %i.o, align 8, !dbg !21294, !alias.scope !21296, !noundef !12 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !21299
  call void @llvm.assume(i1 %i.aj), !dbg !21300
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !21301
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !21301

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21302
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !21302, !alias.scope !21296, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !21307
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !21309
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !21311, !alias.scope !21296
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !21312
end_hunk_12
begin_hunk_13_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltamlEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !21396

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21413
  ret void, !dbg !21414

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !21415 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21416), !dbg !21419
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !21420
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !21396

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4, !dbg !21422 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !21424, !alias.scope !21425, !noalias !21428
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !21432 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !21435
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !21436
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !21436

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21438
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !21439
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !21440 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21444 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21446
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !21448
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !21459
  call void @llvm.experimental.noalias.scope.decl(metadata !21462), !dbg !21465
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !21470, !alias.scope !21462, !noalias !21474, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !21470, !alias.scope !21462, !noalias !21474, !noundef !12 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !21476 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !21478
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !21488

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !21489, !noalias !21474, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !21489, !noalias !21474, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !21488
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !21488
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !21488
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !21488
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !21488
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !21488

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !21492

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21492 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !21498  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !21501 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !21504 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !21507
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !21507, !noalias !21508
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !21507, !noalias !21508
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !21509
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !21509
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !21517
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !21517, !alias.scope !21518, !noalias !21508
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !21517, !alias.scope !21518, !noalias !21508
  %index.next = add nuw i64 %index, 4, !dbg !21492 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !21488
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !21488, !llvm.loop !21523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !21488
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !21488

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !21488
  %xtraiter = and i64 %i.cg, 3, !dbg !21488       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21488
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21488

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !21492 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !21498 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !21501
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !21504
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !21507, !noalias !21508, !noundef !12
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !21509
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !21517, !alias.scope !21518, !noalias !21508
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21488 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21488
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21488, !llvm.loop !21524

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !21488
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !21488
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !21488
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !21488

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !21488
  %invariant.op248 = add i64 2, %.val.i73, !dbg !21488
  %invariant.op250 = add i64 3, %.val.i73, !dbg !21488
  br label %scalar.ph, !dbg !21488

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !21498 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !21501
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !21504
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !21507, !noalias !21508, !noundef !12
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !21509
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !21517, !alias.scope !21518, !noalias !21508
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !21501
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !21504
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !21507, !noalias !21508, !noundef !12
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !21509
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !21517, !alias.scope !21518, !noalias !21508
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !21501
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !21504
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !21507, !noalias !21508, !noundef !12
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !21509
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !21517, !alias.scope !21518, !noalias !21508
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !21492 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !21501
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !21504
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !21507, !noalias !21508, !noundef !12
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !21509
  store i64 %i.dc, ptr %i.db, align 8, !dbg !21517, !alias.scope !21518, !noalias !21508
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !21478
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !21488, !llvm.loop !21525

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21527
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !21527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !21528
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !21529, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21530
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !21531, !prof !239

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !21542
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !21543
  %i.df = load i64, ptr %i.o, align 8, !dbg !21549, !alias.scope !21551, !noundef !12 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !21554
  call void @llvm.assume(i1 %i.dg), !dbg !21555
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !21556
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !21556

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !21557, !alias.scope !21551, !nonnull !12, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !21562
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !21564
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !21566, !alias.scope !21551
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !21567

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !21566
  %i.dk = add i64 %i.dj, %i.dd, !dbg !21566
  store i64 %i.dk, ptr %i.o, align 8, !dbg !21566, !alias.scope !21551
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !21568
  %i.dl = load i64, ptr %i.o, align 8, !dbg !21575, !alias.scope !21577, !noundef !12 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !21580
  call void @llvm.assume(i1 %i.dm), !dbg !21581
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !21582, !alias.scope !21577, !nonnull !12, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !21587
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !21589
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !21591, !alias.scope !21577
  %i.dp = add i64 %.pre.i79, %3, !dbg !21591      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !21591, !alias.scope !21577
  br label %.lr.ph, !dbg !21592

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw i64 %.sroa.027.0132, 1, !dbg !21595 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !21592
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !21592

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21606
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !21394
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !21394

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !21607
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !21610 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !21611 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !21612
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !21612, !prof !1798

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !21621
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !21622
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !21622, !noundef !12 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !21623
  %i.eb = zext i8 %i.dz to i64, !dbg !21628       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !21630
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !21630

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !21631
  call void @llvm.assume(i1 %i.ec), !dbg !21633
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !21634
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !21635
  %i.ef = lshr i64 %i.ee, 3, !dbg !21635
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !21637   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !21638, !noalias !21639
  %i.eh = load i64, ptr %i.o, align 8, !dbg !21642, !alias.scope !21646, !noalias !21639, !noundef !12 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !21648
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !21648, !prof !1188

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !21651, !alias.scope !21646, !noalias !21639, !nonnull !12, !noundef !12
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !21656
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !21657
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !21659
  %i.em = load i64, ptr %i.o, align 8, !dbg !21660, !alias.scope !21646, !noalias !21639, !noundef !12 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !21662
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !21662

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !21663, !noalias !21639
  unreachable, !dbg !21663

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !21664, !alias.scope !21646, !noalias !21639
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !21665

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !21666
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !21668

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !21436
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !21435       ; 2 uses
  %.val.i.i.i = load i32, ptr %i.bl, align 4, !dbg !21669, !noalias !21672, !noundef !12
  %i.eq = sext i32 %.val.i.i.i to i64, !dbg !21673 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !21676 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !21679
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !21435 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !21681
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !21435 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !21683
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !21686
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !21689
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !21689
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !21692
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !21436
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !21436
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !21693
  store i64 %i.er, ptr %i.fa, align 8, !dbg !21693
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !21694
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !21694
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItersENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaslEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21695 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !21696

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !21701
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !21702
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !21702
  %.zext = zext nneg i16 %i.l to i64, !dbg !21702 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21703
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !21705
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21706 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !21708, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !21720
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !21721
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21728 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !21728, !alias.scope !21730, !noundef !12 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !21733
  call void @llvm.assume(i1 %i.q), !dbg !21734
  %.not.i = icmp eq i64 %i.m, 0, !dbg !21735
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !21735

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21736
  %i.s = load ptr, ptr %i.r, align 8, !dbg !21736, !alias.scope !21730, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !21741
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !21743
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !21745, !alias.scope !21730
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !21746

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !21745
  %i.v = add i64 %i.u, %i.m, !dbg !21745
  store i64 %i.v, ptr %i.o, align 8, !dbg !21745, !alias.scope !21730
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21747 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !21748, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !21759
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !21760
  %i.y = load i64, ptr %i.o, align 8, !dbg !21766, !alias.scope !21768, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !21771
  call void @llvm.assume(i1 %i.z), !dbg !21772
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !21773
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !21773

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21774
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !21774, !alias.scope !21768, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !21779
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !21781
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !21783, !alias.scope !21768
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !21784

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !21783
  %i.ae = add i64 %i.ad, %i.w, !dbg !21783
  store i64 %i.ae, ptr %i.o, align 8, !dbg !21783, !alias.scope !21768
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21785
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21786 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !21788, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !21799
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !21800
  %i.ai = load i64, ptr %i.o, align 8, !dbg !21806, !alias.scope !21808, !noundef !12 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !21811
  call void @llvm.assume(i1 %i.aj), !dbg !21812
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !21813
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !21813

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21814
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !21814, !alias.scope !21808, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !21819
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !21821
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !21823, !alias.scope !21808
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !21824
end_hunk_13
begin_hunk_14_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItersENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaslEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !21908

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21925
  ret void, !dbg !21926

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !21927 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21928), !dbg !21931
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !21932
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !21908

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 2, !dbg !21934 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !21936, !alias.scope !21937, !noalias !21940
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !21944 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !21947
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !21948
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !21948

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21950
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !21951
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !21952 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21956 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21958
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !21960
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !21971
  call void @llvm.experimental.noalias.scope.decl(metadata !21974), !dbg !21977
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !21982, !alias.scope !21974, !noalias !21986, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !21982, !alias.scope !21974, !noalias !21986, !noundef !12 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !21988 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !21990
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !22000

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !22001, !noalias !21986, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !22001, !noalias !21986, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !22000
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !22000
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !22000
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !22000
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !22000
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !22000

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !22004

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22004 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !22010  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !22013 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !22016 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !22019
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !22019, !noalias !22020
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !22019, !noalias !22020
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !22021
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !22021
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !22029
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !22029, !alias.scope !22030, !noalias !22020
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !22029, !alias.scope !22030, !noalias !22020
  %index.next = add nuw i64 %index, 4, !dbg !22004 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !22000
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !22000, !llvm.loop !22035

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !22000
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !22000

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !22000
  %xtraiter = and i64 %i.cg, 3, !dbg !22000       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22000
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22000

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !22004 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !22010 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !22013
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !22016
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !22019, !noalias !22020, !noundef !12
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !22021
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !22029, !alias.scope !22030, !noalias !22020
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !22000 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !22000
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22000, !llvm.loop !22036

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !22000
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !22000
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !22000
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !22000

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !22000
  %invariant.op248 = add i64 2, %.val.i73, !dbg !22000
  %invariant.op250 = add i64 3, %.val.i73, !dbg !22000
  br label %scalar.ph, !dbg !22000

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !22010 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !22013
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !22016
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !22019, !noalias !22020, !noundef !12
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !22021
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !22029, !alias.scope !22030, !noalias !22020
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !22013
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !22016
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !22019, !noalias !22020, !noundef !12
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !22021
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !22029, !alias.scope !22030, !noalias !22020
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !22013
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !22016
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !22019, !noalias !22020, !noundef !12
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !22021
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !22029, !alias.scope !22030, !noalias !22020
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !22004 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !22013
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !22016
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !22019, !noalias !22020, !noundef !12
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !22021
  store i64 %i.dc, ptr %i.db, align 8, !dbg !22029, !alias.scope !22030, !noalias !22020
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !21990
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !22000, !llvm.loop !22037

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22039
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !22039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !22040
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !22041, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22042
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !22043, !prof !239

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !22054
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !22055
  %i.df = load i64, ptr %i.o, align 8, !dbg !22061, !alias.scope !22063, !noundef !12 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !22066
  call void @llvm.assume(i1 %i.dg), !dbg !22067
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !22068
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !22068

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !22069, !alias.scope !22063, !nonnull !12, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !22074
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !22076
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !22078, !alias.scope !22063
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !22079

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !22078
  %i.dk = add i64 %i.dj, %i.dd, !dbg !22078
  store i64 %i.dk, ptr %i.o, align 8, !dbg !22078, !alias.scope !22063
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !22080
  %i.dl = load i64, ptr %i.o, align 8, !dbg !22087, !alias.scope !22089, !noundef !12 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !22092
  call void @llvm.assume(i1 %i.dm), !dbg !22093
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !22094, !alias.scope !22089, !nonnull !12, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !22099
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !22101
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !22103, !alias.scope !22089
  %i.dp = add i64 %.pre.i79, %3, !dbg !22103      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !22103, !alias.scope !22089
  br label %.lr.ph, !dbg !22104

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw i64 %.sroa.027.0132, 1, !dbg !22107 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !22104
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !22104

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22118
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !21906
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !21906

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !22119
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !22122 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !22123 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !22124
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !22124, !prof !1798

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !22133
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !22134
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !22134, !noundef !12 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !22135
  %i.eb = zext i8 %i.dz to i64, !dbg !22140       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !22142
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !22142

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !22143
  call void @llvm.assume(i1 %i.ec), !dbg !22145
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !22146
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !22147
  %i.ef = lshr i64 %i.ee, 3, !dbg !22147
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !22149   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !22150, !noalias !22151
  %i.eh = load i64, ptr %i.o, align 8, !dbg !22154, !alias.scope !22158, !noalias !22151, !noundef !12 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !22160
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !22160, !prof !1188

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !22163, !alias.scope !22158, !noalias !22151, !nonnull !12, !noundef !12
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !22168
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !22169
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !22171
  %i.em = load i64, ptr %i.o, align 8, !dbg !22172, !alias.scope !22158, !noalias !22151, !noundef !12 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !22174
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !22174

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !22175, !noalias !22151
  unreachable, !dbg !22175

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !22176, !alias.scope !22158, !noalias !22151
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !22177

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !22178
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !22180

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !21948
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !21947       ; 2 uses
  %.val.i.i.i = load i16, ptr %i.bl, align 2, !dbg !22181, !noalias !22184, !noundef !12
  %i.eq = sext i16 %.val.i.i.i to i64, !dbg !22185 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !22188 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !22191
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !21947 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !22193
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !21947 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !22195
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !22198
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !22201
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !22201
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !22204
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !21948
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !21948
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !22205
  store i64 %i.er, ptr %i.fa, align 8, !dbg !22205
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !22206
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !22206
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItertENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltatlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22207 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !22208

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !22213
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !22214
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !22214
  %.zext = zext nneg i16 %i.l to i64, !dbg !22214 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22215
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !22217
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22218 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !22220, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !22232
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !22233
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22240 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !22240, !alias.scope !22242, !noundef !12 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !22245
  call void @llvm.assume(i1 %i.q), !dbg !22246
  %.not.i = icmp eq i64 %i.m, 0, !dbg !22247
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !22247

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22248
  %i.s = load ptr, ptr %i.r, align 8, !dbg !22248, !alias.scope !22242, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !22253
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !22255
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !22257, !alias.scope !22242
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !22258

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !22257
  %i.v = add i64 %i.u, %i.m, !dbg !22257
  store i64 %i.v, ptr %i.o, align 8, !dbg !22257, !alias.scope !22242
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22259 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !22260, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !22271
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !22272
  %i.y = load i64, ptr %i.o, align 8, !dbg !22278, !alias.scope !22280, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !22283
  call void @llvm.assume(i1 %i.z), !dbg !22284
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !22285
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !22285

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22286
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !22286, !alias.scope !22280, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !22291
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !22293
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !22295, !alias.scope !22280
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !22296

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !22295
  %i.ae = add i64 %i.ad, %i.w, !dbg !22295
  store i64 %i.ae, ptr %i.o, align 8, !dbg !22295, !alias.scope !22280
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22297
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22298 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !22300, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !22311
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !22312
  %i.ai = load i64, ptr %i.o, align 8, !dbg !22318, !alias.scope !22320, !noundef !12 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !22323
  call void @llvm.assume(i1 %i.aj), !dbg !22324
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !22325
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !22325

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22326
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !22326, !alias.scope !22320, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !22331
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !22333
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !22335, !alias.scope !22320
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !22336
end_hunk_14
begin_hunk_15_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItertENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltatlEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !22420

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22437
  ret void, !dbg !22438

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !22439 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22440), !dbg !22443
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !22444
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !22420

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 2, !dbg !22446 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !22448, !alias.scope !22449, !noalias !22452
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !22456 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !22459
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !22460
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !22460

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22462
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !22463
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !22464 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22468 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22470
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !22472
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !22483
  call void @llvm.experimental.noalias.scope.decl(metadata !22486), !dbg !22489
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !22494, !alias.scope !22486, !noalias !22498, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !22494, !alias.scope !22486, !noalias !22498, !noundef !12 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !22500 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !22502
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !22512

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !22513, !noalias !22498, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !22513, !noalias !22498, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !22512
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !22512
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !22512
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !22512
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !22512
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !22512

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !22516

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22516 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !22522  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !22525 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !22528 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !22531
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !22531, !noalias !22532
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !22531, !noalias !22532
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !22533
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !22533
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !22541
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !22541, !alias.scope !22542, !noalias !22532
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !22541, !alias.scope !22542, !noalias !22532
  %index.next = add nuw i64 %index, 4, !dbg !22516 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !22512
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !22512, !llvm.loop !22547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !22512
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !22512

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !22512
  %xtraiter = and i64 %i.cg, 3, !dbg !22512       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22512
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22512

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !22516 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !22522 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !22525
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !22528
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !22531, !noalias !22532, !noundef !12
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !22533
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !22541, !alias.scope !22542, !noalias !22532
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !22512 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !22512
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22512, !llvm.loop !22548

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !22512
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !22512
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !22512
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !22512

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !22512
  %invariant.op248 = add i64 2, %.val.i73, !dbg !22512
  %invariant.op250 = add i64 3, %.val.i73, !dbg !22512
  br label %scalar.ph, !dbg !22512

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !22522 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !22525
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !22528
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !22531, !noalias !22532, !noundef !12
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !22533
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !22541, !alias.scope !22542, !noalias !22532
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !22525
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !22528
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !22531, !noalias !22532, !noundef !12
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !22533
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !22541, !alias.scope !22542, !noalias !22532
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !22525
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !22528
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !22531, !noalias !22532, !noundef !12
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !22533
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !22541, !alias.scope !22542, !noalias !22532
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !22516 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !22525
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !22528
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !22531, !noalias !22532, !noundef !12
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !22533
  store i64 %i.dc, ptr %i.db, align 8, !dbg !22541, !alias.scope !22542, !noalias !22532
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !22502
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !22512, !llvm.loop !22549

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22551
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !22551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !22552
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !22553, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22554
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !22555, !prof !239

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !22566
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !22567
  %i.df = load i64, ptr %i.o, align 8, !dbg !22573, !alias.scope !22575, !noundef !12 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !22578
  call void @llvm.assume(i1 %i.dg), !dbg !22579
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !22580
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !22580

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !22581, !alias.scope !22575, !nonnull !12, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !22586
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !22588
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !22590, !alias.scope !22575
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !22591

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !22590
  %i.dk = add i64 %i.dj, %i.dd, !dbg !22590
  store i64 %i.dk, ptr %i.o, align 8, !dbg !22590, !alias.scope !22575
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !22592
  %i.dl = load i64, ptr %i.o, align 8, !dbg !22599, !alias.scope !22601, !noundef !12 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !22604
  call void @llvm.assume(i1 %i.dm), !dbg !22605
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !22606, !alias.scope !22601, !nonnull !12, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !22611
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !22613
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !22615, !alias.scope !22601
  %i.dp = add i64 %.pre.i79, %3, !dbg !22615      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !22615, !alias.scope !22601
  br label %.lr.ph, !dbg !22616

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw i64 %.sroa.027.0132, 1, !dbg !22619 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !22616
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !22616

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22630
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !22418
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !22418

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !22631
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !22634 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !22635 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !22636
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !22636, !prof !1798

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !22645
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !22646
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !22646, !noundef !12 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !22647
  %i.eb = zext i8 %i.dz to i64, !dbg !22652       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !22654
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !22654

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !22655
  call void @llvm.assume(i1 %i.ec), !dbg !22657
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !22658
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !22659
  %i.ef = lshr i64 %i.ee, 3, !dbg !22659
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !22661   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !22662, !noalias !22663
  %i.eh = load i64, ptr %i.o, align 8, !dbg !22666, !alias.scope !22670, !noalias !22663, !noundef !12 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !22672
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !22672, !prof !1188

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !22675, !alias.scope !22670, !noalias !22663, !nonnull !12, !noundef !12
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !22680
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !22681
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !22683
  %i.em = load i64, ptr %i.o, align 8, !dbg !22684, !alias.scope !22670, !noalias !22663, !noundef !12 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !22686
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !22686

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !22687, !noalias !22663
  unreachable, !dbg !22687

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !22688, !alias.scope !22670, !noalias !22663
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !22689

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !22690
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !22692

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !22460
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !22459       ; 2 uses
  %.val.i.i.i = load i16, ptr %i.bl, align 2, !dbg !22693, !noalias !22696, !noundef !12
  %i.eq = zext i16 %.val.i.i.i to i64, !dbg !22697 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !22700 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !22703
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !22459 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !22705
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !22459 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !22707
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !22710
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !22713
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !22713
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !22716
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !22460
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !22460
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !22717
  store i64 %i.er, ptr %i.fa, align 8, !dbg !22717
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !22718
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !22718
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterxENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaxxEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22719 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !22720

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !22725
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !22726
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !22726
  %.zext = zext nneg i16 %i.l to i64, !dbg !22726 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22727
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !22729
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22730 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !22732, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !22744
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !22745
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22752 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !22752, !alias.scope !22754, !noundef !12 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !22757
  call void @llvm.assume(i1 %i.q), !dbg !22758
  %.not.i = icmp eq i64 %i.m, 0, !dbg !22759
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !22759

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22760
  %i.s = load ptr, ptr %i.r, align 8, !dbg !22760, !alias.scope !22754, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !22765
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !22767
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !22769, !alias.scope !22754
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !22770

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !22769
  %i.v = add i64 %i.u, %i.m, !dbg !22769
  store i64 %i.v, ptr %i.o, align 8, !dbg !22769, !alias.scope !22754
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22771 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !22772, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !22783
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !22784
  %i.y = load i64, ptr %i.o, align 8, !dbg !22790, !alias.scope !22792, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !22795
  call void @llvm.assume(i1 %i.z), !dbg !22796
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !22797
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !22797

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22798
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !22798, !alias.scope !22792, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !22803
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !22805
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !22807, !alias.scope !22792
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !22808

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !22807
  %i.ae = add i64 %i.ad, %i.w, !dbg !22807
  store i64 %i.ae, ptr %i.o, align 8, !dbg !22807, !alias.scope !22792
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22809
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22810 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !22812, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !22823
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !22824
  %i.ai = load i64, ptr %i.o, align 8, !dbg !22830, !alias.scope !22832, !noundef !12 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !22835
  call void @llvm.assume(i1 %i.aj), !dbg !22836
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !22837
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !22837

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22838
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !22838, !alias.scope !22832, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !22843
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !22845
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !22847, !alias.scope !22832
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !22848
end_hunk_15
begin_hunk_16_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterxENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaxxEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !22927

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22944
  ret void, !dbg !22945

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.es, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !22946 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22947), !dbg !22950
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !22951
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !22927

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !22953 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !22955, !alias.scope !22956, !noalias !22959
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !22963 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !22966
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !22967
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !22967

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22969
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !22970
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !22971 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22975 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22977
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !22979
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !22990
  call void @llvm.experimental.noalias.scope.decl(metadata !22993), !dbg !22996
  %.val.i73 = load i64, ptr %i.be, align 8, !dbg !23001, !alias.scope !22993, !noalias !23005, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bf, align 8, !dbg !23001, !alias.scope !22993, !noalias !23005, !noundef !12 ; 4 uses
  %i.bv = sub i64 %.val8.i, %.val.i73, !dbg !23007 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !23009
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !23019

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !23020, !noalias !23005, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !23020, !noalias !23005, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bv, 4, !dbg !23019
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !23019
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bw = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !23019
  %diff.check = icmp ugt i64 %i.bw, -32, !dbg !23019
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !23019
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !23019

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bv, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !23023

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !23023 ; 2 uses
  %i.bx = add i64 %index, %.val.i73, !dbg !23029  ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bx, !dbg !23032 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.bx, !dbg !23035 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16, !dbg !23038
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !dbg !23038, !noalias !23039
  %wide.load222 = load <2 x i64>, ptr %i.ca, align 8, !dbg !23038, !noalias !23039
  %i.cb = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !23040
  %i.cc = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !23040
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !23048
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !dbg !23048, !alias.scope !23049, !noalias !23039
  store <2 x i64> %i.cc, ptr %i.cd, align 8, !dbg !23048, !alias.scope !23049, !noalias !23039
  %index.next = add nuw i64 %index, 4, !dbg !23023 ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec, !dbg !23019
  br i1 %i.ce, label %middle.block, label %vector.body, !dbg !23019, !llvm.loop !23054

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec, !dbg !23019
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !23019

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cf = sub i64 %.val8.i, %.val.i73, !dbg !23019
  %xtraiter = and i64 %i.cf, 3, !dbg !23019       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !23019
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !23019

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.cg, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !23023 ; 2 uses
  %i.ch = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !23029 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ch, !dbg !23032
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ch, !dbg !23035
  %.val10.i.prol = load i64, ptr %i.ci, align 8, !dbg !23038, !noalias !23039, !noundef !12
  %i.ck = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !23040
  store i64 %i.ck, ptr %i.cj, align 8, !dbg !23048, !alias.scope !23049, !noalias !23039
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !23019 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !23019
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !23019, !llvm.loop !23055

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.cg, %scalar.ph.prol ]
  %i.cl = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !23019
  %i.cm = add i64 %i.cl, %.val.i73, !dbg !23019
  %i.cn = icmp ugt i64 %i.cm, -4, !dbg !23019
  br i1 %i.cn, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !23019

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !23019
  %invariant.op248 = add i64 2, %.val.i73, !dbg !23019
  %invariant.op250 = add i64 3, %.val.i73, !dbg !23019
  br label %scalar.ph, !dbg !23019

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !23029 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !23032
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !23035
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !23038, !noalias !23039, !noundef !12
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !23040
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !23048, !alias.scope !23049, !noalias !23039
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !23032
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !23035
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !23038, !noalias !23039, !noundef !12
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !23040
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !23048, !alias.scope !23049, !noalias !23039
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !23032
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !23035
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !23038, !noalias !23039, !noundef !12
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !23040
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !23048, !alias.scope !23049, !noalias !23039
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !23023 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !23032
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !23035
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !23038, !noalias !23039, !noundef !12
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !23040
  store i64 %i.db, ptr %i.da, align 8, !dbg !23048, !alias.scope !23049, !noalias !23039
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !23009
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !23019, !llvm.loop !23056

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23058
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !23058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !23059
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !23060, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23061
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !23062, !prof !239

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !23073
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !23074
  %i.de = load i64, ptr %i.o, align 8, !dbg !23080, !alias.scope !23082, !noundef !12 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !23085
  call void @llvm.assume(i1 %i.df), !dbg !23086
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !23087
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !23087

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !23088, !alias.scope !23082, !nonnull !12, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !23093
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !23095
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !23097, !alias.scope !23082
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !23098

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !23097
  %i.dj = add i64 %i.di, %i.dc, !dbg !23097
  store i64 %i.dj, ptr %i.o, align 8, !dbg !23097, !alias.scope !23082
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !23099
  %i.dk = load i64, ptr %i.o, align 8, !dbg !23106, !alias.scope !23108, !noundef !12 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !23111
  call void @llvm.assume(i1 %i.dl), !dbg !23112
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !23113, !alias.scope !23108, !nonnull !12, !noundef !12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !23118
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !23120
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !23122, !alias.scope !23108
  %i.do = add i64 %.pre.i79, %3, !dbg !23122      ; 2 uses
  store i64 %i.do, ptr %i.o, align 8, !dbg !23122, !alias.scope !23108
  br label %.lr.ph, !dbg !23123

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw i64 %.sroa.027.0132, 1, !dbg !23126 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !23123
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !23123

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23137
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !22925
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !22925

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !23138
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !23141 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !23142 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !23143
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !23143, !prof !1798

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !23152
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !23153
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !23153, !noundef !12 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !23154
  %i.ea = zext i8 %i.dy to i64, !dbg !23159       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !23161
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !23161

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !23162
  call void @llvm.assume(i1 %i.eb), !dbg !23164
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !23165
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !23166
  %i.ee = lshr i64 %i.ed, 3, !dbg !23166
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !23168   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !23169, !noalias !23170
  %i.eg = load i64, ptr %i.o, align 8, !dbg !23173, !alias.scope !23177, !noalias !23170, !noundef !12 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !23179
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !23179, !prof !1188

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !23182, !alias.scope !23177, !noalias !23170, !nonnull !12, !noundef !12
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !23187
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !23188
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !23190
  %i.el = load i64, ptr %i.o, align 8, !dbg !23191, !alias.scope !23177, !noalias !23170, !noundef !12 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !23193
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !23193

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !23194, !noalias !23170
  unreachable, !dbg !23194

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.o, align 8, !dbg !23195, !alias.scope !23177, !noalias !23170
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !23196

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !23197
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !23199

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !22967
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !22966       ; 2 uses
  %.val.i.i.i = load i64, ptr %i.bk, align 8, !dbg !23200, !noalias !23203, !noundef !12 ; 3 uses
  %i.ep = sub i64 %.val.i.i.i, %.sroa.0.2125, !dbg !23204 ; 5 uses
  %i.eq = call i64 @llvm.smax.i64(i64 %i.ep, i64 %.sroa.012.0124), !dbg !23207
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.ep, i64 %i.eq, !dbg !22966 ; 2 uses
  %i.er = call i64 @llvm.smin.i64(i64 %i.ep, i64 %.sroa.084.0123), !dbg !23209
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.ep, i64 %i.er, !dbg !22966 ; 3 uses
  %i.es = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !23211
  %i.et = sub i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !23214
  %i.eu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.et, i1 false), !dbg !23217
  %i.ev = trunc nuw nsw i64 %i.eu to i8, !dbg !23217
  %i.ew = sub nuw nsw i8 64, %i.ev, !dbg !23220
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !22967
  store i8 %i.ew, ptr %i.ex, align 1, !dbg !22967
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !23221
  store i64 %i.ep, ptr %i.ey, align 8, !dbg !23221
  %i.ez = icmp eq i64 %i.bl, 0, !dbg !23222
  br i1 %i.ez, label %.split.us, label %.preheader.split, !dbg !23222
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteryENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltayxEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23223 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !23224

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !23229
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !23230
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !23230
  %.zext = zext nneg i16 %i.l to i64, !dbg !23230 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !23233
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23234 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !23236, !prof !239

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !23248
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !23249
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23256 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !23256, !alias.scope !23258, !noundef !12 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !23261
  call void @llvm.assume(i1 %i.q), !dbg !23262
  %.not.i = icmp eq i64 %i.m, 0, !dbg !23263
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !23263

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23264
  %i.s = load ptr, ptr %i.r, align 8, !dbg !23264, !alias.scope !23258, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !23269
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !23271
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !23273, !alias.scope !23258
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !23274

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !23273
  %i.v = add i64 %i.u, %i.m, !dbg !23273
  store i64 %i.v, ptr %i.o, align 8, !dbg !23273, !alias.scope !23258
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23275 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !23276, !prof !239

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !23287
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !23288
  %i.y = load i64, ptr %i.o, align 8, !dbg !23294, !alias.scope !23296, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !23299
  call void @llvm.assume(i1 %i.z), !dbg !23300
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !23301
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !23301

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23302
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !23302, !alias.scope !23296, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !23307
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !23309
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !23311, !alias.scope !23296
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !23312

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !23311
  %i.ae = add i64 %i.ad, %i.w, !dbg !23311
  store i64 %i.ae, ptr %i.o, align 8, !dbg !23311, !alias.scope !23296
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23313
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23314 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !23316, !prof !239

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !23327
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !23328
  %i.ai = load i64, ptr %i.o, align 8, !dbg !23334, !alias.scope !23336, !noundef !12 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !23339
  call void @llvm.assume(i1 %i.aj), !dbg !23340
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !23341
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !23341

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23342
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !23342, !alias.scope !23336, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !23347
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !23349
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !23351, !alias.scope !23336
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !23352

end_hunk_16
begin_hunk_17_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteryENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltayxEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !23431

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23448
  ret void, !dbg !23449

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.es, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !23450 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23451), !dbg !23454
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !23455
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !23431

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !23457 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !23459, !alias.scope !23460, !noalias !23463
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !23467 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !23470
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !23471
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !23471

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23473
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !23474
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !23475 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23481
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !23483
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !23494
  call void @llvm.experimental.noalias.scope.decl(metadata !23497), !dbg !23500
  %.val.i73 = load i64, ptr %i.be, align 8, !dbg !23505, !alias.scope !23497, !noalias !23509, !noundef !12 ; 10 uses
  %.val8.i = load i64, ptr %i.bf, align 8, !dbg !23505, !alias.scope !23497, !noalias !23509, !noundef !12 ; 4 uses
  %i.bv = sub i64 %.val8.i, %.val.i73, !dbg !23511 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !23513
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !23523

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !23524, !noalias !23509, !nonnull !12, !noundef !12 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !23524, !noalias !23509, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bv, 4, !dbg !23523
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !23523
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bw = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !23523
  %diff.check = icmp ugt i64 %i.bw, -32, !dbg !23523
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !23523
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !23523

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bv, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !23527

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !23527 ; 2 uses
  %i.bx = add i64 %index, %.val.i73, !dbg !23533  ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bx, !dbg !23536 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.bx, !dbg !23539 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16, !dbg !23542
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !dbg !23542, !noalias !23543
  %wide.load222 = load <2 x i64>, ptr %i.ca, align 8, !dbg !23542, !noalias !23543
  %i.cb = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !23544
  %i.cc = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !23544
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !23552
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !dbg !23552, !alias.scope !23553, !noalias !23543
  store <2 x i64> %i.cc, ptr %i.cd, align 8, !dbg !23552, !alias.scope !23553, !noalias !23543
  %index.next = add nuw i64 %index, 4, !dbg !23527 ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec, !dbg !23523
  br i1 %i.ce, label %middle.block, label %vector.body, !dbg !23523, !llvm.loop !23558

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec, !dbg !23523
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !23523

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cf = sub i64 %.val8.i, %.val.i73, !dbg !23523
  %xtraiter = and i64 %i.cf, 3, !dbg !23523       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !23523
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !23523

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.cg, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !23527 ; 2 uses
  %i.ch = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !23533 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ch, !dbg !23536
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ch, !dbg !23539
  %.val10.i.prol = load i64, ptr %i.ci, align 8, !dbg !23542, !noalias !23543, !noundef !12
  %i.ck = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !23544
  store i64 %i.ck, ptr %i.cj, align 8, !dbg !23552, !alias.scope !23553, !noalias !23543
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !23523 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !23523
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !23523, !llvm.loop !23559

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.cg, %scalar.ph.prol ]
  %i.cl = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !23523
  %i.cm = add i64 %i.cl, %.val.i73, !dbg !23523
  %i.cn = icmp ugt i64 %i.cm, -4, !dbg !23523
  br i1 %i.cn, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !23523

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !23523
  %invariant.op248 = add i64 2, %.val.i73, !dbg !23523
  %invariant.op250 = add i64 3, %.val.i73, !dbg !23523
  br label %scalar.ph, !dbg !23523

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !23533 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !23536
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !23539
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !23542, !noalias !23543, !noundef !12
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !23544
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !23552, !alias.scope !23553, !noalias !23543
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !23536
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !23539
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !23542, !noalias !23543, !noundef !12
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !23544
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !23552, !alias.scope !23553, !noalias !23543
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !23536
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !23539
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !23542, !noalias !23543, !noundef !12
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !23544
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !23552, !alias.scope !23553, !noalias !23543
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !23527 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !23536
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !23539
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !23542, !noalias !23543, !noundef !12
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !23544
  store i64 %i.db, ptr %i.da, align 8, !dbg !23552, !alias.scope !23553, !noalias !23543
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !23513
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !23523, !llvm.loop !23560

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23562
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !23562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !23563
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !23564, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23565
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !23566, !prof !239

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !23577
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !23578
  %i.de = load i64, ptr %i.o, align 8, !dbg !23584, !alias.scope !23586, !noundef !12 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !23589
  call void @llvm.assume(i1 %i.df), !dbg !23590
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !23591
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !23591

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !23592, !alias.scope !23586, !nonnull !12, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !23597
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !23599
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !23601, !alias.scope !23586
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !23602

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !23601
  %i.dj = add i64 %i.di, %i.dc, !dbg !23601
  store i64 %i.dj, ptr %i.o, align 8, !dbg !23601, !alias.scope !23586
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !23603
  %i.dk = load i64, ptr %i.o, align 8, !dbg !23610, !alias.scope !23612, !noundef !12 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !23615
  call void @llvm.assume(i1 %i.dl), !dbg !23616
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !23617, !alias.scope !23612, !nonnull !12, !noundef !12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !23622
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !23624
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !23626, !alias.scope !23612
  %i.do = add i64 %.pre.i79, %3, !dbg !23626      ; 2 uses
  store i64 %i.do, ptr %i.o, align 8, !dbg !23626, !alias.scope !23612
  br label %.lr.ph, !dbg !23627

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw i64 %.sroa.027.0132, 1, !dbg !23630 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !23627
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !23627

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23641
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !23429
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !23429

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !23642
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !23645 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !23646 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !23647
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !23647, !prof !1798

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !23656
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !23657
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !23657, !noundef !12 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !23658
  %i.ea = zext i8 %i.dy to i64, !dbg !23663       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !23665
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !23665

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !23666
  call void @llvm.assume(i1 %i.eb), !dbg !23668
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !23669
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !23670
  %i.ee = lshr i64 %i.ed, 3, !dbg !23670
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !23672   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !23673, !noalias !23674
  %i.eg = load i64, ptr %i.o, align 8, !dbg !23677, !alias.scope !23681, !noalias !23674, !noundef !12 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !23683
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !23683, !prof !1188

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !23686, !alias.scope !23681, !noalias !23674, !nonnull !12, !noundef !12
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !23691
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !23692
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !23694
  %i.el = load i64, ptr %i.o, align 8, !dbg !23695, !alias.scope !23681, !noalias !23674, !noundef !12 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !23697
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !23697

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !23698, !noalias !23674
  unreachable, !dbg !23698

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.o, align 8, !dbg !23699, !alias.scope !23681, !noalias !23674
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !23700

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !23701
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !23703

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !23471
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !23470       ; 2 uses
  %.val.i.i.i = load i64, ptr %i.bk, align 8, !dbg !23704, !noalias !23707, !noundef !12 ; 3 uses
  %i.ep = sub i64 %.val.i.i.i, %.sroa.0.2125, !dbg !23708 ; 5 uses
  %i.eq = call i64 @llvm.smax.i64(i64 %i.ep, i64 %.sroa.012.0124), !dbg !23711
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.ep, i64 %i.eq, !dbg !23470 ; 2 uses
  %i.er = call i64 @llvm.smin.i64(i64 %i.ep, i64 %.sroa.084.0123), !dbg !23713
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.ep, i64 %i.er, !dbg !23470 ; 3 uses
  %i.es = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !23715
  %i.et = sub i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !23718
  %i.eu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.et, i1 false), !dbg !23721
  %i.ev = trunc nuw nsw i64 %i.eu to i8, !dbg !23721
  %i.ew = sub nuw nsw i8 64, %i.ev, !dbg !23724
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !23471
  store i8 %i.ew, ptr %i.ex, align 1, !dbg !23471
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !23725
  store i64 %i.ep, ptr %i.ey, align 8, !dbg !23725
  %i.ez = icmp eq i64 %i.bl, 0, !dbg !23726
  br i1 %i.ez, label %.split.us, label %.preheader.split, !dbg !23726
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #5 !dbg !23727 {
bb.a:
  %.not.i = icmp samesign ugt i64 %4, %1, !dbg !23728
  br i1 %.not.i, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !23728, !prof !1188

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #43, !dbg !23733, !noalias !23734
  unreachable, !dbg !23733

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %.not.i7 = icmp samesign ugt i64 %4, %3, !dbg !23738
  br i1 %.not.i7, label %bb.c, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.split, !dbg !23738, !prof !1188

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.split: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  %.not = icmp eq i64 %4, 0, !dbg !23742
  br i1 %.not, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader, !dbg !23742

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.split
  %i.a = getelementptr [16 x i8], ptr %2, i64 %4  ; 3 uses
  %xtraiter = and i64 %4, 1, !dbg !23742
  %i.b = icmp eq i64 %4, 1, !dbg !23742
  br i1 %i.b, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new, !dbg !23742

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader
  %unroll_iter = and i64 %4, 9223372036854775806, !dbg !23742
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11, !dbg !23742

bb.c:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #43, !dbg !23745, !noalias !23746
  unreachable, !dbg !23745

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !23742
  br i1 %lcmp.mod.not, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.epil.preheader, !dbg !23742

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.epil.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader
  %.sroa.0.016.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader ], [ %i.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod18 = trunc i64 %4 to i1, !dbg !23742
  tail call void @llvm.assume(i1 %lcmp.mod18), !dbg !23742
  %i.c = xor i64 %.sroa.0.016.epil.init, -1, !dbg !23750
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.epil.init, !dbg !23751 ; 2 uses
  %i.e = getelementptr [16 x i8], ptr %i.a, i64 %i.c, !dbg !23752 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !dbg !23753
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !23753
  store <2 x ptr> %i.f, ptr %i.e, align 8, !dbg !23753
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge, !dbg !23756

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.epil.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.split
  ret void, !dbg !23756

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new
  %.sroa.0.016 = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new ], [ %i.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11 ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new ], [ %niter.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11 ]
  %i.g = xor i64 %.sroa.0.016, -1, !dbg !23750
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016, !dbg !23751 ; 2 uses
  %i.i = getelementptr [16 x i8], ptr %i.a, i64 %i.g, !dbg !23752 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !dbg !23753
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !dbg !23753
  store <2 x ptr> %i.j, ptr %i.i, align 8, !dbg !23753
  %i.k = xor i64 %.sroa.0.016, -2, !dbg !23750
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016, !dbg !23751
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !23751 ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %i.a, i64 %i.k, !dbg !23752 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.m, align 8, !dbg !23753
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !dbg !23753
  store <2 x ptr> %i.o, ptr %i.n, align 8, !dbg !23753
  %i.p = add nuw nsw i64 %.sroa.0.016, 2, !dbg !23757 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !23742 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !23742
  br i1 %niter.ncmp.1, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11, !dbg !23742
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1J_NtCs1gC9x3uey1Y_21polars_parquet_format14parquet_formatNtB7_10PageHeaderNtNtNtB9_6thrift8protocol10ReadThrift21read_from_in_protocolINtNtB1j_7compact21TCompactInputProtocolQINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([360 x i8]) align 8 captures(none) dereferenceable(360) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23758 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5.i293.sroa.6 = alloca [20 x i8], align 4 ; 5 uses
  %.sroa.6105.i = alloca [88 x i8], align 8       ; 5 uses
  %i.j = alloca [136 x i8], align 16              ; 9 uses
  %.sroa.695.i.sroa.8 = alloca [20 x i8], align 4 ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 10 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.68.i294.sroa.7 = alloca [20 x i8], align 4 ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 22 uses
  %i.t = alloca [136 x i8], align 16              ; 15 uses
  %i.u = alloca [8 x i8], align 4                 ; 7 uses
  %i.v = alloca [8 x i8], align 4                 ; 7 uses
  %i.w = alloca [8 x i8], align 4                 ; 7 uses
  %i.x = alloca [8 x i8], align 4                 ; 7 uses
  %i.y = alloca [8 x i8], align 4                 ; 7 uses
  %i.z = alloca [8 x i8], align 4                 ; 7 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.6.i295.sroa.7 = alloca [20 x i8], align 4 ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [40 x i8], align 8               ; 11 uses
  %i.ad = alloca [40 x i8], align 8               ; 10 uses
  %i.ae = alloca [40 x i8], align 8               ; 10 uses
  %i.af = alloca [40 x i8], align 8               ; 10 uses
  %i.ag = alloca [40 x i8], align 8               ; 10 uses
end_hunk_17
