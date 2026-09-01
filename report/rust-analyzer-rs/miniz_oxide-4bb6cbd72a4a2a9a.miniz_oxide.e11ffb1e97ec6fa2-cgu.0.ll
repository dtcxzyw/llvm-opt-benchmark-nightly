Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %.pre213 = load i16, ptr %.phi.trans.insert, align 2, !alias.scope !53
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i
  %i.fz = load i16, ptr %i.fy, align 2, !alias.scope !53, !noundef !4
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %i.gb = load i16, ptr %i.ga, align 2, !alias.scope !53, !noundef !4 ; 2 uses
  %i.gc = icmp ult i16 %i.fz, %i.gb
  br i1 %i.gc, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge212, %bb.ab
  %i.gd = phi i16 [ %.pre213, %._crit_edge212 ], [ %i.gb, %bb.ab ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2, !alias.scope !53, !noundef !4
  %i.gg = add i16 %i.gd, %i.gf
  store i16 %i.gg, ptr %i.ge, align 2, !alias.scope !53
  %i.gh = add nuw nsw i64 %.sroa.09.1.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %.sroa.09.2.i = phi i64 [ %.sroa.09.1.i, %bb.af ], [ %i.gh, %bb.ac ]
  %.sroa.0.2.i = phi i64 [ %i.gp, %bb.af ], [ %.sroa.0.1.i, %bb.ac ]
  %exitcond.not.i71 = icmp eq i64 %i.ed, %i.dx
  br i1 %exitcond.not.i71, label %._crit_edge.i72, label %.lr.ph.i70

bb.ae:                                            ; preds = %bb.ab, %bb.w
  %i.gi = icmp ult i64 %.sroa.0.1.i, %.sroa.04.2
  br i1 %i.gi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i ; 2 uses
  %i.gl = load i16, ptr %i.gj, align 2, !alias.scope !53, !noundef !4
  %i.gm = load i16, ptr %i.gk, align 2, !alias.scope !53, !noundef !4
  %i.gn = add i16 %i.gm, %i.gl
  store i16 %i.gn, ptr %i.gj, align 2, !alias.scope !53
  %i.go = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.go, ptr %i.gk, align 2, !alias.scope !53
  %i.gp = add nuw nsw i64 %.sroa.0.1.i, 1
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !53
  unreachable

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit: ; preds = %._crit_edge98.i
  br i1 %i.p, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i, i64 %.idx.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %.sroa.015.0162 = phi ptr [ %i.ji, %bb.ak ], [ %.sroa.04.0.lcssa.i, %.lr.ph.preheader ] ; 2 uses
  %i.gr = load i16, ptr %.sroa.015.0162, align 2, !noundef !4 ; 2 uses
  %i.gs = zext i16 %i.gr to i64                   ; 2 uses
  %i.gt = icmp ult i16 %i.gr, 33
  br i1 %i.gt, label %bb.ak, label %bb.al

._crit_edge:                                      ; preds = %bb.ak
  %i.gu = icmp samesign ult i64 %.sroa.04.2, 2
  br i1 %i.gu, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3 ; 10 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  %i.gx = sub nuw nsw i64 32, %3                  ; 3 uses
  %n.vec = and i64 %i.gx, 56                      ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 20
  %wide.load = load <4 x i32>, ptr %i.gw, align 4, !alias.scope !56 ; 2 uses
  %wide.load310 = load <4 x i32>, ptr %i.gy, align 4, !alias.scope !56 ; 2 uses
  %i.gz = icmp eq i64 %n.vec, 8
  br i1 %i.gz, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 36
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.ha, align 4, !alias.scope !56
  %wide.load310.1 = load <4 x i32>, ptr %i.hb, align 4, !alias.scope !56
  %i.hc = add <4 x i32> %wide.load.1, %wide.load  ; 2 uses
  %i.hd = add <4 x i32> %wide.load310.1, %wide.load310 ; 2 uses
  %i.he = icmp eq i64 %n.vec, 16
  br i1 %i.he, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 68
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.hf, align 4, !alias.scope !56
  %wide.load310.2 = load <4 x i32>, ptr %i.hg, align 4, !alias.scope !56
  %i.hh = add <4 x i32> %wide.load.2, %i.hc
  %i.hi = add <4 x i32> %wide.load310.2, %i.hd
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa327 = phi <4 x i32> [ %wide.load, %vector.ph ], [ %i.hc, %vector.body.1 ], [ %i.hh, %vector.body.2 ]
  %.lcssa326 = phi <4 x i32> [ %wide.load310, %vector.ph ], [ %i.hd, %vector.body.1 ], [ %i.hi, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa326, %.lcssa327
  %i.hj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gx, %n.vec
  br i1 %cmp.n, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.sroa.04.0.i.i = phi i64 [ %i.hm, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.hl, %scalar.ph ], [ %i.hj, %middle.block ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.hk, align 4, !alias.scope !56, !noundef !4
  %i.hl = add i32 %.val.i.i, %.sroa.02.0.i.i      ; 2 uses
  %i.hm = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.hn = icmp eq i64 %i.hm, %i.gx
  br i1 %i.hn, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph, !llvm.loop !59

_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i: ; preds = %scalar.ph, %middle.block
  %.lcssa289 = phi i32 [ %i.hj, %middle.block ], [ %i.hl, %scalar.ph ]
  %i.ho = load i32, ptr %i.gv, align 4, !alias.scope !56, !noundef !4
  %i.hp = add i32 %i.ho, %.lcssa289
  store i32 %i.hp, ptr %i.gv, align 4, !alias.scope !56
  %.idx.i74 = shl nuw nsw i64 %3, 2               ; 2 uses
  %.add.i = add nuw nsw i64 %.idx.i74, 4          ; 2 uses
  %i.hq = add nsw i64 %.idx.i74, -4               ; 2 uses
  %i.hr = lshr exact i64 %i.hq, 2
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %xtraiter347 = and i64 %i.hs, 3                 ; 3 uses
  %i.ht = icmp ult i64 %i.hq, 12
  br i1 %i.ht, label %.lr.ph.i.i.epil.preheader, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new

_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new: ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i
  %unroll_iter = and i64 %i.hs, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new
  %.sroa.0.011.i.i = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %i.ih, %.lr.ph.i.i ]
  %.sroa.05.010.i.i = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %i.ii, %.lr.ph.i.i ] ; 5 uses
  %.sroa.2.09.i.idx.i = phi i64 [ %.add.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %.sroa.2.09.i.add.i.3, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.hu = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i = getelementptr i8, ptr %i.hu, i64 -4
  %.val.i14.i = load i32, ptr %.ptr.i, align 4, !alias.scope !56, !noundef !4
  %i.hv = shl i32 %.val.i14.i, %.sroa.05.010.i.i
  %i.hw = add i32 %i.hv, %.sroa.0.011.i.i
  %i.hx = or disjoint i32 %.sroa.05.010.i.i, 1
  %i.hy = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i.1 = getelementptr i8, ptr %i.hy, i64 -8
  %.val.i14.i.1 = load i32, ptr %.ptr.i.1, align 4, !alias.scope !56, !noundef !4
  %i.hz = shl i32 %.val.i14.i.1, %i.hx
  %i.ia = add i32 %i.hz, %i.hw
  %i.ib = or disjoint i32 %.sroa.05.010.i.i, 2
  %i.ic = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i.2 = getelementptr i8, ptr %i.ic, i64 -12
  %.val.i14.i.2 = load i32, ptr %.ptr.i.2, align 4, !alias.scope !56, !noundef !4
  %i.id = shl i32 %.val.i14.i.2, %i.ib
  %i.ie = add i32 %i.id, %i.ia
  %i.if = or disjoint i32 %.sroa.05.010.i.i, 3
  %.sroa.2.09.i.add.i.3 = add nsw i64 %.sroa.2.09.i.idx.i, -16 ; 3 uses
  %.ptr.i.3 = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.2.09.i.add.i.3
  %.val.i14.i.3 = load i32, ptr %.ptr.i.3, align 4, !alias.scope !56, !noundef !4
  %i.ig = shl i32 %.val.i14.i.3, %i.if
  %i.ih = add i32 %i.ig, %i.ie                    ; 3 uses
  %i.ii = add nuw nsw i32 %.sroa.05.010.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i
  %.sroa.0.011.i.i.epil.init = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %i.ih, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %.sroa.05.010.i.i.epil.init = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %i.ii, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %.sroa.2.09.i.idx.i.epil.init = phi i64 [ %.add.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %.sroa.2.09.i.add.i.3, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %lcmp.mod350 = icmp ne i64 %xtraiter347, 0
  call void @llvm.assume(i1 %lcmp.mod350)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.011.i.i.epil = phi i32 [ %i.ik, %.lr.ph.i.i.epil ], [ %.sroa.0.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.05.010.i.i.epil = phi i32 [ %i.il, %.lr.ph.i.i.epil ], [ %.sroa.05.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.2.09.i.idx.i.epil = phi i64 [ %.sroa.2.09.i.add.i.epil, %.lr.ph.i.i.epil ], [ %.sroa.2.09.i.idx.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %.sroa.2.09.i.add.i.epil = add nsw i64 %.sroa.2.09.i.idx.i.epil, -4 ; 2 uses
  %.ptr.i.epil = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.2.09.i.add.i.epil
  %.val.i14.i.epil = load i32, ptr %.ptr.i.epil, align 4, !alias.scope !56, !noundef !4
  %i.ij = shl i32 %.val.i14.i.epil, %.sroa.05.010.i.i.epil
  %i.ik = add i32 %i.ij, %.sroa.0.011.i.i.epil    ; 2 uses
  %i.il = add nuw nsw i32 %.sroa.05.010.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter347
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !62

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i: ; preds = %.lr.ph.i.i.epil, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa
  %.lcssa324 = phi i32 [ %i.ih, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ], [ %i.ik, %.lr.ph.i.i.epil ] ; 2 uses
  %i.im = trunc nuw nsw i64 %3 to i32
  %i.in = shl nuw nsw i32 1, %i.im                ; 2 uses
  %i.io = icmp ult i32 %i.in, %.lcssa324
  br i1 %i.io, label %.lr.ph.i75, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit

.lr.ph.i75:                                       ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i, %.loopexit.i76
  %.sroa.0.026.i = phi i32 [ %i.ip, %.loopexit.i76 ], [ %i.in, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i ]
  %i.ip = add i32 %.sroa.0.026.i, 1               ; 2 uses
  %i.iq = load i32, ptr %i.gv, align 4, !alias.scope !56, !noundef !4
  %i.ir = add i32 %i.iq, -1
  store i32 %i.ir, ptr %i.gv, align 4, !alias.scope !56
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %i.is = icmp ugt i64 %i.it, 1
  br i1 %i.is, label %bb.ai, label %.loopexit.i76

.loopexit.i76:                                    ; preds = %bb.ah, %bb.aj
  %exitcond.not.i77 = icmp eq i32 %i.ip, %.lcssa324
  br i1 %exitcond.not.i77, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %.lr.ph.i75

bb.ai:                                            ; preds = %.lr.ph.i75, %bb.ah
  %.sroa.03.0.i308 = phi i64 [ %3, %.lr.ph.i75 ], [ %i.it, %bb.ah ] ; 2 uses
  %i.it = add nsw i64 %.sroa.03.0.i308, -1        ; 4 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !alias.scope !56, !noundef !4 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.it
  %i.iy = add i32 %i.iv, -1
  store i32 %i.iy, ptr %i.ix, align 4, !alias.scope !56
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.03.0.i308 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !alias.scope !56, !noundef !4
  %i.jb = add i32 %i.ja, 2
  store i32 %i.jb, ptr %i.iz, align 4, !alias.scope !56
  br label %.loopexit.i76

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit: ; preds = %.loopexit.i76, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit, %._crit_edge, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.jd = getelementptr inbounds nuw [288 x i8], ptr %i.jc, i64 %1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(288) %i.jd, i8 0, i64 288, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.jf = getelementptr inbounds nuw [576 x i8], ptr %i.je, i64 %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(576) %i.jf, i8 0, i64 576, i1 false), !alias.scope !64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.jh = add nuw nsw i64 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.018.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.jg, ptr %.sroa.018.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.018.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.018.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.018.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i64 %i.jh, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.am

bb.ak:                                            ; preds = %.lr.ph
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.015.0162, i64 4 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gs ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !noundef !4
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4
  %i.jm = icmp eq ptr %i.ji, %i.gq
  br i1 %i.jm, label %._crit_edge, label %.lr.ph

bb.al:                                            ; preds = %.lr.ph
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.gs, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
  unreachable

thread-pre-split:                                 ; preds = %bb.ax, %bb.av
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.am

bb.am:                                            ; preds = %thread-pre-split, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit
  %i.jn = phi i64 [ %.pr, %thread-pre-split ], [ 1, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit ] ; 2 uses
  %.sroa.04.1 = phi i64 [ %i.kc, %thread-pre-split ], [ %.sroa.04.2, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit ] ; 5 uses
  %.not = icmp eq i64 %i.jn, 0
  br i1 %.not, label %bb.an, label %bb.ao, !prof !67

bb.an:                                            ; preds = %bb.am
  %i.jo = load i64, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %bb.ar, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.jq = call fastcc { i64, ptr } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterlEEENtNtNtB8_6traits8iterator8Iterator3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c, i64 noundef %i.jn) #23
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.jr = add i64 %i.jo, -1
  store i64 %i.jr, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  %i.js = load ptr, ptr %i.c, align 8, !alias.scope !68, !nonnull !4, !noundef !4 ; 3 uses
  %i.jt = load ptr, ptr %.sroa.018.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !68, !nonnull !4, !noundef !4
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store ptr %i.jv, ptr %i.c, align 8, !alias.scope !68
  %i.jw = load i64, ptr %.sroa.018.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !73, !noundef !4 ; 2 uses
  %i.jx = add i64 %i.jw, 1
  store i64 %i.jx, ptr %.sroa.018.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !73
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.ap, %bb.aq
  %.sroa.2.0.i = phi ptr [ %i.js, %bb.aq ], [ null, %bb.ap ]
  %.sroa.0.0.i = phi i64 [ %i.jw, %bb.aq ], [ undef, %bb.ap ]
  %i.jy = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.jz = insertvalue { i64, ptr } %i.jy, ptr %.sroa.2.0.i, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.an, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.as:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit, %bb.ao
  %.pn = phi { i64, ptr } [ %i.jq, %bb.ao ], [ %i.jz, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCsjkkKzr5dxZe_11miniz_oxide.exit ] ; 2 uses
  %.sroa.7.0 = extractvalue { i64, ptr } %.pn, 1  ; 2 uses
  %.sroa.023.0 = extractvalue { i64, ptr } %.pn, 0
  %.not66 = icmp eq ptr %.sroa.7.0, null
  br i1 %.not66, label %bb.ar, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ka = load i32, ptr %.sroa.7.0, align 4, !noundef !4 ; 2 uses
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  %i.kc = sub nsw i64 %.sroa.04.1, %i.kb          ; 3 uses
  %i.kd = icmp ult i64 %.sroa.04.1, %i.kb
  %.not67 = icmp ugt i64 %.sroa.04.1, %.sroa.04.2
  %or.cond = or i1 %.not67, %i.kd
  br i1 %or.cond, label %bb.au, label %bb.av, !prof !74

.loopexit:                                        ; preds = %bb.bd, %bb.ar
  %i.ke = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.ke, align 4
  %i.kf = add nsw i64 %3, -1                      ; 2 uses
  %xtraiter351 = and i64 %i.kf, 3                 ; 3 uses
  %unroll_iter355 = and i64 %i.kf, -4
  br label %bb.bk

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.kc, i64 noundef %.sroa.04.1, i64 noundef %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.04.1
  %i.kh = icmp eq i32 %i.ka, 0
  br i1 %i.kh, label %thread-pre-split, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.av
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.kc
  %i.kj = trunc i64 %.sroa.023.0 to i8
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph166, %bb.ax
  %.sroa.026.0164 = phi ptr [ %i.ki, %.lr.ph166 ], [ %i.ko, %bb.ax ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.026.0164, i64 2
  %i.kl = load i16, ptr %i.kk, align 2, !noundef !4 ; 2 uses
  %i.km = zext i16 %i.kl to i64                   ; 2 uses
  %i.kn = icmp ult i16 %i.kl, 288
  br i1 %i.kn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.026.0164, i64 4 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.km
  store i8 %i.kj, ptr %i.kp, align 1
  %i.kq = icmp eq ptr %i.ko, %i.kg
  br i1 %i.kq, label %thread-pre-split, label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.km, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22
  unreachable

bb.az:                                            ; preds = %bb.c, %bb.bb
  %.sroa.04.2 = phi i64 [ %.sroa.04.0157, %bb.c ], [ %i.kv, %bb.bb ] ; 32 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.ba:                                            ; preds = %bb.c
  %i.kr = icmp ult i64 %.sroa.04.0157, 288
  br i1 %i.kr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ks = trunc nuw nsw i64 %.sroa.042.0158 to i16
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.04.0157 ; 2 uses
  store i16 %i.l, ptr %i.kt, align 2
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  store i16 %i.ks, ptr %i.ku, align 2
  %i.kv = add nuw nsw i64 %.sroa.04.0157, 1
  br label %bb.az

bb.bc:                                            ; preds = %bb.ba
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0157, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22
  unreachable

.lr.ph169.preheader:                              ; preds = %bb.a
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.kx = getelementptr inbounds nuw [288 x i8], ptr %i.kw, i64 %1 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %2
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %bb.bd
  %.sroa.0.0167 = phi ptr [ %i.lc, %bb.bd ], [ %i.kx, %.lr.ph169.preheader ] ; 2 uses
  %i.kz = load i8, ptr %.sroa.0.0167, align 1, !noundef !4 ; 2 uses
  %i.la = zext i8 %i.kz to i64                    ; 2 uses
  %i.lb = icmp ult i8 %i.kz, 33
  br i1 %i.lb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph169
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.0167, i64 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.la ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !noundef !4
  %i.lf = add i32 %i.le, 1
  store i32 %i.lf, ptr %i.ld, align 4
end_hunk_0
