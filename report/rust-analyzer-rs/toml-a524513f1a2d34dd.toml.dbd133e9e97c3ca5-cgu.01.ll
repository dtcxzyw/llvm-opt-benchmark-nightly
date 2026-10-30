Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/toml-a524513f1a2d34dd.toml.dbd133e9e97c3ca5-cgu.01?download=true
inline.NumInlined: 132
inline.NumDeleted: 91
begin_hunk_0_@_RNvXs0_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt:bb.a
  br label %bb.p

.split.i:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit, %select.unfold.i
  %i.cj = phi i8 [ %i.dh, %select.unfold.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit ]
  %.lcssa294307 = phi i64 [ %.lcssa294306, %select.unfold.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit ] ; 3 uses
  %.lcssa301305 = phi i64 [ %.lcssa301303, %select.unfold.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit ]
  %i.ck = phi i64 [ %i.di, %select.unfold.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit ] ; 3 uses
  %i.cl = phi i1 [ %i.dj, %select.unfold.i ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit ]
  %.sroa.01.0.i = phi i64 [ %i.dk, %select.unfold.i ], [ %.sroa.0.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit ]
  br i1 %i.cl, label %_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsiS54oC2UhYT_4toml.exit, label %bb.t

bb.t:                                             ; preds = %.split.i
  %i.cm = icmp ult i64 %i.z, %i.ck
  br i1 %i.cm, label %select.unfold.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.t, %bb.x
  %i.cn = phi i64 [ %i.dc, %bb.x ], [ %i.ck, %bb.t ] ; 5 uses
  %i.co = sub nuw i64 %i.z, %i.cn                 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.ptr283, i64 %i.cn ; 2 uses
  %i.cq = icmp samesign ult i64 %i.co, 16
  br i1 %i.cq, label %.preheader.i.i.i.i.i, label %bb.u

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.cr = call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef range(i64 0, -9223372036854775808) %i.co), !noalias !188
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.v, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.co, %bb.v ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.v ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.cs = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.ct = insertvalue { i64, i64 } %i.cs, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.v
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.cx, %bb.v ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.01.05.i.i.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !189, !noalias !188, !noundef !4
  %i.cw = icmp eq i8 %i.cv, 10
  br i1 %i.cw, label %._crit_edge.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cx = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cx, %i.co
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.u
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.ct, %._crit_edge.i.i.i.i.i ], [ %i.cr, %bb.u ] ; 2 uses
  %i.cy = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.w, label %select.unfold.i

bb.w:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.da = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1 ; 3 uses
  %i.db = add i64 %i.cn, 1
  %i.dc = add i64 %i.db, %i.da                    ; 7 uses
  %.not12.i.i.i.i = icmp ugt i64 %i.dc, %i.z
  %i.dd = add i64 %i.cn, %i.da
  %or.cond.i.i.i.i.not = icmp ult i64 %i.dd, %i.z
  br i1 %or.cond.i.i.i.i.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  br i1 %.not12.i.i.i.i, label %select.unfold.i, label %.lr.ph.split.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.de = getelementptr i8, ptr %.ptr283, i64 %i.cn
  %i.df = getelementptr i8, ptr %i.de, i64 %i.da
  %lhsc = load i8, ptr %i.df, align 1
  %i.dg = icmp eq i8 %lhsc, 10
  br i1 %i.dg, label %select.unfold.i, label %bb.x

select.unfold.i:                                  ; preds = %bb.y, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i, %bb.x, %bb.t
  %i.dh = phi i8 [ 1, %bb.t ], [ 1, %bb.x ], [ 1, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.cj, %bb.y ] ; 2 uses
  %.lcssa294306 = phi i64 [ %.lcssa294307, %bb.t ], [ %.lcssa294307, %bb.x ], [ %.lcssa294307, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.dc, %bb.y ] ; 3 uses
  %.lcssa301303 = phi i64 [ %.lcssa301305, %bb.t ], [ %i.dc, %bb.x ], [ %i.z, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.dc, %bb.y ] ; 3 uses
  %i.di = phi i64 [ %i.ck, %bb.t ], [ %i.dc, %bb.x ], [ %i.z, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.dc, %bb.y ]
  %i.dj = phi i1 [ true, %bb.t ], [ true, %bb.x ], [ true, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i ], [ false, %bb.y ]
  %i.dk = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsiS54oC2UhYT_4toml.exit.thread, label %.split.i

_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsiS54oC2UhYT_4toml.exit.thread: ; preds = %select.unfold.i
  %i.dm = trunc nuw i8 %i.dh to i1
  br i1 %i.dm, label %_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsiS54oC2UhYT_4toml.exit, label %bb.z

bb.z:                                             ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsiS54oC2UhYT_4toml.exit.thread
  %i.dn = icmp ult i64 %i.z, %.lcssa301303
  br i1 %i.dn, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit, %bb.z
  %.pre.i2.i352359 = phi i64 [ %.lcssa294306, %bb.z ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit ] ; 3 uses
  %.promoted.i.i353356 = phi i64 [ %.lcssa301303, %bb.z ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.backedge, %.lr.ph.split.preheader.i.i
  %i.do = phi i64 [ %.promoted.i.i353356, %.lr.ph.split.preheader.i.i ], [ %i.ed, %.lr.ph.split.i.i.backedge ] ; 5 uses
  %i.dp = sub nuw i64 %i.z, %i.do                 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.ptr283, i64 %i.do ; 2 uses
  %i.dr = icmp samesign ult i64 %i.dp, 16
  br i1 %i.dr, label %.preheader.i.i.i, label %bb.aa

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.aa:                                            ; preds = %.lr.ph.split.i.i
  %i.ds = call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef range(i64 0, -9223372036854775808) %i.dp), !noalias !190
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ab, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.dp, %bb.ab ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.ab ], [ 1, %.lr.ph.i.i.i ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ab
  %.sroa.01.05.i.i.i = phi i64 [ %i.dy, %bb.ab ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.01.05.i.i.i
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !191, !noalias !190, !noundef !4
  %i.dx = icmp eq i8 %i.dw, 10
  br i1 %i.dx, label %._crit_edge.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.dy = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dy, %i.dp
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.aa
  %.merged.i.i.i = phi { i64, i64 } [ %i.du, %._crit_edge.i.i.i ], [ %i.ds, %bb.aa ] ; 2 uses
  %i.dz = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.ac, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.ac:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.eb = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.ec = add i64 %i.do, 1
  %i.ed = add i64 %i.ec, %i.eb                    ; 2 uses
  %.not12.i.i = icmp ugt i64 %i.ed, %i.z          ; 2 uses
  %i.ee = add i64 %i.do, %i.eb
  %or.cond.i.i.not = icmp ult i64 %i.ee, %i.z
  br i1 %or.cond.i.i.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not12.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i.backedge

.lr.ph.split.i.i.backedge:                        ; preds = %bb.ad, %bb.ae
  br label %.lr.ph.split.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ef = add i64 %i.do, %i.eb                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.ptr283, i64 %i.ef
  %lhsc348 = load i8, ptr %i.eg, align 1
  %i.eh = icmp eq i8 %lhsc348, 10                 ; 2 uses
  %brmerge370 = or i1 %i.eh, %.not12.i.i
  br i1 %brmerge370, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit409, label %.lr.ph.split.i.i.backedge

_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsiS54oC2UhYT_4toml.exit: ; preds = %.split.i, %_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsiS54oC2UhYT_4toml.exit.thread
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19
  unreachable

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit409: ; preds = %bb.ae
  %.mux371.le = select i1 %i.eh, i64 %i.ef, i64 %i.z
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit409, %bb.ad, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.z
  %.pre.i2.i352357 = phi i64 [ %.lcssa294306, %bb.z ], [ %.pre.i2.i352359, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %.pre.i2.i352359, %bb.ad ], [ %.pre.i2.i352359, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit409 ] ; 2 uses
  %.pn = phi i64 [ %i.z, %bb.z ], [ %i.z, %bb.ad ], [ %.mux371.le, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit409 ], [ %i.z, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i.ph = sub nuw i64 %.pn, %.pre.i2.i352357 ; 2 uses
  %.sroa.0.1.i.ph = getelementptr inbounds nuw i8, ptr %.ptr283, i64 %.pre.i2.i352357
  store ptr %.sroa.0.1.i.ph, ptr %i.j, align 8, !captures !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.4.1.i.ph, ptr %i.ei, align 8
  %i.ej = sub i64 %.val1.i, %.val.i
  %i.ek = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.1.i.ph, i64 %.sroa.3.0.i)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ek, i64 %i.ej) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.441.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.el, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  %i.em = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !4, !align !9, !noundef !4 ; 4 uses
  %i.ep = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo, ptr noundef nonnull @12, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ep, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !invariant.load !4, !nonnull !4 ; 8 uses
  br label %bb.ap

bb.ag:                                            ; preds = %bb.ap
  %i.es = add i64 %.sroa.0242.0382, 1
  %exitcond = icmp eq i64 %.sroa.0242.0382, %i.by
  br i1 %exitcond, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.et = call noundef zeroext i1 %i.er(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 2) #20
  br i1 %i.et, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.m, ptr %i.h, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.485.0..sroa_idx, align 8
  %i.eu = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo, ptr noundef nonnull @14, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.eu, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsiS54oC2UhYT_4toml, ptr %.sroa.4101.0..sroa_idx, align 8
  %i.ev = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo, ptr noundef nonnull @15, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ev, label %.loopexit, label %.preheader373

bb.ak:                                            ; preds = %.preheader373
  %i.ew = add i64 %.sroa.0243.0383, 1
  %exitcond323 = icmp eq i64 %.sroa.0243.0383, %i.by
  br i1 %exitcond323, label %bb.al, label %.preheader373

bb.al:                                            ; preds = %bb.ak
  %i.ex = call noundef zeroext i1 %i.er(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 1) #20
  br i1 %i.ex, label %.loopexit, label %.preheader288

.preheader288:                                    ; preds = %bb.al, %bb.ao
  %.sroa.0247.0 = phi i64 [ %i.fc, %bb.ao ], [ 0, %bb.al ] ; 3 uses
  %.sroa.8249.0 = phi i1 [ %i.fd, %bb.ao ], [ false, %bb.al ]
  %.not.i236 = icmp ugt i64 %.sroa.0247.0, %.sroa.3.0.i
  %or.cond287 = select i1 %.sroa.8249.0, i1 true, i1 %.not.i236
  br i1 %or.cond287, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.preheader288
  %i.ey = call noundef zeroext i1 %i.er(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1) #20
  br i1 %i.ey, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.am
  %umax = call i64 @llvm.umax.i64(i64 %..i, i64 1)
  %exitcond.not384 = icmp ult i64 %..i, 2
  br i1 %exitcond.not384, label %.preheader._crit_edge, label %.lr.ph386

.preheader:                                       ; preds = %.lr.ph386
  %i.ez = add i64 %.sroa.0218.0385, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ez, %umax
  br i1 %exitcond.not, label %.preheader._crit_edge, label %.lr.ph386

.lr.ph386:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0218.0385 = phi i64 [ %i.ez, %.preheader ], [ 1, %.preheader.preheader ]
  %i.fa = call noundef zeroext i1 %i.er(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1) #20
  br i1 %i.fa, label %.loopexit, label %.preheader

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.fb = call noundef zeroext i1 %i.er(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1) #20
  br i1 %i.fb, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %.preheader._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvMNtNtCsiS54oC2UhYT_4toml2de5errorNtB2_5Error4span.exit.thread

.loopexit:                                        ; preds = %bb.ap, %.preheader373, %bb.ao, %.lr.ph386, %bb.aj, %bb.ai, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, %.preheader._crit_edge, %bb.am, %bb.al, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ax

bb.ao:                                            ; preds = %.preheader288
  %i.fc = add i64 %.sroa.0247.0, 1
  %i.fd = icmp eq i64 %.sroa.0247.0, -1
  %i.fe = call noundef zeroext i1 %i.er(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1) #20
  br i1 %i.fe, label %.loopexit, label %.preheader288

.preheader373:                                    ; preds = %bb.aj, %bb.ak
  %.sroa.0243.0383 = phi i64 [ %i.ew, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.ff = call noundef zeroext i1 %i.er(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1) #20
  br i1 %i.ff, label %.loopexit, label %bb.ak

bb.ap:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0242.0382 = phi i64 [ 0, %bb.af ], [ %i.es, %bb.ag ] ; 2 uses
  %i.fg = call noundef zeroext i1 %i.er(ptr noundef nonnull %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1) #20
  br i1 %i.fg, label %.loopexit, label %bb.ag

bb.aq:                                            ; preds = %_RNvMNtNtCsiS54oC2UhYT_4toml2de5errorNtB2_5Error4span.exit.thread
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !4 ; 3 uses
  %i.fj = icmp ult i64 %i.fi, 384307168202282326
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq i64 %i.fi, 0
  br i1 %i.fk, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !4, !noundef !4
  call void @_RINvNtCsbSS6DM8SDEO_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fm, i64 noundef %i.fi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4205.0..sroa_idx, align 8
  %i.fn = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @20, ptr noundef nonnull %i.d)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #16
          to label %common.resume unwind label %bb.aw

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit241 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit241: ; preds = %bb.at
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ax:                                            ; preds = %_RNvMNtNtCsiS54oC2UhYT_4toml2de5errorNtB2_5Error4span.exit.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit241, %bb.aq, %.loopexit
  %.sroa.0.1 = phi i1 [ true, %.loopexit ], [ false, %bb.aq ], [ %i.fn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit241 ], [ %i.x, %_RNvMNtNtCsiS54oC2UhYT_4toml2de5errorNtB2_5Error4span.exit.thread ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsiS54oC2UhYT_4toml2de5errorINtB5_8TomlSinkINtNtCshzWfHUSfYae_4core6option6OptionNtB5_5ErrorEENtNtCsa5zhLZWy8nm_11toml_parser5error9ErrorSink12report_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !198, !noundef !4
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !8, !alias.scope !199, !noundef !4
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsa5zhLZWy8nm_11toml_parser5error10ParseErrorECsiS54oC2UhYT_4toml.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsa5zhLZWy8nm_11toml_parser5error10ParseErrorECsiS54oC2UhYT_4toml.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !200, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEE18get_or_insert_withNCNvXs3_NtNtCsiS54oC2UhYT_4toml2de5errorINtB1L_8TomlSinkIBw_NtB1L_5ErrorEENtNtCsa5zhLZWy8nm_11toml_parser5error9ErrorSink12report_error0EB1P_.exit

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val3 = load i64, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = invoke { ptr, i64 } @_RNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = invoke noundef i64 @_RINvNtCsbSS6DM8SDEO_5alloc4sync11data_offseteECsiS54oC2UhYT_4toml(ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %.noexc
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.i, align 8, !alias.scope !200
  store i64 %i.p, ptr %i.m, align 8, !alias.scope !200
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEE18get_or_insert_withNCNvXs3_NtNtCsiS54oC2UhYT_4toml2de5errorINtB1L_8TomlSinkIBw_NtB1L_5ErrorEENtNtCsa5zhLZWy8nm_11toml_parser5error9ErrorSink12report_error0EB1P_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsa5zhLZWy8nm_11toml_parser5error10ParseErrorECsiS54oC2UhYT_4toml.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit.i.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEEB13_.exit
  ret void

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEE18get_or_insert_withNCNvXs3_NtNtCsiS54oC2UhYT_4toml2de5errorINtB1L_8TomlSinkIBw_NtB1L_5ErrorEENtNtCsa5zhLZWy8nm_11toml_parser5error9ErrorSink12report_error0EB1P_.exit: ; preds = %.noexc4, %bb.f
  %i.u = phi ptr [ %i.t, %.noexc4 ], [ %i.j, %bb.f ] ; 2 uses
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEEB13_.exit

end_hunk_0
