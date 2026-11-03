Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr_ls.yr_ls.99ec3cc769773652-cgu.11?download=true
inline.NumInlined: 172
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util6stream6unfoldINtB5_6UnfoldINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtB9_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runB1z_NtB2a_15TokioPipeStdoutE00NCNCB3e_00ENtNtCsljouJN4AMMC_12futures_core6stream6Stream9poll_nextCsddkiMbsmfqo_5yr_ls:bb.a
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = load i8, ptr %i.ci, align 1, !noalias !118, !noundef !5
  %i.co = shl nuw nsw i32 %i.ck, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = icmp samesign ugt i8 %i.cg, -33
  br i1 %i.cs, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.peel.i.i.i.i.i, label %bb.aj

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.peel.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.peel.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cu = add nuw nsw i64 %.promoted157.i.i.i.i.i.i, 2
  %i.cv = icmp samesign ne i64 %i.cu, %i.bv
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load i8, ptr %i.ct, align 1, !noalias !118, !noundef !5
  %i.cx = shl nuw nsw i32 %i.cq, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz            ; 2 uses
  %i.db = shl nuw nsw i32 %i.ck, 12
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = icmp samesign ugt i8 %i.cg, -17
  br i1 %i.dd, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.peel.i.i.i.i.i, label %bb.aj

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.peel.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.peel.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.df = add nuw nsw i64 %.promoted157.i.i.i.i.i.i, 3
  %i.dg = icmp samesign ne i64 %i.df, %i.bv
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = load i8, ptr %i.de, align 1, !noalias !118, !noundef !5
  %i.di = shl nuw nsw i32 %i.ck, 18
  %i.dj = and i32 %i.di, 1835008
  %i.dk = shl nuw nsw i32 %i.da, 6
  %i.dl = and i8 %i.dh, 63
  %i.dm = zext nneg i8 %i.dl to i32
  %i.dn = or disjoint i32 %i.dk, %i.dm
  %i.do = or disjoint i32 %i.dn, %i.dj
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dp = zext nneg i8 %i.cg to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.peel.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.peel.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.peel.i.i.i.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i = phi i32 [ %i.dc, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.peel.i.i.i.i.i ], [ %i.do, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.peel.i.i.i.i.i ], [ %i.cr, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.peel.i.i.i.i.i ], [ %i.dp, %bb.ai ] ; 4 uses
  %i.dq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.dq)
  br i1 %i.by, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i, 128
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i, 2048
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i, 65536
  %..i.us.i.peel.i.i.i.i.i = select i1 %i.dt, i64 3, i64 4
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.am, %bb.al, %bb.ak
  %.sroa.01.0.i.us.i.peel.i.i.i.i.i = phi i64 [ 2, %bb.al ], [ %..i.us.i.peel.i.i.i.i.i, %bb.am ], [ 1, %bb.ak ]
  %i.du = add i64 %.sroa.01.0.i.us.i.peel.i.i.i.i.i, %.promoted157.i.i.i.i.i.i ; 19 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.us.i.i.i.i.i.i = icmp ult i64 %i.du, %i.bv
  br i1 %.not.i.i.us.i.i.i.i.i.i, label %bb.ao, label %.split.i.i.us.i.i.i.i.i.i

.split.i.i.us.i.i.i.i.i.i:                        ; preds = %bb.an
  %i.dw = icmp eq i64 %i.du, %i.bv
  br i1 %i.dw, label %bb.ap, label %.split.us161.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.du
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !116, !noalias !119, !noundef !5
  %i.dz = icmp sgt i8 %i.dy, -65
  br i1 %i.dz, label %bb.ap, label %.split.us161.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao, %.split.i.i.us.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ea = icmp samesign eq i64 %i.du, %i.bv
  br i1 %i.ea, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.du
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !120, !noundef !5 ; 3 uses
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i: ; preds = %bb.aq
  %i.ee = add nuw nsw i64 %i.du, 1
  %i.ef = icmp samesign ne i64 %i.ee, %i.bv
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp samesign ugt i8 %i.ec, -33
  br i1 %i.eg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i
  %i.eh = add nuw nsw i64 %i.du, 2
  %i.ei = icmp samesign ne i64 %i.eh, %i.bv
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp samesign ugt i8 %i.ec, -17
  br i1 %i.ej, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i
  %i.ek = add nuw nsw i64 %i.du, 3
  %i.el = icmp samesign ne i64 %i.ek, %i.bv
  tail call void @llvm.assume(i1 %i.el)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i

.split.us161.i.i.i.i.i.i:                         ; preds = %bb.ao, %.split.i.i.us.i.i.i.i.i.i, %bb.af, %.split.i.i.us.i.peel.i.i.i.i.i
  %.lcssa40.i.i.i.i.i = phi i64 [ %.promoted157.i.i.i.i.i.i, %.split.i.i.us.i.peel.i.i.i.i.i ], [ %.promoted157.i.i.i.i.i.i, %bb.af ], [ %i.du, %.split.i.i.us.i.i.i.i.i.i ], [ %i.du, %bb.ao ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bv, i64 noundef %.lcssa40.i.i.i.i.i, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #18
          to label %.noexc81.i.i unwind label %bb.cm, !noalias !109

.noexc81.i.i:                                     ; preds = %.split.us161.i.i.i.i.i.i
  unreachable

.split166.us.i.i.i.i.i.i:                         ; preds = %bb.ag
  br i1 %i.by, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i, label %.loopexit44.i.i.i.i.i.i

bb.ar:                                            ; preds = %.noexc80.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !114, !noalias !113, !noundef !5 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !114, !noalias !113, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.ep, %i.en
  br i1 %.not.i.i.i.i.i.i, label %bb.at, label %.loopexit44.i.i.i.i.i.i

bb.as:                                            ; preds = %.noexc80.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !114, !noalias !113, !noundef !5 ; 2 uses
  %i.et = icmp eq i64 %i.es, -1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !114, !noalias !113, !nonnull !5, !noundef !5 ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !114, !noalias !113, !noundef !5 ; 10 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !114, !noalias !113, !nonnull !5, !noundef !5 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !114, !noalias !113, !noundef !5 ; 15 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.fd = add nsw i64 %i.fb, -1                   ; 5 uses
  br i1 %i.et, label %bb.be, label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !114, !noalias !113, !nonnull !5, !noundef !5
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.fh = load i8, ptr %i.fg, align 8, !alias.scope !114, !noalias !113, !noundef !5 ; 2 uses
  %i.fi = sub nuw i64 %i.en, %i.ep                ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ep ; 2 uses
  %i.fk = icmp samesign ult i64 %i.fi, 16
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fl = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fj, i64 noundef range(i64 0, -9223372036854775808) %i.fi)
          to label %.noexc82.i.i unwind label %bb.cm, !noalias !109 ; 2 uses

.noexc82.i.i:                                     ; preds = %bb.au
  %i.fm = extractvalue { i64, i64 } %i.fl, 0
  %i.fn = extractvalue { i64, i64 } %i.fl, 1
  %i.fo = trunc nuw i64 %i.fm to i1
  br i1 %i.fo, label %.loopexit43.i.i.i.i.i.i, label %.loopexit44.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.at, %bb.av
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.fs, %bb.av ], [ 0, %bb.at ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !121, !noalias !122, !noundef !5
  %i.fr = icmp eq i8 %i.fq, %i.fh
  br i1 %i.fr, label %.loopexit43.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fs = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i.i.i.i = icmp eq i64 %i.fs, %i.fi
  br i1 %exitcond.not.i7.i.i.i.i.i.i, label %.loopexit44.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit43.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc82.i.i
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.fn, %.noexc82.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ft = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.fi
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = add i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.ep ; 2 uses
  %i.fv = add i64 %i.fu, 1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i

bb.aw:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !126, !noalias !113 ; 2 uses
  %i.fw = add i64 %.promoted.i.i.i.i.i.i.i, %i.fd ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.ex
  br i1 %i.fx, label %.lr.ph.i8.i.i.i.i.i.i, label %.loopexit44.i.i.i.i.i.i

.lr.ph.i8.i.i.i.i.i.i:                            ; preds = %bb.aw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !126, !noalias !113, !noundef !5
  %i.ga = load i64, ptr %i.eq, align 8, !alias.scope !126, !noalias !113 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !126, !noalias !113 ; 2 uses
  %i.gd = sub i64 %i.fb, %i.gc
  %invariant.op = sub i64 1, %i.ga
  br label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.az, %.lr.ph.i8.i.i.i.i.i.i
  %.sink70.i.i25.i.i.i.i.i = phi i64 [ %.sink70.i.i.i.i.i.i.i, %bb.az ], [ %i.es, %.lr.ph.i8.i.i.i.i.i.i ] ; 3 uses
  %.sink71.i.i22.i.i.i.i.i = phi i64 [ %.sink71.i.i.i.i.i.i.i, %bb.az ], [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i8.i.i.i.i.i.i ] ; 7 uses
  %i.ge = phi i64 [ %i.gn, %bb.az ], [ %i.fw, %.lr.ph.i8.i.i.i.i.i.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !124, !noalias !122, !noundef !5
  %i.gh = and i8 %i.gg, 63
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gj, %i.fz
  %.not.i9.i.i.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.gl = add i64 %.sink71.i.i22.i.i.i.i.i, %i.fb
  br label %bb.az

bb.ay:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %..i.i10.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i25.i.i.i.i.i, i64 %i.ga) ; 2 uses
  %i.gm = icmp ult i64 %..i.i10.i.i.i.i.i.i, %i.fb
  br i1 %i.gm, label %.lr.ph, label %.preheader36.i.i.i.i.i.i.i.preheader

bb.az:                                            ; preds = %bb.bd, %bb.bc, %bb.ax
  %.sink71.i.i.i.i.i.i.i = phi i64 [ %i.hj, %bb.bd ], [ %i.hi, %bb.bc ], [ %i.gl, %bb.ax ] ; 2 uses
  %.sink70.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bd ], [ %i.gd, %bb.bc ], [ 0, %bb.ax ]
  %i.gn = add i64 %.sink71.i.i.i.i.i.i.i, %i.fd   ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.ex
  br i1 %i.go, label %.lr.ph.split.i.i.i.i.i.i.i, label %.loopexit44.i.i.i.i.i.i

bb.ba:                                            ; preds = %.lr.ph
  %i.gp = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i183, 1 ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.fb
  br i1 %i.gq, label %.lr.ph, label %.preheader36.i.i.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.i.i.preheader:             ; preds = %bb.ba, %bb.ay
  %i.gr = icmp ult i64 %.sink70.i.i25.i.i.i.i.i, %i.ga
  br i1 %i.gr, label %.lr.ph186, label %.split.us.i11.i.i.i.i.i.i

.lr.ph:                                           ; preds = %bb.ay, %bb.ba
  %.sroa.04.0.i.i.i.i.i.i.i183 = phi i64 [ %i.gp, %bb.ba ], [ %..i.i10.i.i.i.i.i.i, %bb.ay ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.04.0.i.i.i.i.i.i.i183
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !125, !noalias !122, !noundef !5
  %i.gu = add i64 %.sroa.04.0.i.i.i.i.i.i.i183, %.sink71.i.i22.i.i.i.i.i ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.ex
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gu
  %i.gx = load i8, ptr %i.gw, align 1, !alias.scope !124, !noalias !122, !noundef !5
  %.not21.i.i.i.i.i.i.i = icmp eq i8 %i.gt, %i.gx
  br i1 %.not21.i.i.i.i.i.i.i, label %bb.ba, label %bb.bd

.preheader36.i.i.i.i.i.i.i:                       ; preds = %bb.bb
  %i.gy = icmp ult i64 %.sink70.i.i25.i.i.i.i.i, %i.ha
  br i1 %i.gy, label %.lr.ph186, label %.split.us.i11.i.i.i.i.i.i

.split.us.i11.i.i.i.i.i.i:                        ; preds = %.preheader36.i.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i.i
  %i.gz = add i64 %.sink71.i.i22.i.i.i.i.i, %i.fb
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i

.lr.ph186:                                        ; preds = %.preheader36.i.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i.i.i185 = phi i64 [ %i.ha, %.preheader36.i.i.i.i.i.i.i ], [ %i.ga, %.preheader36.i.i.i.i.i.i.i.preheader ]
  %i.ha = add i64 %.sroa.2.0.i.i.i.i.i.i.i185, -1 ; 6 uses
  %i.hb = icmp ult i64 %i.ha, %i.fb
  br i1 %i.hb, label %bb.bb, label %.split32.us.i20.i.i.i.i.invoke.i.i

bb.bb:                                            ; preds = %.lr.ph186
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !125, !noalias !122, !noundef !5
  %i.he = add i64 %i.ha, %.sink71.i.i22.i.i.i.i.i ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.ex
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.he
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !124, !noalias !122, !noundef !5
  %.not20.i.i.i.i.i.i.i = icmp eq i8 %i.hd, %i.hh
  br i1 %.not20.i.i.i.i.i.i.i, label %.preheader36.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hi = add i64 %.sink71.i.i22.i.i.i.i.i, %i.gc
  br label %bb.az

bb.bd:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i22.i.i.i.i.i, %invariant.op
  %i.hj = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i.i.i183
  br label %bb.az

bb.be:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %.promoted.i12.i.i.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !130, !noalias !113 ; 3 uses
  %i.hk = add i64 %.promoted.i12.i.i.i.i.i.i, %i.fd ; 3 uses
  %i.hl = icmp ult i64 %i.hk, %i.ex
  br i1 %i.hl, label %.lr.ph.i15.i.i.i.i.i.i, label %.loopexit44.i.i.i.i.i.i

.lr.ph.i15.i.i.i.i.i.i:                           ; preds = %bb.be
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !130, !noalias !113, !noundef !5 ; 2 uses
  %i.ho = load i64, ptr %i.eq, align 8, !alias.scope !130, !noalias !113
  %.fr215.i.i.i.i.i.i = freeze i64 %i.ho          ; 10 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !130, !noalias !113
  %umax.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.fb) ; 2 uses
  %i.hr = add i64 %.fr215.i.i.i.i.i.i, -1         ; 2 uses
  %.first_iter.i16.i.i.i.i.i.i = icmp ult i64 %i.hr, %i.fb
  %reass.sub95.i.i.i.i.i = sub i64 1, %.fr215.i.i.i.i.i.i ; 2 uses
  br i1 %.first_iter.i16.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.i.i.preheader:          ; preds = %.lr.ph.i15.i.i.i.i.i.i
  %exitcond.not.i17.i.i.i.i.i.i188.not = icmp ult i64 %.fr215.i.i.i.i.i.i, %i.fb
  br label %.lr.ph.split.us.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader:       ; preds = %.lr.ph.i15.i.i.i.i.i.i
  %exitcond.not.i17.i.i.us.i.i.i.i193.not = icmp ult i64 %.fr215.i.i.i.i.i.i, %i.fb
  %.not34.i.us.i.i.us.i.i.i.i196 = icmp eq i64 %.fr215.i.i.i.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.i.i.i:                 ; preds = %.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader, %bb.bh
  %.sink.i18.i28.i.us.i.i.i.i = phi i64 [ %.sink.i18.i.i.us.i.i.i.i, %bb.bh ], [ %.promoted.i12.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader ] ; 7 uses
  %i.hs = phi i64 [ %i.iq, %bb.bh ], [ %i.hk, %.lr.ph.split.us.i.i.i.us.i.i.i.i.preheader ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !128, !noalias !122, !noundef !5
  %i.hv = and i8 %i.hu, 63
  %i.hw = zext nneg i8 %i.hv to i64
  %i.hx = shl nuw i64 1, %i.hw
  %i.hy = and i64 %i.hx, %i.hn
  %.not.us.i.i.i.us.i.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not.us.i.i.i.us.i.i.i.i, label %bb.bg, label %.preheader35.i.i.i.us.i.i.i.i.preheader

.preheader35.i.i.i.us.i.i.i.i.preheader:          ; preds = %.lr.ph.split.us.i.i.i.us.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i.i.i193.not, label %.lr.ph195, label %.preheader.i19.us.i.i.us.i.i.i.i.preheader

.preheader35.i.i.i.us.i.i.i.i:                    ; preds = %.lr.ph195
  %i.hz = add i64 %.sroa.04.0.us.i.i.i.us.i.i.i.i194, 1 ; 2 uses
  %exitcond.not.i17.i.i.us.i.i.i.i = icmp eq i64 %i.hz, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i.i.i, label %.preheader.i19.us.i.i.us.i.i.i.i.preheader, label %.lr.ph195

.preheader.i19.us.i.i.us.i.i.i.i.preheader:       ; preds = %.preheader35.i.i.i.us.i.i.i.i, %.preheader35.i.i.i.us.i.i.i.i.preheader
  br i1 %.not34.i.us.i.i.us.i.i.i.i196, label %.split.us.i21.i.i.i.i.i.i, label %.lr.ph198

.lr.ph195:                                        ; preds = %.preheader35.i.i.i.us.i.i.i.i.preheader, %.preheader35.i.i.i.us.i.i.i.i
  %.sroa.04.0.us.i.i.i.us.i.i.i.i194 = phi i64 [ %i.hz, %.preheader35.i.i.i.us.i.i.i.i ], [ %.fr215.i.i.i.i.i.i, %.preheader35.i.i.i.us.i.i.i.i.preheader ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.04.0.us.i.i.i.us.i.i.i.i194
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !129, !noalias !122, !noundef !5
  %i.ic = add i64 %.sroa.04.0.us.i.i.i.us.i.i.i.i194, %.sink.i18.i28.i.us.i.i.i.i ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ex
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ic
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !128, !noalias !122, !noundef !5
  %.not21.us.i.i.i.us.i.i.i.i = icmp eq i8 %i.ib, %i.if
  br i1 %.not21.us.i.i.i.us.i.i.i.i, label %.preheader35.i.i.i.us.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph195
  %.reass282.i.reass.i.us.i.i.i.i = add i64 %.sink.i18.i28.i.us.i.i.i.i, %reass.sub95.i.i.i.i.i
  %i.ig = add i64 %.reass282.i.reass.i.us.i.i.i.i, %.sroa.04.0.us.i.i.i.us.i.i.i.i194
  br label %bb.bh

.preheader.i19.us.i.i.us.i.i.i.i:                 ; preds = %.lr.ph198
  %.not34.i.us.i.i.us.i.i.i.i = icmp eq i64 %i.ih, 0
  br i1 %.not34.i.us.i.i.us.i.i.i.i, label %.split.us.i21.i.i.i.i.i.i, label %.lr.ph198

.lr.ph198:                                        ; preds = %.preheader.i19.us.i.i.us.i.i.i.i.preheader, %.preheader.i19.us.i.i.us.i.i.i.i
  %.sroa.2.0.us.i.us.i.i.us.i.i.i.i197 = phi i64 [ %i.ih, %.preheader.i19.us.i.i.us.i.i.i.i ], [ %.fr215.i.i.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.i.i.preheader ]
  %i.ih = add i64 %.sroa.2.0.us.i.us.i.i.us.i.i.i.i197, -1 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !alias.scope !129, !noalias !122, !noundef !5
  %i.ik = add i64 %i.ih, %.sink.i18.i28.i.us.i.i.i.i ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.ex
  tail call void @llvm.assume(i1 %i.il)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ik
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !128, !noalias !122, !noundef !5
  %.not20.us.i.us.i.i.us.i.i.i.i = icmp eq i8 %i.ij, %i.in
  br i1 %.not20.us.i.us.i.i.us.i.i.i.i, label %.preheader.i19.us.i.i.us.i.i.i.i, label %.split.us.i.i.us.i.i.i.i

.split.us.i.i.us.i.i.i.i:                         ; preds = %.lr.ph198
  %i.io = add i64 %.sink.i18.i28.i.us.i.i.i.i, %i.hq
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i.i.i.i
  %i.ip = add i64 %.sink.i18.i28.i.us.i.i.i.i, %i.fb
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.split.us.i.i.us.i.i.i.i, %bb.bf
  %.sink.i18.i.i.us.i.i.i.i = phi i64 [ %i.ip, %bb.bg ], [ %i.ig, %bb.bf ], [ %i.io, %.split.us.i.i.us.i.i.i.i ] ; 2 uses
  %i.iq = add i64 %.sink.i18.i.i.us.i.i.i.i, %i.fd ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.ex
  br i1 %i.ir, label %.lr.ph.split.us.i.i.i.us.i.i.i.i, label %.loopexit44.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.preheader, %bb.bk
  %.sink.i18.i28.i.i.i.i.i = phi i64 [ %.sink.i18.i.i.i.i.i.i, %bb.bk ], [ %.promoted.i12.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.is = phi i64 [ %i.ji, %bb.bk ], [ %i.hk, %.lr.ph.split.us.i.i.i.i.i.i.i.preheader ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !128, !noalias !122, !noundef !5
  %i.iv = and i8 %i.iu, 63
  %i.iw = zext nneg i8 %i.iv to i64
  %i.ix = shl nuw i64 1, %i.iw
  %i.iy = and i64 %i.ix, %i.hn
  %.not.us.i.i.i.i.i.i.i = icmp eq i64 %i.iy, 0
  br i1 %.not.us.i.i.i.i.i.i.i, label %bb.bj, label %.preheader35.i.i.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i.i.i188.not, label %.lr.ph190, label %.preheader.i19.i.i.i.i.i.i

.preheader35.i.i.i.i.i.i.i:                       ; preds = %.lr.ph190
  %i.iz = add i64 %.sroa.04.0.us.i.i.i.i.i.i.i189, 1 ; 2 uses
  %exitcond.not.i17.i.i.i.i.i.i = icmp eq i64 %i.iz, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i.i.i, label %.preheader.i19.i.i.i.i.i.i, label %.lr.ph190

.lr.ph190:                                        ; preds = %.preheader35.i.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i.i.i189 = phi i64 [ %i.iz, %.preheader35.i.i.i.i.i.i.i ], [ %.fr215.i.i.i.i.i.i, %.preheader35.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.04.0.us.i.i.i.i.i.i.i189
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !129, !noalias !122, !noundef !5
  %i.jc = add i64 %.sroa.04.0.us.i.i.i.i.i.i.i189, %.sink.i18.i28.i.i.i.i.i ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.ex
  tail call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.jc
  %i.jf = load i8, ptr %i.je, align 1, !alias.scope !128, !noalias !122, !noundef !5
  %.not21.us.i.i.i.i.i.i.i = icmp eq i8 %i.jb, %i.jf
  br i1 %.not21.us.i.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i.i, label %bb.bi

.preheader.i19.i.i.i.i.i.i:                       ; preds = %.preheader35.i.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i = icmp eq i64 %.fr215.i.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i.i.i, label %.split.us.i21.i.i.i.i.i.i, label %.split32.us.i20.i.i.i.i.invoke.i.i

.split32.us.i20.i.i.i.i.invoke.i.i:               ; preds = %.lr.ph186, %.preheader.i19.i.i.i.i.i.i
  %3 = phi i64 [ %i.hr, %.preheader.i19.i.i.i.i.i.i ], [ %i.ha, %.lr.ph186 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef range(i64 0, -9223372036854775808) %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
          to label %.split32.us.i20.i.i.i.i.cont.i.i unwind label %bb.cm, !noalias !109

.split32.us.i20.i.i.i.i.cont.i.i:                 ; preds = %.split32.us.i20.i.i.i.i.invoke.i.i
  unreachable

bb.bi:                                            ; preds = %.lr.ph190
  %.reass282.i.reass.i.i.i.i.i = add i64 %.sink.i18.i28.i.i.i.i.i, %reass.sub95.i.i.i.i.i
  %i.jg = add i64 %.reass282.i.reass.i.i.i.i.i, %.sroa.04.0.us.i.i.i.i.i.i.i189
  br label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %i.jh = add i64 %.sink.i18.i28.i.i.i.i.i, %i.fb
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sink.i18.i.i.i.i.i.i = phi i64 [ %i.jh, %bb.bj ], [ %i.jg, %bb.bi ] ; 2 uses
  %i.ji = add i64 %.sink.i18.i.i.i.i.i.i, %i.fd   ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.ex
  br i1 %i.jj, label %.lr.ph.split.us.i.i.i.i.i.i.i, label %.loopexit44.i.i.i.i.i.i

.split.us.i21.i.i.i.i.i.i:                        ; preds = %.preheader.i19.us.i.i.us.i.i.i.i.preheader, %.preheader.i19.us.i.i.us.i.i.i.i, %.preheader.i19.i.i.i.i.i.i
  %.sink.i18.i28.i7.i.i.i.i = phi i64 [ %.sink.i18.i28.i.i.i.i.i, %.preheader.i19.i.i.i.i.i.i ], [ %.sink.i18.i28.i.us.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.i.i ], [ %.sink.i18.i28.i.us.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.i.i.preheader ] ; 2 uses
  %i.jk = add i64 %.sink.i18.i28.i7.i.i.i.i, %i.fb
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i

.loopexit44.i.i.i.i.i.i:                          ; preds = %bb.az, %bb.bk, %bb.bh, %bb.av, %bb.be, %bb.aw, %.noexc82.i.i, %bb.ar, %.split166.us.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !113
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread.i.i: ; preds = %.loopexit44.i.i.i.i.i.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !132
  store ptr %i.as, ptr %i.c, align 8, !noalias !132
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !132
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jl, ptr noundef nonnull @12, ptr noundef nonnull %i.c)
          to label %bb.ci unwind label %bb.cm, !noalias !109

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.i.i.i.i.i, %bb.aq, %.split.us.i21.i.i.i.i.i.i, %.split.us.i11.i.i.i.i.i.i, %.loopexit43.i.i.i.i.i.i, %.split166.us.i.i.i.i.i.i, %bb.ap, %bb.aj
  %.sroa.10.0.i.i.i.pn.i.i = phi i64 [ %i.bv, %.split166.us.i.i.i.i.i.i ], [ %i.jk, %.split.us.i21.i.i.i.i.i.i ], [ %.promoted157.i.i.i.i.i.i, %bb.aj ], [ %i.bv, %bb.ap ], [ %i.fv, %.loopexit43.i.i.i.i.i.i ], [ %i.gz, %.split.us.i11.i.i.i.i.i.i ], [ %i.du, %bb.aq ], [ %i.du, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.i.i.i.i.i ], [ %i.du, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i ], [ %i.du, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10140.0.ph.i.i = phi i64 [ %i.bv, %.split166.us.i.i.i.i.i.i ], [ %.sink.i18.i28.i7.i.i.i.i, %.split.us.i21.i.i.i.i.i.i ], [ %.promoted157.i.i.i.i.i.i, %bb.aj ], [ %i.bv, %bb.ap ], [ %i.fu, %.loopexit43.i.i.i.i.i.i ], [ %.sink71.i.i22.i.i.i.i.i, %.split.us.i11.i.i.i.i.i.i ], [ %i.du, %bb.aq ], [ %i.du, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.i.i.i.i.i ], [ %i.du, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i ], [ %i.du, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !113
  %.sroa.12141.0.ph.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.10.0.i.i.i.pn.i.i ; 4 uses
  %.sroa.14.0.ph.i.i = sub nuw i64 %i.bn, %.sroa.10.0.i.i.i.pn.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !107
  store ptr %.sroa.12141.0.ph.i.i, ptr %i.m, align 8, !noalias !107, !captures !8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.14.0.ph.i.i, ptr %i.jm, align 8, !noalias !107
  %.not.i88.i.i = icmp eq i64 %.sroa.10140.0.ph.i.i, 14
  br i1 %.not.i88.i.i, label %bb.bl, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bl:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i
  %i.jn = load i8, ptr %i.bm, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.jo = add i8 %i.jn, -65
  %i.jp = icmp ult i8 %i.jo, 26
  %i.jq = select i1 %i.jp, i8 32, i8 0
  %.sroa.012.0.i.i.i.i = or i8 %i.jq, %i.jn
  %i.jr = icmp eq i8 %.sroa.012.0.i.i.i.i, 99
  br i1 %i.jr, label %bb.bm, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.js = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.ju = add i8 %i.jt, -65
  %i.jv = icmp ult i8 %i.ju, 26
  %i.jw = select i1 %i.jv, i8 32, i8 0
  %.sroa.012.0.1.i.i.i.i = or i8 %i.jw, %i.jt
  %i.jx = icmp eq i8 %.sroa.012.0.1.i.i.i.i, 111
  br i1 %i.jx, label %bb.bn, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.jz = load i8, ptr %i.jy, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.ka = add i8 %i.jz, -65
  %i.kb = icmp ult i8 %i.ka, 26
  %i.kc = select i1 %i.kb, i8 32, i8 0
  %.sroa.012.0.2.i.i.i.i = or i8 %i.kc, %i.jz
  %i.kd = icmp eq i8 %.sroa.012.0.2.i.i.i.i, 110
  br i1 %i.kd, label %bb.bo, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.kg = add i8 %i.kf, -65
  %i.kh = icmp ult i8 %i.kg, 26
  %i.ki = select i1 %i.kh, i8 32, i8 0
  %.sroa.012.0.3.i.i.i.i = or i8 %i.ki, %i.kf
  %i.kj = icmp eq i8 %.sroa.012.0.3.i.i.i.i, 116
  br i1 %i.kj, label %bb.bp, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.kl = load i8, ptr %i.kk, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.km = add i8 %i.kl, -65
  %i.kn = icmp ult i8 %i.km, 26
  %i.ko = select i1 %i.kn, i8 32, i8 0
  %.sroa.012.0.4.i.i.i.i = or i8 %i.ko, %i.kl
  %i.kp = icmp eq i8 %.sroa.012.0.4.i.i.i.i, 101
  br i1 %i.kp, label %bb.bq, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.ks = add i8 %i.kr, -65
  %i.kt = icmp ult i8 %i.ks, 26
  %i.ku = select i1 %i.kt, i8 32, i8 0
  %.sroa.012.0.5.i.i.i.i = or i8 %i.ku, %i.kr
  %i.kv = icmp eq i8 %.sroa.012.0.5.i.i.i.i, 110
  br i1 %i.kv, label %bb.br, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.br:                                            ; preds = %bb.bq
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bm, i64 6
  %i.kx = load i8, ptr %i.kw, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.ky = add i8 %i.kx, -65
  %i.kz = icmp ult i8 %i.ky, 26
  %i.la = select i1 %i.kz, i8 32, i8 0
  %.sroa.012.0.6.i.i.i.i = or i8 %i.la, %i.kx
  %i.lb = icmp eq i8 %.sroa.012.0.6.i.i.i.i, 116
  br i1 %i.lb, label %bb.bs, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bs:                                            ; preds = %bb.br
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bm, i64 7
  %i.ld = load i8, ptr %i.lc, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.le = add i8 %i.ld, -65
  %i.lf = icmp ult i8 %i.le, 26
  %i.lg = select i1 %i.lf, i8 32, i8 0
  %.sroa.012.0.7.i.i.i.i = or i8 %i.lg, %i.ld
  %i.lh = icmp eq i8 %.sroa.012.0.7.i.i.i.i, 45
  br i1 %i.lh, label %bb.bt, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.li = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.lj = load i8, ptr %i.li, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.lk = add i8 %i.lj, -65
  %i.ll = icmp ult i8 %i.lk, 26
  %i.lm = select i1 %i.ll, i8 32, i8 0
  %.sroa.012.0.8.i.i.i.i = or i8 %i.lm, %i.lj
  %i.ln = icmp eq i8 %.sroa.012.0.8.i.i.i.i, 108
  br i1 %i.ln, label %bb.bu, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  %i.lp = load i8, ptr %i.lo, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.lq = add i8 %i.lp, -65
  %i.lr = icmp ult i8 %i.lq, 26
  %i.ls = select i1 %i.lr, i8 32, i8 0
  %.sroa.012.0.9.i.i.i.i = or i8 %i.ls, %i.lp
  %i.lt = icmp eq i8 %.sroa.012.0.9.i.i.i.i, 101
  br i1 %i.lt, label %bb.bv, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %i.lv = load i8, ptr %i.lu, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.lw = add i8 %i.lv, -65
  %i.lx = icmp ult i8 %i.lw, 26
  %i.ly = select i1 %i.lx, i8 32, i8 0
  %.sroa.012.0.10.i.i.i.i = or i8 %i.ly, %i.lv
  %i.lz = icmp eq i8 %.sroa.012.0.10.i.i.i.i, 110
  br i1 %i.lz, label %bb.bw, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bm, i64 11
  %i.mb = load i8, ptr %i.ma, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.mc = add i8 %i.mb, -65
  %i.md = icmp ult i8 %i.mc, 26
  %i.me = select i1 %i.md, i8 32, i8 0
  %.sroa.012.0.11.i.i.i.i = or i8 %i.me, %i.mb
  %i.mf = icmp eq i8 %.sroa.012.0.11.i.i.i.i, 103
  br i1 %i.mf, label %bb.bx, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.mh = load i8, ptr %i.mg, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.mi = add i8 %i.mh, -65
  %i.mj = icmp ult i8 %i.mi, 26
  %i.mk = select i1 %i.mj, i8 32, i8 0
  %.sroa.012.0.12.i.i.i.i = or i8 %i.mk, %i.mh
  %i.ml = icmp eq i8 %.sroa.012.0.12.i.i.i.i, 116
  br i1 %i.ml, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.i.i, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.i.i: ; preds = %bb.bx
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bm, i64 13
  %i.mn = load i8, ptr %i.mm, align 1, !alias.scope !133, !noalias !109, !noundef !5 ; 2 uses
  %i.mo = add i8 %i.mn, -65
  %i.mp = icmp ult i8 %i.mo, 26
  %i.mq = select i1 %i.mp, i8 32, i8 0
  %.sroa.012.0.13.i.i.i.i = or i8 %i.mq, %i.mn
  %i.mr = icmp eq i8 %.sroa.012.0.13.i.i.i.i, 104
  br i1 %i.mr, label %bb.by, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.by:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.i.i
  switch i64 %.sroa.14.0.ph.i.i, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by
  %i.ms = load i8, ptr %.sroa.12141.0.ph.i.i, align 1, !alias.scope !134, !noalias !109, !noundef !5 ; 2 uses
  switch i8 %i.ms, label %bb.ca [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.by
  %.pr.i.i.i.i.i = load i8, ptr %.sroa.12141.0.ph.i.i, align 1, !alias.scope !134, !noalias !109
  br label %bb.ca

bb.ca:                                            ; preds = %thread-pre-split.i.i.i.i.i, %bb.bz
  %i.mt = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.ms, %bb.bz ]
  %cond.i.i.i.i.i = icmp eq i8 %i.mt, 43          ; 2 uses
  %i.mu = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %.sroa.14.0.ph.i.i, %i.mu ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.12141.0.ph.i.i, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.mv = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.mv, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.ca
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %.loopexit290.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.cb
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i203, i64 1
  %i.mx = add nsw i64 %.sroa.15.1.i.i.i.i.i202, -1 ; 2 uses
  %.not52.i.i.i.i.i = icmp eq i64 %i.mx, 0
  br i1 %.not52.i.i.i.i.i, label %.loopexit290.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.preheader:                 ; preds = %bb.ca, %.preheader56.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i203 = phi ptr [ %i.mw, %.preheader56.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.ca ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i202 = phi i64 [ %i.mx, %.preheader56.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %bb.ca ]
  %.sroa.042.0.i.i.i.i.i201 = phi i64 [ %i.ng, %.preheader56.i.i.i.i.i ], [ 0, %bb.ca ]
  %i.my = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i201, i64 10) ; 2 uses
  %i.mz = extractvalue { i64, i1 } %i.my, 1
  br i1 %i.mz, label %.loopexit.i.i, label %bb.cb, !prof !9

bb.cb:                                            ; preds = %.preheader56.i.i.i.i.i.preheader
  %i.na = extractvalue { i64, i1 } %i.my, 0       ; 2 uses
  %i.nb = load i8, ptr %.sroa.0.1.i.i.i.i.i203, align 1, !alias.scope !134, !noalias !109, !noundef !5
  %i.nc = zext i8 %i.nb to i32
  %i.nd = add nsw i32 %i.nc, -48                  ; 2 uses
  %i.ne = icmp ugt i32 %i.nd, 9
  %i.nf = zext nneg i32 %i.nd to i64
  %i.ng = add i64 %i.na, %i.nf                    ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.na
  %or.cond.i.i = select i1 %i.ne, i1 true, i1 %i.nh, !prof !135
  br i1 %or.cond.i.i, label %.loopexit.i.i, label %.preheader56.i.i.i.i.i, !prof !135

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.cc
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.no, %bb.cc ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.nn, %bb.cc ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.nq, %bb.cc ], [ 0, %.preheader.i.i.i.i.i ]
  %i.ni = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !134, !noalias !109, !noundef !5
  %i.nj = zext i8 %i.ni to i32
  %i.nk = add nsw i32 %i.nj, -48                  ; 2 uses
  %i.nl = icmp ult i32 %i.nk, 10
  br i1 %i.nl, label %bb.cc, label %.loopexit.i.i

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.nm = mul i64 %.sroa.042.267.i.i.i.i.i, 10
  %i.nn = add nsw i64 %.sroa.15.268.i.i.i.i.i, -1 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i, i64 1
  %i.np = zext nneg i32 %i.nk to i64
  %i.nq = add i64 %i.nm, %i.np                    ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.nn, 0
  br i1 %.not53.i.i.i.i.i, label %.loopexit290.i.i, label %.lr.ph.i.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i: ; preds = %.loopexit290.i.i, %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.i.i, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !107
  br label %bb.ce

.loopexit.i.i:                                    ; preds = %bb.cb, %.preheader56.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i, %bb.bz, %bb.bz, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  store ptr %i.m, ptr %i.a, align 8, !noalias !137
  %.sroa.42.0..sroa_idx.i.i90.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsddkiMbsmfqo_5yr_ls, ptr %.sroa.42.0..sroa_idx.i.i90.i.i, align 8, !noalias !137
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.nr, ptr noundef nonnull @10, ptr noundef nonnull %i.a)
          to label %bb.cf unwind label %bb.cd, !noalias !109

bb.cd:                                            ; preds = %.loopexit.i.i
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !107
  br label %.body107.i.i

.loopexit290.i.i:                                 ; preds = %.preheader56.i.i.i.i.i, %bb.cc, %.preheader.i.i.i.i.i
  %.sroa.11165.0.i.i = phi i64 [ %i.nq, %bb.cc ], [ 0, %.preheader.i.i.i.i.i ], [ %i.ng, %.preheader56.i.i.i.i.i ]
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 1, ptr %i.nt, align 8, !noalias !107
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %.sroa.11165.0.i.i, ptr %i.nu, align 8, !noalias !107
  br label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.ce:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i, %bb.l
  %i.nv = phi ptr [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i ], [ %i.ac, %bb.l ]
  %i.nw = phi ptr [ %i.ah, %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i ], [ %i.ad, %bb.l ]
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 0, ptr %i.ny, align 8, !alias.scope !138, !noalias !107
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 8 dereferenceable(24) %i.nx, i64 24, i1 false), !noalias !107
  store i64 0, ptr %i.nx, align 8, !alias.scope !139, !noalias !107
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !139, !noalias !107
  store i64 0, ptr %i.ny, align 8, !alias.scope !139, !noalias !107
  %.sroa.8121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.nz, ptr %.sroa.8121.0..sroa_idx.i.i, align 8, !noalias !107
  %.sroa.9122.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.nx, ptr %.sroa.9122.0..sroa_idx.i.i, align 8, !noalias !107
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !107
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !107
  br label %bb.o

.body107.i.i:                                     ; preds = %bb.ds, %bb.dp, %bb.di, %bb.cm, %bb.cd, %bb.u, %bb.s, %bb.p
  %i.ob = phi ptr [ %i.ou, %bb.cm ], [ %i.pa, %bb.dp ], [ %i.ag, %bb.cd ], [ %i.pa, %bb.ds ], [ %i.ag, %bb.u ], [ %i.pa, %bb.di ], [ %i.ag, %bb.p ], [ %i.ag, %bb.s ]
  %i.oc = phi ptr [ %i.ov, %bb.cm ], [ %i.pb, %bb.dp ], [ %i.ah, %bb.cd ], [ %i.pb, %bb.ds ], [ %i.ah, %bb.u ], [ %i.pb, %bb.di ], [ %i.ah, %bb.p ], [ %i.ah, %bb.s ]
  %.pn53.pn.i.i = phi { ptr, i32 } [ %i.ow, %bb.cm ], [ %i.qq, %bb.dp ], [ %i.ns, %bb.cd ], [ %.pn48.pn.i.i, %bb.ds ], [ %i.ao, %bb.u ], [ %i.qk, %bb.di ], [ %i.ak, %bb.p ], [ %i.an, %bb.s ]
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.od) #16
          to label %.body94.i.i unwind label %bb.co, !noalias !109

bb.cf:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  %.sroa.7160.0.copyload.i.i = load i64, ptr %i.nr, align 8, !noalias !140
  %.sroa.10161.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10161.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.10161.0..sroa_idx.i.i, align 8, !noalias !140
  %.sroa.10161.sroa.5.0..sroa.10161.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10161.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.10161.sroa.5.0..sroa.10161.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !140
  %.sroa.10161.sroa.6.0..sroa.10161.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10161.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.10161.sroa.6.0..sroa.10161.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !140
  %.sroa.10161.sroa.7.0..sroa.10161.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.31.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10161.sroa.7.0..sroa.10161.0..sroa_idx.sroa_idx.i.i, i64 64, i1 false), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !107
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i: ; preds = %bb.dq, %bb.cn, %bb.cl, %bb.ci, %bb.cf, %bb.x
  %i.oe = phi ptr [ %i.ag, %bb.cn ], [ %i.ag, %bb.ci ], [ %i.ag, %bb.x ], [ %i.ag, %bb.cl ], [ %i.ag, %bb.cf ], [ %i.pa, %bb.dq ] ; 3 uses
  %i.of = phi ptr [ %i.ah, %bb.cn ], [ %i.ah, %bb.ci ], [ %i.ah, %bb.x ], [ %i.ah, %bb.cl ], [ %i.ah, %bb.cf ], [ %i.pb, %bb.dq ] ; 3 uses
  %.sroa.29.0.i.i = phi i64 [ undef, %bb.cn ], [ %.sroa.14.0.copyload.i.i, %bb.ci ], [ undef, %bb.x ], [ undef, %bb.cl ], [ %.sroa.10161.sroa.6.0.copyload.i.i, %bb.cf ], [ undef, %bb.dq ]
  %.sroa.27.0.i.i = phi i64 [ undef, %bb.cn ], [ %i.ok, %bb.ci ], [ undef, %bb.x ], [ 22, %bb.cl ], [ %.sroa.10161.sroa.5.0.copyload.i.i, %bb.cf ], [ undef, %bb.dq ]
  %.sroa.24.0.i.i = phi i64 [ undef, %bb.cn ], [ %.sroa.10140.0.copyload.i.i, %bb.ci ], [ undef, %bb.x ], [ %i.ot, %bb.cl ], [ %.sroa.10161.sroa.0.0.copyload.i.i, %bb.cf ], [ undef, %bb.dq ]
  %.sroa.17.0.i.i = phi i64 [ %i.oy, %bb.cn ], [ %i.oj, %bb.ci ], [ undef, %bb.x ], [ %i.bi, %bb.cl ], [ %.sroa.7160.0.copyload.i.i, %bb.cf ], [ %.sroa.17.2.i.i, %bb.dq ]
  %.sroa.9211.0.i.i = phi i64 [ -9223372036854775804, %bb.cn ], [ -9223372036854775805, %bb.ci ], [ -9223372036854775803, %bb.x ], [ -9223372036854775805, %bb.cl ], [ -9223372036854775805, %bb.cf ], [ %.sroa.9211.2.i.i, %bb.dq ]
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.og)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i93.i.i unwind label %bb.cg, !noalias !109

bb.cg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i
  %i.oh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.og)
          to label %.body94.i.i unwind label %bb.ch, !noalias !109

bb.ch:                                            ; preds = %bb.cg
  %i.oi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !109
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i93.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.og)
          to label %bb.dv unwind label %bb.k, !noalias !109

bb.ci:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !132
  %.sroa.7139.0.copyload.i.i = load ptr, ptr %i.jl, align 8, !noalias !141
  %.sroa.10140.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.10140.0.copyload.i.i = load i64, ptr %.sroa.10140.0..sroa_idx.i.i, align 8, !noalias !141
  %.sroa.12141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.12141.0.copyload.i.i = load ptr, ptr %.sroa.12141.0..sroa_idx.i.i, align 8, !noalias !141
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.14.0.copyload.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !141
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.31.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.16.0..sroa_idx.i.i, i64 64, i1 false), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131
  %i.oj = ptrtoint ptr %.sroa.7139.0.copyload.i.i to i64
  %i.ok = ptrtoint ptr %.sroa.12141.0.copyload.i.i to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i

bb.cj:                                            ; preds = %bb.z
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.om = load i64, ptr %i.ol, align 8, !noalias !107
  invoke void @_RINvNtCsexYYUdYSQU6_5alloc3vec9from_elemhECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, i8 noundef 0, i64 noundef %i.om)
          to label %bb.ck unwind label %bb.cm, !noalias !109

bb.ck:                                            ; preds = %bb.cj
  %i.on = getelementptr i8, ptr %1, i64 88
  %.val65.i.i = load ptr, ptr %i.on, align 8, !noalias !107, !nonnull !5, !noundef !5
  %i.oo = getelementptr i8, ptr %1, i64 96
  %.val66.i.i = load i64, ptr %i.oo, align 8, !noalias !107, !noundef !5
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.op, ptr %i.oq, align 8, !noalias !107
  %.sroa.8192.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.val65.i.i, ptr %.sroa.8192.0..sroa_idx.i.i, align 8, !noalias !107
  %.sroa.9193.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %.val66.i.i, ptr %.sroa.9193.0..sroa_idx.i.i, align 8, !noalias !107
  br label %bb.cp

bb.cl:                                            ; preds = %.noexc77.i.i
  %i.or = load ptr, ptr %i.bj, align 8, !noalias !111, !nonnull !5, !noundef !5 ; 2 uses
  %i.os = icmp samesign ugt i64 %i.bi, 21
  tail call void @llvm.assume(i1 %i.os)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !111
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.or, ptr noundef nonnull align 1 dereferenceable(22) @11, i64 22, i1 false), !noalias !142
  %i.ot = ptrtoint ptr %i.or to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i

bb.cm:                                            ; preds = %bb.dq, %bb.dj, %bb.cj, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread.i.i, %.split32.us.i20.i.i.i.i.invoke.i.i, %bb.au, %.split.us161.i.i.i.i.i.i, %bb.ad, %_RNvXs1y_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eq.exit.thread.i.i, %bb.ab, %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %i.ou = phi ptr [ %i.ag, %bb.aa ], [ %i.ag, %bb.ab ], [ %i.ag, %bb.cj ], [ %i.pa, %bb.dj ], [ %i.pa, %bb.dq ], [ %i.ag, %_RNvXs1y_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eq.exit.thread.i.i ], [ %i.ag, %bb.ad ], [ %i.ag, %.split.us161.i.i.i.i.i.i ], [ %i.ag, %bb.au ], [ %i.ag, %.split32.us.i20.i.i.i.i.invoke.i.i ], [ %i.ag, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread.i.i ], [ %i.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %i.ov = phi ptr [ %i.ah, %bb.aa ], [ %i.ah, %bb.ab ], [ %i.ah, %bb.cj ], [ %i.pb, %bb.dj ], [ %i.pb, %bb.dq ], [ %i.ah, %_RNvXs1y_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eq.exit.thread.i.i ], [ %i.ah, %bb.ad ], [ %i.ah, %.split.us161.i.i.i.i.i.i ], [ %i.ah, %bb.au ], [ %i.ah, %.split32.us.i20.i.i.i.i.invoke.i.i ], [ %i.ah, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread.i.i ], [ %i.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %.body107.i.i

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i.i
  %i.ox = extractvalue { i64, ptr } %i.aj, 1
  %i.oy = ptrtoint ptr %i.ox to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i

bb.co:                                            ; preds = %bb.ds, %bb.da, %.body107.i.i, %bb.p
  %i.oz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !109
  unreachable

bb.cp:                                            ; preds = %bb.ck, %bb.j
  %i.pa = phi ptr [ %i.ag, %bb.ck ], [ %.phi.trans.insert.i, %bb.j ] ; 10 uses
  %i.pb = phi ptr [ %i.ah, %bb.ck ], [ %i.x, %bb.j ] ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.pd = invoke { i64, ptr } @_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util2io10read_exactINtB5_9ReadExactQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB1c_6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cq unwind label %bb.dt, !noalias !109 ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.pe = extractvalue { i64, ptr } %i.pd, 0
  %i.pf = trunc nuw i64 %i.pe to i1
  br i1 %i.pf, label %bb.dz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.pg = extractvalue { i64, ptr } %i.pd, 1      ; 2 uses
  %.not38.i.i = icmp eq ptr %i.pg, null
  br i1 %.not38.i.i, label %.noexc.i.i, label %bb.do

.noexc.i.i:                                       ; preds = %bb.cr
  %i.ph = load atomic i64, ptr @_RNvNtCs79CCFNTAO4F_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !107
  %i.pi = icmp eq i64 %i.ph, 0
  br i1 %i.pi, label %bb.cs, label %bb.df

bb.cs:                                            ; preds = %.noexc.i.i
  %i.pj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs2_Cs6m2LFPinx2P_9async_lspNtB9_7Message4read010___CALLSITE, i64 16) monotonic, align 8, !noalias !107 ; 2 uses
  %i.pk = icmp ult i8 %i.pj, 3
  br i1 %i.pk, label %bb.cu, label %bb.ct, !prof !143

bb.ct:                                            ; preds = %bb.cs
  %i.pl = invoke noundef i8 @_RNvMNtCs79CCFNTAO4F_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs2_Cs6m2LFPinx2P_9async_lspNtB9_7Message4read010___CALLSITE) #17
          to label %bb.cu unwind label %bb.dt, !noalias !109

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.0.0.i100.i.i = phi i8 [ %i.pj, %bb.cs ], [ %i.pl, %bb.ct ] ; 2 uses
  %i.pm = icmp eq i8 %.sroa.0.0.i100.i.i, 0
  br i1 %i.pm, label %bb.df, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pn = load ptr, ptr @_RNvNCNvMs2_Cs6m2LFPinx2P_9async_lspNtB9_7Message4read010___CALLSITE, align 8, !noalias !107, !nonnull !5, !align !7, !noundef !5
  %i.po = invoke noundef zeroext i1 @_RNvNtCscAPH7FpDQ6B_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pn, i8 noundef %.sroa.0.0.i100.i.i)
          to label %bb.cw unwind label %bb.dt, !noalias !109

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.po, label %bb.cy, label %bb.df

bb.cx:                                            ; preds = %bb.cy
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !107
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !107
  %i.pq = load ptr, ptr @_RNvNCNvMs2_Cs6m2LFPinx2P_9async_lspNtB9_7Message4read010___CALLSITE, align 8, !noalias !107, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !107
  store ptr @6, ptr %i.j, align 8, !noalias !107
  %i.pr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 17 to ptr), ptr %i.pr, align 8, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !107
  %i.ps = getelementptr i8, ptr %1, i64 88
  %.val68.i.i = load ptr, ptr %i.ps, align 8, !noalias !107, !nonnull !5, !noundef !5
  %i.pt = getelementptr i8, ptr %1, i64 96
  %.val69.i.i = load i64, ptr %i.pt, align 8, !noalias !107, !noundef !5
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val68.i.i, i64 noundef %.val69.i.i)
          to label %bb.cz unwind label %bb.cx, !noalias !109

bb.cz:                                            ; preds = %bb.cy
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  store ptr %i.h, ptr %i.i, align 8, !noalias !107
  store ptr %i.j, ptr %i.k, align 8, !noalias !107
  %i.pv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @7, ptr %i.pv, align 8, !noalias !107
  %i.pw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.pw, align 8, !noalias !107
  %i.px = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @8, ptr %i.px, align 8, !noalias !107
  store i64 1, ptr %i.l, align 8, !noalias !107
  %.sroa.8197.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.8197.0..sroa_idx.i.i, align 8, !noalias !107
  %.sroa.9198.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 2, ptr %.sroa.9198.0..sroa_idx.i.i, align 8, !noalias !107
  %.sroa.10199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.pu, ptr %.sroa.10199.0..sroa_idx.i.i, align 8, !noalias !107
  %i.py = load ptr, ptr @_RNvNCNvMs2_Cs6m2LFPinx2P_9async_lspNtB9_7Message4read010___CALLSITE, align 8, !noalias !144, !nonnull !5, !align !7, !noundef !5
  invoke void @_RNvMNtCs79CCFNTAO4F_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.py, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s2_0CsddkiMbsmfqo_5yr_ls.exit.i.i unwind label %bb.da, !noalias !109

bb.da:                                            ; preds = %bb.cz
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !107
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #16
          to label %bb.db unwind label %bb.co, !noalias !109

_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s2_0CsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !107
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.dd unwind label %bb.dc, !noalias !109

bb.db:                                            ; preds = %bb.dc, %bb.da, %bb.cx
  %.pn43.i.i = phi { ptr, i32 } [ %i.qa, %bb.dc ], [ %i.pz, %bb.da ], [ %i.pp, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !107
  br label %bb.ds

bb.dc:                                            ; preds = %_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s2_0CsddkiMbsmfqo_5yr_ls.exit.i.i
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.dd:                                            ; preds = %_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s2_0CsddkiMbsmfqo_5yr_ls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !107
  br label %bb.df

bb.de:                                            ; preds = %bb.df
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !107
  br label %bb.ds

bb.df:                                            ; preds = %bb.dd, %bb.cw, %bb.cu, %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !107
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.qd = getelementptr i8, ptr %1, i64 88
  %.val70.i.i = load ptr, ptr %i.qd, align 8, !noalias !107, !nonnull !5, !noundef !5
  %i.qe = getelementptr i8, ptr %1, i64 96
  %.val71.i.i = load i64, ptr %i.qe, align 8, !noalias !107, !noundef !5
  invoke void @_RINvNtCsbbTh99npV2h_10serde_json2de10from_sliceINtCs6m2LFPinx2P_9async_lsp10RawMessageNtBM_7MessageEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val70.i.i, i64 noundef %.val71.i.i)
          to label %bb.dg unwind label %bb.de, !noalias !109

bb.dg:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.qf = load i64, ptr %i.g, align 8, !range !146, !alias.scope !147, !noalias !107, !noundef !5 ; 2 uses
  %i.qg = icmp eq i64 %i.qf, -2
  %i.qh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !alias.scope !148, !noalias !107 ; 2 uses
  br i1 %i.qg, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.sroa.10205.0..sroa_idx206.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10205.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.10205.0..sroa_idx206.i.i, align 8, !alias.scope !149, !noalias !107
  %.sroa.10205.sroa.6.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.10205.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.10205.sroa.6.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i, align 8, !alias.scope !149, !noalias !107
  %.sroa.10205.sroa.7.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.10205.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.10205.sroa.7.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i, align 8, !alias.scope !149, !noalias !107
  %.sroa.10205.sroa.8.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.10205.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.10205.sroa.8.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i, align 8, !alias.scope !149, !noalias !107
  %.sroa.10205.sroa.9.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.31.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10205.sroa.9.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i, i64 64, i1 false), !noalias !107
  %.sroa.10205.sroa.10.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.32.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10205.sroa.10.0..sroa.10205.0..sroa_idx206.sroa_idx.i.i, i64 88, i1 false), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !107
  %i.qj = ptrtoint ptr %i.qi to i64
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qc)
          to label %bb.dj unwind label %bb.di, !noalias !109

bb.di:                                            ; preds = %bb.dh
  %i.qk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qc)
          to label %.body107.i.i unwind label %bb.dk, !noalias !109

bb.dj:                                            ; preds = %bb.dh
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i unwind label %bb.cm, !noalias !109

bb.dk:                                            ; preds = %bb.di
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !109
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %bb.dj
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i110.i.i unwind label %bb.dl, !noalias !109

bb.dl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i
  %i.qn = landingpad { ptr, i32 }
end_hunk_0
