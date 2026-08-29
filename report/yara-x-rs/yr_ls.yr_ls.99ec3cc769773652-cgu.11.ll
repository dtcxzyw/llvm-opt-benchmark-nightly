Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr_ls.yr_ls.99ec3cc769773652-cgu.11?download=true
inline.NumInlined: 172
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util6stream6unfoldINtB5_6UnfoldINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtB9_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runB1z_NtB2a_15TokioPipeStdoutE00NCNCB3e_00ENtNtCsljouJN4AMMC_12futures_core6stream6Stream9poll_nextCsddkiMbsmfqo_5yr_ls:bb.a
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jo, ptr noundef nonnull @12, ptr noundef nonnull %i.c)
          to label %bb.cl unwind label %bb.bn, !noalias !38

bb.bn:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread.i.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body107.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.i.i.i.i.i, %bb.as, %.split.us.i20.i.i.i.i.i.i, %.split.us.i10.i.i.i.i.i.i, %.loopexit42.i.i.i.i.i.i, %.split165.us.i.i.i.i.i.i, %bb.ar, %bb.al
  %.sroa.10.0.i.i.i.pn.i.i = phi i64 [ %i.bx, %.split165.us.i.i.i.i.i.i ], [ %i.jn, %.split.us.i20.i.i.i.i.i.i ], [ %.promoted156.i.i.i.i.i.i, %bb.al ], [ %i.bx, %bb.ar ], [ %i.fx, %.loopexit42.i.i.i.i.i.i ], [ %i.hb, %.split.us.i10.i.i.i.i.i.i ], [ %i.dw, %bb.as ], [ %i.dw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.i.i.i.i.i ], [ %i.dw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i ], [ %i.dw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10140.0.ph.i.i = phi i64 [ %i.bx, %.split165.us.i.i.i.i.i.i ], [ %.sink.i17.i28.i7.i.i.i.i, %.split.us.i20.i.i.i.i.i.i ], [ %.promoted156.i.i.i.i.i.i, %bb.al ], [ %i.bx, %bb.ar ], [ %i.fw, %.loopexit42.i.i.i.i.i.i ], [ %.sink71.i.i22.i.i.i.i.i, %.split.us.i10.i.i.i.i.i.i ], [ %i.dw, %bb.as ], [ %i.dw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit16.i.i.us.i.i.i.i.i.i ], [ %i.dw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit14.i.i.us.i.i.i.i.i.i ], [ %i.dw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsddkiMbsmfqo_5yr_ls.exit12.i.i.us.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46
  %.sroa.12141.0.ph.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.10.0.i.i.i.pn.i.i ; 4 uses
  %.sroa.14.0.ph.i.i = sub nuw i64 %i.bp, %.sroa.10.0.i.i.i.pn.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !31
  store ptr %.sroa.12141.0.ph.i.i, ptr %i.m, align 8, !noalias !31, !captures !12
  %i.jq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.14.0.ph.i.i, ptr %i.jq, align 8, !noalias !31
  %.not.i88.i.i = icmp eq i64 %.sroa.10140.0.ph.i.i, 14
  br i1 %.not.i88.i.i, label %bb.bo, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bo:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i
  %i.jr = load i8, ptr %i.bo, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.js = add i8 %i.jr, -65
  %i.jt = icmp ult i8 %i.js, 26
  %i.ju = select i1 %i.jt, i8 32, i8 0
  %.sroa.012.0.i.i.i.i = or i8 %i.ju, %i.jr
  %i.jv = icmp eq i8 %.sroa.012.0.i.i.i.i, 99
  br i1 %i.jv, label %bb.bp, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.jy = add i8 %i.jx, -65
  %i.jz = icmp ult i8 %i.jy, 26
  %i.ka = select i1 %i.jz, i8 32, i8 0
  %.sroa.012.0.1.i.i.i.i = or i8 %i.ka, %i.jx
  %i.kb = icmp eq i8 %.sroa.012.0.1.i.i.i.i, 111
  br i1 %i.kb, label %bb.bq, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.kd = load i8, ptr %i.kc, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.ke = add i8 %i.kd, -65
  %i.kf = icmp ult i8 %i.ke, 26
  %i.kg = select i1 %i.kf, i8 32, i8 0
  %.sroa.012.0.2.i.i.i.i = or i8 %i.kg, %i.kd
  %i.kh = icmp eq i8 %.sroa.012.0.2.i.i.i.i, 110
  br i1 %i.kh, label %bb.br, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.br:                                            ; preds = %bb.bq
  %i.ki = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.kj = load i8, ptr %i.ki, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.kk = add i8 %i.kj, -65
  %i.kl = icmp ult i8 %i.kk, 26
  %i.km = select i1 %i.kl, i8 32, i8 0
  %.sroa.012.0.3.i.i.i.i = or i8 %i.km, %i.kj
  %i.kn = icmp eq i8 %.sroa.012.0.3.i.i.i.i, 116
  br i1 %i.kn, label %bb.bs, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bs:                                            ; preds = %bb.br
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.kq = add i8 %i.kp, -65
  %i.kr = icmp ult i8 %i.kq, 26
  %i.ks = select i1 %i.kr, i8 32, i8 0
  %.sroa.012.0.4.i.i.i.i = or i8 %i.ks, %i.kp
  %i.kt = icmp eq i8 %.sroa.012.0.4.i.i.i.i, 101
  br i1 %i.kt, label %bb.bt, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.kv = load i8, ptr %i.ku, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.kw = add i8 %i.kv, -65
  %i.kx = icmp ult i8 %i.kw, 26
  %i.ky = select i1 %i.kx, i8 32, i8 0
  %.sroa.012.0.5.i.i.i.i = or i8 %i.ky, %i.kv
  %i.kz = icmp eq i8 %.sroa.012.0.5.i.i.i.i, 110
  br i1 %i.kz, label %bb.bu, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.la = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.lb = load i8, ptr %i.la, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.lc = add i8 %i.lb, -65
  %i.ld = icmp ult i8 %i.lc, 26
  %i.le = select i1 %i.ld, i8 32, i8 0
  %.sroa.012.0.6.i.i.i.i = or i8 %i.le, %i.lb
  %i.lf = icmp eq i8 %.sroa.012.0.6.i.i.i.i, 116
  br i1 %i.lf, label %bb.bv, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bo, i64 7
  %i.lh = load i8, ptr %i.lg, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.li = add i8 %i.lh, -65
  %i.lj = icmp ult i8 %i.li, 26
  %i.lk = select i1 %i.lj, i8 32, i8 0
  %.sroa.012.0.7.i.i.i.i = or i8 %i.lk, %i.lh
  %i.ll = icmp eq i8 %.sroa.012.0.7.i.i.i.i, 45
  br i1 %i.ll, label %bb.bw, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ln = load i8, ptr %i.lm, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.lo = add i8 %i.ln, -65
  %i.lp = icmp ult i8 %i.lo, 26
  %i.lq = select i1 %i.lp, i8 32, i8 0
  %.sroa.012.0.8.i.i.i.i = or i8 %i.lq, %i.ln
  %i.lr = icmp eq i8 %.sroa.012.0.8.i.i.i.i, 108
  br i1 %i.lr, label %bb.bx, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.lt = load i8, ptr %i.ls, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.lu = add i8 %i.lt, -65
  %i.lv = icmp ult i8 %i.lu, 26
  %i.lw = select i1 %i.lv, i8 32, i8 0
  %.sroa.012.0.9.i.i.i.i = or i8 %i.lw, %i.lt
  %i.lx = icmp eq i8 %.sroa.012.0.9.i.i.i.i, 101
  br i1 %i.lx, label %bb.by, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.by:                                            ; preds = %bb.bx
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.lz = load i8, ptr %i.ly, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.ma = add i8 %i.lz, -65
  %i.mb = icmp ult i8 %i.ma, 26
  %i.mc = select i1 %i.mb, i8 32, i8 0
  %.sroa.012.0.10.i.i.i.i = or i8 %i.mc, %i.lz
  %i.md = icmp eq i8 %.sroa.012.0.10.i.i.i.i, 110
  br i1 %i.md, label %bb.bz, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.bz:                                            ; preds = %bb.by
  %i.me = getelementptr inbounds nuw i8, ptr %i.bo, i64 11
  %i.mf = load i8, ptr %i.me, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.mg = add i8 %i.mf, -65
  %i.mh = icmp ult i8 %i.mg, 26
  %i.mi = select i1 %i.mh, i8 32, i8 0
  %.sroa.012.0.11.i.i.i.i = or i8 %i.mi, %i.mf
  %i.mj = icmp eq i8 %.sroa.012.0.11.i.i.i.i, 103
  br i1 %i.mj, label %bb.ca, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.ml = load i8, ptr %i.mk, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.mm = add i8 %i.ml, -65
  %i.mn = icmp ult i8 %i.mm, 26
  %i.mo = select i1 %i.mn, i8 32, i8 0
  %.sroa.012.0.12.i.i.i.i = or i8 %i.mo, %i.ml
  %i.mp = icmp eq i8 %.sroa.012.0.12.i.i.i.i, 116
  br i1 %i.mp, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.i.i, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.i.i: ; preds = %bb.ca
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bo, i64 13
  %i.mr = load i8, ptr %i.mq, align 1, !alias.scope !112, !noalias !38, !noundef !6 ; 2 uses
  %i.ms = add i8 %i.mr, -65
  %i.mt = icmp ult i8 %i.ms, 26
  %i.mu = select i1 %i.mt, i8 32, i8 0
  %.sroa.012.0.13.i.i.i.i = or i8 %i.mu, %i.mr
  %i.mv = icmp eq i8 %.sroa.012.0.13.i.i.i.i, 104
  br i1 %i.mv, label %bb.cb, label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.cb:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.i.i
  switch i64 %.sroa.14.0.ph.i.i, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.mw = load i8, ptr %.sroa.12141.0.ph.i.i, align 1, !alias.scope !117, !noalias !124, !noundef !6 ; 2 uses
  switch i8 %i.mw, label %bb.cd [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.cb
  %.pr.i.i.i.i.i = load i8, ptr %.sroa.12141.0.ph.i.i, align 1, !alias.scope !117, !noalias !124
  br label %bb.cd

bb.cd:                                            ; preds = %thread-pre-split.i.i.i.i.i, %bb.cc
  %i.mx = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.mw, %bb.cc ]
  %cond.i.i.i.i.i = icmp eq i8 %i.mx, 43          ; 2 uses
  %i.my = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %.sroa.14.0.ph.i.i, %i.my ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.12141.0.ph.i.i, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.mz = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.mz, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.cd
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %.loopexit290.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.ce
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i203, i64 1
  %i.nb = add nsw i64 %.sroa.15.1.i.i.i.i.i202, -1 ; 2 uses
  %.not52.i.i.i.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not52.i.i.i.i.i, label %.loopexit290.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.preheader:                 ; preds = %bb.cd, %.preheader56.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i203 = phi ptr [ %i.na, %.preheader56.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.cd ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i202 = phi i64 [ %i.nb, %.preheader56.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %bb.cd ]
  %.sroa.042.0.i.i.i.i.i201 = phi i64 [ %i.nh, %.preheader56.i.i.i.i.i ], [ 0, %bb.cd ] ; 2 uses
  %3 = icmp ugt i64 %.sroa.042.0.i.i.i.i.i201, 1844674407370955161
  br i1 %3, label %.loopexit.i.i, label %bb.ce, !prof !13

bb.ce:                                            ; preds = %.preheader56.i.i.i.i.i.preheader
  %4 = mul nuw i64 %.sroa.042.0.i.i.i.i.i201, 10  ; 2 uses
  %i.nc = load i8, ptr %.sroa.0.1.i.i.i.i.i203, align 1, !alias.scope !117, !noalias !124, !noundef !6
  %i.nd = zext i8 %i.nc to i32
  %i.ne = add nsw i32 %i.nd, -48                  ; 2 uses
  %i.nf = icmp ugt i32 %i.ne, 9
  %i.ng = zext nneg i32 %i.ne to i64
  %i.nh = add i64 %4, %i.ng                       ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %4
  %or.cond.i.i = select i1 %i.nf, i1 true, i1 %i.ni, !prof !128
  br i1 %or.cond.i.i, label %.loopexit.i.i, label %.preheader56.i.i.i.i.i, !prof !128

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.cf
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.np, %bb.cf ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.no, %bb.cf ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.nr, %bb.cf ], [ 0, %.preheader.i.i.i.i.i ]
  %i.nj = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !117, !noalias !124, !noundef !6
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, -48                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 10
  br i1 %i.nm, label %bb.cf, label %.loopexit.i.i

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.nn = mul i64 %.sroa.042.267.i.i.i.i.i, 10
  %i.no = add nsw i64 %.sroa.15.268.i.i.i.i.i, -1 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i, i64 1
  %i.nq = zext nneg i32 %i.nl to i64
  %i.nr = add i64 %i.nn, %i.nq                    ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.no, 0
  br i1 %.not53.i.i.i.i.i, label %.loopexit290.i.i, label %.lr.ph.i.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i: ; preds = %.loopexit290.i.i, %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.i.i, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread219.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !31
  br label %bb.ch

.loopexit.i.i:                                    ; preds = %bb.ce, %.preheader56.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i, %bb.cc, %bb.cc, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134
  store ptr %i.m, ptr %i.a, align 8, !noalias !134
  %.sroa.42.0..sroa_idx.i.i90.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsddkiMbsmfqo_5yr_ls, ptr %.sroa.42.0..sroa_idx.i.i90.i.i, align 8, !noalias !134
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ns, ptr noundef nonnull @10, ptr noundef nonnull %i.a)
          to label %bb.ci unwind label %bb.cg, !noalias !38

bb.cg:                                            ; preds = %.loopexit.i.i
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !31
  br label %.body107.i.i

.loopexit290.i.i:                                 ; preds = %.preheader56.i.i.i.i.i, %bb.cf, %.preheader.i.i.i.i.i
  %.sroa.11165.0.i.i = phi i64 [ %i.nr, %bb.cf ], [ 0, %.preheader.i.i.i.i.i ], [ %i.nh, %.preheader56.i.i.i.i.i ]
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 1, ptr %i.nu, align 8, !noalias !31
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %.sroa.11165.0.i.i, ptr %i.nv, align 8, !noalias !31
  br label %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i

bb.ch:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i, %bb.l
  %i.nw = phi ptr [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i ], [ %i.ac, %bb.l ]
  %i.nx = phi ptr [ %i.ah, %_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case.exit.thread.i.i ], [ %i.ad, %bb.l ]
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 0, ptr %i.nz, align 8, !alias.scope !138, !noalias !31
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ob, ptr noundef nonnull align 8 dereferenceable(24) %i.ny, i64 24, i1 false), !noalias !31
  store i64 0, ptr %i.ny, align 8, !alias.scope !141, !noalias !144
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !141, !noalias !144
  store i64 0, ptr %i.nz, align 8, !alias.scope !141, !noalias !144
  %.sroa.8121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.oa, ptr %.sroa.8121.0..sroa_idx.i.i, align 8, !noalias !31
  %.sroa.9122.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.ny, ptr %.sroa.9122.0..sroa_idx.i.i, align 8, !noalias !31
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !31
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !31
  br label %bb.o

.body107.i.i:                                     ; preds = %bb.dz, %bb.dw, %bb.dp, %bb.co, %bb.cm, %bb.cg, %bb.bn, %bb.ad, %bb.x, %bb.u, %bb.s, %bb.p
  %i.oc = phi ptr [ %i.pc, %bb.dw ], [ %i.ag, %bb.cm ], [ %i.pc, %bb.dp ], [ %i.pc, %bb.dz ], [ %i.ag, %bb.x ], [ %i.ag, %bb.cg ], [ %i.op, %bb.co ], [ %i.ag, %bb.u ], [ %i.ag, %bb.s ], [ %i.ag, %bb.p ], [ %i.ag, %bb.ad ], [ %i.ag, %bb.bn ]
  %i.od = phi ptr [ %i.pd, %bb.dw ], [ %i.ah, %bb.cm ], [ %i.pd, %bb.dp ], [ %i.pd, %bb.dz ], [ %i.ah, %bb.x ], [ %i.ah, %bb.cg ], [ %i.oq, %bb.co ], [ %i.ah, %bb.u ], [ %i.ah, %bb.s ], [ %i.ah, %bb.p ], [ %i.ah, %bb.ad ], [ %i.ah, %bb.bn ]
  %.pn53.pn.i.i = phi { ptr, i32 } [ %i.qv, %bb.dw ], [ %i.om, %bb.cm ], [ %i.qp, %bb.dp ], [ %.pn48.pn.i.i, %bb.dz ], [ %i.ar, %bb.x ], [ %i.nt, %bb.cg ], [ %i.or, %bb.co ], [ %i.ao, %bb.u ], [ %i.an, %bb.s ], [ %i.ak, %bb.p ], [ %i.bn, %bb.ad ], [ %i.jp, %bb.bn ]
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.oe) #16
          to label %.body94.i.i unwind label %bb.cs, !noalias !38

bb.ci:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  %.sroa.7160.0.copyload.i.i = load i64, ptr %i.ns, align 8, !noalias !147
  %.sroa.10161.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10161.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.10161.0..sroa_idx.i.i, align 8, !noalias !147
  %.sroa.10161.sroa.5.0..sroa.10161.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10161.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.10161.sroa.5.0..sroa.10161.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !147
  %.sroa.10161.sroa.6.0..sroa.10161.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10161.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.10161.sroa.6.0..sroa.10161.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !147
  %.sroa.10161.sroa.7.0..sroa.10161.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.31.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10161.sroa.7.0..sroa.10161.0..sroa_idx.sroa_idx.i.i, i64 64, i1 false), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i: ; preds = %bb.dx, %bb.cr, %bb.cq, %bb.cl, %bb.ci, %bb.y
  %i.of = phi ptr [ %i.ag, %bb.cr ], [ %i.ag, %bb.cl ], [ %i.ag, %bb.y ], [ %i.ag, %bb.cq ], [ %i.ag, %bb.ci ], [ %i.pc, %bb.dx ] ; 3 uses
  %i.og = phi ptr [ %i.ah, %bb.cr ], [ %i.ah, %bb.cl ], [ %i.ah, %bb.y ], [ %i.ah, %bb.cq ], [ %i.ah, %bb.ci ], [ %i.pd, %bb.dx ] ; 3 uses
  %.sroa.29.0.i.i = phi i64 [ undef, %bb.cr ], [ %.sroa.14.0.copyload.i.i, %bb.cl ], [ undef, %bb.y ], [ undef, %bb.cq ], [ %.sroa.10161.sroa.6.0.copyload.i.i, %bb.ci ], [ undef, %bb.dx ]
  %.sroa.27.0.i.i = phi i64 [ undef, %bb.cr ], [ %i.ol, %bb.cl ], [ undef, %bb.y ], [ 22, %bb.cq ], [ %.sroa.10161.sroa.5.0.copyload.i.i, %bb.ci ], [ undef, %bb.dx ]
  %.sroa.24.0.i.i = phi i64 [ undef, %bb.cr ], [ %.sroa.10140.0.copyload.i.i, %bb.cl ], [ undef, %bb.y ], [ %i.oy, %bb.cq ], [ %.sroa.10161.sroa.0.0.copyload.i.i, %bb.ci ], [ undef, %bb.dx ]
  %.sroa.17.0.i.i = phi i64 [ %i.pa, %bb.cr ], [ %i.ok, %bb.cl ], [ undef, %bb.y ], [ %i.bj, %bb.cq ], [ %.sroa.7160.0.copyload.i.i, %bb.ci ], [ %.sroa.17.2.i.i, %bb.dx ]
  %.sroa.9211.0.i.i = phi i64 [ -9223372036854775804, %bb.cr ], [ -9223372036854775805, %bb.cl ], [ -9223372036854775803, %bb.y ], [ -9223372036854775805, %bb.cq ], [ -9223372036854775805, %bb.ci ], [ %.sroa.9211.2.i.i, %bb.dx ]
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i93.i.i unwind label %bb.cj, !noalias !38

bb.cj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %.body94.i.i unwind label %bb.ck, !noalias !38

bb.ck:                                            ; preds = %bb.cj
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !38
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i93.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %bb.eb unwind label %bb.k, !noalias !38

bb.cl:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !108
  %.sroa.7139.0.copyload.i.i = load ptr, ptr %i.jo, align 8, !noalias !148
  %.sroa.10140.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.10140.0.copyload.i.i = load i64, ptr %.sroa.10140.0..sroa_idx.i.i, align 8, !noalias !148
  %.sroa.12141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.12141.0.copyload.i.i = load ptr, ptr %.sroa.12141.0..sroa_idx.i.i, align 8, !noalias !148
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.14.0.copyload.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !148
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.31.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.16.0..sroa_idx.i.i, i64 64, i1 false), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103
  %i.ok = ptrtoint ptr %.sroa.7139.0.copyload.i.i to i64
  %i.ol = ptrtoint ptr %.sroa.12141.0.copyload.i.i to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i

bb.cm:                                            ; preds = %bb.ac, %bb.ab
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body107.i.i

bb.cn:                                            ; preds = %bb.aa
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.oo = load i64, ptr %i.on, align 8, !noalias !31
  invoke void @_RINvNtCsexYYUdYSQU6_5alloc3vec9from_elemhECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, i8 noundef 0, i64 noundef %i.oo)
          to label %bb.cp unwind label %bb.co, !noalias !38

bb.co:                                            ; preds = %bb.dx, %bb.dq, %bb.cn
  %i.op = phi ptr [ %i.pc, %bb.dx ], [ %i.pc, %bb.dq ], [ %i.ag, %bb.cn ]
  %i.oq = phi ptr [ %i.pd, %bb.dx ], [ %i.pd, %bb.dq ], [ %i.ah, %bb.cn ]
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %.body107.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.os = getelementptr i8, ptr %1, i64 88
  %.val65.i.i = load ptr, ptr %i.os, align 8, !noalias !31, !nonnull !6, !noundef !6
  %i.ot = getelementptr i8, ptr %1, i64 96
  %.val66.i.i = load i64, ptr %i.ot, align 8, !noalias !31, !noundef !6
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.ou, ptr %i.ov, align 8, !noalias !31
  %.sroa.8192.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.val65.i.i, ptr %.sroa.8192.0..sroa_idx.i.i, align 8, !noalias !31
  %.sroa.9193.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %.val66.i.i, ptr %.sroa.9193.0..sroa_idx.i.i, align 8, !noalias !31
  br label %bb.ct

bb.cq:                                            ; preds = %.noexc77.i.i
  %i.ow = load ptr, ptr %i.bk, align 8, !noalias !40, !nonnull !6, !noundef !6 ; 2 uses
  %i.ox = icmp samesign ugt i64 %i.bj, 21
  tail call void @llvm.assume(i1 %i.ox)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ow, ptr noundef nonnull align 1 dereferenceable(22) @11, i64 22, i1 false), !noalias !149
  %i.oy = ptrtoint ptr %i.ow to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i

bb.cr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i.i
  %i.oz = extractvalue { i64, ptr } %i.aj, 1
  %i.pa = ptrtoint ptr %i.oz to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit119.i.i

bb.cs:                                            ; preds = %bb.dz, %bb.dh, %.body107.i.i, %bb.p
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !38
  unreachable

bb.ct:                                            ; preds = %bb.cp, %bb.j
  %i.pc = phi ptr [ %i.ag, %bb.cp ], [ %.phi.trans.insert.i, %bb.j ] ; 10 uses
  %i.pd = phi ptr [ %i.ah, %bb.cp ], [ %i.x, %bb.j ] ; 9 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.pf = invoke { i64, ptr } @_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util2io10read_exactINtB5_9ReadExactQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB1c_6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pe, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cv unwind label %bb.cu, !noalias !38 ; 2 uses

bb.cu:                                            ; preds = %bb.ct
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util6stream6unfoldINtB5_6UnfoldINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtB9_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runB1z_NtB2a_15TokioPipeStdoutE00NCNCB3e_00ENtNtCsljouJN4AMMC_12futures_core6stream6Stream9poll_nextCsddkiMbsmfqo_5yr_ls:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !166, !noalias !169, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !166, !noalias !169, !noundef !6
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !166
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRDNtNtCsaeRQ2XwCvzm_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !11, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtCsaeRQ2XwCvzm_10serde_core2deDNtB5_8ExpectedEL_NtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtB6_7Display3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !171, !noalias !174, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !171, !noalias !174, !noundef !6
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !171
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs6m2LFPinx2P_9async_lsp5stdioINtB4_11NonBlockingNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %i.c = or i32 %i.b, 32768
  %i.d = zext i32 %i.c to i64
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 4 to ptr), ptr nonnull %i.e) #20, !srcloc !176 ; 0 uses
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs6m2LFPinx2P_9async_lsp5stdioINtB4_11NonBlockingNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  %i.c = or i32 %i.b, 32768
  %i.d = zext i32 %i.c to i64
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr null, ptr nonnull inttoptr (i64 4 to ptr), ptr nonnull %i.e) #20, !srcloc !176 ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsD_NtNtNtCsbgTeJz5vL0a_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_stringNtNtB22_5impls13StringVisitorECsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12strip_suffixReECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsexYYUdYSQU6_5alloc3vec9from_elemhECsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i8 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util2io10read_exactINtB5_9ReadExactQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB1c_6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscAPH7FpDQ6B_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs79CCFNTAO4F_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs79CCFNTAO4F_12tracing_core5fieldINtB5_12DisplayValueRINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEENtB5_5Value6recordCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbbTh99npV2h_10serde_json2de10from_sliceINtCs6m2LFPinx2P_9async_lsp10RawMessageNtBM_7MessageEECsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(address) dereferenceable(200), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCskKLDkoKarTP_4core6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorEB18_ECsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noundef nonnull) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvXsX_NtCsG258MDvU3F_3std7processINtNtCskKLDkoKarTP_4core6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorENtB5_11Termination6reportCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs79CCFNTAO4F_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs79CCFNTAO4F_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs3_NtCs9vsTHzjGAai_10futures_io6if_stdQINtNtCskKLDkoKarTP_4core3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENtB5_10AsyncWrite10poll_writeCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CsVkKQoeUONZ_12futures_sinkINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldIBw_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B25_INtB25_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB25_6server9LifecycleINtNtB25_5panic11CatchUnwindINtNtB25_11concurrency11ConcurrencyINtNtB25_6router6RouterNtNtB3D_6server18YARALanguageServerEEEEEE3runINtNtNtB19_2io10buf_reader9BufReaderNtB21_14TokioPipeStdinEB1Z_E0s_0NCNCB35_s_00EEINtB4_4SinkNtB25_7MessageE10poll_readyCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CsVkKQoeUONZ_12futures_sinkINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldIBw_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B25_INtB25_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB25_6server9LifecycleINtNtB25_5panic11CatchUnwindINtNtB25_11concurrency11ConcurrencyINtNtB25_6router6RouterNtNtB3D_6server18YARALanguageServerEEEEEE3runINtNtNtB19_2io10buf_reader9BufReaderNtB21_14TokioPipeStdinEB1Z_E0s_0NCNCB35_s_00EEINtB4_4SinkNtB25_7MessageE10start_sendCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMNtCs9j2PgAuXC7p_12futures_util12unfold_stateINtB2_11UnfoldStateINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtB4_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2f_INtB2f_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2f_6server9LifecycleINtNtB2f_5panic11CatchUnwindINtNtB2f_11concurrency11ConcurrencyINtNtB2f_6router6RouterNtNtB3P_6server18YARALanguageServerEEEEEE3runB1A_NtB2b_15TokioPipeStdoutE000E10take_valueCsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsaeRQ2XwCvzm_10serde_core2deDNtB5_8ExpectedEL_NtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { noinline }
attributes #18 = { noinline noreturn }
attributes #19 = { noreturn }
attributes #20 = { nounwind memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{i64 -1, i64 -9223372036854775808}
!6 = !{}
!7 = !{i8 0, i8 5}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startINtNtCskKLDkoKarTP_4core6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorEE0CsddkiMbsmfqo_5yr_ls: argument 0"}
!10 = distinct !{!10, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startINtNtCskKLDkoKarTP_4core6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorEE0CsddkiMbsmfqo_5yr_ls"}
!11 = !{i64 8}
!12 = !{!"address", !"read_provenance"}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsddkiMbsmfqo_5yr_ls: argument 0"}
!16 = distinct !{!16, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsddkiMbsmfqo_5yr_ls"}
!17 = distinct !{!17, !16, !"_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsddkiMbsmfqo_5yr_ls: argument 1"}
!18 = !{i64 -2, i64 -9223372036854775801}
!19 = !{i64 -1, i64 -9223372036854775801}
!20 = !{i64 0, i64 3}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RNvMs5_NtCskKLDkoKarTP_4core3pinINtB5_3PinQINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateIBv_QINtNtNtBK_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2n_INtB2n_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2n_6server9LifecycleINtNtB2n_5panic11CatchUnwindINtNtB2n_11concurrency11ConcurrencyINtNtB2n_6router6RouterNtNtB3X_6server18YARALanguageServerEEEEEE3runB1I_NtB2j_15TokioPipeStdoutE000EE3setCsddkiMbsmfqo_5yr_ls: argument 1"}
!23 = distinct !{!23, !"_RNvMs5_NtCskKLDkoKarTP_4core3pinINtB5_3PinQINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateIBv_QINtNtNtBK_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2n_INtB2n_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2n_6server9LifecycleINtNtB2n_5panic11CatchUnwindINtNtB2n_11concurrency11ConcurrencyINtNtB2n_6router6RouterNtNtB3X_6server18YARALanguageServerEEEEEE3runB1I_NtB2j_15TokioPipeStdoutE000EE3setCsddkiMbsmfqo_5yr_ls"}
!24 = !{i8 0, i8 4}
!25 = !{!"branch_weights", i32 2138906580, i32 8577068}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_RNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBc_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBc_6server9LifecycleINtNtBc_5panic11CatchUnwindINtNtBc_11concurrency11ConcurrencyINtNtBc_6router6RouterNtNtBU_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBc_5stdio10tokio_impl14TokioPipeStdinENtB58_15TokioPipeStdoutE000CsddkiMbsmfqo_5yr_ls: argument 0"}
!28 = distinct !{!28, !"_RNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBc_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBc_6server9LifecycleINtNtBc_5panic11CatchUnwindINtNtBc_11concurrency11ConcurrencyINtNtBc_6router6RouterNtNtBU_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBc_5stdio10tokio_impl14TokioPipeStdinENtB58_15TokioPipeStdoutE000CsddkiMbsmfqo_5yr_ls"}
!29 = distinct !{!29, !28, !"_RNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBc_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBc_6server9LifecycleINtNtBc_5panic11CatchUnwindINtNtBc_11concurrency11ConcurrencyINtNtBc_6router6RouterNtNtBU_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBc_5stdio10tokio_impl14TokioPipeStdinENtB58_15TokioPipeStdoutE000CsddkiMbsmfqo_5yr_ls: argument 1"}
!30 = !{!27}
!31 = !{!32, !34, !27, !29}
!32 = distinct !{!32, !33, !"_RNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB8_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB8_5stdio10tokio_impl14TokioPipeStdinEEE0CsddkiMbsmfqo_5yr_ls: argument 0"}
!33 = distinct !{!33, !"_RNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB8_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB8_5stdio10tokio_impl14TokioPipeStdinEEE0CsddkiMbsmfqo_5yr_ls"}
!34 = distinct !{!34, !33, !"_RNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB8_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB8_5stdio10tokio_impl14TokioPipeStdinEEE0CsddkiMbsmfqo_5yr_ls: argument 1"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3new: argument 0"}
!37 = distinct !{!37, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3new"}
!38 = !{!32, !27}
!39 = !{i64 0, i64 2}
!40 = !{!41, !43, !32, !34, !27, !29}
!41 = distinct !{!41, !42, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s1_0CsddkiMbsmfqo_5yr_ls: argument 0"}
!42 = distinct !{!42, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s1_0CsddkiMbsmfqo_5yr_ls"}
!43 = distinct !{!43, !44, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE10ok_or_elseNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_BY_NtBY_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBY_5stdio10tokio_impl14TokioPipeStdinEEE0s1_0ECsddkiMbsmfqo_5yr_ls: argument 0"}
!44 = distinct !{!44, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE10ok_or_elseNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_BY_NtBY_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBY_5stdio10tokio_impl14TokioPipeStdinEEE0s1_0ECsddkiMbsmfqo_5yr_ls"}
!45 = !{i64 0, i64 -9223372036854775807}
!46 = !{!47, !49, !50, !52, !53, !55, !32, !34, !27, !29}
!47 = distinct !{!47, !48, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECsddkiMbsmfqo_5yr_ls: argument 0"}
!48 = distinct !{!48, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECsddkiMbsmfqo_5yr_ls"}
!49 = distinct !{!49, !48, !"_RINvMNtCskKLDkoKarTP_4core3stre10split_onceReECsddkiMbsmfqo_5yr_ls: argument 1"}
!50 = distinct !{!50, !51, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE00CsddkiMbsmfqo_5yr_ls: argument 0"}
!51 = distinct !{!51, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE00CsddkiMbsmfqo_5yr_ls"}
!52 = distinct !{!52, !51, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE00CsddkiMbsmfqo_5yr_ls: argument 1"}
!53 = distinct !{!53, !54, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls: argument 0"}
!54 = distinct !{!54, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls"}
!55 = distinct !{!55, !54, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE8and_thenTBI_BI_ENCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtB1d_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1d_5stdio10tokio_impl14TokioPipeStdinEEE00ECsddkiMbsmfqo_5yr_ls: argument 1"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!58 = distinct !{!58, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!59 = !{!60, !47, !49, !50, !52, !53, !55, !32, !34, !27, !29}
!60 = distinct !{!60, !58, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!61 = !{i8 0, i8 2}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!64 = distinct !{!64, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!65 = !{!66, !68, !60, !57, !47, !50, !53, !32, !27}
!66 = distinct !{!66, !67, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!67 = distinct !{!67, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!68 = distinct !{!68, !67, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!69 = !{!70, !66, !68, !60, !57, !47, !50, !53, !32, !27}
!70 = distinct !{!70, !71, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsddkiMbsmfqo_5yr_ls: argument 0"}
!71 = distinct !{!71, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsddkiMbsmfqo_5yr_ls"}
!72 = !{!66, !73, !60, !57, !47, !50, !53, !32, !27}
!73 = distinct !{!73, !67, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!74 = !{!70, !66, !73, !60, !57, !47, !50, !53, !32, !27}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!77 = distinct !{!77, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!78 = !{!60, !57, !47, !50, !53, !32, !27}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls: argument 1"}
!81 = distinct !{!81, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls: argument 2"}
!84 = !{!85}
!85 = distinct !{!85, !81, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls: argument 3"}
!86 = !{!80, !57}
!87 = !{!88, !83, !85, !60, !47, !49, !50, !52, !53, !55, !32, !34, !27, !29}
!88 = distinct !{!88, !81, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls: argument 0"}
!89 = !{!88, !80, !85, !60, !57, !47, !50, !53, !32, !27}
!90 = !{!88, !80, !83, !60, !57, !47, !50, !53, !32, !27}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls: argument 1"}
!93 = distinct !{!93, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls: argument 2"}
!96 = !{!97}
!97 = distinct !{!97, !93, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls: argument 3"}
!98 = !{!92, !57}
!99 = !{!100, !95, !97, !60, !47, !49, !50, !52, !53, !55, !32, !34, !27, !29}
!100 = distinct !{!100, !93, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsddkiMbsmfqo_5yr_ls: argument 0"}
!101 = !{!100, !92, !97, !60, !57, !47, !50, !53, !32, !27}
!102 = !{!100, !92, !95, !60, !57, !47, !50, !53, !32, !27}
!103 = !{!104, !106, !107, !32, !34, !27, !29}
!104 = distinct !{!104, !105, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTReBJ_EE10ok_or_elseNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_B14_NtB14_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB14_5stdio10tokio_impl14TokioPipeStdinEEE0s_0ECsddkiMbsmfqo_5yr_ls: argument 0"}
!105 = distinct !{!105, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTReBJ_EE10ok_or_elseNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_B14_NtB14_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB14_5stdio10tokio_impl14TokioPipeStdinEEE0s_0ECsddkiMbsmfqo_5yr_ls"}
!106 = distinct !{!106, !105, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTReBJ_EE10ok_or_elseNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_B14_NtB14_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB14_5stdio10tokio_impl14TokioPipeStdinEEE0s_0ECsddkiMbsmfqo_5yr_ls: argument 1"}
!107 = distinct !{!107, !105, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTReBJ_EE10ok_or_elseNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_B14_NtB14_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB14_5stdio10tokio_impl14TokioPipeStdinEEE0s_0ECsddkiMbsmfqo_5yr_ls: argument 2"}
!108 = !{!109, !111, !104, !106, !107, !32, !34, !27, !29}
!109 = distinct !{!109, !110, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s_0CsddkiMbsmfqo_5yr_ls: argument 0"}
!110 = distinct !{!110, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s_0CsddkiMbsmfqo_5yr_ls"}
!111 = distinct !{!111, !110, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s_0CsddkiMbsmfqo_5yr_ls: argument 1"}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0"}
!114 = distinct !{!114, !"_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple"}
!115 = distinct !{!115, !116, !"_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case: argument 0"}
!116 = distinct !{!116, !"_RNvMNtCskKLDkoKarTP_4core3stre20eq_ignore_ascii_case"}
!117 = !{!118, !120, !122}
!118 = distinct !{!118, !119, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!119 = distinct !{!119, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!120 = distinct !{!120, !121, !"_RNvXsu_NtCskKLDkoKarTP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str: argument 1"}
!121 = distinct !{!121, !"_RNvXsu_NtCskKLDkoKarTP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str"}
!122 = distinct !{!122, !123, !"_RINvMNtCskKLDkoKarTP_4core3stre5parsejECsddkiMbsmfqo_5yr_ls: argument 1"}
!123 = distinct !{!123, !"_RINvMNtCskKLDkoKarTP_4core3stre5parsejECsddkiMbsmfqo_5yr_ls"}
!124 = !{!125, !126, !127, !32, !27}
!125 = distinct !{!125, !119, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 0"}
!126 = distinct !{!126, !121, !"_RNvXsu_NtCskKLDkoKarTP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str: argument 0"}
!127 = distinct !{!127, !123, !"_RINvMNtCskKLDkoKarTP_4core3stre5parsejECsddkiMbsmfqo_5yr_ls: argument 0"}
!128 = !{!"branch_weights", i32 2002, i32 2000}
!129 = !{!130, !132, !133, !32, !34, !27, !29}
!130 = distinct !{!130, !131, !"_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_B1s_NtB1s_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1s_5stdio10tokio_impl14TokioPipeStdinEEE0s0_0ECsddkiMbsmfqo_5yr_ls: argument 0"}
!131 = distinct !{!131, !"_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_B1s_NtB1s_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1s_5stdio10tokio_impl14TokioPipeStdinEEE0s0_0ECsddkiMbsmfqo_5yr_ls"}
!132 = distinct !{!132, !131, !"_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_B1s_NtB1s_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1s_5stdio10tokio_impl14TokioPipeStdinEEE0s0_0ECsddkiMbsmfqo_5yr_ls: argument 1"}
!133 = distinct !{!133, !131, !"_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtCs6m2LFPinx2P_9async_lsp5ErrorNCNCINvMs2_B1s_NtB1s_7Message4readQINtNtB5_3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1s_5stdio10tokio_impl14TokioPipeStdinEEE0s0_0ECsddkiMbsmfqo_5yr_ls: argument 2"}
!134 = !{!135, !137, !130, !132, !133, !32, !34, !27, !29}
!135 = distinct !{!135, !136, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s0_0CsddkiMbsmfqo_5yr_ls: argument 0"}
!136 = distinct !{!136, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s0_0CsddkiMbsmfqo_5yr_ls"}
!137 = distinct !{!137, !136, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s0_0CsddkiMbsmfqo_5yr_ls: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String5clear: argument 0"}
!140 = distinct !{!140, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String5clear"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RNvYQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENtBF_15AsyncBufReadExt9read_lineCsddkiMbsmfqo_5yr_ls: argument 2"}
!143 = distinct !{!143, !"_RNvYQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENtBF_15AsyncBufReadExt9read_lineCsddkiMbsmfqo_5yr_ls"}
!144 = !{!145, !146, !32, !34, !27, !29}
!145 = distinct !{!145, !143, !"_RNvYQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENtBF_15AsyncBufReadExt9read_lineCsddkiMbsmfqo_5yr_ls: argument 0"}
!146 = distinct !{!146, !143, !"_RNvYQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENtBF_15AsyncBufReadExt9read_lineCsddkiMbsmfqo_5yr_ls: argument 1"}
!147 = !{!132, !133, !32, !34, !27, !29}
!148 = !{!106, !107, !32, !34, !27, !29}
!149 = !{!41, !43, !32, !27}
!150 = !{!"branch_weights", i32 6000, i32 1}
!151 = !{!152, !32, !34, !27, !29}
!152 = distinct !{!152, !153, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s2_0CsddkiMbsmfqo_5yr_ls: argument 0"}
!153 = distinct !{!153, !"_RNCNCINvMs2_Cs6m2LFPinx2P_9async_lspNtBa_7Message4readQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBa_5stdio10tokio_impl14TokioPipeStdinEEE0s2_0CsddkiMbsmfqo_5yr_ls"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtCs6m2LFPinx2P_9async_lsp10RawMessageNtBN_7MessageENtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsddkiMbsmfqo_5yr_ls: argument 0"}
!156 = distinct !{!156, !"_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtCs6m2LFPinx2P_9async_lsp10RawMessageNtBN_7MessageENtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsddkiMbsmfqo_5yr_ls"}
!157 = !{i64 -2, i64 -9223372036854775805}
!158 = !{!159}
!159 = distinct !{!159, !156, !"_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtCs6m2LFPinx2P_9async_lsp10RawMessageNtBN_7MessageENtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsddkiMbsmfqo_5yr_ls: argument 1"}
!160 = !{!155, !32, !34, !27, !29}
!161 = !{!159, !155}
!162 = !{!155, !159}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_RNvMs5_NtCskKLDkoKarTP_4core3pinINtB5_3PinQINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateIBv_QINtNtNtBK_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2n_INtB2n_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2n_6server9LifecycleINtNtB2n_5panic11CatchUnwindINtNtB2n_11concurrency11ConcurrencyINtNtB2n_6router6RouterNtNtB3X_6server18YARALanguageServerEEEEEE3runB1I_NtB2j_15TokioPipeStdoutE000EE3setCsddkiMbsmfqo_5yr_ls: argument 1"}
!165 = distinct !{!165, !"_RNvMs5_NtCskKLDkoKarTP_4core3pinINtB5_3PinQINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateIBv_QINtNtNtBK_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2n_INtB2n_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2n_6server9LifecycleINtNtB2n_5panic11CatchUnwindINtNtB2n_11concurrency11ConcurrencyINtNtB2n_6router6RouterNtNtB3X_6server18YARALanguageServerEEEEEE3runB1I_NtB2j_15TokioPipeStdoutE000EE3setCsddkiMbsmfqo_5yr_ls"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!168 = distinct !{!168, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsddkiMbsmfqo_5yr_ls: argument 0"}
!173 = distinct !{!173, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsddkiMbsmfqo_5yr_ls"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsddkiMbsmfqo_5yr_ls: argument 1"}
!176 = !{i64 48581057996167216}
end_hunk_1
