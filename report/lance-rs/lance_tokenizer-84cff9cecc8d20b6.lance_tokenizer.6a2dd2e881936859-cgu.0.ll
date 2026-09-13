Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tokenizer-84cff9cecc8d20b6.lance_tokenizer.6a2dd2e881936859-cgu.0?download=true
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1X_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer:bb.a

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i
  %unroll_iter = and i64 %i.an, 9223372036854775806
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new ], [ %i.bh, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i ]
  %i.aq = xor i64 %.sroa.0.016.i.i, -1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.ao, i64 %i.aq ; 3 uses
  %i.at = load i8, ptr %i.ar, align 4, !alias.scope !206, !noalias !207, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !10, !alias.scope !206, !noalias !207, !noundef !3
  %i.aw = load i64, ptr %i.as, align 4, !alias.scope !208, !noalias !209
  store i64 %i.aw, ptr %i.ar, align 4, !alias.scope !206, !noalias !207
  store i8 %i.at, ptr %i.as, align 4, !alias.scope !208, !noalias !209
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.av, ptr %i.ax, align 4, !alias.scope !208, !noalias !209
  %i.ay = xor i64 %.sroa.0.016.i.i, -2
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ao, i64 %i.ay ; 3 uses
  %i.bc = load i8, ptr %i.ba, align 4, !alias.scope !206, !noalias !207, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !range !10, !alias.scope !206, !noalias !207, !noundef !3
  %i.bf = load i64, ptr %i.bb, align 4, !alias.scope !208, !noalias !209
  store i64 %i.bf, ptr %i.ba, align 4, !alias.scope !206, !noalias !207
  store i8 %i.bc, ptr %i.bb, align 4, !alias.scope !208, !noalias !209
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.be, ptr %i.bg, align 4, !alias.scope !208, !noalias !209
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit.loopexit.unr-lcssa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB25_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.0.0.i34 = phi i64 [ %i.al, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE7reverseCs97bFUy425Ar_15lance_tokenizer.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.br, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !3 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.161 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.161
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %i.cc, i64 noundef range(i64 0, 1152921504606846976) %i.by, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cn, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !192
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.co = icmp eq i64 %i.by, 0
  %i.cp = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cq, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cr, ptr %i.cc
  %i.cs = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !214
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cu = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.critedge.i ]
  %i.cv = phi ptr [ %i.dd, %.preheader.i ], [ %i.cr, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -8 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load i8, ptr %i.cx, align 4, !alias.scope !213, !noalias !215, !noundef !3
  %.val10.i.i = load i8, ptr %i.cw, align 4, !alias.scope !212, !noalias !216, !noundef !3
  %i.cz = icmp ult i8 %.val.i.i, %.val10.i.i      ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cw, ptr %i.cx
  %i.da = load i64, ptr %..i.i, align 4, !alias.scope !214, !noalias !217
  store i64 %i.da, ptr %i.cy, align 4, !alias.scope !212, !noalias !216
  %i.db = xor i1 %i.cz, true
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = zext i1 %i.cz to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de ; 3 uses
  %i.dg = icmp eq ptr %i.dd, %i.cc
  %i.dh = icmp eq ptr %i.df, %2
  %or.cond.i.i = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2p_14DecompositionsINtNtBb_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.di = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 3 uses
  %i.dj = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.02.i.i, align 4, !alias.scope !212, !noalias !218, !noundef !3
  %.val.i19.i = load i8, ptr %i.dj, align 4, !alias.scope !213, !noalias !219, !noundef !3
  %i.dk = icmp ult i8 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dl = xor i1 %i.dk, true
  %spec.select.i.i = select i1 %i.dk, ptr %.sroa.0.02.i.i, ptr %i.dj
  %i.dm = load i64, ptr %spec.select.i.i, align 4, !alias.scope !214, !noalias !220
  store i64 %i.dm, ptr %i.di, align 4, !alias.scope !212, !noalias !218
  %i.dn = zext i1 %i.dl to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dk to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.ct
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2p_14DecompositionsINtNtBb_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2p_14DecompositionsINtNtBb_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dd, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !214, !noalias !221
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2p_14DecompositionsINtNtBb_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i
  %i.dx = shl nuw nsw i64 %i.ca, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by
  %i.ea = or i64 %i.bz, 1
  %i.eb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %i.dz, i64 noundef range(i64 0, 1152921504606846976) %i.bz, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !192
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB28_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1Y_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.br, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !192
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph128 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.kp, %.outer ] ; 22 uses
  %.sroa.16.0.ph127 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.ka, %.outer ] ; 2 uses
  %.sroa.025.0.ph126 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.ev, %.outer ] ; 2 uses
  %.sroa.028.0.ph125 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph128 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph125, null
  %i.e = icmp eq i32 %.sroa.025.0.ph126, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph298

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit
  %i.f = icmp eq i32 %i.ev, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph298

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph128, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit ], [ %0, %bb.a ], [ %i.kp, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit ], [ %1, %bb.a ], [ %i.ka, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2u_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.i = icmp samesign ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2b_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa119, ptr noundef nonnull align 4 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2b_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 8
  %.val8.i.i = load i8, ptr %i.q, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val9.i.i = load i8, ptr %.sroa.0.0.ph.lcssa119, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.r = icmp ult i8 %.val8.i.i, %.val9.i.i       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 16
  %.val6.i.i = load i8, ptr %i.s, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val7.i.i = load i8, ptr %i.t, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.u = icmp ult i8 %.val6.i.i, %.val7.i.i       ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.ac ; 3 uses
  %.val4.i.i = load i8, ptr %i.ab, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val5.i.i = load i8, ptr %i.w, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.ae = icmp ult i8 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i8, ptr %i.ad, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val3.i.i = load i8, ptr %i.z, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.af = icmp ult i8 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !3
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !3
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !3
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !3 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !3
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !3 ; 3 uses
  %.val.i.i = load i8, ptr %i.al, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val1.i.i = load i8, ptr %i.aj, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.am = icmp ult i8 %.val.i.i, %.val1.i.i       ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !3
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !3
  %i.ap = load i64, ptr %i.ag, align 4, !alias.scope !280, !noalias !281
  store i64 %i.ap, ptr %2, align 4, !alias.scope !281, !noalias !280
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 4, !alias.scope !280, !noalias !281
  store i64 %i.ar, ptr %i.aq, align 4, !alias.scope !281, !noalias !280
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 4, !alias.scope !280, !noalias !281
  store i64 %i.at, ptr %i.as, align 4, !alias.scope !281, !noalias !280
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ah, align 4, !alias.scope !280, !noalias !281
  store i64 %i.av, ptr %i.au, align 4, !alias.scope !281, !noalias !280
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val8.i30.i = load i8, ptr %i.ay, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val9.i31.i = load i8, ptr %i.aw, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.az = icmp ult i8 %.val8.i30.i, %.val9.i31.i  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val6.i32.i = load i8, ptr %i.ba, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val7.i33.i = load i8, ptr %i.bb, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.bc = icmp ult i8 %.val6.i32.i, %.val7.i33.i  ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk ; 3 uses
  %.val4.i34.i = load i8, ptr %i.bj, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val5.i35.i = load i8, ptr %i.be, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.bm = icmp ult i8 %.val4.i34.i, %.val5.i35.i  ; 3 uses
  %.val2.i36.i = load i8, ptr %i.bl, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val3.i37.i = load i8, ptr %i.bh, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.bn = icmp ult i8 %.val2.i36.i, %.val3.i37.i  ; 3 uses
  %i.bo = select i1 %i.bm, ptr %i.bj, ptr %i.be, !unpredictable !3
  %i.bp = select i1 %i.bn, ptr %i.bh, ptr %i.bl, !unpredictable !3
  %i.bq = select i1 %i.bn, ptr %i.bj, ptr %i.bh, !unpredictable !3
  %i.br = select i1 %i.bm, ptr %i.be, ptr %i.bq, !unpredictable !3 ; 3 uses
  %i.bs = select i1 %i.bm, ptr %i.bh, ptr %i.bj, !unpredictable !3
  %i.bt = select i1 %i.bn, ptr %i.bl, ptr %i.bs, !unpredictable !3 ; 3 uses
  %.val.i38.i = load i8, ptr %i.bt, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %.val1.i39.i = load i8, ptr %i.br, align 4, !alias.scope !280, !noalias !281, !noundef !3
  %i.bu = icmp ult i8 %.val.i38.i, %.val1.i39.i   ; 2 uses
  %i.bv = select i1 %i.bu, ptr %i.bt, ptr %i.br, !unpredictable !3
  %i.bw = select i1 %i.bu, ptr %i.br, ptr %i.bt, !unpredictable !3
  %i.bx = load i64, ptr %i.bo, align 4, !alias.scope !280, !noalias !281
  store i64 %i.bx, ptr %i.ax, align 4, !alias.scope !281, !noalias !280
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bz = load i64, ptr %i.bv, align 4, !alias.scope !280, !noalias !281
  store i64 %i.bz, ptr %i.by, align 4, !alias.scope !281, !noalias !280
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cb = load i64, ptr %i.bw, align 4, !alias.scope !280, !noalias !281
  store i64 %i.cb, ptr %i.ca, align 4, !alias.scope !281, !noalias !280
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cd = load i64, ptr %i.bp, align 4, !alias.scope !280, !noalias !281
  store i64 %i.cd, ptr %i.cc, align 4, !alias.scope !281, !noalias !280
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ce = load i64, ptr %.sroa.0.0.ph.lcssa119, align 4, !alias.scope !280, !noalias !281
  store i64 %i.ce, ptr %2, align 4, !alias.scope !281, !noalias !280
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.ch = load i64, ptr %i.cf, align 4, !alias.scope !280, !noalias !281
  store i64 %i.ch, ptr %i.cg, align 4, !alias.scope !281, !noalias !280
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.ci = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.j ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.cj, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2a_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, %bb.j
end_hunk_0
begin_hunk_1_@_RNvXNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB2_17RuleBreakIteratorNtB2_4Utf8ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer:bb.a
  store i8 %.sroa.024.1.lcssa, ptr %i.po, align 8
  %i.pp = load ptr, ptr %i.r, align 8, !nonnull !3, !align !16, !noundef !3 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 123
  %i.pr = load i8, ptr %i.pq, align 1, !noundef !3
  %i.ps = zext i8 %.sroa.024.1.lcssa to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 120
  %i.pu = load i8, ptr %i.pt, align 8, !noundef !3
  %i.pv = zext i8 %i.pu to i64
  %i.pw = mul nuw nsw i64 %i.pv, %i.ps
  %i.px = zext i8 %i.pr to i64
  %i.py = add nuw nsw i64 %i.pw, %i.px            ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !noundef !3
  %i.qb = icmp ult i64 %i.py, %i.qa
  br i1 %i.qb, label %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit178, label %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit178.thread

_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit178: ; preds = %._crit_edge339
  %i.qc = load ptr, ptr %i.pp, align 8, !nonnull !3, !noundef !3
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.py
  %i.qe = load i8, ptr %i.qd, align 1, !noundef !3
  %i.qf = tail call { i8, i8 } @_RNvXs_NtCsfkUXCDQUGzY_13icu_segmenter8providerNtB4_10BreakStateNtNtCsky2zRtncKjn_7zerovec3ule5AsULE14from_unaligned(i8 noundef %i.qe)
  %i.qg = extractvalue { i8, i8 } %i.qf, 0
  %i.qh = icmp eq i8 %i.qg, 2
  br i1 %i.qh, label %bb.bb, label %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit178.thread

_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit178.thread: ; preds = %._crit_edge339, %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit178
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.qj = load i64, ptr %i.qi, align 8, !noundef !3
  br label %.loopexit262

bb.bb:                                            ; preds = %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit178
  store i8 %.sroa.034.0.lcssa, ptr %i.po, align 8
  store ptr %.sroa.0195.0.lcssa, ptr %i.t, align 8
  store ptr %.sroa.8199.0.lcssa, ptr %i.u, align 8
  store i64 %.sroa.9.0.lcssa, ptr %i.v, align 8
  store i64 %.sroa.030.0.lcssa, ptr %i.d, align 8
  store i32 %.sroa.532.0.lcssa, ptr %i.e, align 8
  %.not100 = icmp ne i32 %.sroa.532.0.lcssa, -1   ; 2 uses
  %spec.select255 = select i1 %.not100, i64 %.sroa.030.0.lcssa, i64 undef
  br label %.loopexit262

bb.bc:                                            ; preds = %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit175
  %i.qk = load i32, ptr %i.e, align 8, !range !1054, !noundef !3
  %.not103 = icmp eq i32 %i.qk, -1
  br i1 %.not103, label %.loopexit262, label %bb.bg

bb.bd:                                            ; preds = %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit175
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %.sroa.034.0333, ptr %i.ql, align 8
  store ptr %.sroa.0195.0332, ptr %i.t, align 8
  store ptr %.sroa.8199.0331, ptr %i.u, align 8
  store i64 %.sroa.9.0330, ptr %i.v, align 8
  store i64 %.sroa.030.0335, ptr %i.d, align 8
  store i32 %.sroa.532.0334, ptr %i.e, align 8
  %.not102 = icmp ne i32 %.sroa.532.0334, -1      ; 2 uses
  %spec.select257 = select i1 %.not102, i64 %.sroa.030.0335, i64 undef
  br label %.loopexit262

bb.be:                                            ; preds = %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit175
  %spec.select = select i1 %.not101, i8 %.sroa.034.0333, i8 %i.pn
  %i.qm = load ptr, ptr %i.t, align 8, !alias.scope !1090, !noalias !1091, !nonnull !3, !noundef !3
  %i.qn = load ptr, ptr %i.u, align 8, !alias.scope !1090, !noalias !1091, !noundef !3
  br label %.sink.split

bb.bf:                                            ; preds = %_RNvMs_NtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB4_17RuleBreakIteratorNtB4_4Utf8E26get_break_state_from_tableCs97bFUy425Ar_15lance_tokenizer.exit175
  %.pre = load ptr, ptr %i.u, align 8             ; 2 uses
  %.pre444 = load ptr, ptr %i.t, align 8          ; 2 uses
  br i1 %.not101, label %bb.bh, label %.sink.split

bb.bg:                                            ; preds = %bb.bc
  %i.qo = load i64, ptr %i.d, align 8
  br label %.loopexit262

.sink.split:                                      ; preds = %bb.bf, %bb.be
  %.ph = phi ptr [ %i.qm, %bb.be ], [ %.pre444, %bb.bf ] ; 2 uses
  %.ph565 = phi ptr [ %i.qn, %bb.be ], [ %.pre, %bb.bf ] ; 2 uses
  %.sroa.034.2.ph = phi i8 [ %spec.select, %bb.be ], [ %i.pn, %bb.bf ]
  %.sroa.9.1.ph = load i64, ptr %i.v, align 8, !noalias !3, !noundef !3
  %i.qp = load i64, ptr %i.d, align 8
  %i.qq = load i32, ptr %i.e, align 8, !range !1054, !noundef !3
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %bb.bf
  %i.qr = phi ptr [ %.pre444, %bb.bf ], [ %.ph, %.sink.split ] ; 2 uses
  %i.qs = phi ptr [ %.pre, %bb.bf ], [ %.ph565, %.sink.split ] ; 2 uses
  %.sroa.9.1 = phi i64 [ %.sroa.9.0330, %bb.bf ], [ %.sroa.9.1.ph, %.sink.split ] ; 2 uses
  %.sroa.8199.1 = phi ptr [ %.sroa.8199.0331, %bb.bf ], [ %.ph565, %.sink.split ] ; 2 uses
  %.sroa.0195.1 = phi ptr [ %.sroa.0195.0332, %bb.bf ], [ %.ph, %.sink.split ] ; 2 uses
  %.sroa.034.2 = phi i8 [ %.sroa.034.0333, %bb.bf ], [ %.sroa.034.2.ph, %.sink.split ] ; 2 uses
  %.sroa.532.1 = phi i32 [ %.sroa.532.0334, %bb.bf ], [ %i.qq, %.sink.split ] ; 2 uses
  %.sroa.030.1 = phi i64 [ %.sroa.030.0335, %bb.bf ], [ %i.qp, %.sink.split ] ; 2 uses
  %i.qt = icmp eq ptr %i.qr, %i.qs
  br i1 %i.qt, label %._crit_edge339, label %.lr.ph338

bb.bi:                                            ; preds = %bb.ao
  %i.qu = load i64, ptr %i.d, align 8
  br label %.loopexit262

bb.bj:                                            ; preds = %.lr.ph, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186
  %i.qv = phi i64 [ %.promoted329, %.lr.ph ], [ %i.sq, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186 ] ; 2 uses
  %i.qw = phi ptr [ %.promoted328, %.lr.ph ], [ %i.sm, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186 ] ; 7 uses
  %i.qx = phi i32 [ %.promoted, %.lr.ph ], [ %.sroa.4.0.i.ph.i181, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186 ] ; 4 uses
  %.sroa.0.0327 = phi i64 [ 0, %.lr.ph ], [ %i.rb, %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186 ]
  %.not106 = icmp eq i32 %i.qx, -1
  br i1 %.not106, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qy = icmp samesign ult i32 %i.qx, 128
  br i1 %i.qy, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qz = icmp samesign ult i32 %i.qx, 2048
  br i1 %i.qz, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ra = icmp samesign ult i32 %i.qx, 65536
  %..i.i.i = select i1 %i.ra, i64 3, i64 4
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs97bFUy425Ar_15lance_tokenizer.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %.sroa.02.0.i = phi i64 [ 0, %bb.bj ], [ 2, %bb.bl ], [ %..i.i.i, %bb.bm ], [ 1, %bb.bk ]
  %i.rb = add i64 %.sroa.02.0.i, %.sroa.0.0327    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.rc = ptrtoint ptr %i.qw to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.rd = icmp eq ptr %i.qw, %i.o
  br i1 %i.rd, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs97bFUy425Ar_15lance_tokenizer.exit
  %i.re = getelementptr inbounds nuw i8, ptr %i.qw, i64 1 ; 4 uses
  store ptr %i.re, ptr %i.m, align 8, !alias.scope !1093
  %i.rf = load i8, ptr %i.qw, align 1, !noalias !1094, !noundef !3 ; 5 uses
  %i.rg = icmp sgt i8 %i.rf, -1
  br i1 %i.rg, label %bb.bo, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i180

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i180: ; preds = %bb.bn
  %i.rh = and i8 %i.rf, 31
  %i.ri = zext nneg i8 %i.rh to i32               ; 3 uses
  %i.rj = icmp ne ptr %i.re, %i.o
  tail call void @llvm.assume(i1 %i.rj)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qw, i64 2 ; 4 uses
  store ptr %i.rk, ptr %i.m, align 8, !alias.scope !1095
  %i.rl = load i8, ptr %i.re, align 1, !noalias !1094, !noundef !3
  %i.rm = shl nuw nsw i32 %i.ri, 6
  %i.rn = and i8 %i.rl, 63
  %i.ro = zext nneg i8 %i.rn to i32               ; 2 uses
  %i.rp = or disjoint i32 %i.rm, %i.ro
  %i.rq = icmp samesign ugt i8 %i.rf, -33
  br i1 %i.rq, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i184, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186

bb.bo:                                            ; preds = %bb.bn
  %i.rr = zext nneg i8 %i.rf to i32
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i184: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i180
  %i.rs = icmp ne ptr %i.rk, %i.o
  tail call void @llvm.assume(i1 %i.rs)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qw, i64 3 ; 4 uses
  store ptr %i.rt, ptr %i.m, align 8, !alias.scope !1096
  %i.ru = load i8, ptr %i.rk, align 1, !noalias !1094, !noundef !3
  %i.rv = shl nuw nsw i32 %i.ro, 6
  %i.rw = and i8 %i.ru, 63
  %i.rx = zext nneg i8 %i.rw to i32
  %i.ry = or disjoint i32 %i.rv, %i.rx            ; 2 uses
  %i.rz = shl nuw nsw i32 %i.ri, 12
  %i.sa = or disjoint i32 %i.ry, %i.rz
  %i.sb = icmp samesign ugt i8 %i.rf, -17
  br i1 %i.sb, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i185, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i185: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i184
  %i.sc = icmp ne ptr %i.rt, %i.o
  tail call void @llvm.assume(i1 %i.sc)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qw, i64 4 ; 2 uses
  store ptr %i.sd, ptr %i.m, align 8, !alias.scope !1097
  %i.se = load i8, ptr %i.rt, align 1, !noalias !1094, !noundef !3
  %i.sf = shl nuw nsw i32 %i.ri, 18
  %i.sg = and i32 %i.sf, 1835008
  %i.sh = shl nuw nsw i32 %i.ry, 6
  %i.si = and i8 %i.se, 63
  %i.sj = zext nneg i8 %i.si to i32
  %i.sk = or disjoint i32 %i.sh, %i.sj
  %i.sl = or disjoint i32 %i.sk, %i.sg
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186

_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i180, %bb.bo, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i184, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i185
  %i.sm = phi ptr [ %i.rt, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i184 ], [ %i.sd, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i185 ], [ %i.rk, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i180 ], [ %i.re, %bb.bo ] ; 2 uses
  %.sroa.4.0.i.ph.i181 = phi i32 [ %i.sa, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i184 ], [ %i.sl, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i185 ], [ %i.rp, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i180 ], [ %i.rr, %bb.bo ] ; 3 uses
  %i.sn = icmp samesign ult i32 %.sroa.4.0.i.ph.i181, 1114112
  tail call void @llvm.assume(i1 %i.sn)
  %i.so = ptrtoint ptr %i.sm to i64
  %i.sp = sub i64 %i.so, %i.rc
  %i.sq = add i64 %i.sp, %i.qv                    ; 2 uses
  store i64 %i.sq, ptr %i.p, align 8, !alias.scope !1056
  store i64 %i.qv, ptr %i.k, align 8
  store i32 %.sroa.4.0.i.ph.i181, ptr %i.l, align 8
  %i.sr = icmp eq i64 %i.rb, %i.i
  br i1 %i.sr, label %._crit_edge, label %bb.bj

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit186, %bb.c
  %i.ss = add i64 %i.c, -1                        ; 6 uses
  %i.st = shl nuw i64 %i.ss, 3                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.ss, 1152921504606846975
  br i1 %.not.i.i.i.i, label %bb.bq, label %bb.bp, !prof !5

bb.bp:                                            ; preds = %._crit_edge
  %.not.i.i.not = icmp eq i64 %i.c, 1
  br i1 %.not.i.i.not, label %.thread491, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

.thread491:                                       ; preds = %bb.bp
  %i.su = icmp eq i64 %i.ss, 0
  tail call void @llvm.assume(i1 %i.su)
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB2X_17RuleBreakIteratorNtB2X_4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs97bFUy425Ar_15lance_tokenizer.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.bp
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1098
  %i.sv = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.st, i64 noundef range(i64 1, 9) 8) #29, !noalias !1098 ; 11 uses
  %i.sw = ptrtoaddr ptr %i.sv to i64
  %i.sx = icmp eq ptr %i.sv, null
  br i1 %i.sx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i, %._crit_edge
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.st, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %._crit_edge ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %._crit_edge ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #30, !noalias !1099
  unreachable

bb.br:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.sz = add nuw nsw i64 %i.c, 2305843009213693951 ; 3 uses
  %i.ta = and i64 %i.sz, 2305843009213693951      ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.ta, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.br
  %i.tb = sub i64 %i.sw, %i.h
  %i.tc = add i64 %i.tb, -9
  %diff.check = icmp ult i64 %i.tc, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.sz, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %index ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %wide.load = load <2 x i64>, ptr %i.td, align 8, !noalias !1100
  %wide.load635 = load <2 x i64>, ptr %i.te, align 8, !noalias !1100
  %i.tf = sub <2 x i64> %wide.load, %broadcast.splat
  %i.tg = sub <2 x i64> %wide.load635, %broadcast.splat
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %index ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <2 x i64> %i.tf, ptr %i.th, align 8, !noalias !1101
  store <2 x i64> %i.tg, ptr %i.ti, align 8, !noalias !1101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tj = icmp eq i64 %index.next, %n.vec
  br i1 %i.tj, label %middle.block, label %vector.body, !llvm.loop !1051

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ta, %n.vec
  br i1 %cmp.n, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB2X_17RuleBreakIteratorNtB2X_4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs97bFUy425Ar_15lance_tokenizer.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.br, %middle.block
  %.ph705 = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.br ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.sz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.tk = phi i64 [ %i.to, %scalar.ph.prol ], [ %.ph705, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.tk
  %.val16.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.tl, align 8, !noalias !1100, !noundef !3
  %i.tm = sub i64 %.val16.i.i.i.i.i.i.i.i.prol, %i.i
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.tk
  store i64 %i.tm, ptr %i.tn, align 8, !noalias !1101
  %i.to = add nuw i64 %i.tk, 1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1052

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph705, %scalar.ph.preheader ], [ %i.to, %scalar.ph.prol ]
  %i.tp = sub nsw i64 %.ph705, %i.ta
  %i.tq = icmp ugt i64 %i.tp, -4
  br i1 %i.tq, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB2X_17RuleBreakIteratorNtB2X_4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs97bFUy425Ar_15lance_tokenizer.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.tr = phi i64 [ %i.uh, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.tr
  %.val16.i.i.i.i.i.i.i.i = load i64, ptr %i.ts, align 8, !noalias !1100, !noundef !3
  %i.tt = sub i64 %.val16.i.i.i.i.i.i.i.i, %i.i
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.tr
  store i64 %i.tt, ptr %i.tu, align 8, !noalias !1101
  %i.tv = add nuw i64 %i.tr, 1                    ; 2 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.tv
  %.val16.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.tw, align 8, !noalias !1100, !noundef !3
  %i.tx = sub i64 %.val16.i.i.i.i.i.i.i.i.1, %i.i
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.tv
  store i64 %i.tx, ptr %i.ty, align 8, !noalias !1101
  %i.tz = add nuw i64 %i.tr, 2                    ; 2 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.tz
  %.val16.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.ua, align 8, !noalias !1100, !noundef !3
  %i.ub = sub i64 %.val16.i.i.i.i.i.i.i.i.2, %i.i
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.tz
  store i64 %i.ub, ptr %i.uc, align 8, !noalias !1101
  %i.ud = add nuw i64 %i.tr, 3                    ; 2 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.ud
  %.val16.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.ue, align 8, !noalias !1100, !noundef !3
  %i.uf = sub i64 %.val16.i.i.i.i.i.i.i.i.3, %i.i
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.ud
  store i64 %i.uf, ptr %i.ug, align 8, !noalias !1101
  %i.uh = add nuw i64 %i.tr, 4                    ; 2 uses
  %i.ui = icmp eq i64 %i.uh, %i.ta
  br i1 %i.ui, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB2X_17RuleBreakIteratorNtB2X_4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs97bFUy425Ar_15lance_tokenizer.exit, label %scalar.ph, !llvm.loop !1053

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB2X_17RuleBreakIteratorNtB2X_4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.thread491
  %.sroa.4.0.i.i.i495 = phi i64 [ 0, %.thread491 ], [ %i.ss, %middle.block ], [ %i.ss, %scalar.ph ], [ %i.ss, %scalar.ph.prol.loopexit ]
  %.sroa.10.0.i.i.i494 = phi ptr [ inttoptr (i64 8 to ptr), %.thread491 ], [ %i.sv, %middle.block ], [ %i.sv, %scalar.ph ], [ %i.sv, %scalar.ph.prol.loopexit ]
  %.sroa.5.0.copyload.sink.i.i.i.i.i.i = phi i64 [ 0, %.thread491 ], [ %i.ta, %middle.block ], [ %i.ta, %scalar.ph ], [ %i.ta, %scalar.ph.prol.loopexit ]
  %.val121 = load i64, ptr %0, align 8            ; 2 uses
  %i.uj = icmp eq i64 %.val121, 0
  br i1 %i.uj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.bs

bb.bs:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB2X_17RuleBreakIteratorNtB2X_4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs97bFUy425Ar_15lance_tokenizer.exit
  %.val122 = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.uk = shl nuw i64 %.val121, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val122, i64 noundef %i.uk, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs97bFUy425Ar_15lance_tokenizer.exit

bb.bt:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs97bFUy425Ar_15lance_tokenizer.exit
  store i32 -1, ptr %i.l, align 8
  store i64 0, ptr %i.b, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.um = load ptr, ptr %i.ul, align 8, !nonnull !3, !align !16, !noundef !3
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 124
  %i.uo = load i8, ptr %i.un, align 4, !noundef !3
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.uo, ptr %i.up, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ur = load i64, ptr %i.uq, align 8, !noundef !3
  br label %.loopexit262

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.bs, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXNtCsfkUXCDQUGzY_13icu_segmenter14rule_segmenterINtB2X_17RuleBreakIteratorNtB2X_4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs97bFUy425Ar_15lance_tokenizer.exit
  store i64 %.sroa.4.0.i.i.i495, ptr %0, align 8
  store ptr %.sroa.10.0.i.i.i494, ptr %i.a, align 8
  store i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, ptr %i.b, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ut = load i32, ptr %i.us, align 8, !range !1054, !noundef !3
  %.not109 = icmp eq i32 %i.ut, -1
  br i1 %.not109, label %.loopexit262, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs97bFUy425Ar_15lance_tokenizer.exit
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uv = load i64, ptr %i.uu, align 8
  br label %.loopexit262
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB7_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB17_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2055, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs97bFUy425Ar_15lance_tokenizer16simple_tokenizerNtB5_17SimpleTokenStreamNtNtB7_13tokenizer_api11TokenStream7advance(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !16, !noundef !3 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1139, !nonnull !3, !noundef !3 ; 10 uses
  %.promoted = load ptr, ptr %i.g, align 8, !alias.scope !1140 ; 2 uses
  %.not = icmp eq ptr %.promoted, %i.i
  br i1 %.not, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted31 = load i64, ptr %i.j, align 8, !alias.scope !1140
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.k = phi i64 [ %.promoted31, %.lr.ph ], [ %i.ay, %.backedge ] ; 11 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %.promoted.i.i, %.backedge ] ; 6 uses
  %i.m = ptrtoint ptr %i.l to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1142
  %i.o = load i8, ptr %i.l, align 1, !noalias !1143, !noundef !3 ; 5 uses
  %i.p = icmp sgt i8 %i.o, -1
end_hunk_1
