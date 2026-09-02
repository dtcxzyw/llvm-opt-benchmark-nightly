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
  %i.bu = add nsw i64 %.sroa.7.0120, -1, !dbg !13988 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.ap, !dbg !13989
  br i1 %i.bv, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i, label %bb.p, !dbg !13981

bb.p:                                             ; preds = %.preheader.split
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16, !dbg !13990 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.bt, align 4, !dbg !13991, !noalias !13847, !noundef !1032
  %i.bx = zext i32 %.val.i.i.i.i to i64, !dbg !13992
  %i.by = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.bx, 1, !dbg !13993
  %i.bz = add i64 %i.br, -1, !dbg !13994          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !13995

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i: ; preds = %bb.p, %.preheader.split
  %.val64163 = phi i64 [ %i.bz, %bb.p ], [ %.val64159, %.preheader.split ] ; 4 uses
  %i.ca = phi i64 [ %i.bz, %bb.p ], [ %i.br, %.preheader.split ]
  %i.cb = phi ptr [ %i.bw, %bb.p ], [ %i.bs, %.preheader.split ] ; 2 uses
  %i.cc = phi ptr [ %i.bw, %bb.p ], [ %i.bt, %.preheader.split ]
  %i.cd = phi { i64, i64 } [ %i.by, %bb.p ], [ { i64 0, i64 undef }, %.preheader.split ] ; 2 uses
  %i.ce = extractvalue { i64, i64 } %i.cd, 0, !dbg !13996
  %i.cf = trunc nuw i64 %i.ce to i1, !dbg !13997
  br i1 %i.cf, label %bb.q, label %.split.us, !dbg !13997

bb.q:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i
  %i.cg = udiv i64 %.sroa.4.0121, %.zext, !dbg !13998 ; 3 uses
  %i.ch = urem i64 %.sroa.4.0121, %.zext, !dbg !13999
  %i.ci = icmp samesign ult i64 %i.cg, 4, !dbg !14000
  br i1 %i.ci, label %bb.ac, label %bb.ab, !dbg !14000

.split.us:                                        ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i, %bb.ac
  %.us-phi.ph = phi i64 [ %.sroa.087.0122, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i ], [ %.sroa.0.0.i85, %bb.ac ] ; 7 uses
  %.us-phi125.ph = phi i64 [ %.sroa.0.2124, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i ], [ %i.ff, %bb.ac ]
  %i.cj = sub i64 %.val64161, %.val64163, !dbg !14001
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 256), !dbg !14002 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14003
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !14004
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bk), !dbg !14005
  call void @llvm.experimental.noalias.scope.decl(metadata !13854), !dbg !14006
  %.val.i75 = load i64, ptr %i.bl, align 8, !dbg !14007, !alias.scope !13854, !noalias !13857, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bm, align 8, !dbg !14007, !alias.scope !13854, !noalias !13857, !noundef !1032 ; 4 uses
  %i.cl = sub i64 %.val8.i, %.val.i75, !dbg !14008 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !14009
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !14010

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i77 = load ptr, ptr %i.c, align 8, !alias.scope !13859, !noalias !13857, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !13859, !noalias !13857, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.cl, 4, !dbg !14010
  %.val1.i.i222 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !14010
  %.val.i.i77223 = ptrtoaddr ptr %.val.i.i77 to i64
  %i.cm = sub i64 %.val.i.i77223, %.val1.i.i222, !dbg !14010
  %diff.check = icmp ugt i64 %i.cm, -32, !dbg !14010
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !14010
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !14010

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.cl, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !14011

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !14011 ; 2 uses
  %i.cn = add i64 %index, %.val.i75, !dbg !14012  ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.cn, !dbg !14013 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cn, !dbg !14014 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !14015
  %wide.load = load <2 x i64>, ptr %i.co, align 8, !dbg !14015, !noalias !13860
  %wide.load224 = load <2 x i64>, ptr %i.cq, align 8, !dbg !14015, !noalias !13860
  %i.cr = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !14016
  %i.cs = sub <2 x i64> %wide.load224, %broadcast.splat, !dbg !14016
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16, !dbg !14017
  store <2 x i64> %i.cr, ptr %i.cp, align 8, !dbg !14017, !alias.scope !13861, !noalias !13860
  store <2 x i64> %i.cs, ptr %i.ct, align 8, !dbg !14017, !alias.scope !13861, !noalias !13860
  %index.next = add nuw i64 %index, 4, !dbg !14011 ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec, !dbg !14010
  br i1 %i.cu, label %middle.block, label %vector.body, !dbg !14010, !llvm.loop !13726

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec, !dbg !14010
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !14010

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cv = sub i64 %.val8.i, %.val.i75, !dbg !14010
  %xtraiter = and i64 %i.cv, 3, !dbg !14010       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !14010
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !14010

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.cw, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !14011 ; 2 uses
  %i.cx = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !14012 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.cx, !dbg !14013
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cx, !dbg !14014
  %.val10.i.prol = load i64, ptr %i.cy, align 8, !dbg !14015, !noalias !13860, !noundef !1032
  %i.da = sub i64 %.val10.i.prol, %.us-phi.ph, !dbg !14016
  store i64 %i.da, ptr %i.cz, align 8, !dbg !14017, !alias.scope !13861, !noalias !13860
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !14010 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !14010
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !14010, !llvm.loop !13727

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.cw, %scalar.ph.prol ]
  %i.db = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !14010
  %i.dc = add i64 %i.db, %.val.i75, !dbg !14010
  %i.dd = icmp ugt i64 %i.dc, -4, !dbg !14010
  br i1 %i.dd, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !14010

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !14010
  %invariant.op256 = add i64 2, %.val.i75, !dbg !14010
  %invariant.op258 = add i64 3, %.val.i75, !dbg !14010
  br label %scalar.ph, !dbg !14010

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.do, %scalar.ph ] ; 5 uses
  %i.de = add i64 %.sroa.0.012.i, %.val.i75, !dbg !14012 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.de, !dbg !14013
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.de, !dbg !14014
  %.val10.i = load i64, ptr %i.df, align 8, !dbg !14015, !noalias !13860, !noundef !1032
  %i.dh = sub i64 %.val10.i, %.us-phi.ph, !dbg !14016
  store i64 %i.dh, ptr %i.dg, align 8, !dbg !14017, !alias.scope !13861, !noalias !13860
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass, !dbg !14013
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !14014
  %.val10.i.1 = load i64, ptr %i.di, align 8, !dbg !14015, !noalias !13860, !noundef !1032
  %i.dk = sub i64 %.val10.i.1, %.us-phi.ph, !dbg !14016
  store i64 %i.dk, ptr %i.dj, align 8, !dbg !14017, !alias.scope !13861, !noalias !13860
  %.reass257 = add i64 %.sroa.0.012.i, %invariant.op256 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass257, !dbg !14013
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass257, !dbg !14014
  %.val10.i.2 = load i64, ptr %i.dl, align 8, !dbg !14015, !noalias !13860, !noundef !1032
  %i.dn = sub i64 %.val10.i.2, %.us-phi.ph, !dbg !14016
  store i64 %i.dn, ptr %i.dm, align 8, !dbg !14017, !alias.scope !13861, !noalias !13860
  %i.do = add nuw i64 %.sroa.0.012.i, 4, !dbg !14011 ; 2 uses
  %.reass259 = add i64 %.sroa.0.012.i, %invariant.op258 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass259, !dbg !14013
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass259, !dbg !14014
  %.val10.i.3 = load i64, ptr %i.dp, align 8, !dbg !14015, !noalias !13860, !noundef !1032
  %i.dr = sub i64 %.val10.i.3, %.us-phi.ph, !dbg !14016
  store i64 %i.dr, ptr %i.dq, align 8, !dbg !14017, !alias.scope !13861, !noalias !13860
  %exitcond.not.i.3 = icmp eq i64 %i.do, %i.cl, !dbg !14009
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !14010, !llvm.loop !13728

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14019
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi.ph), !dbg !14019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !14020
  %i.ds = load i64, ptr %i.bo, align 8, !dbg !14021, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14022
  %i.dt = icmp ult i64 %i.ds, 11
  br i1 %i.dt, label %bb.s, label %bb.r, !dbg !14023, !prof !1072

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !14024
  unreachable

bb.s:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ds), !dbg !14025
  %i.du = load i64, ptr %i.m, align 8, !dbg !14026, !alias.scope !13874, !noundef !1032 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, -1, !dbg !14027
  call void @llvm.assume(i1 %i.dv), !dbg !14028
  %.not.i78 = icmp eq i64 %i.ds, 0, !dbg !14029
  br i1 %.not.i78, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, label %bb.t, !dbg !14029

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %i.bp, align 8, !dbg !14030, !alias.scope !13874, !nonnull !1032, !noundef !1032
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du, !dbg !14031
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull readonly align 1 %i.b, i64 %i.ds, i1 false), !dbg !14032
  %.pre.i79 = load i64, ptr %i.m, align 8, !dbg !14033, !alias.scope !13874
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, !dbg !14034

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80: ; preds = %bb.s, %bb.t
  %i.dy = phi i64 [ %.pre.i79, %bb.t ], [ %i.du, %bb.s ], !dbg !14033
  %i.dz = add i64 %i.dy, %i.ds, !dbg !14033
  store i64 %i.dz, ptr %i.m, align 8, !dbg !14033, !alias.scope !13874
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !14035
  %i.ea = load i64, ptr %i.m, align 8, !dbg !14036, !alias.scope !13878, !noundef !1032 ; 2 uses
  %i.eb = icmp sgt i64 %i.ea, -1, !dbg !14037
  call void @llvm.assume(i1 %i.eb), !dbg !14038
  %i.ec = load ptr, ptr %i.bp, align 8, !dbg !14039, !alias.scope !13878, !nonnull !1032, !noundef !1032
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea, !dbg !14040
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !14041
  %.pre.i82 = load i64, ptr %i.m, align 8, !dbg !14042, !alias.scope !13878
  %i.ee = add i64 %.pre.i82, %2, !dbg !14042      ; 2 uses
  store i64 %i.ee, ptr %i.m, align 8, !dbg !14042, !alias.scope !13878
  br label %.lr.ph, !dbg !14043

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ef = phi i64 [ %i.fd, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ee, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 7 uses
  %.sroa.027.0130 = phi i64 [ %i.eg, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 3 uses
  %.sroa.016.0129 = phi i64 [ %i.ej, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 2 uses
  %i.eg = add nuw nsw i64 %.sroa.027.0130, 1, !dbg !14044 ; 3 uses
  %i.eh = icmp eq i64 %.sroa.016.0129, 0, !dbg !14043
  br i1 %i.eh, label %._crit_edge, label %bb.u, !dbg !14043

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14045
  %i.ei = icmp eq i64 %.val64163, 0, !dbg !13980
  br i1 %i.ei, label %._crit_edge134, label %.preheader, !dbg !13980

bb.u:                                             ; preds = %.lr.ph
  %i.ej = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0129, i64 %.zext), !dbg !14046
  %i.ek = mul nuw nsw i64 %.sroa.027.0130, %.zext, !dbg !14047 ; 2 uses
  %i.el = mul nuw nsw i64 %i.eg, %.zext, !dbg !14048 ; 2 uses
  %i.em = icmp samesign ult i64 %i.el, 257, !dbg !14049
  br i1 %i.em, label %bb.w, label %bb.v, !dbg !14049, !prof !1184

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ek, i64 noundef %i.el, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !14050
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0130, !dbg !14051
  %i.eo = load i8, ptr %i.en, align 1, !dbg !14051, !noundef !1032 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ek, !dbg !14052
  %i.eq = zext i8 %i.eo to i64, !dbg !14053       ; 2 uses
  %.not.i84 = icmp eq i8 %i.eo, 0, !dbg !14054
  br i1 %.not.i84, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.x, !dbg !14054

bb.x:                                             ; preds = %bb.w
  %i.er = icmp sgt i64 %i.ef, -1, !dbg !14055
  call void @llvm.assume(i1 %i.er), !dbg !14056
  %i.es = mul nuw nsw i64 %i.eq, %.zext, !dbg !14057
  %i.et = add nuw nsw i64 %i.es, 7, !dbg !14058
  %i.eu = lshr i64 %i.et, 3, !dbg !14058
  %i.ev = add nuw i64 %i.ef, %i.eu, !dbg !14059   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ev, i8 noundef 0), !dbg !14060, !noalias !13892
  %i.ew = load i64, ptr %i.m, align 8, !dbg !14061, !alias.scope !13893, !noalias !13892, !noundef !1032 ; 4 uses
  %i.ex = icmp ugt i64 %i.ef, %i.ew, !dbg !14062
  br i1 %i.ex, label %bb.z, label %bb.y, !dbg !14062, !prof !1109

bb.y:                                             ; preds = %bb.x
  %i.ey = load ptr, ptr %i.bp, align 8, !dbg !14063, !alias.scope !13893, !noalias !13892, !nonnull !1032, !noundef !1032
  %i.ez = sub nuw i64 %i.ew, %i.ef, !dbg !14064
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ef, !dbg !14065
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ep, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eq, ptr noalias noundef nonnull %i.fa, i64 noundef %i.ez), !dbg !14066
  %i.fb = load i64, ptr %i.m, align 8, !dbg !14067, !alias.scope !13893, !noalias !13892, !noundef !1032 ; 2 uses
  %i.fc = icmp ugt i64 %i.ev, %i.fb, !dbg !14068
  br i1 %i.fc, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.aa, !dbg !14068

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ef, i64 noundef %i.ew, i64 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !14069, !noalias !13892
  unreachable, !dbg !14069

bb.aa:                                            ; preds = %bb.y
  store i64 %i.ev, ptr %i.m, align 8, !dbg !14070, !alias.scope !13893, !noalias !13892
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !14071

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.w, %bb.y, %bb.aa
  %i.fd = phi i64 [ %i.ef, %bb.w ], [ %i.fb, %bb.y ], [ %i.ev, %bb.aa ]
  %exitcond.not = icmp eq i64 %i.eg, %2, !dbg !14072
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !13894

bb.ab:                                            ; preds = %bb.q
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !14000
  unreachable

bb.ac:                                            ; preds = %bb.q
  %i.fe = icmp eq i64 %i.ch, 0, !dbg !13999       ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.cd, 1, !dbg !13996 ; 3 uses
  %i.fg = sub i64 %i.ff, %.sroa.0.2124, !dbg !14073 ; 5 uses
  %i.fh = call i64 @llvm.smax.i64(i64 %i.fg, i64 %.sroa.012.0123), !dbg !14074
  %.sroa.0.0.i86 = select i1 %i.fe, i64 %i.fg, i64 %i.fh, !dbg !13999 ; 2 uses
  %i.fi = call i64 @llvm.smin.i64(i64 %i.fg, i64 %.sroa.087.0122), !dbg !14075
  %.sroa.0.0.i85 = select i1 %i.fe, i64 %i.fg, i64 %i.fi, !dbg !13999 ; 3 uses
  %i.fj = add nuw nsw i64 %.sroa.4.0121, 1, !dbg !14076
  %i.fk = sub i64 %.sroa.0.0.i86, %.sroa.0.0.i85, !dbg !14077
  %i.fl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fk, i1 false), !dbg !14078
  %i.fm = trunc nuw nsw i64 %i.fl to i8, !dbg !14078
  %i.fn = sub nuw nsw i8 64, %i.fm, !dbg !14079
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cg, !dbg !14000
  store i8 %i.fn, ptr %i.fo, align 1, !dbg !14000
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0121, !dbg !14080
  store i64 %i.fg, ptr %i.fp, align 8, !dbg !14080
  %i.fq = icmp eq i64 %i.bu, 0, !dbg !14081
  br i1 %i.fq, label %.split.us, label %.preheader.split, !dbg !14081
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB35_7binview4view4ViewEENCNvNtNtB1w_7binview5basic12encode_delta0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14082 {
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
  ], !dbg !14501

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !14502
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !14503
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !14503
  %.zext = zext nneg i16 %i.j to i64, !dbg !14503 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !14505
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14506 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !14507, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !14508
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !14509
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14510 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !14510, !alias.scope !14391, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !14511
  call void @llvm.assume(i1 %i.o), !dbg !14512
  %.not.i = icmp eq i64 %i.k, 0, !dbg !14513
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !14513

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14514
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14514, !alias.scope !14391, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !14515
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !14516
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !14517, !alias.scope !14391
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !14518

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !14517
  %i.t = add i64 %i.s, %i.k, !dbg !14517
  store i64 %i.t, ptr %i.m, align 8, !dbg !14517, !alias.scope !14391
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14519 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !14520, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !14521
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !14522
  %i.w = load i64, ptr %i.m, align 8, !dbg !14523, !alias.scope !14404, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !14524
  call void @llvm.assume(i1 %i.x), !dbg !14525
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !14526
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !14526

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14527
  %i.z = load ptr, ptr %i.y, align 8, !dbg !14527, !alias.scope !14404, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !14528
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !14529
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !14530, !alias.scope !14404
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !14531

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !14530
  %i.ac = add i64 %i.ab, %i.u, !dbg !14530
  store i64 %i.ac, ptr %i.m, align 8, !dbg !14530, !alias.scope !14404
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14532 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !14532, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14533 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !14534, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !14535
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !14536
  %i.ag = load i64, ptr %i.m, align 8, !dbg !14537, !alias.scope !14417, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !14538
  call void @llvm.assume(i1 %i.ah), !dbg !14539
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !14540
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !14540

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14541
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !14541, !alias.scope !14417, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !14542
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !14543
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !14544, !alias.scope !14417
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !14545

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !14544
  %i.am = add i64 %i.al, %i.ae, !dbg !14544
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB35_7binview4view4ViewEENCNvNtNtB1w_7binview5basic12encode_delta0EEEBa_:bb.a
  %i.fy = icmp ult i64 %.lcssa.sink.i, %.val3.i.i.i.i.i, !dbg !14681
  call void @llvm.assume(i1 %i.fy), !dbg !14682
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null, !dbg !14683
  br i1 %.not.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i, label %bb.ab, !dbg !14684

bb.ab:                                            ; preds = %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %.lcssa.sink.i, !dbg !14685
  %.val.i.i.i.i = load i32, ptr %i.fz, align 4, !dbg !14686, !noalias !14450, !noundef !1032
  %i.ga = zext i32 %.val.i.i.i.i to i64, !dbg !14687
  %i.gb = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ga, 1, !dbg !14688
  %i.gc = add i64 %i.cm, -1, !dbg !14689          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !14690

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
  %i.gi = extractvalue { i64, i64 } %i.gh, 0, !dbg !14691
  %i.gj = trunc nuw i64 %i.gi to i1, !dbg !14692
  br i1 %i.gj, label %bb.ac, label %bb.ad, !dbg !14692

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gk = udiv i64 %.sroa.4.0128, %.zext, !dbg !14693 ; 3 uses
  %i.gl = urem i64 %.sroa.4.0128, %.zext, !dbg !14694
  %i.gm = icmp samesign ult i64 %i.gk, 4, !dbg !14695
  br i1 %i.gm, label %bb.ap, label %bb.ao, !dbg !14695

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.089.0.lcssa = phi i64 [ %.sroa.0.0.i85, %bb.ap ], [ %.sroa.089.0129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !14696 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jj, %bb.ap ], [ %.sroa.0.2131, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2y_7binview4view4ViewEENCNvNtNtBV_7binview5basic12encode_delta0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !14697
  %i.gn = sub i64 %.val64184, %.val64, !dbg !14698
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gn, i64 256), !dbg !14699 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14700
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !14701
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.go, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bx), !dbg !14702
  call void @llvm.experimental.noalias.scope.decl(metadata !14457), !dbg !14703
  %.val.i75 = load i64, ptr %i.by, align 8, !dbg !14704, !alias.scope !14457, !noalias !14460, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bz, align 8, !dbg !14704, !alias.scope !14457, !noalias !14460, !noundef !1032 ; 4 uses
  %i.gp = sub i64 %.val8.i, %.val.i75, !dbg !14705 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !14706
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !14707

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i77 = load ptr, ptr %i.c, align 8, !alias.scope !14462, !noalias !14460, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !14462, !noalias !14460, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gp, 4, !dbg !14707
  %.val1.i.i262 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !14707
  %.val.i.i77263 = ptrtoaddr ptr %.val.i.i77 to i64
  %i.gq = sub i64 %.val.i.i77263, %.val1.i.i262, !dbg !14707
  %diff.check = icmp ugt i64 %i.gq, -32, !dbg !14707
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !14707
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !14707

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gp, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.089.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !14708

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !14708 ; 2 uses
  %i.gr = add i64 %index, %.val.i75, !dbg !14709  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.gr, !dbg !14710 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gr, !dbg !14711 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16, !dbg !14712
  %wide.load = load <2 x i64>, ptr %i.gs, align 8, !dbg !14712, !noalias !14463
  %wide.load264 = load <2 x i64>, ptr %i.gu, align 8, !dbg !14712, !noalias !14463
  %i.gv = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !14713
  %i.gw = sub <2 x i64> %wide.load264, %broadcast.splat, !dbg !14713
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !14714
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !dbg !14714, !alias.scope !14464, !noalias !14463
  store <2 x i64> %i.gw, ptr %i.gx, align 8, !dbg !14714, !alias.scope !14464, !noalias !14463
  %index.next = add nuw i64 %index, 4, !dbg !14708 ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec, !dbg !14707
  br i1 %i.gy, label %middle.block, label %vector.body, !dbg !14707, !llvm.loop !14318

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec, !dbg !14707
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !14707

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.val8.i, %.val.i75, !dbg !14707
  %xtraiter = and i64 %i.gz, 3, !dbg !14707       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !14707
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !14707

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ha, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !14708 ; 2 uses
  %i.hb = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !14709 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.hb, !dbg !14710
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hb, !dbg !14711
  %.val10.i.prol = load i64, ptr %i.hc, align 8, !dbg !14712, !noalias !14463, !noundef !1032
  %i.he = sub i64 %.val10.i.prol, %.sroa.089.0.lcssa, !dbg !14713
  store i64 %i.he, ptr %i.hd, align 8, !dbg !14714, !alias.scope !14464, !noalias !14463
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !14707 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !14707
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !14707, !llvm.loop !14319

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %i.hf = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !14707
  %i.hg = add i64 %i.hf, %.val.i75, !dbg !14707
  %i.hh = icmp ugt i64 %i.hg, -4, !dbg !14707
  br i1 %i.hh, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !14707

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !14707
  %invariant.op307 = add i64 2, %.val.i75, !dbg !14707
  %invariant.op309 = add i64 3, %.val.i75, !dbg !14707
  br label %scalar.ph, !dbg !14707

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hs, %scalar.ph ] ; 5 uses
  %i.hi = add i64 %.sroa.0.012.i, %.val.i75, !dbg !14709 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.hi, !dbg !14710
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hi, !dbg !14711
  %.val10.i = load i64, ptr %i.hj, align 8, !dbg !14712, !noalias !14463, !noundef !1032
  %i.hl = sub i64 %.val10.i, %.sroa.089.0.lcssa, !dbg !14713
  store i64 %i.hl, ptr %i.hk, align 8, !dbg !14714, !alias.scope !14464, !noalias !14463
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass, !dbg !14710
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !14711
  %.val10.i.1 = load i64, ptr %i.hm, align 8, !dbg !14712, !noalias !14463, !noundef !1032
  %i.ho = sub i64 %.val10.i.1, %.sroa.089.0.lcssa, !dbg !14713
  store i64 %i.ho, ptr %i.hn, align 8, !dbg !14714, !alias.scope !14464, !noalias !14463
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass308, !dbg !14710
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !14711
  %.val10.i.2 = load i64, ptr %i.hp, align 8, !dbg !14712, !noalias !14463, !noundef !1032
  %i.hr = sub i64 %.val10.i.2, %.sroa.089.0.lcssa, !dbg !14713
  store i64 %i.hr, ptr %i.hq, align 8, !dbg !14714, !alias.scope !14464, !noalias !14463
  %i.hs = add nuw i64 %.sroa.0.012.i, 4, !dbg !14708 ; 2 uses
  %.reass310 = add i64 %.sroa.0.012.i, %invariant.op309 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass310, !dbg !14710
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass310, !dbg !14711
  %.val10.i.3 = load i64, ptr %i.ht, align 8, !dbg !14712, !noalias !14463, !noundef !1032
  %i.hv = sub i64 %.val10.i.3, %.sroa.089.0.lcssa, !dbg !14713
  store i64 %i.hv, ptr %i.hu, align 8, !dbg !14714, !alias.scope !14464, !noalias !14463
  %exitcond.not.i.3 = icmp eq i64 %i.hs, %i.gp, !dbg !14706
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !14707, !llvm.loop !14320

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14716
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.089.0.lcssa), !dbg !14716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !14717
  %i.hw = load i64, ptr %i.cb, align 8, !dbg !14718, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14719
  %i.hx = icmp ult i64 %i.hw, 11
  br i1 %i.hx, label %bb.af, label %bb.ae, !dbg !14720, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hw, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !14721
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hw), !dbg !14722
  %i.hy = load i64, ptr %i.m, align 8, !dbg !14723, !alias.scope !14477, !noundef !1032 ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1, !dbg !14724
  call void @llvm.assume(i1 %i.hz), !dbg !14725
  %.not.i78 = icmp eq i64 %i.hw, 0, !dbg !14726
  br i1 %.not.i78, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, label %bb.ag, !dbg !14726

bb.ag:                                            ; preds = %bb.af
  %i.ia = load ptr, ptr %i.cc, align 8, !dbg !14727, !alias.scope !14477, !nonnull !1032, !noundef !1032
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy, !dbg !14728
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ib, ptr nonnull readonly align 1 %i.b, i64 %i.hw, i1 false), !dbg !14729
  %.pre.i79 = load i64, ptr %i.m, align 8, !dbg !14730, !alias.scope !14477
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, !dbg !14731

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80: ; preds = %bb.af, %bb.ag
  %i.ic = phi i64 [ %.pre.i79, %bb.ag ], [ %i.hy, %bb.af ], !dbg !14730
  %i.id = add i64 %i.ic, %i.hw, !dbg !14730
  store i64 %i.id, ptr %i.m, align 8, !dbg !14730, !alias.scope !14477
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !14732
  %i.ie = load i64, ptr %i.m, align 8, !dbg !14733, !alias.scope !14481, !noundef !1032 ; 2 uses
  %i.if = icmp sgt i64 %i.ie, -1, !dbg !14734
  call void @llvm.assume(i1 %i.if), !dbg !14735
  %i.ig = load ptr, ptr %i.cc, align 8, !dbg !14736, !alias.scope !14481, !nonnull !1032, !noundef !1032
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie, !dbg !14737
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !14738
  %.pre.i82 = load i64, ptr %i.m, align 8, !dbg !14739, !alias.scope !14481
  %i.ii = add i64 %.pre.i82, %2, !dbg !14739      ; 2 uses
  store i64 %i.ii, ptr %i.m, align 8, !dbg !14739, !alias.scope !14481
  br label %.lr.ph, !dbg !14740

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ij = phi i64 [ %i.jh, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ii, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 7 uses
  %.sroa.027.0136 = phi i64 [ %i.ik, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 3 uses
  %.sroa.016.0135 = phi i64 [ %i.in, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 2 uses
  %i.ik = add nuw nsw i64 %.sroa.027.0136, 1, !dbg !14741 ; 3 uses
  %i.il = icmp eq i64 %.sroa.016.0135, 0, !dbg !14740
  br i1 %i.il, label %._crit_edge, label %bb.ah, !dbg !14740

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14742
  %i.im = icmp eq i64 %.val64, 0, !dbg !14589
  br i1 %i.im, label %._crit_edge140, label %.preheader, !dbg !14589

bb.ah:                                            ; preds = %.lr.ph
  %i.in = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0135, i64 %.zext), !dbg !14743
  %i.io = mul nuw nsw i64 %.sroa.027.0136, %.zext, !dbg !14744 ; 2 uses
  %i.ip = mul nuw nsw i64 %i.ik, %.zext, !dbg !14745 ; 2 uses
  %i.iq = icmp samesign ult i64 %i.ip, 257, !dbg !14746
  br i1 %i.iq, label %bb.aj, label %bb.ai, !dbg !14746, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.io, i64 noundef %i.ip, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !14747
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0136, !dbg !14748
  %i.is = load i8, ptr %i.ir, align 1, !dbg !14748, !noundef !1032 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.io, !dbg !14749
  %i.iu = zext i8 %i.is to i64, !dbg !14750       ; 2 uses
  %.not.i84 = icmp eq i8 %i.is, 0, !dbg !14751
  br i1 %.not.i84, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !14751

bb.ak:                                            ; preds = %bb.aj
  %i.iv = icmp sgt i64 %i.ij, -1, !dbg !14752
  call void @llvm.assume(i1 %i.iv), !dbg !14753
  %i.iw = mul nuw nsw i64 %i.iu, %.zext, !dbg !14754
  %i.ix = add nuw nsw i64 %i.iw, 7, !dbg !14755
  %i.iy = lshr i64 %i.ix, 3, !dbg !14755
  %i.iz = add nuw i64 %i.ij, %i.iy, !dbg !14756   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iz, i8 noundef 0), !dbg !14757, !noalias !14495
  %i.ja = load i64, ptr %i.m, align 8, !dbg !14758, !alias.scope !14496, !noalias !14495, !noundef !1032 ; 4 uses
  %i.jb = icmp ugt i64 %i.ij, %i.ja, !dbg !14759
  br i1 %i.jb, label %bb.am, label %bb.al, !dbg !14759, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jc = load ptr, ptr %i.cc, align 8, !dbg !14760, !alias.scope !14496, !noalias !14495, !nonnull !1032, !noundef !1032
  %i.jd = sub nuw i64 %i.ja, %i.ij, !dbg !14761
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ij, !dbg !14762
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.it, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iu, ptr noalias noundef nonnull %i.je, i64 noundef %i.jd), !dbg !14763
  %i.jf = load i64, ptr %i.m, align 8, !dbg !14764, !alias.scope !14496, !noalias !14495, !noundef !1032 ; 2 uses
  %i.jg = icmp ugt i64 %i.iz, %i.jf, !dbg !14765
  br i1 %i.jg, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !14765

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ij, i64 noundef %i.ja, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !14766, !noalias !14495
  unreachable, !dbg !14766

bb.an:                                            ; preds = %bb.al
  store i64 %i.iz, ptr %i.m, align 8, !dbg !14767, !alias.scope !14496, !noalias !14495
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !14768

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jh = phi i64 [ %i.ij, %bb.aj ], [ %i.jf, %bb.al ], [ %i.iz, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ik, %2, !dbg !14769
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !14497

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !14695
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.ji = icmp eq i64 %i.gl, 0, !dbg !14694       ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.gh, 1, !dbg !14691 ; 3 uses
  %i.jk = sub i64 %i.jj, %.sroa.0.2131, !dbg !14770 ; 5 uses
  %i.jl = call i64 @llvm.smax.i64(i64 %i.jk, i64 %.sroa.012.0130), !dbg !14771
  %.sroa.0.0.i86 = select i1 %i.ji, i64 %i.jk, i64 %i.jl, !dbg !14694 ; 2 uses
  %i.jm = call i64 @llvm.smin.i64(i64 %i.jk, i64 %.sroa.089.0129), !dbg !14772
  %.sroa.0.0.i85 = select i1 %i.ji, i64 %i.jk, i64 %i.jm, !dbg !14694 ; 3 uses
  %i.jn = add nuw nsw i64 %.sroa.4.0128, 1, !dbg !14773
  %i.jo = sub i64 %.sroa.0.0.i86, %.sroa.0.0.i85, !dbg !14774
  %i.jp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 false), !dbg !14775
  %i.jq = trunc nuw nsw i64 %i.jp to i8, !dbg !14775
  %i.jr = sub nuw nsw i8 64, %i.jq, !dbg !14776
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gk, !dbg !14695
  store i8 %i.jr, ptr %i.js, align 1, !dbg !14695
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0128, !dbg !14777
  store i64 %i.jk, ptr %i.jt, align 8, !dbg !14777
  %i.ju = icmp eq i64 %i.cp, 0, !dbg !14590
  br i1 %i.ju, label %bb.ad, label %bb.p, !dbg !14590
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB1w_9primitive5basic12encode_deltaalE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14778 {
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
  ], !dbg !15198

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !15199
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !15200
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !15200
  %.zext = zext nneg i16 %i.j to i64, !dbg !15200 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !15202
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15203 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !15204, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !15205
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !15206
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15207 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !15207, !alias.scope !15089, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !15208
  call void @llvm.assume(i1 %i.o), !dbg !15209
  %.not.i = icmp eq i64 %i.k, 0, !dbg !15210
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !15210

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15211
  %i.q = load ptr, ptr %i.p, align 8, !dbg !15211, !alias.scope !15089, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !15212
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !15213
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !15214, !alias.scope !15089
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !15215

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !15214
  %i.t = add i64 %i.s, %i.k, !dbg !15214
  store i64 %i.t, ptr %i.m, align 8, !dbg !15214, !alias.scope !15089
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15216 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !15217, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !15218
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !15219
  %i.w = load i64, ptr %i.m, align 8, !dbg !15220, !alias.scope !15102, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !15221
  call void @llvm.assume(i1 %i.x), !dbg !15222
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !15223
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !15223

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15224
  %i.z = load ptr, ptr %i.y, align 8, !dbg !15224, !alias.scope !15102, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !15225
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !15226
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !15227, !alias.scope !15102
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !15228

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !15227
  %i.ac = add i64 %i.ab, %i.u, !dbg !15227
  store i64 %i.ac, ptr %i.m, align 8, !dbg !15227, !alias.scope !15102
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15229 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !15229, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15230 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !15231, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !15232
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !15233
  %i.ag = load i64, ptr %i.m, align 8, !dbg !15234, !alias.scope !15115, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !15235
  call void @llvm.assume(i1 %i.ah), !dbg !15236
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !15237
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !15237

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15238
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !15238, !alias.scope !15115, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !15239
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !15240
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !15241, !alias.scope !15115
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !15242

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !15241
  %i.am = add i64 %i.al, %i.ae, !dbg !15241
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB1w_9primitive5basic12encode_deltaalE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !15373 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !15373          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !15373, !alias.scope !15136, !noalias !15137
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !15374
  call void @llvm.assume(i1 %i.fz), !dbg !15375
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.lcssa.sink.i, !dbg !15376
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !15377, !alias.scope !15146, !noalias !15147, !noundef !1032
  %i.gc = sext i8 %i.gb to i64, !dbg !15378
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !15379
  %i.ge = add i64 %i.cn, -1, !dbg !15380          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !15381

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
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !15382
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !15383
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !15383

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !15384 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !15385
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !15386
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !15386

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !15387 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtBV_9primitive5basic12encode_deltaalE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !15388
  %i.gp = sub i64 %.val64182, %.val64, !dbg !15389
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !15390 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15391
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !15392
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !15393
  call void @llvm.experimental.noalias.scope.decl(metadata !15154), !dbg !15394
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !15395, !alias.scope !15154, !noalias !15157, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !15395, !alias.scope !15154, !noalias !15157, !noundef !1032 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !15396 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !15397
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !15398

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15159, !noalias !15157, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !15159, !noalias !15157, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !15398
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !15398
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !15398
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !15398
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !15398
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !15398

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !15399

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !15399 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !15400  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !15401 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !15402 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !15403
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !15403, !noalias !15160
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !15403, !noalias !15160
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !15404
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !15404
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !15405
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !15405, !alias.scope !15161, !noalias !15160
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !15405, !alias.scope !15161, !noalias !15160
  %index.next = add nuw i64 %index, 4, !dbg !15399 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !15398
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !15398, !llvm.loop !15016

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !15398
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !15398

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !15398
  %xtraiter = and i64 %i.hb, 3, !dbg !15398       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !15398
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !15398

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !15399 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !15400 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !15401
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !15402
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !15403, !noalias !15160, !noundef !1032
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !15404
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !15405, !alias.scope !15161, !noalias !15160
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !15398 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !15398
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !15398, !llvm.loop !15017

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !15398
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !15398
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !15398
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !15398

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !15398
  %invariant.op305 = add i64 2, %.val.i75, !dbg !15398
  %invariant.op307 = add i64 3, %.val.i75, !dbg !15398
  br label %scalar.ph, !dbg !15398

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !15400 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !15401
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !15402
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !15403, !noalias !15160, !noundef !1032
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !15404
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !15405, !alias.scope !15161, !noalias !15160
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !15401
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !15402
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !15403, !noalias !15160, !noundef !1032
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !15404
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !15405, !alias.scope !15161, !noalias !15160
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !15401
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !15402
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !15403, !noalias !15160, !noundef !1032
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !15404
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !15405, !alias.scope !15161, !noalias !15160
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !15399 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !15401
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !15402
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !15403, !noalias !15160, !noundef !1032
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !15404
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !15405, !alias.scope !15161, !noalias !15160
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !15397
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !15398, !llvm.loop !15018

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15407
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !15407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !15408
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !15409, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15410
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !15411, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !15412
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !15413
  %i.ia = load i64, ptr %i.m, align 8, !dbg !15414, !alias.scope !15174, !noundef !1032 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !15415
  call void @llvm.assume(i1 %i.ib), !dbg !15416
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !15417
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !15417

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !15418, !alias.scope !15174, !nonnull !1032, !noundef !1032
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !15419
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !15420
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !15421, !alias.scope !15174
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !15422

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !15421
  %i.if = add i64 %i.ie, %i.hy, !dbg !15421
  store i64 %i.if, ptr %i.m, align 8, !dbg !15421, !alias.scope !15174
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !15423
  %i.ig = load i64, ptr %i.m, align 8, !dbg !15424, !alias.scope !15178, !noundef !1032 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !15425
  call void @llvm.assume(i1 %i.ih), !dbg !15426
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !15427, !alias.scope !15178, !nonnull !1032, !noundef !1032
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !15428
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !15429
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !15430, !alias.scope !15178
  %i.ik = add i64 %.pre.i81, %2, !dbg !15430      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !15430, !alias.scope !15178
  br label %.lr.ph, !dbg !15431

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !15432 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !15431
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !15431

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15433
  %i.io = icmp eq i64 %.val64, 0, !dbg !15283
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !15283

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !15434
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !15435 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !15436 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !15437
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !15437, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !15438
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !15439
  %i.iu = load i8, ptr %i.it, align 1, !dbg !15439, !noundef !1032 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !15440
  %i.iw = zext i8 %i.iu to i64, !dbg !15441       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !15442
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !15442

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !15443
  call void @llvm.assume(i1 %i.ix), !dbg !15444
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !15445
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !15446
  %i.ja = lshr i64 %i.iz, 3, !dbg !15446
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !15447   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !15448, !noalias !15192
  %i.jc = load i64, ptr %i.m, align 8, !dbg !15449, !alias.scope !15193, !noalias !15192, !noundef !1032 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !15450
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !15450, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !15451, !alias.scope !15193, !noalias !15192, !nonnull !1032, !noundef !1032
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !15452
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !15453
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !15454
  %i.jh = load i64, ptr %i.m, align 8, !dbg !15455, !alias.scope !15193, !noalias !15192, !noundef !1032 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !15456
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !15456

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !15457, !noalias !15192
  unreachable, !dbg !15457

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !15458, !alias.scope !15193, !noalias !15192
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !15459

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !15460
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !15194

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !15386
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !15385       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !15382 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !15461 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !15462
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !15385 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !15463
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !15385 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !15464
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !15465
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !15466
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !15466
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !15467
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !15386
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !15386
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !15468
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !15468
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !15284
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !15284
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB1w_9primitive5basic12encode_deltahlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15469 {
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
  ], !dbg !15889

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !15890
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !15891
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !15891
  %.zext = zext nneg i16 %i.j to i64, !dbg !15891 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !15893
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15894 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !15895, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !15896
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !15897
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15898 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !15898, !alias.scope !15780, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !15899
  call void @llvm.assume(i1 %i.o), !dbg !15900
  %.not.i = icmp eq i64 %i.k, 0, !dbg !15901
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !15901

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15902
  %i.q = load ptr, ptr %i.p, align 8, !dbg !15902, !alias.scope !15780, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !15903
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !15904
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !15905, !alias.scope !15780
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !15906

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !15905
  %i.t = add i64 %i.s, %i.k, !dbg !15905
  store i64 %i.t, ptr %i.m, align 8, !dbg !15905, !alias.scope !15780
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15907 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !15908, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !15909
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !15910
  %i.w = load i64, ptr %i.m, align 8, !dbg !15911, !alias.scope !15793, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !15912
  call void @llvm.assume(i1 %i.x), !dbg !15913
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !15914
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !15914

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15915
  %i.z = load ptr, ptr %i.y, align 8, !dbg !15915, !alias.scope !15793, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !15916
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !15917
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !15918, !alias.scope !15793
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !15919

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !15918
  %i.ac = add i64 %i.ab, %i.u, !dbg !15918
  store i64 %i.ac, ptr %i.m, align 8, !dbg !15918, !alias.scope !15793
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15920 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !15920, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15921 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !15922, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !15923
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !15924
  %i.ag = load i64, ptr %i.m, align 8, !dbg !15925, !alias.scope !15806, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !15926
  call void @llvm.assume(i1 %i.ah), !dbg !15927
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !15928
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !15928

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15929
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !15929, !alias.scope !15806, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !15930
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !15931
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !15932, !alias.scope !15806
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !15933

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !15932
  %i.am = add i64 %i.al, %i.ae, !dbg !15932
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB1w_9primitive5basic12encode_deltahlE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !16064 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !16064          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !16064, !alias.scope !15827, !noalias !15828
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !16065
  call void @llvm.assume(i1 %i.fz), !dbg !16066
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.lcssa.sink.i, !dbg !16067
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !16068, !alias.scope !15837, !noalias !15838, !noundef !1032
  %i.gc = zext i8 %i.gb to i64, !dbg !16069
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !16070
  %i.ge = add i64 %i.cn, -1, !dbg !16071          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !16072

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
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !16073
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !16074
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !16074

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !16075 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !16076
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !16077
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !16077

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !16078 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtBV_9primitive5basic12encode_deltahlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !16079
  %i.gp = sub i64 %.val64182, %.val64, !dbg !16080
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !16081 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16082
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !16083
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !16084
  call void @llvm.experimental.noalias.scope.decl(metadata !15845), !dbg !16085
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !16086, !alias.scope !15845, !noalias !15848, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !16086, !alias.scope !15845, !noalias !15848, !noundef !1032 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !16087 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !16088
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !16089

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15850, !noalias !15848, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !15850, !noalias !15848, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !16089
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !16089
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !16089
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !16089
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !16089
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !16089

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16090

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16090 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !16091  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !16092 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !16093 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !16094
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !16094, !noalias !15851
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !16094, !noalias !15851
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !16095
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !16095
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !16096
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !16096, !alias.scope !15852, !noalias !15851
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !16096, !alias.scope !15852, !noalias !15851
  %index.next = add nuw i64 %index, 4, !dbg !16090 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !16089
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !16089, !llvm.loop !15707

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !16089
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !16089

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !16089
  %xtraiter = and i64 %i.hb, 3, !dbg !16089       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !16089
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !16089

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !16090 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !16091 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !16092
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !16093
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !16094, !noalias !15851, !noundef !1032
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !16095
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !16096, !alias.scope !15852, !noalias !15851
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !16089 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !16089
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !16089, !llvm.loop !15708

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !16089
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !16089
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !16089
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !16089

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !16089
  %invariant.op305 = add i64 2, %.val.i75, !dbg !16089
  %invariant.op307 = add i64 3, %.val.i75, !dbg !16089
  br label %scalar.ph, !dbg !16089

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !16091 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !16092
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !16093
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !16094, !noalias !15851, !noundef !1032
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !16095
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !16096, !alias.scope !15852, !noalias !15851
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !16092
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !16093
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !16094, !noalias !15851, !noundef !1032
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !16095
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !16096, !alias.scope !15852, !noalias !15851
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !16092
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !16093
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !16094, !noalias !15851, !noundef !1032
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !16095
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !16096, !alias.scope !15852, !noalias !15851
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !16090 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !16092
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !16093
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !16094, !noalias !15851, !noundef !1032
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !16095
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !16096, !alias.scope !15852, !noalias !15851
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !16088
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !16089, !llvm.loop !15709

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16098
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !16098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !16099
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !16100, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16101
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !16102, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !16103
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !16104
  %i.ia = load i64, ptr %i.m, align 8, !dbg !16105, !alias.scope !15865, !noundef !1032 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !16106
  call void @llvm.assume(i1 %i.ib), !dbg !16107
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !16108
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !16108

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !16109, !alias.scope !15865, !nonnull !1032, !noundef !1032
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !16110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !16111
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !16112, !alias.scope !15865
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !16113

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !16112
  %i.if = add i64 %i.ie, %i.hy, !dbg !16112
  store i64 %i.if, ptr %i.m, align 8, !dbg !16112, !alias.scope !15865
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !16114
  %i.ig = load i64, ptr %i.m, align 8, !dbg !16115, !alias.scope !15869, !noundef !1032 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !16116
  call void @llvm.assume(i1 %i.ih), !dbg !16117
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !16118, !alias.scope !15869, !nonnull !1032, !noundef !1032
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !16119
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !16120
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !16121, !alias.scope !15869
  %i.ik = add i64 %.pre.i81, %2, !dbg !16121      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !16121, !alias.scope !15869
  br label %.lr.ph, !dbg !16122

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !16123 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !16122
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !16122

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16124
  %i.io = icmp eq i64 %.val64, 0, !dbg !15974
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !15974

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !16125
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !16126 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !16127 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !16128
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !16128, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !16129
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !16130
  %i.iu = load i8, ptr %i.it, align 1, !dbg !16130, !noundef !1032 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !16131
  %i.iw = zext i8 %i.iu to i64, !dbg !16132       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !16133
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !16133

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !16134
  call void @llvm.assume(i1 %i.ix), !dbg !16135
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !16136
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !16137
  %i.ja = lshr i64 %i.iz, 3, !dbg !16137
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !16138   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !16139, !noalias !15883
  %i.jc = load i64, ptr %i.m, align 8, !dbg !16140, !alias.scope !15884, !noalias !15883, !noundef !1032 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !16141
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !16141, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !16142, !alias.scope !15884, !noalias !15883, !nonnull !1032, !noundef !1032
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !16143
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !16144
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !16145
  %i.jh = load i64, ptr %i.m, align 8, !dbg !16146, !alias.scope !15884, !noalias !15883, !noundef !1032 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !16147
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !16147

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !16148, !noalias !15883
  unreachable, !dbg !16148

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !16149, !alias.scope !15884, !noalias !15883
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !16150

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !16151
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !15885

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !16077
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !16076       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !16073 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !16152 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !16153
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !16076 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !16154
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !16076 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !16155
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !16156
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !16157
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !16157
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !16158
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !16077
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !16077
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !16159
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !16159
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !15975
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !15975
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB1w_9primitive5basic12encode_deltallE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16160 {
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
  ], !dbg !16580

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !16581
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !16582
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !16582
  %.zext = zext nneg i16 %i.j to i64, !dbg !16582 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16583
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !16584
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16585 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !16586, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !16587
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !16588
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16589 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !16589, !alias.scope !16471, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !16590
  call void @llvm.assume(i1 %i.o), !dbg !16591
  %.not.i = icmp eq i64 %i.k, 0, !dbg !16592
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !16592

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16593
  %i.q = load ptr, ptr %i.p, align 8, !dbg !16593, !alias.scope !16471, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !16594
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !16595
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !16596, !alias.scope !16471
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !16597

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !16596
  %i.t = add i64 %i.s, %i.k, !dbg !16596
  store i64 %i.t, ptr %i.m, align 8, !dbg !16596, !alias.scope !16471
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16598 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !16599, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !16600
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !16601
  %i.w = load i64, ptr %i.m, align 8, !dbg !16602, !alias.scope !16484, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !16603
  call void @llvm.assume(i1 %i.x), !dbg !16604
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !16605
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !16605

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16606
  %i.z = load ptr, ptr %i.y, align 8, !dbg !16606, !alias.scope !16484, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !16607
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !16608
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !16609, !alias.scope !16484
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !16610

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !16609
  %i.ac = add i64 %i.ab, %i.u, !dbg !16609
  store i64 %i.ac, ptr %i.m, align 8, !dbg !16609, !alias.scope !16484
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !16611 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !16611, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16612 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !16613, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !16614
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !16615
  %i.ag = load i64, ptr %i.m, align 8, !dbg !16616, !alias.scope !16497, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !16617
  call void @llvm.assume(i1 %i.ah), !dbg !16618
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !16619
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !16619

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16620
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !16620, !alias.scope !16497, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !16621
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !16622
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !16623, !alias.scope !16497
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !16624

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !16623
  %i.am = add i64 %i.al, %i.ae, !dbg !16623
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB1w_9primitive5basic12encode_deltallE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !16755 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !16755          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !16755, !alias.scope !16518, !noalias !16519
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !16756
  call void @llvm.assume(i1 %i.fz), !dbg !16757
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.lcssa.sink.i, !dbg !16758
  %i.gb = load i32, ptr %i.ga, align 4, !dbg !16759, !alias.scope !16528, !noalias !16529, !noundef !1032
  %i.gc = sext i32 %i.gb to i64, !dbg !16760
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !16761
  %i.ge = add i64 %i.cn, -1, !dbg !16762          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !16763

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
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !16764
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !16765
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !16765

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !16766 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !16767
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !16768
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !16768

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !16769 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtBV_9primitive5basic12encode_deltallE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !16770
  %i.gp = sub i64 %.val64182, %.val64, !dbg !16771
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !16772 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16773
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !16774
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !16775
  call void @llvm.experimental.noalias.scope.decl(metadata !16536), !dbg !16776
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !16777, !alias.scope !16536, !noalias !16539, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !16777, !alias.scope !16536, !noalias !16539, !noundef !1032 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !16778 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !16779
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !16780

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !16541, !noalias !16539, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !16541, !noalias !16539, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !16780
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !16780
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !16780
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !16780
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !16780
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !16780

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16781

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16781 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !16782  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !16783 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !16784 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !16785
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !16785, !noalias !16542
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !16785, !noalias !16542
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !16786
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !16786
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !16787
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !16787, !alias.scope !16543, !noalias !16542
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !16787, !alias.scope !16543, !noalias !16542
  %index.next = add nuw i64 %index, 4, !dbg !16781 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !16780
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !16780, !llvm.loop !16398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !16780
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !16780

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !16780
  %xtraiter = and i64 %i.hb, 3, !dbg !16780       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !16780
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !16780

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !16781 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !16782 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !16783
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !16784
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !16785, !noalias !16542, !noundef !1032
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !16786
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !16787, !alias.scope !16543, !noalias !16542
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !16780 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !16780
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !16780, !llvm.loop !16399

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !16780
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !16780
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !16780
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !16780

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !16780
  %invariant.op305 = add i64 2, %.val.i75, !dbg !16780
  %invariant.op307 = add i64 3, %.val.i75, !dbg !16780
  br label %scalar.ph, !dbg !16780

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !16782 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !16783
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !16784
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !16785, !noalias !16542, !noundef !1032
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !16786
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !16787, !alias.scope !16543, !noalias !16542
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !16783
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !16784
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !16785, !noalias !16542, !noundef !1032
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !16786
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !16787, !alias.scope !16543, !noalias !16542
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !16783
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !16784
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !16785, !noalias !16542, !noundef !1032
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !16786
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !16787, !alias.scope !16543, !noalias !16542
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !16781 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !16783
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !16784
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !16785, !noalias !16542, !noundef !1032
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !16786
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !16787, !alias.scope !16543, !noalias !16542
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !16779
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !16780, !llvm.loop !16400

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16789
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !16789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !16790
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !16791, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16792
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !16793, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !16794
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !16795
  %i.ia = load i64, ptr %i.m, align 8, !dbg !16796, !alias.scope !16556, !noundef !1032 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !16797
  call void @llvm.assume(i1 %i.ib), !dbg !16798
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !16799
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !16799

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !16800, !alias.scope !16556, !nonnull !1032, !noundef !1032
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !16801
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !16802
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !16803, !alias.scope !16556
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !16804

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !16803
  %i.if = add i64 %i.ie, %i.hy, !dbg !16803
  store i64 %i.if, ptr %i.m, align 8, !dbg !16803, !alias.scope !16556
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !16805
  %i.ig = load i64, ptr %i.m, align 8, !dbg !16806, !alias.scope !16560, !noundef !1032 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !16807
  call void @llvm.assume(i1 %i.ih), !dbg !16808
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !16809, !alias.scope !16560, !nonnull !1032, !noundef !1032
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !16810
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !16811
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !16812, !alias.scope !16560
  %i.ik = add i64 %.pre.i81, %2, !dbg !16812      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !16812, !alias.scope !16560
  br label %.lr.ph, !dbg !16813

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !16814 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !16813
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !16813

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16815
  %i.io = icmp eq i64 %.val64, 0, !dbg !16665
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !16665

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !16816
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !16817 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !16818 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !16819
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !16819, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !16820
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !16821
  %i.iu = load i8, ptr %i.it, align 1, !dbg !16821, !noundef !1032 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !16822
  %i.iw = zext i8 %i.iu to i64, !dbg !16823       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !16824
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !16824

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !16825
  call void @llvm.assume(i1 %i.ix), !dbg !16826
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !16827
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !16828
  %i.ja = lshr i64 %i.iz, 3, !dbg !16828
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !16829   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !16830, !noalias !16574
  %i.jc = load i64, ptr %i.m, align 8, !dbg !16831, !alias.scope !16575, !noalias !16574, !noundef !1032 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !16832
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !16832, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !16833, !alias.scope !16575, !noalias !16574, !nonnull !1032, !noundef !1032
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !16834
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !16835
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !16836
  %i.jh = load i64, ptr %i.m, align 8, !dbg !16837, !alias.scope !16575, !noalias !16574, !noundef !1032 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !16838
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !16838

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !16839, !noalias !16574
  unreachable, !dbg !16839

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !16840, !alias.scope !16575, !noalias !16574
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !16841

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !16842
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !16576

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !16768
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !16767       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !16764 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !16843 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !16844
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !16767 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !16845
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !16767 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !16846
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !16847
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !16848
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !16848
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !16849
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !16768
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !16768
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !16850
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !16850
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !16666
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !16666
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB1w_9primitive5basic12encode_deltamlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16851 {
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
  ], !dbg !17271

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !17272
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !17273
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !17273
  %.zext = zext nneg i16 %i.j to i64, !dbg !17273 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !17275
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17276 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !17277, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !17278
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !17279
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17280 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !17280, !alias.scope !17162, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !17281
  call void @llvm.assume(i1 %i.o), !dbg !17282
  %.not.i = icmp eq i64 %i.k, 0, !dbg !17283
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !17283

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17284
  %i.q = load ptr, ptr %i.p, align 8, !dbg !17284, !alias.scope !17162, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !17285
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !17286
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !17287, !alias.scope !17162
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17288

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !17287
  %i.t = add i64 %i.s, %i.k, !dbg !17287
  store i64 %i.t, ptr %i.m, align 8, !dbg !17287, !alias.scope !17162
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17289 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !17290, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !17291
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !17292
  %i.w = load i64, ptr %i.m, align 8, !dbg !17293, !alias.scope !17175, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !17294
  call void @llvm.assume(i1 %i.x), !dbg !17295
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !17296
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !17296

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17297
  %i.z = load ptr, ptr %i.y, align 8, !dbg !17297, !alias.scope !17175, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !17298
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !17299
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !17300, !alias.scope !17175
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !17301

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !17300
  %i.ac = add i64 %i.ab, %i.u, !dbg !17300
  store i64 %i.ac, ptr %i.m, align 8, !dbg !17300, !alias.scope !17175
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17302 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !17302, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17303 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !17304, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !17305
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !17306
  %i.ag = load i64, ptr %i.m, align 8, !dbg !17307, !alias.scope !17188, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !17308
  call void @llvm.assume(i1 %i.ah), !dbg !17309
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !17310
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !17310

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17311
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !17311, !alias.scope !17188, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !17312
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !17313
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !17314, !alias.scope !17188
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !17315

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !17314
  %i.am = add i64 %i.al, %i.ae, !dbg !17314
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB1w_9primitive5basic12encode_deltamlE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !17446 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !17446          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !17446, !alias.scope !17209, !noalias !17210
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !17447
  call void @llvm.assume(i1 %i.fz), !dbg !17448
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.lcssa.sink.i, !dbg !17449
  %i.gb = load i32, ptr %i.ga, align 4, !dbg !17450, !alias.scope !17219, !noalias !17220, !noundef !1032
  %i.gc = sext i32 %i.gb to i64, !dbg !17451
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !17452
  %i.ge = add i64 %i.cn, -1, !dbg !17453          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !17454

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
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !17455
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !17456
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !17456

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !17457 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !17458
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !17459
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !17459

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !17460 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtBV_9primitive5basic12encode_deltamlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !17461
  %i.gp = sub i64 %.val64182, %.val64, !dbg !17462
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !17463 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17464
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !17465
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !17466
  call void @llvm.experimental.noalias.scope.decl(metadata !17227), !dbg !17467
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !17468, !alias.scope !17227, !noalias !17230, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !17468, !alias.scope !17227, !noalias !17230, !noundef !1032 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !17469 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !17470
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !17471

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !17232, !noalias !17230, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !17232, !noalias !17230, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !17471
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !17471
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !17471
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !17471
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !17471
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !17471

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !17472

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !17472 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !17473  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !17474 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !17475 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !17476
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !17476, !noalias !17233
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !17476, !noalias !17233
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !17477
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !17477
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !17478
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !17478, !alias.scope !17234, !noalias !17233
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !17478, !alias.scope !17234, !noalias !17233
  %index.next = add nuw i64 %index, 4, !dbg !17472 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !17471
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !17471, !llvm.loop !17089

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !17471
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !17471

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !17471
  %xtraiter = and i64 %i.hb, 3, !dbg !17471       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !17471
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !17471

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !17472 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !17473 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !17474
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !17475
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !17476, !noalias !17233, !noundef !1032
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !17477
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !17478, !alias.scope !17234, !noalias !17233
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !17471 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !17471
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !17471, !llvm.loop !17090

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !17471
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !17471
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !17471
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !17471

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !17471
  %invariant.op305 = add i64 2, %.val.i75, !dbg !17471
  %invariant.op307 = add i64 3, %.val.i75, !dbg !17471
  br label %scalar.ph, !dbg !17471

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !17473 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !17474
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !17475
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !17476, !noalias !17233, !noundef !1032
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !17477
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !17478, !alias.scope !17234, !noalias !17233
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !17474
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !17475
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !17476, !noalias !17233, !noundef !1032
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !17477
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !17478, !alias.scope !17234, !noalias !17233
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !17474
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !17475
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !17476, !noalias !17233, !noundef !1032
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !17477
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !17478, !alias.scope !17234, !noalias !17233
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !17472 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !17474
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !17475
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !17476, !noalias !17233, !noundef !1032
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !17477
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !17478, !alias.scope !17234, !noalias !17233
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !17470
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !17471, !llvm.loop !17091

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17480
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !17480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !17481
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !17482, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17483
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !17484, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !17485
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !17486
  %i.ia = load i64, ptr %i.m, align 8, !dbg !17487, !alias.scope !17247, !noundef !1032 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !17488
  call void @llvm.assume(i1 %i.ib), !dbg !17489
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !17490
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !17490

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !17491, !alias.scope !17247, !nonnull !1032, !noundef !1032
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !17492
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !17493
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !17494, !alias.scope !17247
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !17495

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !17494
  %i.if = add i64 %i.ie, %i.hy, !dbg !17494
  store i64 %i.if, ptr %i.m, align 8, !dbg !17494, !alias.scope !17247
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !17496
  %i.ig = load i64, ptr %i.m, align 8, !dbg !17497, !alias.scope !17251, !noundef !1032 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !17498
  call void @llvm.assume(i1 %i.ih), !dbg !17499
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !17500, !alias.scope !17251, !nonnull !1032, !noundef !1032
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !17501
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !17502
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !17503, !alias.scope !17251
  %i.ik = add i64 %.pre.i81, %2, !dbg !17503      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !17503, !alias.scope !17251
  br label %.lr.ph, !dbg !17504

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !17505 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !17504
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !17504

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17506
  %i.io = icmp eq i64 %.val64, 0, !dbg !17356
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !17356

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !17507
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !17508 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !17509 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !17510
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !17510, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !17511
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !17512
  %i.iu = load i8, ptr %i.it, align 1, !dbg !17512, !noundef !1032 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !17513
  %i.iw = zext i8 %i.iu to i64, !dbg !17514       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !17515
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !17515

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !17516
  call void @llvm.assume(i1 %i.ix), !dbg !17517
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !17518
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !17519
  %i.ja = lshr i64 %i.iz, 3, !dbg !17519
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !17520   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !17521, !noalias !17265
  %i.jc = load i64, ptr %i.m, align 8, !dbg !17522, !alias.scope !17266, !noalias !17265, !noundef !1032 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !17523
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !17523, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !17524, !alias.scope !17266, !noalias !17265, !nonnull !1032, !noundef !1032
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !17525
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !17526
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !17527
  %i.jh = load i64, ptr %i.m, align 8, !dbg !17528, !alias.scope !17266, !noalias !17265, !noundef !1032 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !17529
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !17529

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !17530, !noalias !17265
  unreachable, !dbg !17530

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !17531, !alias.scope !17266, !noalias !17265
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !17532

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !17533
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !17267

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !17459
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !17458       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !17455 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !17534 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !17535
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !17458 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !17536
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !17458 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !17537
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !17538
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !17539
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !17539
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !17540
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !17459
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !17459
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !17541
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !17541
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !17357
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !17357
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB1w_9primitive5basic12encode_deltaslE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17542 {
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
  ], !dbg !17962

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !17963
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !17964
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !17964
  %.zext = zext nneg i16 %i.j to i64, !dbg !17964 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17965
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !17966
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17967 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !17968, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !17969
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !17970
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17971 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !17971, !alias.scope !17853, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !17972
  call void @llvm.assume(i1 %i.o), !dbg !17973
  %.not.i = icmp eq i64 %i.k, 0, !dbg !17974
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !17974

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17975
  %i.q = load ptr, ptr %i.p, align 8, !dbg !17975, !alias.scope !17853, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !17976
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !17977
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !17978, !alias.scope !17853
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17979

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !17978
  %i.t = add i64 %i.s, %i.k, !dbg !17978
  store i64 %i.t, ptr %i.m, align 8, !dbg !17978, !alias.scope !17853
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17980 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !17981, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !17982
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !17983
  %i.w = load i64, ptr %i.m, align 8, !dbg !17984, !alias.scope !17866, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !17985
  call void @llvm.assume(i1 %i.x), !dbg !17986
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !17987
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !17987

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17988
  %i.z = load ptr, ptr %i.y, align 8, !dbg !17988, !alias.scope !17866, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !17989
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !17990
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !17991, !alias.scope !17866
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !17992

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !17991
  %i.ac = add i64 %i.ab, %i.u, !dbg !17991
  store i64 %i.ac, ptr %i.m, align 8, !dbg !17991, !alias.scope !17866
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17993 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !17993, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17994 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !17995, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !17996
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !17997
  %i.ag = load i64, ptr %i.m, align 8, !dbg !17998, !alias.scope !17879, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !17999
  call void @llvm.assume(i1 %i.ah), !dbg !18000
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !18001
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !18001

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18002
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !18002, !alias.scope !17879, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !18003
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !18004
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !18005, !alias.scope !17879
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !18006

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !18005
  %i.am = add i64 %i.al, %i.ae, !dbg !18005
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB1w_9primitive5basic12encode_deltaslE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !18137 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !18137          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !18137, !alias.scope !17900, !noalias !17901
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !18138
  call void @llvm.assume(i1 %i.fz), !dbg !18139
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %.lcssa.sink.i, !dbg !18140
  %i.gb = load i16, ptr %i.ga, align 2, !dbg !18141, !alias.scope !17910, !noalias !17911, !noundef !1032
  %i.gc = sext i16 %i.gb to i64, !dbg !18142
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !18143
  %i.ge = add i64 %i.cn, -1, !dbg !18144          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !18145

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
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !18146
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !18147
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !18147

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !18148 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !18149
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !18150
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !18150

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !18151 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtBV_9primitive5basic12encode_deltaslE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !18152
  %i.gp = sub i64 %.val64182, %.val64, !dbg !18153
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !18154 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18155
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !18156
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !18157
  call void @llvm.experimental.noalias.scope.decl(metadata !17918), !dbg !18158
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !18159, !alias.scope !17918, !noalias !17921, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !18159, !alias.scope !17918, !noalias !17921, !noundef !1032 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !18160 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !18161
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !18162

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !17923, !noalias !17921, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !17923, !noalias !17921, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !18162
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !18162
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !18162
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !18162
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !18162
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !18162

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !18163

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18163 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !18164  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !18165 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !18166 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !18167
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !18167, !noalias !17924
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !18167, !noalias !17924
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !18168
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !18168
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !18169
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !18169, !alias.scope !17925, !noalias !17924
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !18169, !alias.scope !17925, !noalias !17924
  %index.next = add nuw i64 %index, 4, !dbg !18163 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !18162
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !18162, !llvm.loop !17780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !18162
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !18162

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !18162
  %xtraiter = and i64 %i.hb, 3, !dbg !18162       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18162
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18162

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !18163 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !18164 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !18165
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !18166
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !18167, !noalias !17924, !noundef !1032
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !18168
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !18169, !alias.scope !17925, !noalias !17924
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18162 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18162
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18162, !llvm.loop !17781

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !18162
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !18162
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !18162
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !18162

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !18162
  %invariant.op305 = add i64 2, %.val.i75, !dbg !18162
  %invariant.op307 = add i64 3, %.val.i75, !dbg !18162
  br label %scalar.ph, !dbg !18162

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !18164 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !18165
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !18166
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !18167, !noalias !17924, !noundef !1032
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !18168
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !18169, !alias.scope !17925, !noalias !17924
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !18165
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !18166
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !18167, !noalias !17924, !noundef !1032
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !18168
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !18169, !alias.scope !17925, !noalias !17924
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !18165
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !18166
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !18167, !noalias !17924, !noundef !1032
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !18168
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !18169, !alias.scope !17925, !noalias !17924
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !18163 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !18165
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !18166
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !18167, !noalias !17924, !noundef !1032
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !18168
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !18169, !alias.scope !17925, !noalias !17924
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !18161
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !18162, !llvm.loop !17782

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18171
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !18171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !18172
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !18173, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18174
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !18175, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !18176
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !18177
  %i.ia = load i64, ptr %i.m, align 8, !dbg !18178, !alias.scope !17938, !noundef !1032 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !18179
  call void @llvm.assume(i1 %i.ib), !dbg !18180
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !18181
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !18181

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !18182, !alias.scope !17938, !nonnull !1032, !noundef !1032
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !18183
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !18184
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !18185, !alias.scope !17938
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !18186

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !18185
  %i.if = add i64 %i.ie, %i.hy, !dbg !18185
  store i64 %i.if, ptr %i.m, align 8, !dbg !18185, !alias.scope !17938
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !18187
  %i.ig = load i64, ptr %i.m, align 8, !dbg !18188, !alias.scope !17942, !noundef !1032 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !18189
  call void @llvm.assume(i1 %i.ih), !dbg !18190
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !18191, !alias.scope !17942, !nonnull !1032, !noundef !1032
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !18192
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !18193
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !18194, !alias.scope !17942
  %i.ik = add i64 %.pre.i81, %2, !dbg !18194      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !18194, !alias.scope !17942
  br label %.lr.ph, !dbg !18195

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !18196 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !18195
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !18195

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18197
  %i.io = icmp eq i64 %.val64, 0, !dbg !18047
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !18047

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !18198
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !18199 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !18200 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !18201
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !18201, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !18202
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !18203
  %i.iu = load i8, ptr %i.it, align 1, !dbg !18203, !noundef !1032 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !18204
  %i.iw = zext i8 %i.iu to i64, !dbg !18205       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !18206
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !18206

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !18207
  call void @llvm.assume(i1 %i.ix), !dbg !18208
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !18209
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !18210
  %i.ja = lshr i64 %i.iz, 3, !dbg !18210
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !18211   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !18212, !noalias !17956
  %i.jc = load i64, ptr %i.m, align 8, !dbg !18213, !alias.scope !17957, !noalias !17956, !noundef !1032 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !18214
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !18214, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !18215, !alias.scope !17957, !noalias !17956, !nonnull !1032, !noundef !1032
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !18216
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !18217
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !18218
  %i.jh = load i64, ptr %i.m, align 8, !dbg !18219, !alias.scope !17957, !noalias !17956, !noundef !1032 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !18220
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !18220

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !18221, !noalias !17956
  unreachable, !dbg !18221

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !18222, !alias.scope !17957, !noalias !17956
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !18223

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !18224
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !17958

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !18150
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !18149       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !18146 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !18225 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !18226
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !18149 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !18227
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !18149 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !18228
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !18229
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !18230
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !18230
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !18231
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !18150
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !18150
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !18232
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !18232
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !18048
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !18048
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB1w_9primitive5basic12encode_deltatlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18233 {
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
  ], !dbg !18653

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !18654
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !18655
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !18655
  %.zext = zext nneg i16 %i.j to i64, !dbg !18655 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !18657
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18658 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !18659, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !18660
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !18661
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18662 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !18662, !alias.scope !18544, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !18663
  call void @llvm.assume(i1 %i.o), !dbg !18664
  %.not.i = icmp eq i64 %i.k, 0, !dbg !18665
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !18665

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18666
  %i.q = load ptr, ptr %i.p, align 8, !dbg !18666, !alias.scope !18544, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !18667
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !18668
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !18669, !alias.scope !18544
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !18670

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !18669
  %i.t = add i64 %i.s, %i.k, !dbg !18669
  store i64 %i.t, ptr %i.m, align 8, !dbg !18669, !alias.scope !18544
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18671 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !18672, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !18673
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !18674
  %i.w = load i64, ptr %i.m, align 8, !dbg !18675, !alias.scope !18557, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !18676
  call void @llvm.assume(i1 %i.x), !dbg !18677
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !18678
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !18678

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18679
  %i.z = load ptr, ptr %i.y, align 8, !dbg !18679, !alias.scope !18557, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !18680
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !18681
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !18682, !alias.scope !18557
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !18683

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !18682
  %i.ac = add i64 %i.ab, %i.u, !dbg !18682
  store i64 %i.ac, ptr %i.m, align 8, !dbg !18682, !alias.scope !18557
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !18684 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !18684, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18685 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !18686, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !18687
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !18688
  %i.ag = load i64, ptr %i.m, align 8, !dbg !18689, !alias.scope !18570, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !18690
  call void @llvm.assume(i1 %i.ah), !dbg !18691
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !18692
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !18692

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18693
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !18693, !alias.scope !18570, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !18694
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !18695
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !18696, !alias.scope !18570
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !18697

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !18696
  %i.am = add i64 %i.al, %i.ae, !dbg !18696
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB1w_9primitive5basic12encode_deltatlE0EEEBa_:bb.a
  %.lcssa.sink.i = phi i64 [ %i.fp, %bb.aa ], [ %i.cp, %bb.p ] ; 3 uses
  %i.fx = add nuw i64 %.lcssa.sink.i, 1, !dbg !18828 ; 2 uses
  %i.fy = add i64 %i.cm, -1, !dbg !18828          ; 3 uses
  store i64 %i.fy, ptr %i.bx, align 8, !dbg !18828, !alias.scope !18591, !noalias !18592
  %i.fz = icmp ult i64 %.lcssa.sink.i, %i.cl, !dbg !18829
  call void @llvm.assume(i1 %i.fz), !dbg !18830
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %.lcssa.sink.i, !dbg !18831
  %i.gb = load i16, ptr %i.ga, align 2, !dbg !18832, !alias.scope !18601, !noalias !18602, !noundef !1032
  %i.gc = zext i16 %i.gb to i64, !dbg !18833
  %i.gd = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.gc, 1, !dbg !18834
  %i.ge = add i64 %i.cn, -1, !dbg !18835          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !18836

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
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !18837
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !18838
  br i1 %i.gl, label %bb.ac, label %bb.ad, !dbg !18838

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gm = udiv i64 %.sroa.4.0126, %.zext, !dbg !18839 ; 3 uses
  %i.gn = urem i64 %.sroa.4.0126, %.zext, !dbg !18840
  %i.go = icmp samesign ult i64 %i.gm, 4, !dbg !18841
  br i1 %i.go, label %bb.ap, label %bb.ao, !dbg !18841

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !18842 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jl, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtBV_9primitive5basic12encode_deltatlE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !18843
  %i.gp = sub i64 %.val64182, %.val64, !dbg !18844
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 256), !dbg !18845 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18846
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !18847
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bz), !dbg !18848
  call void @llvm.experimental.noalias.scope.decl(metadata !18609), !dbg !18849
  %.val.i75 = load i64, ptr %i.ca, align 8, !dbg !18850, !alias.scope !18609, !noalias !18612, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.cb, align 8, !dbg !18850, !alias.scope !18609, !noalias !18612, !noundef !1032 ; 4 uses
  %i.gr = sub i64 %.val8.i, %.val.i75, !dbg !18851 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !18852
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !18853

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !18614, !noalias !18612, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !18614, !noalias !18612, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 4, !dbg !18853
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !18853
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gs = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !18853
  %diff.check = icmp ugt i64 %i.gs, -32, !dbg !18853
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !18853
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !18853

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !18854

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18854 ; 2 uses
  %i.gt = add i64 %index, %.val.i75, !dbg !18855  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gt, !dbg !18856 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gt, !dbg !18857 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !18858
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !dbg !18858, !noalias !18615
  %wide.load262 = load <2 x i64>, ptr %i.gw, align 8, !dbg !18858, !noalias !18615
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !18859
  %i.gy = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !18859
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !18860
  store <2 x i64> %i.gx, ptr %i.gv, align 8, !dbg !18860, !alias.scope !18616, !noalias !18615
  store <2 x i64> %i.gy, ptr %i.gz, align 8, !dbg !18860, !alias.scope !18616, !noalias !18615
  %index.next = add nuw i64 %index, 4, !dbg !18854 ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec, !dbg !18853
  br i1 %i.ha, label %middle.block, label %vector.body, !dbg !18853, !llvm.loop !18471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec, !dbg !18853
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !18853

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hb = sub i64 %.val8.i, %.val.i75, !dbg !18853
  %xtraiter = and i64 %i.hb, 3, !dbg !18853       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18853
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18853

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !18854 ; 2 uses
  %i.hd = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !18855 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hd, !dbg !18856
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hd, !dbg !18857
  %.val10.i.prol = load i64, ptr %i.he, align 8, !dbg !18858, !noalias !18615, !noundef !1032
  %i.hg = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !18859
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !18860, !alias.scope !18616, !noalias !18615
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18853 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18853
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18853, !llvm.loop !18472

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hh = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !18853
  %i.hi = add i64 %i.hh, %.val.i75, !dbg !18853
  %i.hj = icmp ugt i64 %i.hi, -4, !dbg !18853
  br i1 %i.hj, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !18853

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !18853
  %invariant.op305 = add i64 2, %.val.i75, !dbg !18853
  %invariant.op307 = add i64 3, %.val.i75, !dbg !18853
  br label %scalar.ph, !dbg !18853

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hu, %scalar.ph ] ; 5 uses
  %i.hk = add i64 %.sroa.0.012.i, %.val.i75, !dbg !18855 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hk, !dbg !18856
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hk, !dbg !18857
  %.val10.i = load i64, ptr %i.hl, align 8, !dbg !18858, !noalias !18615, !noundef !1032
  %i.hn = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !18859
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !18860, !alias.scope !18616, !noalias !18615
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !18856
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !18857
  %.val10.i.1 = load i64, ptr %i.ho, align 8, !dbg !18858, !noalias !18615, !noundef !1032
  %i.hq = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !18859
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !18860, !alias.scope !18616, !noalias !18615
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !18856
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !18857
  %.val10.i.2 = load i64, ptr %i.hr, align 8, !dbg !18858, !noalias !18615, !noundef !1032
  %i.ht = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !18859
  store i64 %i.ht, ptr %i.hs, align 8, !dbg !18860, !alias.scope !18616, !noalias !18615
  %i.hu = add nuw i64 %.sroa.0.012.i, 4, !dbg !18854 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !18856
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !18857
  %.val10.i.3 = load i64, ptr %i.hv, align 8, !dbg !18858, !noalias !18615, !noundef !1032
  %i.hx = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !18859
  store i64 %i.hx, ptr %i.hw, align 8, !dbg !18860, !alias.scope !18616, !noalias !18615
  %exitcond.not.i.3 = icmp eq i64 %i.hu, %i.gr, !dbg !18852
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !18853, !llvm.loop !18473

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18862
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !18862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !18863
  %i.hy = load i64, ptr %i.cd, align 8, !dbg !18864, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18865
  %i.hz = icmp ult i64 %i.hy, 11
  br i1 %i.hz, label %bb.af, label %bb.ae, !dbg !18866, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !18867
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hy), !dbg !18868
  %i.ia = load i64, ptr %i.m, align 8, !dbg !18869, !alias.scope !18629, !noundef !1032 ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1, !dbg !18870
  call void @llvm.assume(i1 %i.ib), !dbg !18871
  %.not.i77 = icmp eq i64 %i.hy, 0, !dbg !18872
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !18872

bb.ag:                                            ; preds = %bb.af
  %i.ic = load ptr, ptr %i.ce, align 8, !dbg !18873, !alias.scope !18629, !nonnull !1032, !noundef !1032
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia, !dbg !18874
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %i.b, i64 %i.hy, i1 false), !dbg !18875
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !18876, !alias.scope !18629
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !18877

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ie = phi i64 [ %.pre.i78, %bb.ag ], [ %i.ia, %bb.af ], !dbg !18876
  %i.if = add i64 %i.ie, %i.hy, !dbg !18876
  store i64 %i.if, ptr %i.m, align 8, !dbg !18876, !alias.scope !18629
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !18878
  %i.ig = load i64, ptr %i.m, align 8, !dbg !18879, !alias.scope !18633, !noundef !1032 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, -1, !dbg !18880
  call void @llvm.assume(i1 %i.ih), !dbg !18881
  %i.ii = load ptr, ptr %i.ce, align 8, !dbg !18882, !alias.scope !18633, !nonnull !1032, !noundef !1032
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ig, !dbg !18883
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !18884
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !18885, !alias.scope !18633
  %i.ik = add i64 %.pre.i81, %2, !dbg !18885      ; 2 uses
  store i64 %i.ik, ptr %i.m, align 8, !dbg !18885, !alias.scope !18633
  br label %.lr.ph, !dbg !18886

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.il = phi i64 [ %i.jj, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ik, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.ip, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.im = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !18887 ; 3 uses
  %i.in = icmp eq i64 %.sroa.016.0133, 0, !dbg !18886
  br i1 %i.in, label %._crit_edge, label %bb.ah, !dbg !18886

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18888
  %i.io = icmp eq i64 %.val64, 0, !dbg !18738
  br i1 %i.io, label %._crit_edge138, label %.preheader, !dbg !18738

bb.ah:                                            ; preds = %.lr.ph
  %i.ip = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !18889
  %i.iq = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !18890 ; 2 uses
  %i.ir = mul nuw nsw i64 %i.im, %.zext, !dbg !18891 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 257, !dbg !18892
  br i1 %i.is, label %bb.aj, label %bb.ai, !dbg !18892, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !18893
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !18894
  %i.iu = load i8, ptr %i.it, align 1, !dbg !18894, !noundef !1032 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iq, !dbg !18895
  %i.iw = zext i8 %i.iu to i64, !dbg !18896       ; 2 uses
  %.not.i83 = icmp eq i8 %i.iu, 0, !dbg !18897
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !18897

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp sgt i64 %i.il, -1, !dbg !18898
  call void @llvm.assume(i1 %i.ix), !dbg !18899
  %i.iy = mul nuw nsw i64 %i.iw, %.zext, !dbg !18900
  %i.iz = add nuw nsw i64 %i.iy, 7, !dbg !18901
  %i.ja = lshr i64 %i.iz, 3, !dbg !18901
  %i.jb = add nuw i64 %i.il, %i.ja, !dbg !18902   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jb, i8 noundef 0), !dbg !18903, !noalias !18647
  %i.jc = load i64, ptr %i.m, align 8, !dbg !18904, !alias.scope !18648, !noalias !18647, !noundef !1032 ; 4 uses
  %i.jd = icmp ugt i64 %i.il, %i.jc, !dbg !18905
  br i1 %i.jd, label %bb.am, label %bb.al, !dbg !18905, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr %i.ce, align 8, !dbg !18906, !alias.scope !18648, !noalias !18647, !nonnull !1032, !noundef !1032
  %i.jf = sub nuw i64 %i.jc, %i.il, !dbg !18907
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.il, !dbg !18908
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iw, ptr noalias noundef nonnull %i.jg, i64 noundef %i.jf), !dbg !18909
  %i.jh = load i64, ptr %i.m, align 8, !dbg !18910, !alias.scope !18648, !noalias !18647, !noundef !1032 ; 2 uses
  %i.ji = icmp ugt i64 %i.jb, %i.jh, !dbg !18911
  br i1 %i.ji, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !18911

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %i.jc, i64 noundef %i.jc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !18912, !noalias !18647
  unreachable, !dbg !18912

bb.an:                                            ; preds = %bb.al
  store i64 %i.jb, ptr %i.m, align 8, !dbg !18913, !alias.scope !18648, !noalias !18647
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !18914

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jj = phi i64 [ %i.il, %bb.aj ], [ %i.jh, %bb.al ], [ %i.jb, %bb.an ]
  %exitcond.not = icmp eq i64 %i.im, %2, !dbg !18915
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !18649

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !18841
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jk = icmp eq i64 %i.gn, 0, !dbg !18840       ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.gj, 1, !dbg !18837 ; 3 uses
  %i.jm = sub i64 %i.jl, %.sroa.0.2129, !dbg !18916 ; 5 uses
  %i.jn = call i64 @llvm.smax.i64(i64 %i.jm, i64 %.sroa.012.0128), !dbg !18917
  %.sroa.0.0.i85 = select i1 %i.jk, i64 %i.jm, i64 %i.jn, !dbg !18840 ; 2 uses
  %i.jo = call i64 @llvm.smin.i64(i64 %i.jm, i64 %.sroa.087.0127), !dbg !18918
  %.sroa.0.0.i84 = select i1 %i.jk, i64 %i.jm, i64 %i.jo, !dbg !18840 ; 3 uses
  %i.jp = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !18919
  %i.jq = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !18920
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false), !dbg !18921
  %i.js = trunc nuw nsw i64 %i.jr to i8, !dbg !18921
  %i.jt = sub nuw nsw i8 64, %i.js, !dbg !18922
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gm, !dbg !18841
  store i8 %i.jt, ptr %i.ju, align 1, !dbg !18841
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !18923
  store i64 %i.jm, ptr %i.jv, align 8, !dbg !18923
  %i.jw = icmp eq i64 %i.cq, 0, !dbg !18739
  br i1 %i.jw, label %bb.ad, label %bb.p, !dbg !18739
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB1w_9primitive5basic12encode_deltaxxE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18924 {
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
  ], !dbg !19331

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !19332
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !19333
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !19333
  %.zext = zext nneg i16 %i.j to i64, !dbg !19333 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !19334
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !19335
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19336 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !19337, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !19338
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !19339
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19340 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !19340, !alias.scope !19222, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !19341
  call void @llvm.assume(i1 %i.o), !dbg !19342
  %.not.i = icmp eq i64 %i.k, 0, !dbg !19343
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !19343

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19344
  %i.q = load ptr, ptr %i.p, align 8, !dbg !19344, !alias.scope !19222, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !19345
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !19346
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !19347, !alias.scope !19222
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !19348

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !19347
  %i.t = add i64 %i.s, %i.k, !dbg !19347
  store i64 %i.t, ptr %i.m, align 8, !dbg !19347, !alias.scope !19222
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19349 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !19350, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !19351
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !19352
  %i.w = load i64, ptr %i.m, align 8, !dbg !19353, !alias.scope !19235, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !19354
  call void @llvm.assume(i1 %i.x), !dbg !19355
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !19356
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !19356

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19357
  %i.z = load ptr, ptr %i.y, align 8, !dbg !19357, !alias.scope !19235, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !19358
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !19359
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !19360, !alias.scope !19235
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !19361

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !19360
  %i.ac = add i64 %i.ab, %i.u, !dbg !19360
  store i64 %i.ac, ptr %i.m, align 8, !dbg !19360, !alias.scope !19235
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !19362 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !19362, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19363 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !19364, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !19365
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !19366
  %i.ag = load i64, ptr %i.m, align 8, !dbg !19367, !alias.scope !19248, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !19368
  call void @llvm.assume(i1 %i.ah), !dbg !19369
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !19370
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !19370

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19371
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !19371, !alias.scope !19248, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !19372
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !19373
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !19374, !alias.scope !19248
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !19375

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !19374
  %i.am = add i64 %i.al, %i.ae, !dbg !19374
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB1w_9primitive5basic12encode_deltaxxE0EEEBa_:bb.a
  %i.fv = phi i64 [ %i.fu, %bb.aa ], [ %i.cn, %bb.p ]
  %.lcssa.sink.i = phi i64 [ %i.fo, %bb.aa ], [ %i.co, %bb.p ] ; 3 uses
  %i.fw = add nuw i64 %.lcssa.sink.i, 1, !dbg !19505 ; 2 uses
  %i.fx = add i64 %i.cl, -1, !dbg !19505          ; 3 uses
  store i64 %i.fx, ptr %i.bw, align 8, !dbg !19505, !alias.scope !19269, !noalias !19270
  %i.fy = icmp ult i64 %.lcssa.sink.i, %i.ck, !dbg !19506
  call void @llvm.assume(i1 %i.fy), !dbg !19507
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.lcssa.sink.i, !dbg !19508
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !19509, !alias.scope !19279, !noalias !19280, !noundef !1032
  %i.gb = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ga, 1, !dbg !19510
  %i.gc = add i64 %i.cm, -1, !dbg !19511          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !19512

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
  %i.gi = extractvalue { i64, i64 } %i.gh, 0, !dbg !19513
  %i.gj = trunc nuw i64 %i.gi to i1, !dbg !19514
  br i1 %i.gj, label %bb.ac, label %bb.ad, !dbg !19514

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gk = udiv i64 %.sroa.4.0126, %.zext, !dbg !19515 ; 3 uses
  %i.gl = urem i64 %.sroa.4.0126, %.zext, !dbg !19516
  %i.gm = icmp samesign ult i64 %i.gk, 4, !dbg !19517
  br i1 %i.gm, label %bb.ap, label %bb.ao, !dbg !19517

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !19518 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jj, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtBV_9primitive5basic12encode_deltaxxE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !19519
  %i.gn = sub i64 %.val64182, %.val64, !dbg !19520
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gn, i64 256), !dbg !19521 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19522
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !19523
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.go, ptr noundef nonnull %i.g, ptr noundef nonnull %i.by), !dbg !19524
  call void @llvm.experimental.noalias.scope.decl(metadata !19287), !dbg !19525
  %.val.i75 = load i64, ptr %i.bz, align 8, !dbg !19526, !alias.scope !19287, !noalias !19290, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.ca, align 8, !dbg !19526, !alias.scope !19287, !noalias !19290, !noundef !1032 ; 4 uses
  %i.gp = sub i64 %.val8.i, %.val.i75, !dbg !19527 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !19528
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !19529

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !19292, !noalias !19290, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !19292, !noalias !19290, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gp, 4, !dbg !19529
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !19529
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gq = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !19529
  %diff.check = icmp ugt i64 %i.gq, -32, !dbg !19529
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !19529
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !19529

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gp, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !19530

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !19530 ; 2 uses
  %i.gr = add i64 %index, %.val.i75, !dbg !19531  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gr, !dbg !19532 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gr, !dbg !19533 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16, !dbg !19534
  %wide.load = load <2 x i64>, ptr %i.gs, align 8, !dbg !19534, !noalias !19293
  %wide.load262 = load <2 x i64>, ptr %i.gu, align 8, !dbg !19534, !noalias !19293
  %i.gv = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !19535
  %i.gw = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !19535
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !19536
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !dbg !19536, !alias.scope !19294, !noalias !19293
  store <2 x i64> %i.gw, ptr %i.gx, align 8, !dbg !19536, !alias.scope !19294, !noalias !19293
  %index.next = add nuw i64 %index, 4, !dbg !19530 ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec, !dbg !19529
  br i1 %i.gy, label %middle.block, label %vector.body, !dbg !19529, !llvm.loop !19149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec, !dbg !19529
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !19529

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.val8.i, %.val.i75, !dbg !19529
  %xtraiter = and i64 %i.gz, 3, !dbg !19529       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !19529
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19529

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ha, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !19530 ; 2 uses
  %i.hb = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !19531 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hb, !dbg !19532
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hb, !dbg !19533
  %.val10.i.prol = load i64, ptr %i.hc, align 8, !dbg !19534, !noalias !19293, !noundef !1032
  %i.he = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !19535
  store i64 %i.he, ptr %i.hd, align 8, !dbg !19536, !alias.scope !19294, !noalias !19293
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !19529 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !19529
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19529, !llvm.loop !19150

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %i.hf = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !19529
  %i.hg = add i64 %i.hf, %.val.i75, !dbg !19529
  %i.hh = icmp ugt i64 %i.hg, -4, !dbg !19529
  br i1 %i.hh, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !19529

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !19529
  %invariant.op305 = add i64 2, %.val.i75, !dbg !19529
  %invariant.op307 = add i64 3, %.val.i75, !dbg !19529
  br label %scalar.ph, !dbg !19529

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hs, %scalar.ph ] ; 5 uses
  %i.hi = add i64 %.sroa.0.012.i, %.val.i75, !dbg !19531 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hi, !dbg !19532
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hi, !dbg !19533
  %.val10.i = load i64, ptr %i.hj, align 8, !dbg !19534, !noalias !19293, !noundef !1032
  %i.hl = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !19535
  store i64 %i.hl, ptr %i.hk, align 8, !dbg !19536, !alias.scope !19294, !noalias !19293
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !19532
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !19533
  %.val10.i.1 = load i64, ptr %i.hm, align 8, !dbg !19534, !noalias !19293, !noundef !1032
  %i.ho = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !19535
  store i64 %i.ho, ptr %i.hn, align 8, !dbg !19536, !alias.scope !19294, !noalias !19293
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !19532
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !19533
  %.val10.i.2 = load i64, ptr %i.hp, align 8, !dbg !19534, !noalias !19293, !noundef !1032
  %i.hr = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !19535
  store i64 %i.hr, ptr %i.hq, align 8, !dbg !19536, !alias.scope !19294, !noalias !19293
  %i.hs = add nuw i64 %.sroa.0.012.i, 4, !dbg !19530 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !19532
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !19533
  %.val10.i.3 = load i64, ptr %i.ht, align 8, !dbg !19534, !noalias !19293, !noundef !1032
  %i.hv = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !19535
  store i64 %i.hv, ptr %i.hu, align 8, !dbg !19536, !alias.scope !19294, !noalias !19293
  %exitcond.not.i.3 = icmp eq i64 %i.hs, %i.gp, !dbg !19528
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !19529, !llvm.loop !19151

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19538
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !19538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !19539
  %i.hw = load i64, ptr %i.cc, align 8, !dbg !19540, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19541
  %i.hx = icmp ult i64 %i.hw, 11
  br i1 %i.hx, label %bb.af, label %bb.ae, !dbg !19542, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hw, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !19543
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hw), !dbg !19544
  %i.hy = load i64, ptr %i.m, align 8, !dbg !19545, !alias.scope !19307, !noundef !1032 ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1, !dbg !19546
  call void @llvm.assume(i1 %i.hz), !dbg !19547
  %.not.i77 = icmp eq i64 %i.hw, 0, !dbg !19548
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !19548

bb.ag:                                            ; preds = %bb.af
  %i.ia = load ptr, ptr %i.cd, align 8, !dbg !19549, !alias.scope !19307, !nonnull !1032, !noundef !1032
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy, !dbg !19550
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ib, ptr nonnull readonly align 1 %i.b, i64 %i.hw, i1 false), !dbg !19551
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !19552, !alias.scope !19307
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !19553

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ic = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hy, %bb.af ], !dbg !19552
  %i.id = add i64 %i.ic, %i.hw, !dbg !19552
  store i64 %i.id, ptr %i.m, align 8, !dbg !19552, !alias.scope !19307
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !19554
  %i.ie = load i64, ptr %i.m, align 8, !dbg !19555, !alias.scope !19311, !noundef !1032 ; 2 uses
  %i.if = icmp sgt i64 %i.ie, -1, !dbg !19556
  call void @llvm.assume(i1 %i.if), !dbg !19557
  %i.ig = load ptr, ptr %i.cd, align 8, !dbg !19558, !alias.scope !19311, !nonnull !1032, !noundef !1032
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie, !dbg !19559
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !19560
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !19561, !alias.scope !19311
  %i.ii = add i64 %.pre.i81, %2, !dbg !19561      ; 2 uses
  store i64 %i.ii, ptr %i.m, align 8, !dbg !19561, !alias.scope !19311
  br label %.lr.ph, !dbg !19562

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ij = phi i64 [ %i.jh, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ii, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.ik, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.in, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.ik = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !19563 ; 3 uses
  %i.il = icmp eq i64 %.sroa.016.0133, 0, !dbg !19562
  br i1 %i.il, label %._crit_edge, label %bb.ah, !dbg !19562

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19564
  %i.im = icmp eq i64 %.val64, 0, !dbg !19415
  br i1 %i.im, label %._crit_edge138, label %.preheader, !dbg !19415

bb.ah:                                            ; preds = %.lr.ph
  %i.in = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !19565
  %i.io = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !19566 ; 2 uses
  %i.ip = mul nuw nsw i64 %i.ik, %.zext, !dbg !19567 ; 2 uses
  %i.iq = icmp samesign ult i64 %i.ip, 257, !dbg !19568
  br i1 %i.iq, label %bb.aj, label %bb.ai, !dbg !19568, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.io, i64 noundef %i.ip, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !19569
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !19570
  %i.is = load i8, ptr %i.ir, align 1, !dbg !19570, !noundef !1032 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.io, !dbg !19571
  %i.iu = zext i8 %i.is to i64, !dbg !19572       ; 2 uses
  %.not.i83 = icmp eq i8 %i.is, 0, !dbg !19573
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !19573

bb.ak:                                            ; preds = %bb.aj
  %i.iv = icmp sgt i64 %i.ij, -1, !dbg !19574
  call void @llvm.assume(i1 %i.iv), !dbg !19575
  %i.iw = mul nuw nsw i64 %i.iu, %.zext, !dbg !19576
  %i.ix = add nuw nsw i64 %i.iw, 7, !dbg !19577
  %i.iy = lshr i64 %i.ix, 3, !dbg !19577
  %i.iz = add nuw i64 %i.ij, %i.iy, !dbg !19578   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iz, i8 noundef 0), !dbg !19579, !noalias !19325
  %i.ja = load i64, ptr %i.m, align 8, !dbg !19580, !alias.scope !19326, !noalias !19325, !noundef !1032 ; 4 uses
  %i.jb = icmp ugt i64 %i.ij, %i.ja, !dbg !19581
  br i1 %i.jb, label %bb.am, label %bb.al, !dbg !19581, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jc = load ptr, ptr %i.cd, align 8, !dbg !19582, !alias.scope !19326, !noalias !19325, !nonnull !1032, !noundef !1032
  %i.jd = sub nuw i64 %i.ja, %i.ij, !dbg !19583
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ij, !dbg !19584
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.it, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iu, ptr noalias noundef nonnull %i.je, i64 noundef %i.jd), !dbg !19585
  %i.jf = load i64, ptr %i.m, align 8, !dbg !19586, !alias.scope !19326, !noalias !19325, !noundef !1032 ; 2 uses
  %i.jg = icmp ugt i64 %i.iz, %i.jf, !dbg !19587
  br i1 %i.jg, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !19587

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ij, i64 noundef %i.ja, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !19588, !noalias !19325
  unreachable, !dbg !19588

bb.an:                                            ; preds = %bb.al
  store i64 %i.iz, ptr %i.m, align 8, !dbg !19589, !alias.scope !19326, !noalias !19325
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !19590

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jh = phi i64 [ %i.ij, %bb.aj ], [ %i.jf, %bb.al ], [ %i.iz, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ik, %2, !dbg !19591
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !19327

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !19517
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.ji = icmp eq i64 %i.gl, 0, !dbg !19516       ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.gh, 1, !dbg !19513 ; 3 uses
  %i.jk = sub i64 %i.jj, %.sroa.0.2129, !dbg !19592 ; 5 uses
  %i.jl = call i64 @llvm.smax.i64(i64 %i.jk, i64 %.sroa.012.0128), !dbg !19593
  %.sroa.0.0.i85 = select i1 %i.ji, i64 %i.jk, i64 %i.jl, !dbg !19516 ; 2 uses
  %i.jm = call i64 @llvm.smin.i64(i64 %i.jk, i64 %.sroa.087.0127), !dbg !19594
  %.sroa.0.0.i84 = select i1 %i.ji, i64 %i.jk, i64 %i.jm, !dbg !19516 ; 3 uses
  %i.jn = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !19595
  %i.jo = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !19596
  %i.jp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 false), !dbg !19597
  %i.jq = trunc nuw nsw i64 %i.jp to i8, !dbg !19597
  %i.jr = sub nuw nsw i8 64, %i.jq, !dbg !19598
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gk, !dbg !19517
  store i8 %i.jr, ptr %i.js, align 1, !dbg !19517
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !19599
  store i64 %i.jk, ptr %i.jt, align 8, !dbg !19599
  %i.ju = icmp eq i64 %i.cp, 0, !dbg !19416
  br i1 %i.ju, label %bb.ad, label %bb.p, !dbg !19416
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB1w_9primitive5basic12encode_deltayxE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19600 {
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
  ], !dbg !20007

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !20008
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !20009
  %i.j = udiv i16 256, %.rhs.trunc, !dbg !20009
  %.zext = zext nneg i16 %i.j to i64, !dbg !20009 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !20010
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !20011
  %i.k = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20012 ; 6 uses
  %i.l = icmp ult i64 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !20013, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !20014
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k), !dbg !20015
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20016 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !20016, !alias.scope !19898, !noundef !1032 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !20017
  call void @llvm.assume(i1 %i.o), !dbg !20018
  %.not.i = icmp eq i64 %i.k, 0, !dbg !20019
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !20019

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20020
  %i.q = load ptr, ptr %i.p, align 8, !dbg !20020, !alias.scope !19898, !nonnull !1032, !noundef !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !20021
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !dbg !20022
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !20023, !alias.scope !19898
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !20024

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.n, %bb.d ], !dbg !20023
  %i.t = add i64 %i.s, %i.k, !dbg !20023
  store i64 %i.t, ptr %i.m, align 8, !dbg !20023, !alias.scope !19898
  %i.u = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20025 ; 6 uses
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !20026, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !20027
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !20028
  %i.w = load i64, ptr %i.m, align 8, !dbg !20029, !alias.scope !19911, !noundef !1032 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !20030
  call void @llvm.assume(i1 %i.x), !dbg !20031
  %.not.i66 = icmp eq i64 %i.u, 0, !dbg !20032
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !20032

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20033
  %i.z = load ptr, ptr %i.y, align 8, !dbg !20033, !alias.scope !19911, !nonnull !1032, !noundef !1032
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !20034
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.i, i64 %i.u, i1 false), !dbg !20035
  %.pre.i67 = load i64, ptr %i.m, align 8, !dbg !20036, !alias.scope !19911
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !20037

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ %.pre.i67, %bb.h ], [ %i.w, %bb.g ], !dbg !20036
  %i.ac = add i64 %i.ab, %i.u, !dbg !20036
  store i64 %i.ac, ptr %i.m, align 8, !dbg !20036, !alias.scope !19911
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !20038 ; 4 uses
  %.val62 = load i64, ptr %i.ad, align 8, !dbg !20038, !noundef !1032
  %i.ae = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20039 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 11
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !20040, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !20041
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ae), !dbg !20042
  %i.ag = load i64, ptr %i.m, align 8, !dbg !20043, !alias.scope !19924, !noundef !1032 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !20044
  call void @llvm.assume(i1 %i.ah), !dbg !20045
  %.not.i69 = icmp eq i64 %i.ae, 0, !dbg !20046
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !20046

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20047
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !20047, !alias.scope !19924, !nonnull !1032, !noundef !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !20048
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.i, i64 %i.ae, i1 false), !dbg !20049
  %.pre.i70 = load i64, ptr %i.m, align 8, !dbg !20050, !alias.scope !19924
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !20051

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i70, %bb.k ], [ %i.ag, %bb.j ], !dbg !20050
  %i.am = add i64 %i.al, %i.ae, !dbg !20050
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB1w_9primitive5basic12encode_deltayxE0EEEBa_:bb.a
  %i.fv = phi i64 [ %i.fu, %bb.aa ], [ %i.cn, %bb.p ]
  %.lcssa.sink.i = phi i64 [ %i.fo, %bb.aa ], [ %i.co, %bb.p ] ; 3 uses
  %i.fw = add nuw i64 %.lcssa.sink.i, 1, !dbg !20181 ; 2 uses
  %i.fx = add i64 %i.cl, -1, !dbg !20181          ; 3 uses
  store i64 %i.fx, ptr %i.bw, align 8, !dbg !20181, !alias.scope !19945, !noalias !19946
  %i.fy = icmp ult i64 %.lcssa.sink.i, %i.ck, !dbg !20182
  call void @llvm.assume(i1 %i.fy), !dbg !20183
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.lcssa.sink.i, !dbg !20184
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !20185, !alias.scope !19955, !noalias !19956, !noundef !1032
  %i.gb = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ga, 1, !dbg !20186
  %i.gc = add i64 %i.cm, -1, !dbg !20187          ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i, !dbg !20188

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
  %i.gi = extractvalue { i64, i64 } %i.gh, 0, !dbg !20189
  %i.gj = trunc nuw i64 %i.gi to i1, !dbg !20190
  br i1 %i.gj, label %bb.ac, label %bb.ad, !dbg !20190

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i
  %i.gk = udiv i64 %.sroa.4.0126, %.zext, !dbg !20191 ; 3 uses
  %i.gl = urem i64 %.sroa.4.0126, %.zext, !dbg !20192
  %i.gm = icmp samesign ult i64 %i.gk, 4, !dbg !20193
  br i1 %i.gm, label %bb.ap, label %bb.ao, !dbg !20193

bb.ad:                                            ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i
  %.sroa.087.0.lcssa = phi i64 [ %.sroa.0.0.i84, %bb.ap ], [ %.sroa.087.0127, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !20194 ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %i.jj, %bb.ap ], [ %.sroa.0.2129, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtBV_9primitive5basic12encode_deltayxE0EENtB5_8Iterator4nextBZ_.exit.i ], !dbg !20195
  %i.gn = sub i64 %.val64182, %.val64, !dbg !20196
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.gn, i64 256), !dbg !20197 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20198
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i, !dbg !20199
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.go, ptr noundef nonnull %i.g, ptr noundef nonnull %i.by), !dbg !20200
  call void @llvm.experimental.noalias.scope.decl(metadata !19963), !dbg !20201
  %.val.i75 = load i64, ptr %i.bz, align 8, !dbg !20202, !alias.scope !19963, !noalias !19966, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.ca, align 8, !dbg !20202, !alias.scope !19963, !noalias !19966, !noundef !1032 ; 4 uses
  %i.gp = sub i64 %.val8.i, %.val.i75, !dbg !20203 ; 4 uses
  %.not.i76 = icmp eq i64 %.val8.i, %.val.i75, !dbg !20204
  br i1 %.not.i76, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %.lr.ph.i, !dbg !20205

.lr.ph.i:                                         ; preds = %bb.ad
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !19968, !noalias !19966, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !19968, !noalias !19966, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.gp, 4, !dbg !20205
  %.val1.i.i260 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !20205
  %.val.i.i261 = ptrtoaddr ptr %.val.i.i to i64
  %i.gq = sub i64 %.val.i.i261, %.val1.i.i260, !dbg !20205
  %diff.check = icmp ugt i64 %i.gq, -32, !dbg !20205
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !20205
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !20205

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gp, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.087.0.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !20206

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20206 ; 2 uses
  %i.gr = add i64 %index, %.val.i75, !dbg !20207  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gr, !dbg !20208 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.gr, !dbg !20209 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16, !dbg !20210
  %wide.load = load <2 x i64>, ptr %i.gs, align 8, !dbg !20210, !noalias !19969
  %wide.load262 = load <2 x i64>, ptr %i.gu, align 8, !dbg !20210, !noalias !19969
  %i.gv = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !20211
  %i.gw = sub <2 x i64> %wide.load262, %broadcast.splat, !dbg !20211
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !20212
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !dbg !20212, !alias.scope !19970, !noalias !19969
  store <2 x i64> %i.gw, ptr %i.gx, align 8, !dbg !20212, !alias.scope !19970, !noalias !19969
  %index.next = add nuw i64 %index, 4, !dbg !20206 ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec, !dbg !20205
  br i1 %i.gy, label %middle.block, label %vector.body, !dbg !20205, !llvm.loop !19825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec, !dbg !20205
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !20205

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.val8.i, %.val.i75, !dbg !20205
  %xtraiter = and i64 %i.gz, 3, !dbg !20205       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20205
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20205

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ha, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !20206 ; 2 uses
  %i.hb = add i64 %.sroa.0.012.i.prol, %.val.i75, !dbg !20207 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hb, !dbg !20208
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hb, !dbg !20209
  %.val10.i.prol = load i64, ptr %i.hc, align 8, !dbg !20210, !noalias !19969, !noundef !1032
  %i.he = sub i64 %.val10.i.prol, %.sroa.087.0.lcssa, !dbg !20211
  store i64 %i.he, ptr %i.hd, align 8, !dbg !20212, !alias.scope !19970, !noalias !19969
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !20205 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !20205
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20205, !llvm.loop !19826

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %i.hf = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !20205
  %i.hg = add i64 %i.hf, %.val.i75, !dbg !20205
  %i.hh = icmp ugt i64 %i.hg, -4, !dbg !20205
  br i1 %i.hh, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !20205

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !20205
  %invariant.op305 = add i64 2, %.val.i75, !dbg !20205
  %invariant.op307 = add i64 3, %.val.i75, !dbg !20205
  br label %scalar.ph, !dbg !20205

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hs, %scalar.ph ] ; 5 uses
  %i.hi = add i64 %.sroa.0.012.i, %.val.i75, !dbg !20207 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hi, !dbg !20208
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hi, !dbg !20209
  %.val10.i = load i64, ptr %i.hj, align 8, !dbg !20210, !noalias !19969, !noundef !1032
  %i.hl = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !20211
  store i64 %i.hl, ptr %i.hk, align 8, !dbg !20212, !alias.scope !19970, !noalias !19969
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !20208
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !20209
  %.val10.i.1 = load i64, ptr %i.hm, align 8, !dbg !20210, !noalias !19969, !noundef !1032
  %i.ho = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !20211
  store i64 %i.ho, ptr %i.hn, align 8, !dbg !20212, !alias.scope !19970, !noalias !19969
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !20208
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !20209
  %.val10.i.2 = load i64, ptr %i.hp, align 8, !dbg !20210, !noalias !19969, !noundef !1032
  %i.hr = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !20211
  store i64 %i.hr, ptr %i.hq, align 8, !dbg !20212, !alias.scope !19970, !noalias !19969
  %i.hs = add nuw i64 %.sroa.0.012.i, 4, !dbg !20206 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !20208
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !20209
  %.val10.i.3 = load i64, ptr %i.ht, align 8, !dbg !20210, !noalias !19969, !noundef !1032
  %i.hv = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !20211
  store i64 %i.hv, ptr %i.hu, align 8, !dbg !20212, !alias.scope !19970, !noalias !19969
  %exitcond.not.i.3 = icmp eq i64 %i.hs, %i.gp, !dbg !20204
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !20205, !llvm.loop !19827

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20214
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !20215
  %i.hw = load i64, ptr %i.cc, align 8, !dbg !20216, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20217
  %i.hx = icmp ult i64 %i.hw, 11
  br i1 %i.hx, label %bb.af, label %bb.ae, !dbg !20218, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hw, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !20219
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hw), !dbg !20220
  %i.hy = load i64, ptr %i.m, align 8, !dbg !20221, !alias.scope !19983, !noundef !1032 ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1, !dbg !20222
  call void @llvm.assume(i1 %i.hz), !dbg !20223
  %.not.i77 = icmp eq i64 %i.hw, 0, !dbg !20224
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !20224

bb.ag:                                            ; preds = %bb.af
  %i.ia = load ptr, ptr %i.cd, align 8, !dbg !20225, !alias.scope !19983, !nonnull !1032, !noundef !1032
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy, !dbg !20226
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ib, ptr nonnull readonly align 1 %i.b, i64 %i.hw, i1 false), !dbg !20227
  %.pre.i78 = load i64, ptr %i.m, align 8, !dbg !20228, !alias.scope !19983
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !20229

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ic = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hy, %bb.af ], !dbg !20228
  %i.id = add i64 %i.ic, %i.hw, !dbg !20228
  store i64 %i.id, ptr %i.m, align 8, !dbg !20228, !alias.scope !19983
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !20230
  %i.ie = load i64, ptr %i.m, align 8, !dbg !20231, !alias.scope !19987, !noundef !1032 ; 2 uses
  %i.if = icmp sgt i64 %i.ie, -1, !dbg !20232
  call void @llvm.assume(i1 %i.if), !dbg !20233
  %i.ig = load ptr, ptr %i.cd, align 8, !dbg !20234, !alias.scope !19987, !nonnull !1032, !noundef !1032
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie, !dbg !20235
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !20236
  %.pre.i81 = load i64, ptr %i.m, align 8, !dbg !20237, !alias.scope !19987
  %i.ii = add i64 %.pre.i81, %2, !dbg !20237      ; 2 uses
  store i64 %i.ii, ptr %i.m, align 8, !dbg !20237, !alias.scope !19987
  br label %.lr.ph, !dbg !20238

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ij = phi i64 [ %i.jh, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ii, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.ik, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.in, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.ik = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !20239 ; 3 uses
  %i.il = icmp eq i64 %.sroa.016.0133, 0, !dbg !20238
  br i1 %i.il, label %._crit_edge, label %bb.ah, !dbg !20238

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20240
  %i.im = icmp eq i64 %.val64, 0, !dbg !20091
  br i1 %i.im, label %._crit_edge138, label %.preheader, !dbg !20091

bb.ah:                                            ; preds = %.lr.ph
  %i.in = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !20241
  %i.io = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !20242 ; 2 uses
  %i.ip = mul nuw nsw i64 %i.ik, %.zext, !dbg !20243 ; 2 uses
  %i.iq = icmp samesign ult i64 %i.ip, 257, !dbg !20244
  br i1 %i.iq, label %bb.aj, label %bb.ai, !dbg !20244, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.io, i64 noundef %i.ip, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !20245
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !20246
  %i.is = load i8, ptr %i.ir, align 1, !dbg !20246, !noundef !1032 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.io, !dbg !20247
  %i.iu = zext i8 %i.is to i64, !dbg !20248       ; 2 uses
  %.not.i83 = icmp eq i8 %i.is, 0, !dbg !20249
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !20249

bb.ak:                                            ; preds = %bb.aj
  %i.iv = icmp sgt i64 %i.ij, -1, !dbg !20250
  call void @llvm.assume(i1 %i.iv), !dbg !20251
  %i.iw = mul nuw nsw i64 %i.iu, %.zext, !dbg !20252
  %i.ix = add nuw nsw i64 %i.iw, 7, !dbg !20253
  %i.iy = lshr i64 %i.ix, 3, !dbg !20253
  %i.iz = add nuw i64 %i.ij, %i.iy, !dbg !20254   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iz, i8 noundef 0), !dbg !20255, !noalias !20001
  %i.ja = load i64, ptr %i.m, align 8, !dbg !20256, !alias.scope !20002, !noalias !20001, !noundef !1032 ; 4 uses
  %i.jb = icmp ugt i64 %i.ij, %i.ja, !dbg !20257
  br i1 %i.jb, label %bb.am, label %bb.al, !dbg !20257, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jc = load ptr, ptr %i.cd, align 8, !dbg !20258, !alias.scope !20002, !noalias !20001, !nonnull !1032, !noundef !1032
  %i.jd = sub nuw i64 %i.ja, %i.ij, !dbg !20259
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ij, !dbg !20260
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.it, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iu, ptr noalias noundef nonnull %i.je, i64 noundef %i.jd), !dbg !20261
  %i.jf = load i64, ptr %i.m, align 8, !dbg !20262, !alias.scope !20002, !noalias !20001, !noundef !1032 ; 2 uses
  %i.jg = icmp ugt i64 %i.iz, %i.jf, !dbg !20263
  br i1 %i.jg, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !20263

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ij, i64 noundef %i.ja, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !20264, !noalias !20001
  unreachable, !dbg !20264

bb.an:                                            ; preds = %bb.al
  store i64 %i.iz, ptr %i.m, align 8, !dbg !20265, !alias.scope !20002, !noalias !20001
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !20266

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jh = phi i64 [ %i.ij, %bb.aj ], [ %i.jf, %bb.al ], [ %i.iz, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ik, %2, !dbg !20267
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !20003

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !20193
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.ji = icmp eq i64 %i.gl, 0, !dbg !20192       ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.gh, 1, !dbg !20189 ; 3 uses
  %i.jk = sub i64 %i.jj, %.sroa.0.2129, !dbg !20268 ; 5 uses
  %i.jl = call i64 @llvm.smax.i64(i64 %i.jk, i64 %.sroa.012.0128), !dbg !20269
  %.sroa.0.0.i85 = select i1 %i.ji, i64 %i.jk, i64 %i.jl, !dbg !20192 ; 2 uses
  %i.jm = call i64 @llvm.smin.i64(i64 %i.jk, i64 %.sroa.087.0127), !dbg !20270
  %.sroa.0.0.i84 = select i1 %i.ji, i64 %i.jk, i64 %i.jm, !dbg !20192 ; 3 uses
  %i.jn = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !20271
  %i.jo = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !20272
  %i.jp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 false), !dbg !20273
  %i.jq = trunc nuw nsw i64 %i.jp to i8, !dbg !20273
  %i.jr = sub nuw nsw i8 64, %i.jq, !dbg !20274
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gk, !dbg !20193
  store i8 %i.jr, ptr %i.js, align 1, !dbg !20193
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !20275
  store i64 %i.jk, ptr %i.jt, align 8, !dbg !20275
  %i.ju = icmp eq i64 %i.cp, 0, !dbg !20092
  br i1 %i.ju, label %bb.ad, label %bb.p, !dbg !20092
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteraENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaalEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20276 {
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
  ], !dbg !20611

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !20612
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !20613
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !20613
  %.zext = zext nneg i16 %i.l to i64, !dbg !20613 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !20614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !20615
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20616 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !20617, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !20618
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !20619
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !20620 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !20620, !alias.scope !20513, !noundef !1032 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !20621
  call void @llvm.assume(i1 %i.q), !dbg !20622
  %.not.i = icmp eq i64 %i.m, 0, !dbg !20623
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !20623

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20624
  %i.s = load ptr, ptr %i.r, align 8, !dbg !20624, !alias.scope !20513, !nonnull !1032, !noundef !1032
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !20625
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !20626
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !20627, !alias.scope !20513
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !20628

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !20627
  %i.v = add i64 %i.u, %i.m, !dbg !20627
  store i64 %i.v, ptr %i.o, align 8, !dbg !20627, !alias.scope !20513
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20629 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !20630, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !20631
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !20632
  %i.y = load i64, ptr %i.o, align 8, !dbg !20633, !alias.scope !20526, !noundef !1032 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !20634
  call void @llvm.assume(i1 %i.z), !dbg !20635
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !20636
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !20636

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20637
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !20637, !alias.scope !20526, !nonnull !1032, !noundef !1032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !20638
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !20639
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !20640, !alias.scope !20526
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !20641

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !20640
  %i.ae = add i64 %i.ad, %i.w, !dbg !20640
  store i64 %i.ae, ptr %i.o, align 8, !dbg !20640, !alias.scope !20526
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20642
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20643 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !20644, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !20645
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !20646
  %i.ai = load i64, ptr %i.o, align 8, !dbg !20647, !alias.scope !20539, !noundef !1032 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !20648
  call void @llvm.assume(i1 %i.aj), !dbg !20649
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !20650
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !20650

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20651
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !20651, !alias.scope !20539, !nonnull !1032, !noundef !1032
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !20652
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !20653
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !20654, !alias.scope !20539
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !20655

end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteraENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaalEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !20688

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !20693
  ret void, !dbg !20694

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !20695 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20557), !dbg !20696
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !20697
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !20688

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1, !dbg !20698 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !20699, !alias.scope !20558, !noalias !20559
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !20700 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !20701
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !20702
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !20702

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20703
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !20704
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !20705 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20706 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20707
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !20708
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !20709
  call void @llvm.experimental.noalias.scope.decl(metadata !20566), !dbg !20710
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !20711, !alias.scope !20566, !noalias !20569, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !20711, !alias.scope !20566, !noalias !20569, !noundef !1032 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !20712 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !20713
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !20714

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !20571, !noalias !20569, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !20571, !noalias !20569, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !20714
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !20714
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !20714
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !20714
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !20714
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !20714

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !20715

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20715 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !20716  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !20717 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !20718 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !20719
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !20719, !noalias !20572
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !20719, !noalias !20572
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !20720
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !20720
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !20721
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !20721, !alias.scope !20573, !noalias !20572
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !20721, !alias.scope !20573, !noalias !20572
  %index.next = add nuw i64 %index, 4, !dbg !20715 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !20714
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !20714, !llvm.loop !20436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !20714
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !20714

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !20714
  %xtraiter = and i64 %i.cg, 3, !dbg !20714       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20714
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20714

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !20715 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !20716 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !20717
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !20718
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !20719, !noalias !20572, !noundef !1032
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !20720
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !20721, !alias.scope !20573, !noalias !20572
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !20714 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !20714
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20714, !llvm.loop !20437

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !20714
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !20714
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !20714
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !20714

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !20714
  %invariant.op248 = add i64 2, %.val.i73, !dbg !20714
  %invariant.op250 = add i64 3, %.val.i73, !dbg !20714
  br label %scalar.ph, !dbg !20714

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !20716 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !20717
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !20718
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !20719, !noalias !20572, !noundef !1032
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !20720
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !20721, !alias.scope !20573, !noalias !20572
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !20717
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !20718
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !20719, !noalias !20572, !noundef !1032
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !20720
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !20721, !alias.scope !20573, !noalias !20572
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !20717
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !20718
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !20719, !noalias !20572, !noundef !1032
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !20720
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !20721, !alias.scope !20573, !noalias !20572
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !20715 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !20717
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !20718
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !20719, !noalias !20572, !noundef !1032
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !20720
  store i64 %i.dc, ptr %i.db, align 8, !dbg !20721, !alias.scope !20573, !noalias !20572
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !20713
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !20714, !llvm.loop !20438

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20723
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !20723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !20724
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !20725, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20726
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !20727, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !20728
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !20729
  %i.df = load i64, ptr %i.o, align 8, !dbg !20730, !alias.scope !20586, !noundef !1032 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !20731
  call void @llvm.assume(i1 %i.dg), !dbg !20732
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !20733
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !20733

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !20734, !alias.scope !20586, !nonnull !1032, !noundef !1032
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !20735
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !20736
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !20737, !alias.scope !20586
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !20738

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !20737
  %i.dk = add i64 %i.dj, %i.dd, !dbg !20737
  store i64 %i.dk, ptr %i.o, align 8, !dbg !20737, !alias.scope !20586
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !20739
  %i.dl = load i64, ptr %i.o, align 8, !dbg !20740, !alias.scope !20590, !noundef !1032 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !20741
  call void @llvm.assume(i1 %i.dm), !dbg !20742
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !20743, !alias.scope !20590, !nonnull !1032, !noundef !1032
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !20744
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !20745
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !20746, !alias.scope !20590
  %i.dp = add i64 %.pre.i79, %3, !dbg !20746      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !20746, !alias.scope !20590
  br label %.lr.ph, !dbg !20747

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !20748 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !20747
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !20747

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20749
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !20687
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !20687

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !20750
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !20751 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !20752 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !20753
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !20753, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !20754
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !20755
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !20755, !noundef !1032 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !20756
  %i.eb = zext i8 %i.dz to i64, !dbg !20757       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !20758
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !20758

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !20759
  call void @llvm.assume(i1 %i.ec), !dbg !20760
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !20761
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !20762
  %i.ef = lshr i64 %i.ee, 3, !dbg !20762
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !20763   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !20764, !noalias !20604
  %i.eh = load i64, ptr %i.o, align 8, !dbg !20765, !alias.scope !20605, !noalias !20604, !noundef !1032 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !20766
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !20766, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !20767, !alias.scope !20605, !noalias !20604, !nonnull !1032, !noundef !1032
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !20768
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !20769
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !20770
  %i.em = load i64, ptr %i.o, align 8, !dbg !20771, !alias.scope !20605, !noalias !20604, !noundef !1032 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !20772
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !20772

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !20773, !noalias !20604
  unreachable, !dbg !20773

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !20774, !alias.scope !20605, !noalias !20604
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !20775

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !20776
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !20606

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !20702
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !20701       ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bl, align 1, !dbg !20777, !noalias !20607, !noundef !1032
  %i.eq = sext i8 %.val.i.i.i to i64, !dbg !20778 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !20779 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !20780
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !20701 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !20781
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !20701 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !20782
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !20783
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !20784
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !20784
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !20785
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !20702
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !20702
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !20786
  store i64 %i.er, ptr %i.fa, align 8, !dbg !20786
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !20787
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !20787
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterhENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltahlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20788 {
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
  ], !dbg !21123

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !21124
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !21125
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !21125
  %.zext = zext nneg i16 %i.l to i64, !dbg !21125 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !21127
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21128 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !21129, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !21130
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !21131
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21132 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !21132, !alias.scope !21025, !noundef !1032 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !21133
  call void @llvm.assume(i1 %i.q), !dbg !21134
  %.not.i = icmp eq i64 %i.m, 0, !dbg !21135
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !21135

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21136
  %i.s = load ptr, ptr %i.r, align 8, !dbg !21136, !alias.scope !21025, !nonnull !1032, !noundef !1032
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !21137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !21138
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !21139, !alias.scope !21025
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !21140

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !21139
  %i.v = add i64 %i.u, %i.m, !dbg !21139
  store i64 %i.v, ptr %i.o, align 8, !dbg !21139, !alias.scope !21025
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21141 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !21142, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !21143
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !21144
  %i.y = load i64, ptr %i.o, align 8, !dbg !21145, !alias.scope !21038, !noundef !1032 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !21146
  call void @llvm.assume(i1 %i.z), !dbg !21147
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !21148
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !21148

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21149
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !21149, !alias.scope !21038, !nonnull !1032, !noundef !1032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !21150
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !21151
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !21152, !alias.scope !21038
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !21153

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !21152
  %i.ae = add i64 %i.ad, %i.w, !dbg !21152
  store i64 %i.ae, ptr %i.o, align 8, !dbg !21152, !alias.scope !21038
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21154
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21155 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !21156, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !21157
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !21158
  %i.ai = load i64, ptr %i.o, align 8, !dbg !21159, !alias.scope !21051, !noundef !1032 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !21160
  call void @llvm.assume(i1 %i.aj), !dbg !21161
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !21162
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !21162

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21163
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !21163, !alias.scope !21051, !nonnull !1032, !noundef !1032
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !21164
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !21165
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !21166, !alias.scope !21051
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !21167
end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterhENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltahlEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !21200

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21205
  ret void, !dbg !21206

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !21207 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21069), !dbg !21208
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !21209
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !21200

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1, !dbg !21210 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !21211, !alias.scope !21070, !noalias !21071
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !21212 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !21213
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !21214
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !21214

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21215
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !21216
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !21217 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21218 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21219
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !21220
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !21221
  call void @llvm.experimental.noalias.scope.decl(metadata !21078), !dbg !21222
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !21223, !alias.scope !21078, !noalias !21081, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !21223, !alias.scope !21078, !noalias !21081, !noundef !1032 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !21224 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !21225
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !21226

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !21083, !noalias !21081, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !21083, !noalias !21081, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !21226
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !21226
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !21226
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !21226
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !21226
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !21226

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !21227

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21227 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !21228  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !21229 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !21230 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !21231
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !21231, !noalias !21084
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !21231, !noalias !21084
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !21232
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !21232
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !21233
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !21233, !alias.scope !21085, !noalias !21084
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !21233, !alias.scope !21085, !noalias !21084
  %index.next = add nuw i64 %index, 4, !dbg !21227 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !21226
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !21226, !llvm.loop !20948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !21226
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !21226

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !21226
  %xtraiter = and i64 %i.cg, 3, !dbg !21226       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21226
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21226

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !21227 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !21228 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !21229
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !21230
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !21231, !noalias !21084, !noundef !1032
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !21232
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !21233, !alias.scope !21085, !noalias !21084
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21226 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21226
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21226, !llvm.loop !20949

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !21226
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !21226
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !21226
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !21226

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !21226
  %invariant.op248 = add i64 2, %.val.i73, !dbg !21226
  %invariant.op250 = add i64 3, %.val.i73, !dbg !21226
  br label %scalar.ph, !dbg !21226

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !21228 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !21229
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !21230
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !21231, !noalias !21084, !noundef !1032
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !21232
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !21233, !alias.scope !21085, !noalias !21084
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !21229
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !21230
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !21231, !noalias !21084, !noundef !1032
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !21232
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !21233, !alias.scope !21085, !noalias !21084
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !21229
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !21230
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !21231, !noalias !21084, !noundef !1032
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !21232
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !21233, !alias.scope !21085, !noalias !21084
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !21227 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !21229
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !21230
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !21231, !noalias !21084, !noundef !1032
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !21232
  store i64 %i.dc, ptr %i.db, align 8, !dbg !21233, !alias.scope !21085, !noalias !21084
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !21225
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !21226, !llvm.loop !20950

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21235
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !21235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !21236
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !21237, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21238
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !21239, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !21240
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !21241
  %i.df = load i64, ptr %i.o, align 8, !dbg !21242, !alias.scope !21098, !noundef !1032 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !21243
  call void @llvm.assume(i1 %i.dg), !dbg !21244
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !21245
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !21245

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !21246, !alias.scope !21098, !nonnull !1032, !noundef !1032
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !21247
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !21248
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !21249, !alias.scope !21098
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !21250

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !21249
  %i.dk = add i64 %i.dj, %i.dd, !dbg !21249
  store i64 %i.dk, ptr %i.o, align 8, !dbg !21249, !alias.scope !21098
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !21251
  %i.dl = load i64, ptr %i.o, align 8, !dbg !21252, !alias.scope !21102, !noundef !1032 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !21253
  call void @llvm.assume(i1 %i.dm), !dbg !21254
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !21255, !alias.scope !21102, !nonnull !1032, !noundef !1032
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !21256
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !21257
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !21258, !alias.scope !21102
  %i.dp = add i64 %.pre.i79, %3, !dbg !21258      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !21258, !alias.scope !21102
  br label %.lr.ph, !dbg !21259

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !21260 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !21259
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !21259

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21261
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !21199
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !21199

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !21262
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !21263 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !21264 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !21265
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !21265, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !21266
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !21267
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !21267, !noundef !1032 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !21268
  %i.eb = zext i8 %i.dz to i64, !dbg !21269       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !21270
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !21270

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !21271
  call void @llvm.assume(i1 %i.ec), !dbg !21272
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !21273
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !21274
  %i.ef = lshr i64 %i.ee, 3, !dbg !21274
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !21275   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !21276, !noalias !21116
  %i.eh = load i64, ptr %i.o, align 8, !dbg !21277, !alias.scope !21117, !noalias !21116, !noundef !1032 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !21278
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !21278, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !21279, !alias.scope !21117, !noalias !21116, !nonnull !1032, !noundef !1032
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !21280
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !21281
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !21282
  %i.em = load i64, ptr %i.o, align 8, !dbg !21283, !alias.scope !21117, !noalias !21116, !noundef !1032 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !21284
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !21284

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !21285, !noalias !21116
  unreachable, !dbg !21285

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !21286, !alias.scope !21117, !noalias !21116
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !21287

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !21288
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !21118

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !21214
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !21213       ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bl, align 1, !dbg !21289, !noalias !21119, !noundef !1032
  %i.eq = zext i8 %.val.i.i.i to i64, !dbg !21290 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !21291 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !21292
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !21213 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !21293
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !21213 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !21294
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !21295
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !21296
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !21296
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !21297
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !21214
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !21214
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !21298
  store i64 %i.er, ptr %i.fa, align 8, !dbg !21298
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !21299
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !21299
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterlENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltallEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21300 {
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
  ], !dbg !21635

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !21636
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !21637
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !21637
  %.zext = zext nneg i16 %i.l to i64, !dbg !21637 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21638
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !21639
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21640 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !21641, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !21642
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !21643
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21644 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !21644, !alias.scope !21537, !noundef !1032 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !21645
  call void @llvm.assume(i1 %i.q), !dbg !21646
  %.not.i = icmp eq i64 %i.m, 0, !dbg !21647
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !21647

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21648
  %i.s = load ptr, ptr %i.r, align 8, !dbg !21648, !alias.scope !21537, !nonnull !1032, !noundef !1032
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !21649
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !21650
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !21651, !alias.scope !21537
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !21652

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !21651
  %i.v = add i64 %i.u, %i.m, !dbg !21651
  store i64 %i.v, ptr %i.o, align 8, !dbg !21651, !alias.scope !21537
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21653 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !21654, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !21655
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !21656
  %i.y = load i64, ptr %i.o, align 8, !dbg !21657, !alias.scope !21550, !noundef !1032 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !21658
  call void @llvm.assume(i1 %i.z), !dbg !21659
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !21660
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !21660

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21661
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !21661, !alias.scope !21550, !nonnull !1032, !noundef !1032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !21662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !21663
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !21664, !alias.scope !21550
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !21665

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !21664
  %i.ae = add i64 %i.ad, %i.w, !dbg !21664
  store i64 %i.ae, ptr %i.o, align 8, !dbg !21664, !alias.scope !21550
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21666
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21667 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !21668, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !21669
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !21670
  %i.ai = load i64, ptr %i.o, align 8, !dbg !21671, !alias.scope !21563, !noundef !1032 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !21672
  call void @llvm.assume(i1 %i.aj), !dbg !21673
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !21674
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !21674

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21675
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !21675, !alias.scope !21563, !nonnull !1032, !noundef !1032
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !21676
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !21677
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !21678, !alias.scope !21563
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !21679
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterlENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltallEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !21712

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21717
  ret void, !dbg !21718

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !21719 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21581), !dbg !21720
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !21721
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !21712

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4, !dbg !21722 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !21723, !alias.scope !21582, !noalias !21583
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !21724 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !21725
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !21726
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !21726

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21727
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !21728
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !21729 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21730 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21731
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !21732
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !21733
  call void @llvm.experimental.noalias.scope.decl(metadata !21590), !dbg !21734
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !21735, !alias.scope !21590, !noalias !21593, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !21735, !alias.scope !21590, !noalias !21593, !noundef !1032 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !21736 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !21737
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !21738

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !21595, !noalias !21593, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !21595, !noalias !21593, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !21738
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !21738
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !21738
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !21738
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !21738
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !21738

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !21739

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21739 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !21740  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !21741 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !21742 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !21743
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !21743, !noalias !21596
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !21743, !noalias !21596
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !21744
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !21744
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !21745
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !21745, !alias.scope !21597, !noalias !21596
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !21745, !alias.scope !21597, !noalias !21596
  %index.next = add nuw i64 %index, 4, !dbg !21739 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !21738
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !21738, !llvm.loop !21460

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !21738
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !21738

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !21738
  %xtraiter = and i64 %i.cg, 3, !dbg !21738       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21738
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21738

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !21739 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !21740 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !21741
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !21742
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !21743, !noalias !21596, !noundef !1032
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !21744
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !21745, !alias.scope !21597, !noalias !21596
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21738 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21738
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21738, !llvm.loop !21461

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !21738
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !21738
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !21738
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !21738

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !21738
  %invariant.op248 = add i64 2, %.val.i73, !dbg !21738
  %invariant.op250 = add i64 3, %.val.i73, !dbg !21738
  br label %scalar.ph, !dbg !21738

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !21740 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !21741
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !21742
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !21743, !noalias !21596, !noundef !1032
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !21744
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !21745, !alias.scope !21597, !noalias !21596
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !21741
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !21742
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !21743, !noalias !21596, !noundef !1032
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !21744
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !21745, !alias.scope !21597, !noalias !21596
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !21741
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !21742
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !21743, !noalias !21596, !noundef !1032
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !21744
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !21745, !alias.scope !21597, !noalias !21596
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !21739 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !21741
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !21742
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !21743, !noalias !21596, !noundef !1032
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !21744
  store i64 %i.dc, ptr %i.db, align 8, !dbg !21745, !alias.scope !21597, !noalias !21596
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !21737
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !21738, !llvm.loop !21462

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21747
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !21747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !21748
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !21749, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21750
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !21751, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !21752
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !21753
  %i.df = load i64, ptr %i.o, align 8, !dbg !21754, !alias.scope !21610, !noundef !1032 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !21755
  call void @llvm.assume(i1 %i.dg), !dbg !21756
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !21757
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !21757

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !21758, !alias.scope !21610, !nonnull !1032, !noundef !1032
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !21759
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !21760
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !21761, !alias.scope !21610
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !21762

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !21761
  %i.dk = add i64 %i.dj, %i.dd, !dbg !21761
  store i64 %i.dk, ptr %i.o, align 8, !dbg !21761, !alias.scope !21610
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !21763
  %i.dl = load i64, ptr %i.o, align 8, !dbg !21764, !alias.scope !21614, !noundef !1032 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !21765
  call void @llvm.assume(i1 %i.dm), !dbg !21766
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !21767, !alias.scope !21614, !nonnull !1032, !noundef !1032
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !21768
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !21769
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !21770, !alias.scope !21614
  %i.dp = add i64 %.pre.i79, %3, !dbg !21770      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !21770, !alias.scope !21614
  br label %.lr.ph, !dbg !21771

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !21772 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !21771
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !21771

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21773
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !21711
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !21711

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !21774
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !21775 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !21776 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !21777
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !21777, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !21778
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !21779
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !21779, !noundef !1032 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !21780
  %i.eb = zext i8 %i.dz to i64, !dbg !21781       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !21782
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !21782

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !21783
  call void @llvm.assume(i1 %i.ec), !dbg !21784
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !21785
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !21786
  %i.ef = lshr i64 %i.ee, 3, !dbg !21786
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !21787   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !21788, !noalias !21628
  %i.eh = load i64, ptr %i.o, align 8, !dbg !21789, !alias.scope !21629, !noalias !21628, !noundef !1032 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !21790
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !21790, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !21791, !alias.scope !21629, !noalias !21628, !nonnull !1032, !noundef !1032
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !21792
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !21793
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !21794
  %i.em = load i64, ptr %i.o, align 8, !dbg !21795, !alias.scope !21629, !noalias !21628, !noundef !1032 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !21796
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !21796

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !21797, !noalias !21628
  unreachable, !dbg !21797

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !21798, !alias.scope !21629, !noalias !21628
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !21799

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !21800
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !21630

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !21726
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !21725       ; 2 uses
  %.val.i.i.i = load i32, ptr %i.bl, align 4, !dbg !21801, !noalias !21631, !noundef !1032
  %i.eq = sext i32 %.val.i.i.i to i64, !dbg !21802 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !21803 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !21804
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !21725 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !21805
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !21725 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !21806
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !21807
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !21808
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !21808
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !21809
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !21726
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !21726
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !21810
  store i64 %i.er, ptr %i.fa, align 8, !dbg !21810
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !21811
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !21811
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltamlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21812 {
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
  ], !dbg !22147

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !22148
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !22149
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !22149
  %.zext = zext nneg i16 %i.l to i64, !dbg !22149 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !22151
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22152 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !22153, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !22154
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !22155
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22156 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !22156, !alias.scope !22049, !noundef !1032 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !22157
  call void @llvm.assume(i1 %i.q), !dbg !22158
  %.not.i = icmp eq i64 %i.m, 0, !dbg !22159
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !22159

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22160
  %i.s = load ptr, ptr %i.r, align 8, !dbg !22160, !alias.scope !22049, !nonnull !1032, !noundef !1032
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !22161
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !22162
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !22163, !alias.scope !22049
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !22164

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !22163
  %i.v = add i64 %i.u, %i.m, !dbg !22163
  store i64 %i.v, ptr %i.o, align 8, !dbg !22163, !alias.scope !22049
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22165 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !22166, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !22167
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !22168
  %i.y = load i64, ptr %i.o, align 8, !dbg !22169, !alias.scope !22062, !noundef !1032 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !22170
  call void @llvm.assume(i1 %i.z), !dbg !22171
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !22172
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !22172

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22173
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !22173, !alias.scope !22062, !nonnull !1032, !noundef !1032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !22174
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !22175
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !22176, !alias.scope !22062
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !22177

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !22176
  %i.ae = add i64 %i.ad, %i.w, !dbg !22176
  store i64 %i.ae, ptr %i.o, align 8, !dbg !22176, !alias.scope !22062
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22178
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22179 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !22180, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !22181
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !22182
  %i.ai = load i64, ptr %i.o, align 8, !dbg !22183, !alias.scope !22075, !noundef !1032 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !22184
  call void @llvm.assume(i1 %i.aj), !dbg !22185
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !22186
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !22186

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22187
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !22187, !alias.scope !22075, !nonnull !1032, !noundef !1032
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !22188
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !22189
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !22190, !alias.scope !22075
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !22191
end_hunk_12
begin_hunk_13_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltamlEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !22224

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22229
  ret void, !dbg !22230

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !22231 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22093), !dbg !22232
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !22233
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !22224

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4, !dbg !22234 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !22235, !alias.scope !22094, !noalias !22095
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !22236 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !22237
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !22238
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !22238

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22239
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !22240
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !22241 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22242 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22243
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !22244
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !22245
  call void @llvm.experimental.noalias.scope.decl(metadata !22102), !dbg !22246
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !22247, !alias.scope !22102, !noalias !22105, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !22247, !alias.scope !22102, !noalias !22105, !noundef !1032 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !22248 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !22249
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !22250

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !22107, !noalias !22105, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !22107, !noalias !22105, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !22250
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !22250
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !22250
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !22250
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !22250
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !22250

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !22251

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22251 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !22252  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !22253 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !22254 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !22255
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !22255, !noalias !22108
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !22255, !noalias !22108
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !22256
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !22256
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !22257
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !22257, !alias.scope !22109, !noalias !22108
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !22257, !alias.scope !22109, !noalias !22108
  %index.next = add nuw i64 %index, 4, !dbg !22251 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !22250
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !22250, !llvm.loop !21972

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !22250
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !22250

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !22250
  %xtraiter = and i64 %i.cg, 3, !dbg !22250       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22250
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22250

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !22251 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !22252 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !22253
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !22254
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !22255, !noalias !22108, !noundef !1032
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !22256
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !22257, !alias.scope !22109, !noalias !22108
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !22250 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !22250
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22250, !llvm.loop !21973

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !22250
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !22250
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !22250
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !22250

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !22250
  %invariant.op248 = add i64 2, %.val.i73, !dbg !22250
  %invariant.op250 = add i64 3, %.val.i73, !dbg !22250
  br label %scalar.ph, !dbg !22250

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !22252 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !22253
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !22254
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !22255, !noalias !22108, !noundef !1032
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !22256
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !22257, !alias.scope !22109, !noalias !22108
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !22253
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !22254
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !22255, !noalias !22108, !noundef !1032
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !22256
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !22257, !alias.scope !22109, !noalias !22108
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !22253
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !22254
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !22255, !noalias !22108, !noundef !1032
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !22256
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !22257, !alias.scope !22109, !noalias !22108
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !22251 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !22253
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !22254
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !22255, !noalias !22108, !noundef !1032
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !22256
  store i64 %i.dc, ptr %i.db, align 8, !dbg !22257, !alias.scope !22109, !noalias !22108
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !22249
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !22250, !llvm.loop !21974

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22259
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !22259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !22260
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !22261, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22262
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !22263, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !22264
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !22265
  %i.df = load i64, ptr %i.o, align 8, !dbg !22266, !alias.scope !22122, !noundef !1032 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !22267
  call void @llvm.assume(i1 %i.dg), !dbg !22268
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !22269
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !22269

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !22270, !alias.scope !22122, !nonnull !1032, !noundef !1032
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !22271
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !22272
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !22273, !alias.scope !22122
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !22274

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !22273
  %i.dk = add i64 %i.dj, %i.dd, !dbg !22273
  store i64 %i.dk, ptr %i.o, align 8, !dbg !22273, !alias.scope !22122
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !22275
  %i.dl = load i64, ptr %i.o, align 8, !dbg !22276, !alias.scope !22126, !noundef !1032 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !22277
  call void @llvm.assume(i1 %i.dm), !dbg !22278
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !22279, !alias.scope !22126, !nonnull !1032, !noundef !1032
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !22280
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !22281
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !22282, !alias.scope !22126
  %i.dp = add i64 %.pre.i79, %3, !dbg !22282      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !22282, !alias.scope !22126
  br label %.lr.ph, !dbg !22283

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !22284 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !22283
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !22283

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22285
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !22223
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !22223

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !22286
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !22287 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !22288 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !22289
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !22289, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !22290
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !22291
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !22291, !noundef !1032 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !22292
  %i.eb = zext i8 %i.dz to i64, !dbg !22293       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !22294
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !22294

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !22295
  call void @llvm.assume(i1 %i.ec), !dbg !22296
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !22297
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !22298
  %i.ef = lshr i64 %i.ee, 3, !dbg !22298
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !22299   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !22300, !noalias !22140
  %i.eh = load i64, ptr %i.o, align 8, !dbg !22301, !alias.scope !22141, !noalias !22140, !noundef !1032 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !22302
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !22302, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !22303, !alias.scope !22141, !noalias !22140, !nonnull !1032, !noundef !1032
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !22304
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !22305
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !22306
  %i.em = load i64, ptr %i.o, align 8, !dbg !22307, !alias.scope !22141, !noalias !22140, !noundef !1032 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !22308
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !22308

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !22309, !noalias !22140
  unreachable, !dbg !22309

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !22310, !alias.scope !22141, !noalias !22140
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !22311

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !22312
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !22142

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !22238
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !22237       ; 2 uses
  %.val.i.i.i = load i32, ptr %i.bl, align 4, !dbg !22313, !noalias !22143, !noundef !1032
  %i.eq = sext i32 %.val.i.i.i to i64, !dbg !22314 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !22315 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !22316
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !22237 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !22317
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !22237 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !22318
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !22319
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !22320
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !22320
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !22321
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !22238
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !22238
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !22322
  store i64 %i.er, ptr %i.fa, align 8, !dbg !22322
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !22323
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !22323
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItersENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaslEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22324 {
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
  ], !dbg !22659

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !22660
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !22661
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !22661
  %.zext = zext nneg i16 %i.l to i64, !dbg !22661 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22662
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !22663
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22664 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !22665, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !22666
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !22667
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22668 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !22668, !alias.scope !22561, !noundef !1032 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !22669
  call void @llvm.assume(i1 %i.q), !dbg !22670
  %.not.i = icmp eq i64 %i.m, 0, !dbg !22671
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !22671

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22672
  %i.s = load ptr, ptr %i.r, align 8, !dbg !22672, !alias.scope !22561, !nonnull !1032, !noundef !1032
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !22673
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !22674
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !22675, !alias.scope !22561
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !22676

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !22675
  %i.v = add i64 %i.u, %i.m, !dbg !22675
  store i64 %i.v, ptr %i.o, align 8, !dbg !22675, !alias.scope !22561
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22677 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !22678, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !22679
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !22680
  %i.y = load i64, ptr %i.o, align 8, !dbg !22681, !alias.scope !22574, !noundef !1032 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !22682
  call void @llvm.assume(i1 %i.z), !dbg !22683
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !22684
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !22684

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22685
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !22685, !alias.scope !22574, !nonnull !1032, !noundef !1032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !22686
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !22687
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !22688, !alias.scope !22574
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !22689

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !22688
  %i.ae = add i64 %i.ad, %i.w, !dbg !22688
  store i64 %i.ae, ptr %i.o, align 8, !dbg !22688, !alias.scope !22574
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22690
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22691 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !22692, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !22693
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !22694
  %i.ai = load i64, ptr %i.o, align 8, !dbg !22695, !alias.scope !22587, !noundef !1032 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !22696
  call void @llvm.assume(i1 %i.aj), !dbg !22697
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !22698
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !22698

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22699
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !22699, !alias.scope !22587, !nonnull !1032, !noundef !1032
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !22700
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !22701
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !22702, !alias.scope !22587
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !22703
end_hunk_13
begin_hunk_14_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItersENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaslEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !22736

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22741
  ret void, !dbg !22742

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !22743 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22605), !dbg !22744
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !22745
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !22736

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 2, !dbg !22746 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !22747, !alias.scope !22606, !noalias !22607
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !22748 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !22749
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !22750
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !22750

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22751
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !22752
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !22753 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22754 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22755
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !22756
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !22757
  call void @llvm.experimental.noalias.scope.decl(metadata !22614), !dbg !22758
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !22759, !alias.scope !22614, !noalias !22617, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !22759, !alias.scope !22614, !noalias !22617, !noundef !1032 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !22760 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !22761
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !22762

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !22619, !noalias !22617, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !22619, !noalias !22617, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !22762
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !22762
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !22762
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !22762
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !22762
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !22762

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !22763

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22763 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !22764  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !22765 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !22766 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !22767
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !22767, !noalias !22620
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !22767, !noalias !22620
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !22768
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !22768
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !22769
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !22769, !alias.scope !22621, !noalias !22620
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !22769, !alias.scope !22621, !noalias !22620
  %index.next = add nuw i64 %index, 4, !dbg !22763 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !22762
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !22762, !llvm.loop !22484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !22762
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !22762

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !22762
  %xtraiter = and i64 %i.cg, 3, !dbg !22762       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22762
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22762

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !22763 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !22764 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !22765
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !22766
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !22767, !noalias !22620, !noundef !1032
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !22768
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !22769, !alias.scope !22621, !noalias !22620
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !22762 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !22762
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22762, !llvm.loop !22485

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !22762
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !22762
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !22762
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !22762

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !22762
  %invariant.op248 = add i64 2, %.val.i73, !dbg !22762
  %invariant.op250 = add i64 3, %.val.i73, !dbg !22762
  br label %scalar.ph, !dbg !22762

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !22764 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !22765
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !22766
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !22767, !noalias !22620, !noundef !1032
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !22768
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !22769, !alias.scope !22621, !noalias !22620
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !22765
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !22766
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !22767, !noalias !22620, !noundef !1032
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !22768
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !22769, !alias.scope !22621, !noalias !22620
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !22765
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !22766
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !22767, !noalias !22620, !noundef !1032
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !22768
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !22769, !alias.scope !22621, !noalias !22620
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !22763 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !22765
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !22766
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !22767, !noalias !22620, !noundef !1032
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !22768
  store i64 %i.dc, ptr %i.db, align 8, !dbg !22769, !alias.scope !22621, !noalias !22620
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !22761
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !22762, !llvm.loop !22486

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22771
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !22771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !22772
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !22773, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22774
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !22775, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !22776
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !22777
  %i.df = load i64, ptr %i.o, align 8, !dbg !22778, !alias.scope !22634, !noundef !1032 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !22779
  call void @llvm.assume(i1 %i.dg), !dbg !22780
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !22781
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !22781

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !22782, !alias.scope !22634, !nonnull !1032, !noundef !1032
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !22783
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !22784
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !22785, !alias.scope !22634
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !22786

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !22785
  %i.dk = add i64 %i.dj, %i.dd, !dbg !22785
  store i64 %i.dk, ptr %i.o, align 8, !dbg !22785, !alias.scope !22634
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !22787
  %i.dl = load i64, ptr %i.o, align 8, !dbg !22788, !alias.scope !22638, !noundef !1032 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !22789
  call void @llvm.assume(i1 %i.dm), !dbg !22790
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !22791, !alias.scope !22638, !nonnull !1032, !noundef !1032
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !22792
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !22793
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !22794, !alias.scope !22638
  %i.dp = add i64 %.pre.i79, %3, !dbg !22794      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !22794, !alias.scope !22638
  br label %.lr.ph, !dbg !22795

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !22796 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !22795
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !22795

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22797
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !22735
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !22735

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !22798
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !22799 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !22800 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !22801
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !22801, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !22802
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !22803
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !22803, !noundef !1032 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !22804
  %i.eb = zext i8 %i.dz to i64, !dbg !22805       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !22806
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !22806

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !22807
  call void @llvm.assume(i1 %i.ec), !dbg !22808
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !22809
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !22810
  %i.ef = lshr i64 %i.ee, 3, !dbg !22810
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !22811   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !22812, !noalias !22652
  %i.eh = load i64, ptr %i.o, align 8, !dbg !22813, !alias.scope !22653, !noalias !22652, !noundef !1032 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !22814
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !22814, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !22815, !alias.scope !22653, !noalias !22652, !nonnull !1032, !noundef !1032
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !22816
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !22817
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !22818
  %i.em = load i64, ptr %i.o, align 8, !dbg !22819, !alias.scope !22653, !noalias !22652, !noundef !1032 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !22820
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !22820

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !22821, !noalias !22652
  unreachable, !dbg !22821

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !22822, !alias.scope !22653, !noalias !22652
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !22823

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !22824
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !22654

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !22750
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !22749       ; 2 uses
  %.val.i.i.i = load i16, ptr %i.bl, align 2, !dbg !22825, !noalias !22655, !noundef !1032
  %i.eq = sext i16 %.val.i.i.i to i64, !dbg !22826 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !22827 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !22828
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !22749 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !22829
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !22749 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !22830
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !22831
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !22832
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !22832
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !22833
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !22750
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !22750
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !22834
  store i64 %i.er, ptr %i.fa, align 8, !dbg !22834
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !22835
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !22835
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItertENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltatlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22836 {
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
  ], !dbg !23171

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !23172
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !23173
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !23173
  %.zext = zext nneg i16 %i.l to i64, !dbg !23173 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !23175
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23176 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !23177, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !23178
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !23179
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23180 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !23180, !alias.scope !23073, !noundef !1032 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !23181
  call void @llvm.assume(i1 %i.q), !dbg !23182
  %.not.i = icmp eq i64 %i.m, 0, !dbg !23183
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !23183

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23184
  %i.s = load ptr, ptr %i.r, align 8, !dbg !23184, !alias.scope !23073, !nonnull !1032, !noundef !1032
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !23185
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !23186
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !23187, !alias.scope !23073
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !23188

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !23187
  %i.v = add i64 %i.u, %i.m, !dbg !23187
  store i64 %i.v, ptr %i.o, align 8, !dbg !23187, !alias.scope !23073
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23189 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !23190, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !23191
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !23192
  %i.y = load i64, ptr %i.o, align 8, !dbg !23193, !alias.scope !23086, !noundef !1032 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !23194
  call void @llvm.assume(i1 %i.z), !dbg !23195
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !23196
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !23196

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23197
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !23197, !alias.scope !23086, !nonnull !1032, !noundef !1032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !23198
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !23199
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !23200, !alias.scope !23086
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !23201

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !23200
  %i.ae = add i64 %i.ad, %i.w, !dbg !23200
  store i64 %i.ae, ptr %i.o, align 8, !dbg !23200, !alias.scope !23086
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23202
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23203 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !23204, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !23205
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !23206
  %i.ai = load i64, ptr %i.o, align 8, !dbg !23207, !alias.scope !23099, !noundef !1032 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !23208
  call void @llvm.assume(i1 %i.aj), !dbg !23209
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !23210
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !23210

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23211
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !23211, !alias.scope !23099, !nonnull !1032, !noundef !1032
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !23212
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !23213
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !23214, !alias.scope !23099
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !23215
end_hunk_14
begin_hunk_15_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItertENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltatlEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !23248

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23253
  ret void, !dbg !23254

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bm, %bb.ab ], [ 256, %.preheader ]
  %i.bl = phi ptr [ %i.bo, %bb.ab ], [ %i.bk, %.preheader ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0121, -1, !dbg !23255 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23117), !dbg !23256
  %i.bn = icmp eq ptr %i.bl, %1, !dbg !23257
  br i1 %i.bn, label %.split.us, label %bb.p, !dbg !23248

bb.p:                                             ; preds = %.preheader.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 2, !dbg !23258 ; 3 uses
  store ptr %i.bo, ptr %i.j, align 8, !dbg !23259, !alias.scope !23118, !noalias !23119
  %i.bp = udiv i64 %.sroa.4.0122, %.zext, !dbg !23260 ; 3 uses
  %i.bq = urem i64 %.sroa.4.0122, %.zext, !dbg !23261
  %i.br = icmp samesign ult i64 %i.bp, 4, !dbg !23262
  br i1 %i.br, label %bb.ab, label %bb.aa, !dbg !23262

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bo, %bb.ab ], [ %i.bl, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.eq, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23263
  %i.bt = sub i64 %.sroa.023.0134, %i.bs, !dbg !23264
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 256), !dbg !23265 ; 2 uses
  %i.bu = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23266 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23267
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !23268
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.be), !dbg !23269
  call void @llvm.experimental.noalias.scope.decl(metadata !23126), !dbg !23270
  %.val.i73 = load i64, ptr %i.bf, align 8, !dbg !23271, !alias.scope !23126, !noalias !23129, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bg, align 8, !dbg !23271, !alias.scope !23126, !noalias !23129, !noundef !1032 ; 4 uses
  %i.bw = sub i64 %.val8.i, %.val.i73, !dbg !23272 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !23273
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !23274

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !23131, !noalias !23129, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !23131, !noalias !23129, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 4, !dbg !23274
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !23274
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bx = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !23274
  %diff.check = icmp ugt i64 %i.bx, -32, !dbg !23274
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !23274
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !23274

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !23275

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !23275 ; 2 uses
  %i.by = add i64 %index, %.val.i73, !dbg !23276  ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.by, !dbg !23277 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.by, !dbg !23278 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !23279
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !dbg !23279, !noalias !23132
  %wide.load222 = load <2 x i64>, ptr %i.cb, align 8, !dbg !23279, !noalias !23132
  %i.cc = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !23280
  %i.cd = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !23280
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !23281
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !dbg !23281, !alias.scope !23133, !noalias !23132
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !dbg !23281, !alias.scope !23133, !noalias !23132
  %index.next = add nuw i64 %index, 4, !dbg !23275 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !23274
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !23274, !llvm.loop !22996

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec, !dbg !23274
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !23274

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cg = sub i64 %.val8.i, %.val.i73, !dbg !23274
  %xtraiter = and i64 %i.cg, 3, !dbg !23274       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !23274
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !23274

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !23275 ; 2 uses
  %i.ci = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !23276 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ci, !dbg !23277
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ci, !dbg !23278
  %.val10.i.prol = load i64, ptr %i.cj, align 8, !dbg !23279, !noalias !23132, !noundef !1032
  %i.cl = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !23280
  store i64 %i.cl, ptr %i.ck, align 8, !dbg !23281, !alias.scope !23133, !noalias !23132
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !23274 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !23274
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !23274, !llvm.loop !22997

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cm = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !23274
  %i.cn = add i64 %i.cm, %.val.i73, !dbg !23274
  %i.co = icmp ugt i64 %i.cn, -4, !dbg !23274
  br i1 %i.co, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !23274

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !23274
  %invariant.op248 = add i64 2, %.val.i73, !dbg !23274
  %invariant.op250 = add i64 3, %.val.i73, !dbg !23274
  br label %scalar.ph, !dbg !23274

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cz, %scalar.ph ] ; 5 uses
  %i.cp = add i64 %.sroa.0.012.i, %.val.i73, !dbg !23276 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cp, !dbg !23277
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cp, !dbg !23278
  %.val10.i = load i64, ptr %i.cq, align 8, !dbg !23279, !noalias !23132, !noundef !1032
  %i.cs = sub i64 %.val10.i, %.us-phi126.ph, !dbg !23280
  store i64 %i.cs, ptr %i.cr, align 8, !dbg !23281, !alias.scope !23133, !noalias !23132
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !23277
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !23278
  %.val10.i.1 = load i64, ptr %i.ct, align 8, !dbg !23279, !noalias !23132, !noundef !1032
  %i.cv = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !23280
  store i64 %i.cv, ptr %i.cu, align 8, !dbg !23281, !alias.scope !23133, !noalias !23132
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !23277
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !23278
  %.val10.i.2 = load i64, ptr %i.cw, align 8, !dbg !23279, !noalias !23132, !noundef !1032
  %i.cy = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !23280
  store i64 %i.cy, ptr %i.cx, align 8, !dbg !23281, !alias.scope !23133, !noalias !23132
  %i.cz = add nuw i64 %.sroa.0.012.i, 4, !dbg !23275 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !23277
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !23278
  %.val10.i.3 = load i64, ptr %i.da, align 8, !dbg !23279, !noalias !23132, !noundef !1032
  %i.dc = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !23280
  store i64 %i.dc, ptr %i.db, align 8, !dbg !23281, !alias.scope !23133, !noalias !23132
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %i.bw, !dbg !23273
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !23274, !llvm.loop !22998

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23283
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !23283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !23284
  %i.dd = load i64, ptr %i.bi, align 8, !dbg !23285, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23286
  %i.de = icmp ult i64 %i.dd, 11
  br i1 %i.de, label %bb.r, label %bb.q, !dbg !23287, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dd, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !23288
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dd), !dbg !23289
  %i.df = load i64, ptr %i.o, align 8, !dbg !23290, !alias.scope !23146, !noundef !1032 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, -1, !dbg !23291
  call void @llvm.assume(i1 %i.dg), !dbg !23292
  %.not.i75 = icmp eq i64 %i.dd, 0, !dbg !23293
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !23293

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bj, align 8, !dbg !23294, !alias.scope !23146, !nonnull !1032, !noundef !1032
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df, !dbg !23295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.b, i64 %i.dd, i1 false), !dbg !23296
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !23297, !alias.scope !23146
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !23298

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %.pre.i76, %bb.s ], [ %i.df, %bb.r ], !dbg !23297
  %i.dk = add i64 %i.dj, %i.dd, !dbg !23297
  store i64 %i.dk, ptr %i.o, align 8, !dbg !23297, !alias.scope !23146
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !23299
  %i.dl = load i64, ptr %i.o, align 8, !dbg !23300, !alias.scope !23150, !noundef !1032 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1, !dbg !23301
  call void @llvm.assume(i1 %i.dm), !dbg !23302
  %i.dn = load ptr, ptr %i.bj, align 8, !dbg !23303, !alias.scope !23150, !nonnull !1032, !noundef !1032
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl, !dbg !23304
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !23305
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !23306, !alias.scope !23150
  %i.dp = add i64 %.pre.i79, %3, !dbg !23306      ; 2 uses
  store i64 %i.dp, ptr %i.o, align 8, !dbg !23306, !alias.scope !23150
  br label %.lr.ph, !dbg !23307

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dq = phi i64 [ %i.eo, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dp, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dr, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.du, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !23308 ; 3 uses
  %i.ds = icmp eq i64 %.sroa.016.0131, 0, !dbg !23307
  br i1 %i.ds, label %._crit_edge, label %bb.t, !dbg !23307

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23309
  %i.dt = icmp eq i64 %i.bu, 0, !dbg !23247
  br i1 %i.dt, label %._crit_edge136, label %.preheader, !dbg !23247

bb.t:                                             ; preds = %.lr.ph
  %i.du = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !23310
  %i.dv = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !23311 ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dr, %.zext, !dbg !23312 ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, 257, !dbg !23313
  br i1 %i.dx, label %bb.v, label %bb.u, !dbg !23313, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !23314
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !23315
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !23315, !noundef !1032 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv, !dbg !23316
  %i.eb = zext i8 %i.dz to i64, !dbg !23317       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dz, 0, !dbg !23318
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !23318

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp sgt i64 %i.dq, -1, !dbg !23319
  call void @llvm.assume(i1 %i.ec), !dbg !23320
  %i.ed = mul nuw nsw i64 %i.eb, %.zext, !dbg !23321
  %i.ee = add nuw nsw i64 %i.ed, 7, !dbg !23322
  %i.ef = lshr i64 %i.ee, 3, !dbg !23322
  %i.eg = add nuw i64 %i.dq, %i.ef, !dbg !23323   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eg, i8 noundef 0), !dbg !23324, !noalias !23164
  %i.eh = load i64, ptr %i.o, align 8, !dbg !23325, !alias.scope !23165, !noalias !23164, !noundef !1032 ; 4 uses
  %i.ei = icmp ugt i64 %i.dq, %i.eh, !dbg !23326
  br i1 %i.ei, label %bb.y, label %bb.x, !dbg !23326, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !23327, !alias.scope !23165, !noalias !23164, !nonnull !1032, !noundef !1032
  %i.ek = sub nuw i64 %i.eh, %i.dq, !dbg !23328
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq, !dbg !23329
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.eb, ptr noalias noundef nonnull %i.el, i64 noundef %i.ek), !dbg !23330
  %i.em = load i64, ptr %i.o, align 8, !dbg !23331, !alias.scope !23165, !noalias !23164, !noundef !1032 ; 2 uses
  %i.en = icmp ugt i64 %i.eg, %i.em, !dbg !23332
  br i1 %i.en, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !23332

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !23333, !noalias !23164
  unreachable, !dbg !23333

bb.z:                                             ; preds = %bb.x
  store i64 %i.eg, ptr %i.o, align 8, !dbg !23334, !alias.scope !23165, !noalias !23164
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !23335

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.eo = phi i64 [ %i.dq, %bb.v ], [ %i.em, %bb.x ], [ %i.eg, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dr, %3, !dbg !23336
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !23166

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !23262
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.ep = icmp eq i64 %i.bq, 0, !dbg !23261       ; 2 uses
  %.val.i.i.i = load i16, ptr %i.bl, align 2, !dbg !23337, !noalias !23167, !noundef !1032
  %i.eq = zext i16 %.val.i.i.i to i64, !dbg !23338 ; 3 uses
  %i.er = sub nsw i64 %i.eq, %.sroa.0.2125, !dbg !23339 ; 5 uses
  %i.es = call i64 @llvm.smax.i64(i64 %i.er, i64 %.sroa.012.0124), !dbg !23340
  %.sroa.0.0.i83 = select i1 %i.ep, i64 %i.er, i64 %i.es, !dbg !23261 ; 2 uses
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %.sroa.084.0123), !dbg !23341
  %.sroa.0.0.i82 = select i1 %i.ep, i64 %i.er, i64 %i.et, !dbg !23261 ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !23342
  %i.ev = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !23343
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 false), !dbg !23344
  %i.ex = trunc nuw nsw i64 %i.ew to i8, !dbg !23344
  %i.ey = sub nuw nsw i8 64, %i.ex, !dbg !23345
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp, !dbg !23262
  store i8 %i.ey, ptr %i.ez, align 1, !dbg !23262
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !23346
  store i64 %i.er, ptr %i.fa, align 8, !dbg !23346
  %i.fb = icmp eq i64 %i.bm, 0, !dbg !23347
  br i1 %i.fb, label %.split.us, label %.preheader.split, !dbg !23347
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterxENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaxxEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23348 {
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
  ], !dbg !23677

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !23678
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !23679
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !23679
  %.zext = zext nneg i16 %i.l to i64, !dbg !23679 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !23681
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23682 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !23683, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !23684
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !23685
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23686 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !23686, !alias.scope !23579, !noundef !1032 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !23687
  call void @llvm.assume(i1 %i.q), !dbg !23688
  %.not.i = icmp eq i64 %i.m, 0, !dbg !23689
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !23689

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23690
  %i.s = load ptr, ptr %i.r, align 8, !dbg !23690, !alias.scope !23579, !nonnull !1032, !noundef !1032
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !23691
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !23692
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !23693, !alias.scope !23579
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !23694

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !23693
  %i.v = add i64 %i.u, %i.m, !dbg !23693
  store i64 %i.v, ptr %i.o, align 8, !dbg !23693, !alias.scope !23579
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23695 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !23696, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !23697
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !23698
  %i.y = load i64, ptr %i.o, align 8, !dbg !23699, !alias.scope !23592, !noundef !1032 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !23700
  call void @llvm.assume(i1 %i.z), !dbg !23701
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !23702
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !23702

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23703
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !23703, !alias.scope !23592, !nonnull !1032, !noundef !1032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !23704
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !23705
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !23706, !alias.scope !23592
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !23707

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !23706
  %i.ae = add i64 %i.ad, %i.w, !dbg !23706
  store i64 %i.ae, ptr %i.o, align 8, !dbg !23706, !alias.scope !23592
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23708
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23709 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !23710, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !23711
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !23712
  %i.ai = load i64, ptr %i.o, align 8, !dbg !23713, !alias.scope !23605, !noundef !1032 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !23714
  call void @llvm.assume(i1 %i.aj), !dbg !23715
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !23716
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !23716

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23717
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !23717, !alias.scope !23605, !nonnull !1032, !noundef !1032
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !23718
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !23719
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !23720, !alias.scope !23605
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !23721
end_hunk_15
begin_hunk_16_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterxENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaxxEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !23753

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23758
  ret void, !dbg !23759

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.es, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !23760 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23623), !dbg !23761
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !23762
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !23753

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !23763 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !23764, !alias.scope !23624, !noalias !23625
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !23765 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !23766
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !23767
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !23767

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23768
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !23769
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !23770 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23771 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23772
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !23773
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !23774
  call void @llvm.experimental.noalias.scope.decl(metadata !23632), !dbg !23775
  %.val.i73 = load i64, ptr %i.be, align 8, !dbg !23776, !alias.scope !23632, !noalias !23635, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bf, align 8, !dbg !23776, !alias.scope !23632, !noalias !23635, !noundef !1032 ; 4 uses
  %i.bv = sub i64 %.val8.i, %.val.i73, !dbg !23777 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !23778
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !23779

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !23637, !noalias !23635, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !23637, !noalias !23635, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bv, 4, !dbg !23779
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !23779
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bw = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !23779
  %diff.check = icmp ugt i64 %i.bw, -32, !dbg !23779
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !23779
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !23779

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bv, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !23780

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !23780 ; 2 uses
  %i.bx = add i64 %index, %.val.i73, !dbg !23781  ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bx, !dbg !23782 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.bx, !dbg !23783 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16, !dbg !23784
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !dbg !23784, !noalias !23638
  %wide.load222 = load <2 x i64>, ptr %i.ca, align 8, !dbg !23784, !noalias !23638
  %i.cb = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !23785
  %i.cc = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !23785
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !23786
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !dbg !23786, !alias.scope !23639, !noalias !23638
  store <2 x i64> %i.cc, ptr %i.cd, align 8, !dbg !23786, !alias.scope !23639, !noalias !23638
  %index.next = add nuw i64 %index, 4, !dbg !23780 ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec, !dbg !23779
  br i1 %i.ce, label %middle.block, label %vector.body, !dbg !23779, !llvm.loop !23504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec, !dbg !23779
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !23779

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cf = sub i64 %.val8.i, %.val.i73, !dbg !23779
  %xtraiter = and i64 %i.cf, 3, !dbg !23779       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !23779
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !23779

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.cg, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !23780 ; 2 uses
  %i.ch = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !23781 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ch, !dbg !23782
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ch, !dbg !23783
  %.val10.i.prol = load i64, ptr %i.ci, align 8, !dbg !23784, !noalias !23638, !noundef !1032
  %i.ck = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !23785
  store i64 %i.ck, ptr %i.cj, align 8, !dbg !23786, !alias.scope !23639, !noalias !23638
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !23779 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !23779
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !23779, !llvm.loop !23505

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.cg, %scalar.ph.prol ]
  %i.cl = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !23779
  %i.cm = add i64 %i.cl, %.val.i73, !dbg !23779
  %i.cn = icmp ugt i64 %i.cm, -4, !dbg !23779
  br i1 %i.cn, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !23779

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !23779
  %invariant.op248 = add i64 2, %.val.i73, !dbg !23779
  %invariant.op250 = add i64 3, %.val.i73, !dbg !23779
  br label %scalar.ph, !dbg !23779

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !23781 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !23782
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !23783
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !23784, !noalias !23638, !noundef !1032
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !23785
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !23786, !alias.scope !23639, !noalias !23638
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !23782
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !23783
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !23784, !noalias !23638, !noundef !1032
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !23785
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !23786, !alias.scope !23639, !noalias !23638
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !23782
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !23783
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !23784, !noalias !23638, !noundef !1032
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !23785
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !23786, !alias.scope !23639, !noalias !23638
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !23780 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !23782
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !23783
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !23784, !noalias !23638, !noundef !1032
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !23785
  store i64 %i.db, ptr %i.da, align 8, !dbg !23786, !alias.scope !23639, !noalias !23638
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !23778
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !23779, !llvm.loop !23506

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23788
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !23788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !23789
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !23790, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23791
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !23792, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !23793
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !23794
  %i.de = load i64, ptr %i.o, align 8, !dbg !23795, !alias.scope !23652, !noundef !1032 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !23796
  call void @llvm.assume(i1 %i.df), !dbg !23797
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !23798
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !23798

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !23799, !alias.scope !23652, !nonnull !1032, !noundef !1032
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !23800
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !23801
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !23802, !alias.scope !23652
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !23803

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !23802
  %i.dj = add i64 %i.di, %i.dc, !dbg !23802
  store i64 %i.dj, ptr %i.o, align 8, !dbg !23802, !alias.scope !23652
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !23804
  %i.dk = load i64, ptr %i.o, align 8, !dbg !23805, !alias.scope !23656, !noundef !1032 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !23806
  call void @llvm.assume(i1 %i.dl), !dbg !23807
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !23808, !alias.scope !23656, !nonnull !1032, !noundef !1032
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !23809
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !23810
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !23811, !alias.scope !23656
  %i.do = add i64 %.pre.i79, %3, !dbg !23811      ; 2 uses
  store i64 %i.do, ptr %i.o, align 8, !dbg !23811, !alias.scope !23656
  br label %.lr.ph, !dbg !23812

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !23813 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !23812
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !23812

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23814
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !23752
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !23752

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !23815
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !23816 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !23817 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !23818
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !23818, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !23819
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !23820
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !23820, !noundef !1032 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !23821
  %i.ea = zext i8 %i.dy to i64, !dbg !23822       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !23823
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !23823

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !23824
  call void @llvm.assume(i1 %i.eb), !dbg !23825
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !23826
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !23827
  %i.ee = lshr i64 %i.ed, 3, !dbg !23827
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !23828   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !23829, !noalias !23670
  %i.eg = load i64, ptr %i.o, align 8, !dbg !23830, !alias.scope !23671, !noalias !23670, !noundef !1032 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !23831
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !23831, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !23832, !alias.scope !23671, !noalias !23670, !nonnull !1032, !noundef !1032
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !23833
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !23834
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !23835
  %i.el = load i64, ptr %i.o, align 8, !dbg !23836, !alias.scope !23671, !noalias !23670, !noundef !1032 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !23837
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !23837

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !23838, !noalias !23670
  unreachable, !dbg !23838

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.o, align 8, !dbg !23839, !alias.scope !23671, !noalias !23670
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !23840

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !23841
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !23672

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !23767
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !23766       ; 2 uses
  %.val.i.i.i = load i64, ptr %i.bk, align 8, !dbg !23842, !noalias !23673, !noundef !1032 ; 3 uses
  %i.ep = sub i64 %.val.i.i.i, %.sroa.0.2125, !dbg !23843 ; 5 uses
  %i.eq = call i64 @llvm.smax.i64(i64 %i.ep, i64 %.sroa.012.0124), !dbg !23844
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.ep, i64 %i.eq, !dbg !23766 ; 2 uses
  %i.er = call i64 @llvm.smin.i64(i64 %i.ep, i64 %.sroa.084.0123), !dbg !23845
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.ep, i64 %i.er, !dbg !23766 ; 3 uses
  %i.es = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !23846
  %i.et = sub i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !23847
  %i.eu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.et, i1 false), !dbg !23848
  %i.ev = trunc nuw nsw i64 %i.eu to i8, !dbg !23848
  %i.ew = sub nuw nsw i8 64, %i.ev, !dbg !23849
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !23767
  store i8 %i.ew, ptr %i.ex, align 1, !dbg !23767
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !23850
  store i64 %i.ep, ptr %i.ey, align 8, !dbg !23850
  %i.ez = icmp eq i64 %i.bl, 0, !dbg !23851
  br i1 %i.ez, label %.split.us, label %.preheader.split, !dbg !23851
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteryENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltayxEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23852 {
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
  ], !dbg !24181

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !24182
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !24183
  %i.l = udiv i16 256, %.rhs.trunc, !dbg !24183
  %.zext = zext nneg i16 %i.l to i64, !dbg !24183 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !24184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !24185
  %i.m = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !24186 ; 6 uses
  %i.n = icmp ult i64 %i.m, 11
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !24187, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !24188
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m), !dbg !24189
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !24190 ; 21 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !24190, !alias.scope !24083, !noundef !1032 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1, !dbg !24191
  call void @llvm.assume(i1 %i.q), !dbg !24192
  %.not.i = icmp eq i64 %i.m, 0, !dbg !24193
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !24193

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24194
  %i.s = load ptr, ptr %i.r, align 8, !dbg !24194, !alias.scope !24083, !nonnull !1032, !noundef !1032
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !24195
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false), !dbg !24196
  %.pre.i = load i64, ptr %i.o, align 8, !dbg !24197, !alias.scope !24083
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !24198

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ], !dbg !24197
  %i.v = add i64 %i.u, %i.m, !dbg !24197
  store i64 %i.v, ptr %i.o, align 8, !dbg !24197, !alias.scope !24083
  %i.w = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !24199 ; 6 uses
  %i.x = icmp ult i64 %i.w, 11
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !24200, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !24201
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.w), !dbg !24202
  %i.y = load i64, ptr %i.o, align 8, !dbg !24203, !alias.scope !24096, !noundef !1032 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !24204
  call void @llvm.assume(i1 %i.z), !dbg !24205
  %.not.i62 = icmp eq i64 %i.w, 0, !dbg !24206
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !24206

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24207
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !24207, !alias.scope !24096, !nonnull !1032, !noundef !1032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y, !dbg !24208
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.i, i64 %i.w, i1 false), !dbg !24209
  %.pre.i63 = load i64, ptr %i.o, align 8, !dbg !24210, !alias.scope !24096
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !24211

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i63, %bb.h ], [ %i.y, %bb.g ], !dbg !24210
  %i.ae = add i64 %i.ad, %i.w, !dbg !24210
  store i64 %i.ae, ptr %i.o, align 8, !dbg !24210, !alias.scope !24096
  %i.af = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !24212
  %i.ag = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.af, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !24213 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 11
  br i1 %i.ah, label %bb.j, label %bb.i, !dbg !24214, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !24215
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag), !dbg !24216
  %i.ai = load i64, ptr %i.o, align 8, !dbg !24217, !alias.scope !24109, !noundef !1032 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !24218
  call void @llvm.assume(i1 %i.aj), !dbg !24219
  %.not.i65 = icmp eq i64 %i.ag, 0, !dbg !24220
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !24220

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24221
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !24221, !alias.scope !24109, !nonnull !1032, !noundef !1032
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai, !dbg !24222
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.i, i64 %i.ag, i1 false), !dbg !24223
  %.pre.i66 = load i64, ptr %i.o, align 8, !dbg !24224, !alias.scope !24109
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !24225

end_hunk_16
begin_hunk_17_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteryENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltayxEs_0EEBa_:bb.a
  br label %.preheader.split, !dbg !24257

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !24258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !24259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !24260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !24261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !24262
  ret void, !dbg !24263

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.es, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !24264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24127), !dbg !24265
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !24266
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !24257

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !24267 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !24268, !alias.scope !24128, !noalias !24129
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !24269 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !24270
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !24271
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !24271

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !24272
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !24273
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !24274 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !24275 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24276
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !24277
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !24278
  call void @llvm.experimental.noalias.scope.decl(metadata !24136), !dbg !24279
  %.val.i73 = load i64, ptr %i.be, align 8, !dbg !24280, !alias.scope !24136, !noalias !24139, !noundef !1032 ; 10 uses
  %.val8.i = load i64, ptr %i.bf, align 8, !dbg !24280, !alias.scope !24136, !noalias !24139, !noundef !1032 ; 4 uses
  %i.bv = sub i64 %.val8.i, %.val.i73, !dbg !24281 ; 4 uses
  %.not.i74 = icmp eq i64 %.val8.i, %.val.i73, !dbg !24282
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit, label %.lr.ph.i, !dbg !24283

.lr.ph.i:                                         ; preds = %.split.us
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !24141, !noalias !24139, !nonnull !1032, !noundef !1032 ; 7 uses
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !24141, !noalias !24139, !nonnull !1032, !noundef !1032 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bv, 4, !dbg !24283
  %.val1.i.i220 = ptrtoaddr ptr %.val1.i.i to i64, !dbg !24283
  %.val.i.i221 = ptrtoaddr ptr %.val.i.i to i64
  %i.bw = sub i64 %.val.i.i221, %.val1.i.i220, !dbg !24283
  %diff.check = icmp ugt i64 %i.bw, -32, !dbg !24283
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !24283
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !24283

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bv, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.us-phi126.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !24284

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !24284 ; 2 uses
  %i.bx = add i64 %index, %.val.i73, !dbg !24285  ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bx, !dbg !24286 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.bx, !dbg !24287 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16, !dbg !24288
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !dbg !24288, !noalias !24142
  %wide.load222 = load <2 x i64>, ptr %i.ca, align 8, !dbg !24288, !noalias !24142
  %i.cb = sub <2 x i64> %wide.load, %broadcast.splat, !dbg !24289
  %i.cc = sub <2 x i64> %wide.load222, %broadcast.splat, !dbg !24289
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !24290
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !dbg !24290, !alias.scope !24143, !noalias !24142
  store <2 x i64> %i.cc, ptr %i.cd, align 8, !dbg !24290, !alias.scope !24143, !noalias !24142
  %index.next = add nuw i64 %index, 4, !dbg !24284 ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec, !dbg !24283
  br i1 %i.ce, label %middle.block, label %vector.body, !dbg !24283, !llvm.loop !24008

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec, !dbg !24283
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader, !dbg !24283

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.cf = sub i64 %.val8.i, %.val.i73, !dbg !24283
  %xtraiter = and i64 %i.cf, 3, !dbg !24283       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !24283
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !24283

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.012.i.prol = phi i64 [ %i.cg, %scalar.ph.prol ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = add nuw i64 %.sroa.0.012.i.prol, 1, !dbg !24284 ; 2 uses
  %i.ch = add i64 %.sroa.0.012.i.prol, %.val.i73, !dbg !24285 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ch, !dbg !24286
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ch, !dbg !24287
  %.val10.i.prol = load i64, ptr %i.ci, align 8, !dbg !24288, !noalias !24142, !noundef !1032
  %i.ck = sub i64 %.val10.i.prol, %.us-phi126.ph, !dbg !24289
  store i64 %i.ck, ptr %i.cj, align 8, !dbg !24290, !alias.scope !24143, !noalias !24142
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !24283 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !24283
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !24283, !llvm.loop !24009

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.unr = phi i64 [ %.sroa.0.012.i.ph, %scalar.ph.preheader ], [ %i.cg, %scalar.ph.prol ]
  %i.cl = sub i64 %.sroa.0.012.i.ph, %.val8.i, !dbg !24283
  %i.cm = add i64 %i.cl, %.val.i73, !dbg !24283
  %i.cn = icmp ugt i64 %i.cm, -4, !dbg !24283
  br i1 %i.cn, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !24283

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !24283
  %invariant.op248 = add i64 2, %.val.i73, !dbg !24283
  %invariant.op250 = add i64 3, %.val.i73, !dbg !24283
  br label %scalar.ph, !dbg !24283

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !24285 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !24286
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !24287
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !24288, !noalias !24142, !noundef !1032
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !24289
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !24290, !alias.scope !24143, !noalias !24142
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !24286
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !24287
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !24288, !noalias !24142, !noundef !1032
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !24289
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !24290, !alias.scope !24143, !noalias !24142
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !24286
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !24287
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !24288, !noalias !24142, !noundef !1032
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !24289
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !24290, !alias.scope !24143, !noalias !24142
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !24284 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !24286
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !24287
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !24288, !noalias !24142, !noundef !1032
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !24289
  store i64 %i.db, ptr %i.da, align 8, !dbg !24290, !alias.scope !24143, !noalias !24142
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !24282
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !24283, !llvm.loop !24010

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !24291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24292
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !24292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !24293
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !24294, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24295
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !24296, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !24297
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_yENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltayxEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !24298
  %i.de = load i64, ptr %i.o, align 8, !dbg !24299, !alias.scope !24156, !noundef !1032 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !24300
  call void @llvm.assume(i1 %i.df), !dbg !24301
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !24302
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !24302

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !24303, !alias.scope !24156, !nonnull !1032, !noundef !1032
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !24304
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !24305
  %.pre.i76 = load i64, ptr %i.o, align 8, !dbg !24306, !alias.scope !24156
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !24307

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !24306
  %i.dj = add i64 %i.di, %i.dc, !dbg !24306
  store i64 %i.dj, ptr %i.o, align 8, !dbg !24306, !alias.scope !24156
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !24308
  %i.dk = load i64, ptr %i.o, align 8, !dbg !24309, !alias.scope !24160, !noundef !1032 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !24310
  call void @llvm.assume(i1 %i.dl), !dbg !24311
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !24312, !alias.scope !24160, !nonnull !1032, !noundef !1032
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !24313
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !24314
  %.pre.i79 = load i64, ptr %i.o, align 8, !dbg !24315, !alias.scope !24160
  %i.do = add i64 %.pre.i79, %3, !dbg !24315      ; 2 uses
  store i64 %i.do, ptr %i.o, align 8, !dbg !24315, !alias.scope !24160
  br label %.lr.ph, !dbg !24316

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !24317 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !24316
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !24316

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24318
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !24256
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !24256

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !24319
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !24320 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !24321 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !24322
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !24322, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !24323
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !24324
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !24324, !noundef !1032 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !24325
  %i.ea = zext i8 %i.dy to i64, !dbg !24326       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !24327
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !24327

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !24328
  call void @llvm.assume(i1 %i.eb), !dbg !24329
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !24330
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !24331
  %i.ee = lshr i64 %i.ed, 3, !dbg !24331
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !24332   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !24333, !noalias !24174
  %i.eg = load i64, ptr %i.o, align 8, !dbg !24334, !alias.scope !24175, !noalias !24174, !noundef !1032 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !24335
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !24335, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !24336, !alias.scope !24175, !noalias !24174, !nonnull !1032, !noundef !1032
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !24337
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !24338
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !24339
  %i.el = load i64, ptr %i.o, align 8, !dbg !24340, !alias.scope !24175, !noalias !24174, !noundef !1032 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !24341
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !24341

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !24342, !noalias !24174
  unreachable, !dbg !24342

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.o, align 8, !dbg !24343, !alias.scope !24175, !noalias !24174
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !24344

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !24345
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !24176

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !24271
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !24270       ; 2 uses
  %.val.i.i.i = load i64, ptr %i.bk, align 8, !dbg !24346, !noalias !24177, !noundef !1032 ; 3 uses
  %i.ep = sub i64 %.val.i.i.i, %.sroa.0.2125, !dbg !24347 ; 5 uses
  %i.eq = call i64 @llvm.smax.i64(i64 %i.ep, i64 %.sroa.012.0124), !dbg !24348
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.ep, i64 %i.eq, !dbg !24270 ; 2 uses
  %i.er = call i64 @llvm.smin.i64(i64 %i.ep, i64 %.sroa.084.0123), !dbg !24349
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.ep, i64 %i.er, !dbg !24270 ; 3 uses
  %i.es = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !24350
  %i.et = sub i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !24351
  %i.eu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.et, i1 false), !dbg !24352
  %i.ev = trunc nuw nsw i64 %i.eu to i8, !dbg !24352
  %i.ew = sub nuw nsw i8 64, %i.ev, !dbg !24353
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !24271
  store i8 %i.ew, ptr %i.ex, align 1, !dbg !24271
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !24354
  store i64 %i.ep, ptr %i.ey, align 8, !dbg !24354
  %i.ez = icmp eq i64 %i.bl, 0, !dbg !24355
  br i1 %i.ez, label %.split.us, label %.preheader.split, !dbg !24355
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #5 !dbg !24356 {
bb.a:
  %.not.i = icmp samesign ugt i64 %4, %1, !dbg !24376
  br i1 %.not.i, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !24376, !prof !1109

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #43, !dbg !24377, !noalias !24373
  unreachable, !dbg !24377

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %.not.i7 = icmp samesign ugt i64 %4, %3, !dbg !24378
  br i1 %.not.i7, label %bb.c, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.split, !dbg !24378, !prof !1109

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.split: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  %.not = icmp eq i64 %4, 0, !dbg !24379
  br i1 %.not, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader, !dbg !24379

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.split
  %i.a = getelementptr [16 x i8], ptr %2, i64 %4  ; 3 uses
  %xtraiter = and i64 %4, 1, !dbg !24379
  %i.b = icmp eq i64 %4, 1, !dbg !24379
  br i1 %i.b, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new, !dbg !24379

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader
  %unroll_iter = and i64 %4, 9223372036854775806, !dbg !24379
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11, !dbg !24379

bb.c:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #43, !dbg !24380, !noalias !24374
  unreachable, !dbg !24380

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !24379
  br i1 %lcmp.mod.not, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.epil.preheader, !dbg !24379

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.epil.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader
  %.sroa.0.016.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader ], [ %i.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod18 = trunc i64 %4 to i1, !dbg !24379
  tail call void @llvm.assume(i1 %lcmp.mod18), !dbg !24379
  %i.c = xor i64 %.sroa.0.016.epil.init, -1, !dbg !24381
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.epil.init, !dbg !24382 ; 2 uses
  %i.e = getelementptr [16 x i8], ptr %i.a, i64 %i.c, !dbg !24383 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !dbg !24384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !24384
  store <2 x ptr> %i.f, ptr %i.e, align 8, !dbg !24384
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge, !dbg !24385

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.epil.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.split
  ret void, !dbg !24385

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new
  %.sroa.0.016 = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new ], [ %i.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11 ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11.preheader.new ], [ %niter.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11 ]
  %i.g = xor i64 %.sroa.0.016, -1, !dbg !24381
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016, !dbg !24382 ; 2 uses
  %i.i = getelementptr [16 x i8], ptr %i.a, i64 %i.g, !dbg !24383 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !dbg !24384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !dbg !24384
  store <2 x ptr> %i.j, ptr %i.i, align 8, !dbg !24384
  %i.k = xor i64 %.sroa.0.016, -2, !dbg !24381
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016, !dbg !24382
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !24382 ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %i.a, i64 %i.k, !dbg !24383 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.m, align 8, !dbg !24384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !dbg !24384
  store <2 x ptr> %i.o, ptr %i.n, align 8, !dbg !24384
  %i.p = add nuw nsw i64 %.sroa.0.016, 2, !dbg !24386 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !24379 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !24379
  br i1 %niter.ncmp.1, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11._crit_edge.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit11, !dbg !24379
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1J_NtCs1gC9x3uey1Y_21polars_parquet_format14parquet_formatNtB7_10PageHeaderNtNtNtB9_6thrift8protocol10ReadThrift21read_from_in_protocolINtNtB1j_7compact21TCompactInputProtocolQINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([360 x i8]) align 8 captures(none) dereferenceable(360) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24387 {
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
