inline.NumInlined: 246
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvNtCsbNU0JlWw3cF_14pulldown_cmark9firstpass14run_first_pass:bb.a
  %i.op = icmp ult i64 %i.on, %i.oo
  br i1 %i.op, label %bb.bs, label %.invoke2780.i

bb.br:                                            ; preds = %.noexc42.i, %bb.bs, %bb.bg
  %i.oq = add i64 %i.nb, %i.ls
  br label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass11parse_block.exit.i

bb.bs:                                            ; preds = %bb.bq
  %i.or = load ptr, ptr %i.cm, align 8, !alias.scope !211, !noalias !202, !nonnull !5, !noundef !5
  %i.os = getelementptr inbounds nuw [48 x i8], ptr %i.or, i64 %i.on
  %i.ot = load i8, ptr %i.os, align 8, !range !145, !noalias !202, !noundef !5
  %i.ou = icmp eq i8 %i.ot, 25
  br i1 %i.ou, label %bb.br, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ov = load i8, ptr %i.ca, align 4, !range !85, !alias.scope !211, !noalias !202, !noundef !5
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.bu, label %.noexc42.i

.noexc42.i:                                       ; preds = %bb.bu, %bb.bt
  store i8 1, ptr %i.cb, align 1, !alias.scope !211, !noalias !202
  br label %bb.br

bb.bu:                                            ; preds = %bb.bt
  invoke fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ba, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202

bb.bv:                                            ; preds = %.noexc40.i
  %i.ox = load i64, ptr %i.ci, align 8, !noalias !212, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !249
  store i64 %i.oj, ptr %i.fs, align 8, !noalias !249
  store i64 0, ptr %i.ft, align 8, !noalias !249
  store i8 22, ptr %i.ak, align 8, !noalias !249
  %i.oy = invoke noundef i64 @_RNvMs1_NtCsbNU0JlWw3cF_14pulldown_cmark4treeINtB5_4TreeNtNtB7_5parse4ItemE6appendB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ak)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202 ; 0 uses

.noexc43.i:                                       ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !249
  %i.oz = invoke noundef i64 @_RNvMs1_NtCsbNU0JlWw3cF_14pulldown_cmark4treeINtB5_4TreeNtNtB7_5parse4ItemE4pushB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ba)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202 ; 0 uses

.noexc44.i:                                       ; preds = %.noexc43.i
  %i.pa = load ptr, ptr %i.by, align 8, !alias.scope !250, !noalias !202, !nonnull !5, !noundef !5 ; 3 uses
  %i.pb = load i64, ptr %i.bz, align 8, !alias.scope !250, !noalias !202, !noundef !5 ; 15 uses
  %i.pc = icmp ugt i64 %i.oj, %i.pb
  br i1 %i.pc, label %.invoke2781.i, label %.lr.ph.i.i.i, !prof !124

.lr.ph.i.i.i:                                     ; preds = %.noexc44.i
  %i.pd = sub nuw i64 %i.pb, %i.oj
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.oj
  %i.pf = invoke noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pe, i64 noundef %i.pd)
          to label %.noexc45.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202

.noexc45.i:                                       ; preds = %.lr.ph.i.i.i
  %i.pg = add i64 %i.pf, %i.oj                    ; 6 uses
  invoke fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass16append_code_text(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ba, i64 noundef %i.ox, i64 noundef %i.oj, i64 noundef %i.pg)
          to label %.noexc46.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202

.noexc46.i:                                       ; preds = %.noexc45.i
  %i.ph = load i64, ptr %i.dx, align 8, !alias.scope !250, !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !249
  %i.pi = icmp ugt i64 %i.pg, %i.pb
  br i1 %i.pi, label %.invoke2781.i, label %.lr.ph212.i.i, !prof !124

.lr.ph212.i.i:                                    ; preds = %.noexc46.i, %.noexc53.i
  %.sroa.013.1.i211.i.i = phi i64 [ %.sroa.013.1.i.i.i, %.noexc53.i ], [ %i.ph, %.noexc46.i ] ; 8 uses
  %.sroa.015.1.i210.i.i = phi i64 [ %.sroa.015.1.i.i.i, %.noexc53.i ], [ %i.pg, %.noexc46.i ] ; 2 uses
  %.sroa.016.1.i209.i.i = phi i64 [ %.sroa.016.1.i.i.i, %.noexc53.i ], [ %i.pg, %.noexc46.i ] ; 2 uses
  %i.pj = phi i64 [ %i.qh, %.noexc53.i ], [ %i.pg, %.noexc46.i ] ; 4 uses
  %i.pk = sub nuw i64 %i.pb, %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pj
  store ptr %i.pl, ptr %i.aj, align 8, !noalias !249
  store i64 %i.pk, ptr %i.fu, align 8, !noalias !249
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i8 0, i64 32, i1 false), !noalias !249
  %i.pm = invoke noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark5parse15scan_containers(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %.noexc48.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc48.i:                                       ; preds = %.lr.ph212.i.i
  %i.pn = load i64, ptr %i.cj, align 8, !alias.scope !250, !noalias !202, !noundef !5 ; 2 uses
  %i.po = icmp ult i64 %i.pn, 1152921504606846976
  call void @llvm.assume(i1 %i.po)
  %i.pp = icmp ult i64 %i.pm, %i.pn
  br i1 %i.pp, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %.noexc48.i
  %i.pq = invoke noundef zeroext i1 @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj, i64 noundef 4)
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc50.i:                                       ; preds = %bb.bw
  %.pre.i.i.i = load i64, ptr %i.fw, align 8, !noalias !249 ; 3 uses
  %i.pr = load i64, ptr %i.fu, align 8, !noalias !249
  %i.ps = icmp uge i64 %.pre.i.i.i, %i.pr
  %or.cond.not.i.i.i = select i1 %i.pq, i1 true, i1 %i.ps
  br i1 %or.cond.not.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.noexc50.i
  %i.pt = load ptr, ptr %i.aj, align 8, !noalias !249, !nonnull !5, !noundef !5
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %.pre.i.i.i
  %i.pv = load i8, ptr %i.pu, align 1, !noalias !202, !noundef !5
  switch i8 %i.pv, label %bb.cb [
    i8 13, label %bb.by
    i8 10, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx, %.noexc50.i
  %i.pw = add i64 %.pre.i.i.i, %i.pj              ; 7 uses
  %i.px = load i64, ptr %i.bz, align 8, !alias.scope !250, !noalias !202, !noundef !5
  %i.py = icmp eq i64 %i.pw, %i.px
  br i1 %i.py, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pz = icmp ugt i64 %i.pw, %i.pb
  br i1 %i.pz, label %.invoke2781.i, label %bb.ca, !prof !58

bb.ca:                                            ; preds = %bb.bz
  %i.qa = load i64, ptr %i.fx, align 8, !noalias !249, !noundef !5
  %i.qb = sub nuw i64 %i.pb, %i.pw                ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pw ; 2 uses
  %i.qd = invoke { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qc, i64 noundef %i.qb)
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc51.i:                                       ; preds = %bb.ca
  %i.qe = extractvalue { i64, i64 } %i.qd, 0
  %i.qf = icmp eq i64 %i.qe, 1                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !249
  %i.qg = invoke noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qc, i64 noundef %i.qb)
          to label %.noexc52.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc52.i:                                       ; preds = %.noexc51.i
  %i.qh = add i64 %i.qg, %i.pw                    ; 6 uses
  invoke fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass16append_code_text(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ba, i64 noundef %i.qa, i64 noundef %i.pw, i64 noundef %i.qh)
          to label %.noexc53.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc53.i:                                       ; preds = %.noexc52.i
  %i.qi = load i64, ptr %i.dx, align 8, !alias.scope !250, !noalias !202
  %.sroa.016.1.i.i.i = select i1 %i.qf, i64 %.sroa.016.1.i209.i.i, i64 %i.qh
  %.sroa.015.1.i.i.i = select i1 %i.qf, i64 %.sroa.015.1.i210.i.i, i64 %i.qh
  %.sroa.013.1.i.i.i = select i1 %i.qf, i64 %.sroa.013.1.i211.i.i, i64 %i.qi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !249
  %i.qj = icmp ugt i64 %i.qh, %i.pb
  br i1 %i.qj, label %.invoke2781.i, label %.lr.ph212.i.i, !prof !141

bb.cb:                                            ; preds = %bb.by, %bb.bx, %.noexc48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !249
  %.not.i104.i.i = icmp eq i64 %.sroa.013.1.i211.i.i, 0
  br i1 %.not.i104.i.i, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass25parse_indented_code_block.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qk = load i64, ptr %i.cl, align 8, !alias.scope !250, !noalias !202, !noundef !5 ; 2 uses
  %i.ql = icmp ult i64 %.sroa.013.1.i211.i.i, %i.qk
  br i1 %i.ql, label %bb.cd, label %.invoke2780.i

bb.cd:                                            ; preds = %bb.cc
  %i.qm = load ptr, ptr %i.cm, align 8, !alias.scope !250, !noalias !202, !nonnull !5, !noundef !5
  %i.qn = getelementptr inbounds nuw [48 x i8], ptr %i.qm, i64 %.sroa.013.1.i211.i.i
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 40
  store i64 0, ptr %i.qo, align 8, !noalias !202
  %i.qp = load i64, ptr %i.cl, align 8, !alias.scope !250, !noalias !202, !noundef !5 ; 2 uses
  %i.qq = icmp ult i64 %.sroa.013.1.i211.i.i, %i.qp
  br i1 %i.qq, label %bb.ce, label %.invoke2780.i

bb.ce:                                            ; preds = %bb.cd
  %i.qr = load ptr, ptr %i.cm, align 8, !alias.scope !250, !noalias !202, !nonnull !5, !noundef !5
  %i.qs = getelementptr inbounds nuw [48 x i8], ptr %i.qr, i64 %.sroa.013.1.i211.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  store i64 %.sroa.015.1.i210.i.i, ptr %i.qt, align 8, !noalias !202
  br label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass25parse_indented_code_block.exit.i.i

_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass25parse_indented_code_block.exit.i.i: ; preds = %bb.ce, %bb.cb
  invoke fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ba, i64 noundef %.sroa.016.1.i209.i.i)
          to label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass11parse_block.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202

bb.cf:                                            ; preds = %.noexc40.i
  %i.qu = icmp ult i64 %i.oj, %i.gf
  br i1 %i.qu, label %bb.cg, label %.invoke2780.i

bb.cg:                                            ; preds = %bb.cf
  %i.qv = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.oj ; 5 uses
  %i.qw = load i8, ptr %i.qv, align 1, !noalias !202, !noundef !5
  %i.qx = icmp eq i8 %i.qw, 60
  br i1 %i.qx, label %bb.ch, label %._crit_edge305.i.i

._crit_edge305.i.i:                               ; preds = %bb.cg
  %.pre.i.i = sub nuw i64 %i.gf, %i.oj
  br label %bb.fd

bb.ch:                                            ; preds = %bb.cg
  %i.qy = add nuw i64 %i.oj, 1                    ; 2 uses
  %i.qz = sub nuw i64 %i.gf, %i.qy                ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.qy ; 2 uses
  %i.rb = invoke fastcc { ptr, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark9firstpass16get_html_end_tag(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ra, i64 noundef %i.qz)
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202 ; 2 uses

.noexc59.i:                                       ; preds = %bb.ch
  %i.rc = extractvalue { ptr, i64 } %i.rb, 0      ; 9 uses
  %.not92.i.i = icmp eq ptr %i.rc, null
  br i1 %.not92.i.i, label %bb.eu, label %bb.ci

bb.ci:                                            ; preds = %.noexc59.i
  %i.rd = extractvalue { ptr, i64 } %i.rb, 1      ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.re = load ptr, ptr %i.by, align 8, !alias.scope !256, !noalias !257, !nonnull !5, !noundef !5 ; 4 uses
  %i.rf = load i64, ptr %i.bz, align 8, !alias.scope !256, !noalias !257, !noundef !5 ; 16 uses
  %i.rg = icmp ugt i64 %i.oj, %i.rf
  br i1 %i.rg, label %.invoke2781.i, label %.lr.ph.i105.i.i, !prof !124

.lr.ph.i105.i.i:                                  ; preds = %bb.ci
  %i.rh = icmp eq i64 %i.rd, 0
  %i.ri = icmp eq i64 %i.rd, 1
  %i.rj = icmp ult i64 %i.rd, 33
  %i.rk = add nsw i64 %i.rd, -1
  %i.rl = icmp eq i64 %i.rd, 2
  %i.rm = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.rd, i64 4)
  %i.rn = add nuw nsw i64 %i.rd, 15               ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rc, i64 1 ; 2 uses
  %i.ro = add nuw nsw i64 %i.rd, 63               ; 2 uses
  br i1 %i.rh, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i105.i.i
  %invariant.op2113 = sub i64 -15, %i.rd
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i105.i.i
  %i.rp = sub nuw i64 %i.rf, %i.oj
  %i.rq = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.oj
  %i.rr = invoke noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rq, i64 noundef %i.rp)
          to label %.noexc60.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202

.noexc60.i:                                       ; preds = %.lr.ph.split.us.i.i.i
  %i.rs = add i64 %i.rr, %i.oj                    ; 14 uses
  invoke fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass16append_html_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ba, i64 noundef %i.of, i64 noundef %i.oj, i64 noundef %i.rs)
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202

.noexc61.i:                                       ; preds = %.noexc60.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !258
  %i.rt = icmp ugt i64 %i.rs, %i.rf
  br i1 %i.rt, label %.invoke2781.i, label %bb.cj, !prof !58

bb.cj:                                            ; preds = %.noexc61.i
  %i.ru = sub nuw i64 %i.rf, %i.rs
  %i.rv = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rs
  store ptr %i.rv, ptr %i.ai, align 8, !noalias !258
  store i64 %i.ru, ptr %i.db, align 8, !noalias !258
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i8 0, i64 32, i1 false), !noalias !258
  %i.rw = invoke noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark5parse15scan_containers(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %.noexc62.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, !noalias !202

.noexc62.i:                                       ; preds = %bb.cj
  %i.rx = load i64, ptr %i.cj, align 8, !alias.scope !256, !noalias !257, !noundef !5 ; 2 uses
  %i.ry = icmp ult i64 %i.rx, 1152921504606846976
  call void @llvm.assume(i1 %i.ry)
  %i.rz = icmp ult i64 %i.rw, %i.rx
  br i1 %i.rz, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass28parse_html_block_type_1_to_5.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %.noexc62.i
  %i.sa = load ptr, ptr %i.by, align 8, !alias.scope !256, !noalias !257, !nonnull !5, !noundef !5 ; 5 uses
  %i.sb = load i64, ptr %i.bz, align 8, !alias.scope !256, !noalias !257, !noundef !5 ; 6 uses
  %i.sc = icmp ugt i64 %i.oj, %i.rs
  %i.sd = icmp ugt i64 %i.rs, %i.sb
  %or.cond.i.us.i.i.i = or i1 %i.sc, %i.sd
  br i1 %or.cond.i.us.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i, label %bb.cl, !prof !151

bb.cl:                                            ; preds = %bb.ck
  %i.se = icmp eq i64 %i.oj, %i.sb
  br i1 %i.se, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.us.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sf = icmp eq i64 %i.oj, 0
  br i1 %i.sf, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.oj
  %i.sh = load i8, ptr %i.sg, align 1, !alias.scope !259, !noalias !202, !noundef !5
  %i.si = icmp sgt i8 %i.sh, -65
  br i1 %i.si, label %bb.co, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i, !prof !159

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.sj = icmp eq i64 %i.rs, %i.sb
  br i1 %i.sj, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.us.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i: ; preds = %bb.co
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.rs
  %i.sl = load i8, ptr %i.sk, align 1, !alias.scope !259, !noalias !202, !noundef !5
  %i.sm = icmp sgt i8 %i.sl, -65
  br i1 %i.sm, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.us.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i, !prof !160

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.us.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i, %bb.co, %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  br label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass28parse_html_block_type_1_to_5.exit.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader, %bb.et
  %.sroa.0.076.i.i.i = phi i64 [ %i.aen, %bb.et ], [ %i.oj, %.lr.ph.split.i.i.i.preheader ] ; 12 uses
  %.sroa.08.075.i.i.i = phi i64 [ %i.aep, %bb.et ], [ %i.of, %.lr.ph.split.i.i.i.preheader ]
  %i.sn = sub nuw i64 %i.rf, %.sroa.0.076.i.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.re, i64 %.sroa.0.076.i.i.i
  %i.sp = invoke noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.so, i64 noundef %i.sn)
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202 ; 16 uses

.noexc63.i:                                       ; preds = %.lr.ph.split.i.i.i
  %i.sq = add i64 %i.sp, %.sroa.0.076.i.i.i       ; 19 uses
  invoke fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass16append_html_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ba, i64 noundef %.sroa.08.075.i.i.i, i64 noundef %.sroa.0.076.i.i.i, i64 noundef %i.sq)
          to label %.noexc64.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc64.i:                                       ; preds = %.noexc63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !258
  %i.sr = icmp ugt i64 %i.sq, %i.rf
  br i1 %i.sr, label %.invoke2781.i, label %bb.cp, !prof !58

bb.cp:                                            ; preds = %.noexc64.i
  %i.ss = sub nuw i64 %i.rf, %i.sq
  %i.st = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.sq
  store ptr %i.st, ptr %i.ai, align 8, !noalias !258
  store i64 %i.ss, ptr %i.db, align 8, !noalias !258
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i8 0, i64 32, i1 false), !noalias !258
  %i.su = invoke noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark5parse15scan_containers(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc66.i:                                       ; preds = %bb.cp
  %i.sv = load i64, ptr %i.cj, align 8, !alias.scope !256, !noalias !257, !noundef !5 ; 2 uses
  %i.sw = icmp ult i64 %i.sv, 1152921504606846976
  call void @llvm.assume(i1 %i.sw)
  %i.sx = icmp ult i64 %i.su, %i.sv
  br i1 %i.sx, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass28parse_html_block_type_1_to_5.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %.noexc66.i
  %i.sy = load ptr, ptr %i.by, align 8, !alias.scope !256, !noalias !257, !nonnull !5, !noundef !5 ; 6 uses
  %i.sz = load i64, ptr %i.bz, align 8, !alias.scope !256, !noalias !257, !noundef !5 ; 9 uses
  %i.ta = icmp ugt i64 %.sroa.0.076.i.i.i, %i.sq
  %i.tb = icmp ugt i64 %i.sq, %i.sz
  %or.cond.i.i.i.i = or i1 %i.ta, %i.tb
  br i1 %or.cond.i.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i, label %bb.cr, !prof !151

bb.cr:                                            ; preds = %bb.cq
  %i.tc = icmp eq i64 %.sroa.0.076.i.i.i, %i.sz
  br i1 %i.tc, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.td = icmp eq i64 %.sroa.0.076.i.i.i, 0
  br i1 %i.td, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cu, %bb.cs
  %i.te = icmp eq i64 %i.sq, %i.sz
  br i1 %i.te, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 %.sroa.0.076.i.i.i
  %i.tg = load i8, ptr %i.tf, align 1, !alias.scope !259, !noalias !202, !noundef !5
  %i.th = icmp sgt i8 %i.tg, -65
  br i1 %i.th, label %bb.ct, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i, !prof !159

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i: ; preds = %bb.ct
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sq
  %i.tj = load i8, ptr %i.ti, align 1, !alias.scope !259, !noalias !202, !noundef !5
  %i.tk = icmp sgt i8 %i.tj, -65
  br i1 %i.tk, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i, !prof !160

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i, %bb.jk, %.noexc152.i, %bb.gs, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i, %bb.cn, %bb.ck, %bb.dn, %.split.i.i.i.i.i.i.i, %bb.dc, %.split.i.i.i.peel.i.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i, %bb.cu, %bb.cq
  %i.tl = phi ptr [ %i.uh, %.split.i.i.i.peel.i.i.i.i ], [ %i.uh, %bb.dc ], [ %i.uh, %.split.i.i.i.i.i.i.i ], [ %i.uh, %bb.dn ], [ %i.sy, %bb.cu ], [ %i.sy, %bb.cq ], [ %i.sy, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i ], [ %i.sa, %bb.ck ], [ %i.anu, %.noexc152.i ], [ %i.anu, %bb.jk ], [ %i.anu, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %i.ajx, %bb.gs ], [ %i.sa, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i ], [ %i.sa, %bb.cn ]
  %i.tm = phi i64 [ %i.ui, %.split.i.i.i.peel.i.i.i.i ], [ %i.ui, %bb.dc ], [ %i.ui, %.split.i.i.i.i.i.i.i ], [ %i.ui, %bb.dn ], [ %i.sz, %bb.cu ], [ %i.sz, %bb.cq ], [ %i.sz, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i ], [ %i.sb, %bb.ck ], [ %i.anv, %.noexc152.i ], [ %i.anv, %bb.jk ], [ %i.anv, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %i.ajv, %bb.gs ], [ %i.sb, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i ], [ %i.sb, %bb.cn ]
  %i.tn = phi i64 [ %.promoted.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.dc ], [ %i.wm, %.split.i.i.i.i.i.i.i ], [ %i.wm, %bb.dn ], [ %.sroa.0.076.i.i.i, %bb.cu ], [ %.sroa.0.076.i.i.i, %bb.cq ], [ %.sroa.0.076.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i ], [ %i.oj, %bb.ck ], [ %i.aob, %.noexc152.i ], [ %i.aob, %bb.jk ], [ %i.aob, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %i.akd, %bb.gs ], [ %i.oj, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i ], [ %i.oj, %bb.cn ]
  %i.to = phi i64 [ %i.ui, %.split.i.i.i.peel.i.i.i.i ], [ %i.ui, %bb.dc ], [ %i.ui, %.split.i.i.i.i.i.i.i ], [ %i.ui, %bb.dn ], [ %i.sq, %bb.cu ], [ %i.sq, %bb.cq ], [ %i.sq, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i ], [ %i.rs, %bb.ck ], [ %i.aoj, %.noexc152.i ], [ %i.aoj, %bb.jk ], [ %i.aoj, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %i.ajv, %bb.gs ], [ %i.rs, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i ], [ %i.rs, %bb.cn ]
  %i.tp = phi ptr [ @140, %.split.i.i.i.peel.i.i.i.i ], [ @140, %bb.dc ], [ @140, %.split.i.i.i.i.i.i.i ], [ @140, %bb.dn ], [ @95, %bb.cu ], [ @95, %bb.cq ], [ @95, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i ], [ @95, %bb.ck ], [ @82, %.noexc152.i ], [ @82, %bb.jk ], [ @82, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ @64, %bb.gs ], [ @95, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.us.i.i.i ], [ @95, %bb.cn ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tl, i64 noundef %i.tm, i64 noundef %i.tn, i64 noundef %i.to, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tp) #23
          to label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !202

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.cont.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i
  unreachable

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i, %bb.ct, %bb.cr
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sy, i64 %.sroa.0.076.i.i.i ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.tr = icmp ult i64 %i.rd, %i.sp
  br i1 %i.tr, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i.i.i
  br i1 %i.ri, label %bb.cy, label %bb.cx

bb.cw:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i.i.i
  %i.ts = icmp eq i64 %i.rd, %i.sp
  br i1 %i.ts, label %bb.es, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread20.i.i.i

bb.cx:                                            ; preds = %bb.cv
  br i1 %i.rj, label %bb.ef, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i

bb.cy:                                            ; preds = %bb.cv
  %i.tt = load i8, ptr %i.rc, align 1, !alias.scope !267, !noalias !268, !noundef !5 ; 2 uses
  %i.tu = icmp samesign ult i64 %i.sp, 16
  br i1 %i.tu, label %.lr.ph.i.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tv = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %i.tt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tq, i64 noundef range(i64 0, -9223372036854775808) %i.sp)
          to label %.noexc69.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc69.i:                                       ; preds = %bb.cz
  %i.tw = extractvalue { i64, i64 } %i.tv, 0
  %i.tx = icmp eq i64 %i.tw, 1
  %i.ty = zext i1 %i.tx to i8
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cy, %bb.da
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.uc, %bb.da ], [ 0, %bb.cy ] ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tq, i64 %.sroa.01.05.i.i.i.i.i
  %i.ua = load i8, ptr %i.tz, align 1, !alias.scope !269, !noalias !272, !noundef !5
  %i.ub = icmp eq i8 %i.ua, %i.tt
  br i1 %i.ub, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass28parse_html_block_type_1_to_5.exit.i.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.uc = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.uc, %i.sp
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread20.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i: ; preds = %.preheader.i.i.i, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !273
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tq, i64 noundef %i.sp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rc, i64 noundef %i.rd)
          to label %.noexc70.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc70.i:                                       ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.ud = load i64, ptr %i.ah, align 8, !range !103, !alias.scope !274, !noalias !277, !noundef !5
  %i.ue = trunc nuw i64 %i.ud to i1
  br i1 %i.ue, label %bb.dk, label %.preheader.i3.i.i.i.i

.preheader.i3.i.i.i.i:                            ; preds = %.noexc70.i
  %i.uf = load i8, ptr %i.dg, align 2, !range !85, !alias.scope !279, !noalias !282, !noundef !5
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i

.lr.ph.i4.i.i.i.i:                                ; preds = %.preheader.i3.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !274, !noalias !277 ; 12 uses
  %i.uh = load ptr, ptr %i.di, align 8, !alias.scope !279, !noalias !282, !nonnull !5, !noundef !5 ; 8 uses
  %i.ui = load i64, ptr %i.dj, align 8, !alias.scope !279, !noalias !282, !noundef !5 ; 20 uses
  %.promoted52.i.i.i.i.i = load i8, ptr %i.dh, align 8, !alias.scope !279, !noalias !282 ; 2 uses
  %i.uj = trunc nuw i8 %.promoted52.i.i.i.i.i to i1
  %i.uk = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.uk, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i4.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.ui
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.dc, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.db
  %i.ul = icmp eq i64 %.promoted.i.i.i.i.i, %i.ui
  br i1 %i.ul, label %bb.dd, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 %.promoted.i.i.i.i.i
  %i.un = load i8, ptr %i.um, align 1, !alias.scope !284, !noalias !287, !noundef !5
  %i.uo = icmp sgt i8 %i.un, -65
  br i1 %i.uo, label %bb.dd, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i

bb.dd:                                            ; preds = %bb.dc, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i4.i.i.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uh, i64 %.promoted.i.i.i.i.i ; 4 uses
  %i.uq = icmp samesign eq i64 %.promoted.i.i.i.i.i, %i.ui
  br i1 %i.uq, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ur = load i8, ptr %i.up, align 1, !noalias !289, !noundef !5 ; 5 uses
  %i.us = icmp sgt i8 %i.ur, -1
  br i1 %i.us, label %bb.df, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.de
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 1
  %i.uu = and i8 %i.ur, 31
  %i.uv = zext nneg i8 %i.uu to i32               ; 3 uses
  %i.uw = add nuw nsw i64 %.promoted.i.i.i.i.i, 1
  %i.ux = icmp samesign ne i64 %i.uw, %i.ui
  call void @llvm.assume(i1 %i.ux)
  %i.uy = load i8, ptr %i.ut, align 1, !noalias !289, !noundef !5
  %i.uz = shl nuw nsw i32 %i.uv, 6
  %i.va = and i8 %i.uy, 63
  %i.vb = zext nneg i8 %i.va to i32               ; 2 uses
  %i.vc = or disjoint i32 %i.uz, %i.vb
  %i.vd = icmp samesign ugt i8 %i.ur, -33
  br i1 %i.vd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.peel.i.i.i.i, label %bb.dg

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.peel.i.i.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.up, i64 2
  %i.vf = add nuw nsw i64 %.promoted.i.i.i.i.i, 2
  %i.vg = icmp samesign ne i64 %i.vf, %i.ui
  call void @llvm.assume(i1 %i.vg)
  %i.vh = load i8, ptr %i.ve, align 1, !noalias !289, !noundef !5
  %i.vi = shl nuw nsw i32 %i.vb, 6
  %i.vj = and i8 %i.vh, 63
  %i.vk = zext nneg i8 %i.vj to i32
  %i.vl = or disjoint i32 %i.vi, %i.vk            ; 2 uses
  %i.vm = shl nuw nsw i32 %i.uv, 12
  %i.vn = or disjoint i32 %i.vl, %i.vm
  %i.vo = icmp samesign ugt i8 %i.ur, -17
  br i1 %i.vo, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.peel.i.i.i.i, label %bb.dg

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.peel.i.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.up, i64 3
  %i.vq = add nuw nsw i64 %.promoted.i.i.i.i.i, 3
  %i.vr = icmp samesign ne i64 %i.vq, %i.ui
  call void @llvm.assume(i1 %i.vr)
  %i.vs = load i8, ptr %i.vp, align 1, !noalias !289, !noundef !5
  %i.vt = shl nuw nsw i32 %i.uv, 18
  %i.vu = and i32 %i.vt, 1835008
  %i.vv = shl nuw nsw i32 %i.vl, 6
  %i.vw = and i8 %i.vs, 63
  %i.vx = zext nneg i8 %i.vw to i32
  %i.vy = or disjoint i32 %i.vv, %i.vx
  %i.vz = or disjoint i32 %i.vy, %i.vu
  br label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.wa = zext nneg i8 %i.ur to i32
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.vn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.peel.i.i.i.i ], [ %i.vz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.peel.i.i.i.i ], [ %i.vc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.peel.i.i.i.i ], [ %i.wa, %bb.df ] ; 4 uses
  %i.wb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.wb)
  br i1 %i.uj, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.wc, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.wd, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.we = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.we, i64 3, i64 4
  br label %bb.dl

bb.dk:                                            ; preds = %.noexc70.i
  %i.wf = load i64, ptr %i.dk, align 8, !alias.scope !274, !noalias !277, !noundef !5 ; 2 uses
  %i.wg = icmp eq i64 %i.wf, -1
  %i.wh = load ptr, ptr %i.di, align 8, !alias.scope !274, !noalias !277, !nonnull !5, !noundef !5 ; 8 uses
  %i.wi = load i64, ptr %i.dj, align 8, !alias.scope !274, !noalias !277, !noundef !5 ; 10 uses
  %i.wj = load ptr, ptr %i.dl, align 8, !alias.scope !274, !noalias !277, !nonnull !5, !noundef !5 ; 5 uses
  %i.wk = load i64, ptr %i.dm, align 8, !alias.scope !274, !noalias !277, !noundef !5 ; 14 uses
  %i.wl = add nsw i64 %i.wk, -1                   ; 5 uses
  br i1 %i.wg, label %bb.dy, label %bb.dq

bb.dl:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.di ], [ %..i.i.peel.i.i.i.i, %bb.dj ], [ 1, %bb.dh ]
  %i.wm = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.promoted.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.wn = icmp eq i64 %i.wm, 0
  br i1 %i.wn, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.wm, %i.ui
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dn, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.dm
  %i.wo = icmp eq i64 %i.wm, %i.ui
  br i1 %i.wo, label %bb.do, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i

bb.dn:                                            ; preds = %bb.dm
  %i.wp = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.wm
  %i.wq = load i8, ptr %i.wp, align 1, !alias.scope !284, !noalias !293, !noundef !5
  %i.wr = icmp sgt i8 %i.wq, -65
  br i1 %i.wr, label %bb.do, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread16.i.i.invoke.i

bb.do:                                            ; preds = %bb.dn, %.split.i.i.i.i.i.i.i, %bb.dl
  %i.ws = icmp samesign eq i64 %i.wm, %i.ui
  br i1 %i.ws, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.wt = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.wm
  %i.wu = load i8, ptr %i.wt, align 1, !noalias !294, !noundef !5 ; 3 uses
  %i.wv = icmp sgt i8 %i.wu, -1
  br i1 %i.wv, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i: ; preds = %bb.dp
  %i.ww = add nuw nsw i64 %i.wm, 1
  %i.wx = icmp samesign ne i64 %i.ww, %i.ui
  call void @llvm.assume(i1 %i.wx)
  %i.wy = icmp samesign ugt i8 %i.wu, -33
  br i1 %i.wy, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i
  %i.wz = add nuw nsw i64 %i.wm, 2
  %i.xa = icmp samesign ne i64 %i.wz, %i.ui
  call void @llvm.assume(i1 %i.xa)
  %i.xb = icmp samesign ugt i8 %i.wu, -17
  br i1 %i.xb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i
  %i.xc = add nuw nsw i64 %i.wm, 3
  %i.xd = icmp samesign ne i64 %i.xc, %i.ui
  call void @llvm.assume(i1 %i.xd)
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

bb.dq:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !302, !noalias !303 ; 2 uses
  %i.xe = add i64 %.promoted.i.i.i.i.i.i, %i.wl   ; 2 uses
  %i.xf = icmp ult i64 %i.xe, %i.wi
  br i1 %i.xf, label %.lr.ph.i1.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph.i1.i.i.i.i.i:                              ; preds = %bb.dq
  %i.xg = load i64, ptr %i.do, align 8, !alias.scope !302, !noalias !303, !noundef !5
  %i.xh = load i64, ptr %i.df, align 8, !alias.scope !302, !noalias !303 ; 4 uses
  %i.xi = load i64, ptr %i.dh, align 8, !alias.scope !302, !noalias !303 ; 2 uses
  %i.xj = sub i64 %i.wk, %i.xi
  %invariant.op = sub i64 1, %i.xh
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.dt, %.lr.ph.i1.i.i.i.i.i
  %.sink70.i.i47.i.i.i.i = phi i64 [ %.sink70.i.i.i.i.i.i, %bb.dt ], [ %i.wf, %.lr.ph.i1.i.i.i.i.i ] ; 3 uses
  %.sink71.i.i44.i.i.i.i = phi i64 [ %.sink71.i.i.i.i.i.i, %bb.dt ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.i1.i.i.i.i.i ] ; 5 uses
  %i.xk = phi i64 [ %i.xt, %bb.dt ], [ %i.xe, %.lr.ph.i1.i.i.i.i.i ]
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !alias.scope !298, !noalias !305, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvNtCsbNU0JlWw3cF_14pulldown_cmark9firstpass14run_first_pass:bb.a
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.sroa.04.0.i.i.i.i.i.i1502
  %i.xz = load i8, ptr %i.xy, align 1, !alias.scope !300, !noalias !306, !noundef !5
  %i.ya = add i64 %.sroa.04.0.i.i.i.i.i.i1502, %.sink71.i.i44.i.i.i.i ; 2 uses
  %i.yb = icmp ult i64 %i.ya, %i.wi
  call void @llvm.assume(i1 %i.yb)
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.ya
  %i.yd = load i8, ptr %i.yc, align 1, !alias.scope !298, !noalias !305, !noundef !5
  %.not21.i.i.i.i.i.i = icmp eq i8 %i.xz, %i.yd
  br i1 %.not21.i.i.i.i.i.i, label %bb.du, label %bb.dx

.preheader36.i.i.i.i.i.i:                         ; preds = %bb.dv
  %i.ye = icmp ult i64 %.sink70.i.i47.i.i.i.i, %i.yf
  br i1 %i.ye, label %.lr.ph1505, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph1505:                                       ; preds = %.preheader36.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i.i1504 = phi i64 [ %i.yf, %.preheader36.i.i.i.i.i.i ], [ %i.xh, %.preheader36.i.i.i.i.i.i.preheader ]
  %i.yf = add i64 %.sroa.2.0.i.i.i.i.i.i1504, -1  ; 6 uses
  %i.yg = icmp ult i64 %i.yf, %i.wk
  br i1 %i.yg, label %bb.dv, label %.invoke2780.i

bb.dv:                                            ; preds = %.lr.ph1505
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.yf
  %i.yi = load i8, ptr %i.yh, align 1, !alias.scope !300, !noalias !306, !noundef !5
  %i.yj = add i64 %i.yf, %.sink71.i.i44.i.i.i.i   ; 2 uses
  %i.yk = icmp ult i64 %i.yj, %i.wi
  call void @llvm.assume(i1 %i.yk)
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.yj
  %i.ym = load i8, ptr %i.yl, align 1, !alias.scope !298, !noalias !305, !noundef !5
  %.not20.i.i.i.i.i.i = icmp eq i8 %i.yi, %i.ym
  br i1 %.not20.i.i.i.i.i.i, label %.preheader36.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.yn = add i64 %.sink71.i.i44.i.i.i.i, %i.xi
  br label %bb.dt

bb.dx:                                            ; preds = %.lr.ph1503
  %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i44.i.i.i.i, %invariant.op
  %i.yo = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i.i1502
  br label %bb.dt

bb.dy:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %.promoted.i4.i.i.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !314, !noalias !315 ; 3 uses
  %i.yp = add i64 %.promoted.i4.i.i.i.i.i, %i.wl  ; 3 uses
  %i.yq = icmp ult i64 %i.yp, %i.wi
  br i1 %i.yq, label %.lr.ph.i7.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph.i7.i.i.i.i.i:                              ; preds = %bb.dy
  %i.yr = load i64, ptr %i.do, align 8, !alias.scope !314, !noalias !315, !noundef !5 ; 2 uses
  %i.ys = load i64, ptr %i.df, align 8, !alias.scope !314, !noalias !315
  %.fr63.i.i.i.i.i = freeze i64 %i.ys             ; 10 uses
  %i.yt = load i64, ptr %i.dh, align 8, !alias.scope !314, !noalias !315
  %umax.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr63.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.wk) ; 2 uses
  %i.yu = add i64 %.fr63.i.i.i.i.i, -1            ; 2 uses
  %.first_iter.i8.i.i.i.i.i = icmp ult i64 %i.yu, %i.wk
  %i.yv = sub i64 1, %.fr63.i.i.i.i.i             ; 2 uses
  br i1 %.first_iter.i8.i.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.i.preheader:            ; preds = %.lr.ph.i7.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i1506.not = icmp ult i64 %.fr63.i.i.i.i.i, %i.wk
  br label %.lr.ph.split.us.i.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.i.preheader:         ; preds = %.lr.ph.i7.i.i.i.i.i
  %exitcond.not.i.us.i.i.i.i.i1509.not = icmp ult i64 %.fr63.i.i.i.i.i, %i.wk
  %.not34.i.us.us.i.i.i.i.i1512 = icmp eq i64 %.fr63.i.i.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.i:                   ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i.preheader, %bb.eb
  %.sink.i9.us.i52.i.i.i.i = phi i64 [ %.sink.i9.us.i.i.i.i.i, %bb.eb ], [ %.promoted.i4.i.i.i.i.i, %.lr.ph.split.us.i.us.i.i.i.i.i.preheader ] ; 5 uses
  %i.yw = phi i64 [ %i.zn, %bb.eb ], [ %i.yp, %.lr.ph.split.us.i.us.i.i.i.i.i.preheader ]
  %i.yx = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.yw
  %i.yy = load i8, ptr %i.yx, align 1, !alias.scope !310, !noalias !317, !noundef !5
  %i.yz = and i8 %i.yy, 63
  %i.za = zext nneg i8 %i.yz to i64
  %i.zb = shl nuw i64 1, %i.za
  %i.zc = and i64 %i.zb, %i.yr
  %.not.us.i.us.i.i.i.i.i = icmp eq i64 %i.zc, 0
  br i1 %.not.us.i.us.i.i.i.i.i, label %bb.ea, label %.preheader35.i.us.i.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.i.preheader:            ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i1509.not, label %.lr.ph1511, label %.preheader.i10.us.us.i.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.i:                      ; preds = %.lr.ph1511
  %i.zd = add i64 %.sroa.04.0.us.i.us.i.i.i.i.i1510, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i.i = icmp eq i64 %i.zd, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.i.preheader, label %.lr.ph1511

.preheader.i10.us.us.i.i.i.i.i.preheader:         ; preds = %.preheader35.i.us.i.i.i.i.i, %.preheader35.i.us.i.i.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i.i.i1512, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph1514

.lr.ph1511:                                       ; preds = %.preheader35.i.us.i.i.i.i.i.preheader, %.preheader35.i.us.i.i.i.i.i
  %.sroa.04.0.us.i.us.i.i.i.i.i1510 = phi i64 [ %i.zd, %.preheader35.i.us.i.i.i.i.i ], [ %.fr63.i.i.i.i.i, %.preheader35.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.sroa.04.0.us.i.us.i.i.i.i.i1510
  %i.zf = load i8, ptr %i.ze, align 1, !alias.scope !312, !noalias !318, !noundef !5
  %i.zg = add i64 %.sroa.04.0.us.i.us.i.i.i.i.i1510, %.sink.i9.us.i52.i.i.i.i ; 2 uses
  %i.zh = icmp ult i64 %i.zg, %i.wi
  call void @llvm.assume(i1 %i.zh)
  %i.zi = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.zg
  %i.zj = load i8, ptr %i.zi, align 1, !alias.scope !310, !noalias !317, !noundef !5
  %.not21.us.i.us.i.i.i.i.i = icmp eq i8 %i.zf, %i.zj
  br i1 %.not21.us.i.us.i.i.i.i.i, label %.preheader35.i.us.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph1511
  %i.zk = add i64 %.sink.i9.us.i52.i.i.i.i, %i.yv
  %i.zl = add i64 %i.zk, %.sroa.04.0.us.i.us.i.i.i.i.i1510
  br label %bb.eb

bb.ea:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i
  %i.zm = add i64 %.sink.i9.us.i52.i.i.i.i, %i.wk
  br label %bb.eb

bb.eb:                                            ; preds = %.split.us.us.i.i.i.i.i, %bb.ea, %bb.dz
  %.sink.i9.us.i.i.i.i.i = phi i64 [ %i.zm, %bb.ea ], [ %i.zl, %bb.dz ], [ %i.zw, %.split.us.us.i.i.i.i.i ] ; 2 uses
  %i.zn = add i64 %.sink.i9.us.i.i.i.i.i, %i.wl   ; 2 uses
  %i.zo = icmp ult i64 %i.zn, %i.wi
  br i1 %i.zo, label %.lr.ph.split.us.i.us.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.preheader.i10.us.us.i.i.i.i.i:                   ; preds = %.lr.ph1514
  %.not34.i.us.us.i.i.i.i.i = icmp eq i64 %i.zp, 0
  br i1 %.not34.i.us.us.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph1514

.lr.ph1514:                                       ; preds = %.preheader.i10.us.us.i.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i.i.i1513 = phi i64 [ %i.zp, %.preheader.i10.us.us.i.i.i.i.i ], [ %.fr63.i.i.i.i.i, %.preheader.i10.us.us.i.i.i.i.i.preheader ]
  %i.zp = add i64 %.sroa.2.0.us.i.us.us.i.i.i.i.i1513, -1 ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.zp
  %i.zr = load i8, ptr %i.zq, align 1, !alias.scope !312, !noalias !318, !noundef !5
  %i.zs = add i64 %i.zp, %.sink.i9.us.i52.i.i.i.i ; 2 uses
  %i.zt = icmp ult i64 %i.zs, %i.wi
  call void @llvm.assume(i1 %i.zt)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.zs
  %i.zv = load i8, ptr %i.zu, align 1, !alias.scope !310, !noalias !317, !noundef !5
  %.not20.us.i.us.us.i.i.i.i.i = icmp eq i8 %i.zr, %i.zv
  br i1 %.not20.us.i.us.us.i.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.i, label %.split.us.us.i.i.i.i.i

.split.us.us.i.i.i.i.i:                           ; preds = %.lr.ph1514
  %i.zw = add i64 %.sink.i9.us.i52.i.i.i.i, %i.yt
  br label %bb.eb

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.split.us.i.i.i.i.i.i.preheader, %bb.ee
  %.sink.i9.i50.i.i.i.i = phi i64 [ %.sink.i9.i.i.i.i.i, %bb.ee ], [ %.promoted.i4.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.zx = phi i64 [ %i.aao, %bb.ee ], [ %i.yp, %.lr.ph.split.us.i.i.i.i.i.i.preheader ]
  %i.zy = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1, !alias.scope !310, !noalias !317, !noundef !5
  %i.aaa = and i8 %i.zz, 63
  %i.aab = zext nneg i8 %i.aaa to i64
  %i.aac = shl nuw i64 1, %i.aab
  %i.aad = and i64 %i.aac, %i.yr
  %.not.us.i.i.i.i.i.i = icmp eq i64 %i.aad, 0
  br i1 %.not.us.i.i.i.i.i.i, label %bb.ed, label %.preheader35.i.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.i.preheader:               ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i1506.not, label %.lr.ph1508, label %.preheader.i10.i.i.i.i.i

.preheader35.i.i.i.i.i.i:                         ; preds = %.lr.ph1508
  %i.aae = add i64 %.sroa.04.0.us.i.i.i.i.i.i1507, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.aae, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.preheader.i10.i.i.i.i.i, label %.lr.ph1508

.lr.ph1508:                                       ; preds = %.preheader35.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i.i1507 = phi i64 [ %i.aae, %.preheader35.i.i.i.i.i.i ], [ %.fr63.i.i.i.i.i, %.preheader35.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.sroa.04.0.us.i.i.i.i.i.i1507
  %i.aag = load i8, ptr %i.aaf, align 1, !alias.scope !312, !noalias !318, !noundef !5
  %i.aah = add i64 %.sroa.04.0.us.i.i.i.i.i.i1507, %.sink.i9.i50.i.i.i.i ; 2 uses
  %i.aai = icmp ult i64 %i.aah, %i.wi
  call void @llvm.assume(i1 %i.aai)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.aah
  %i.aak = load i8, ptr %i.aaj, align 1, !alias.scope !310, !noalias !317, !noundef !5
  %.not21.us.i.i.i.i.i.i = icmp eq i8 %i.aag, %i.aak
  br i1 %.not21.us.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i, label %bb.ec

.preheader.i10.i.i.i.i.i:                         ; preds = %.preheader35.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i = icmp eq i64 %.fr63.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.invoke2780.i

bb.ec:                                            ; preds = %.lr.ph1508
  %i.aal = add i64 %.sink.i9.i50.i.i.i.i, %i.yv
  %i.aam = add i64 %i.aal, %.sroa.04.0.us.i.i.i.i.i.i1507
  br label %bb.ee

bb.ed:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  %i.aan = add i64 %.sink.i9.i50.i.i.i.i, %i.wk
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sink.i9.i.i.i.i.i = phi i64 [ %i.aan, %bb.ed ], [ %i.aam, %bb.ec ] ; 2 uses
  %i.aao = add i64 %.sink.i9.i.i.i.i.i, %i.wl     ; 2 uses
  %i.aap = icmp ult i64 %i.aao, %i.wi
  br i1 %i.aap, label %.lr.ph.split.us.i.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.dt, %.preheader36.i.i.i.i.i.i.preheader, %bb.ee, %bb.eb, %.preheader.i10.us.us.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i, %.preheader.i10.us.us.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i, %bb.dp, %.preheader.i10.i.i.i.i.i, %bb.dy, %bb.dq, %bb.do, %bb.dg, %bb.dd, %.preheader.i3.i.i.i.i
  %storemerge.i.sink.i.i.i.i.i = phi i8 [ 0, %bb.dy ], [ 0, %bb.dq ], [ 1, %bb.dg ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i ], [ 0, %.preheader.i3.i.i.i.i ], [ 1, %bb.do ], [ 1, %.preheader.i10.i.i.i.i.i ], [ %.promoted52.i.i.i.i.i, %bb.dd ], [ 1, %.preheader36.i.i.i.i.i.i ], [ 0, %bb.ee ], [ 0, %bb.eb ], [ 1, %.preheader.i10.us.us.i.i.i.i.i ], [ 1, %bb.dp ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i ], [ 1, %.preheader.i10.us.us.i.i.i.i.i.preheader ], [ 0, %bb.dt ], [ 1, %.preheader36.i.i.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !273
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i

bb.ef:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.aaq = load i8, ptr %i.rc, align 1, !alias.scope !324, !noalias !325, !noundef !5 ; 3 uses
  br i1 %i.rl, label %.thread.i.i.i.i.i, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i.i.i
  %i.aar = icmp ult i64 %i.rm, %i.aat
  br i1 %i.aar, label %.lr.ph, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.ef, %.preheader.i.i.i
  %i.aas = phi i64 [ %i.aat, %.preheader.i.i.i ], [ %i.rd, %bb.ef ]
  %i.aat = add nsw i64 %i.aas, -1                 ; 6 uses
  %i.aau = icmp ult i64 %i.aat, %i.rd
  br i1 %i.aau, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i.i.i, label %.invoke2780.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.aav = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.aat
  %i.aaw = load i8, ptr %i.aav, align 1, !alias.scope !324, !noalias !326, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i8 %i.aaw, %i.aaq
  br i1 %.not.i.not.i.i.i.i.i.i, label %.preheader.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i.i.i
  %i.aax = icmp ult i64 %i.sp, %i.rn
  br i1 %i.aax, label %.lr.ph.split.us.i.i10.i.i.i.i, label %bb.eh

.thread.i.i.i.i.i:                                ; preds = %bb.ef
  %i.aay = icmp ult i64 %i.sp, 17
  br i1 %i.aay, label %.lr.ph.split.us.i.i10.i.i.i.i, label %.thread92.i.i.i.i.i

.thread92.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i
  %i.aaz = insertelement <16 x i8> poison, i8 %i.aaq, i64 0
  %i.aba = shufflevector <16 x i8> %i.aaz, <16 x i8> poison, <16 x i32> zeroinitializer
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !alias.scope !324, !noalias !325
  br label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.abb = insertelement <16 x i8> poison, i8 %i.aaq, i64 0
  %i.abc = shufflevector <16 x i8> %i.abb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ei

.lr.ph.split.us.i.i10.i.i.i.i:                    ; preds = %.thread.i.i.i.i.i, %bb.eg
  %bcmp.i.i.us22.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.tq, ptr noundef nonnull readonly dereferenceable(1) %i.rc, i64 range(i64 2, 33) %i.rd), !alias.scope !334, !noalias !335
  %i.abd = icmp eq i32 %bcmp.i.i.us22.i.i.i.i.i.i, 0
  br i1 %i.abd, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass28parse_html_block_type_1_to_5.exit.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbNU0JlWw3cF_14pulldown_cmark.exit.backedge.us.i.i.i.i.i.i

.split.us.i.i11.i.i.i.i:                          ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbNU0JlWw3cF_14pulldown_cmark.exit.backedge.us.i.i.i.i.i.i
  %i.abe = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.abe, ptr noundef nonnull readonly dereferenceable(1) %i.rc, i64 range(i64 2, 33) %i.rd), !alias.scope !334, !noalias !335
  %i.abf = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.abf, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark9firstpassNtB2_9FirstPass28parse_html_block_type_1_to_5.exit.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbNU0JlWw3cF_14pulldown_cmark.exit.backedge.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbNU0JlWw3cF_14pulldown_cmark.exit.backedge.us.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i10.i.i.i.i, %.split.us.i.i11.i.i.i.i
  %.pn.i.i.i.i.i = phi ptr [ %i.abe, %.split.us.i.i11.i.i.i.i ], [ %i.tq, %.lr.ph.split.us.i.i10.i.i.i.i ]
  %.in.i.i.i.i.i = phi i64 [ %i.abg, %.split.us.i.i11.i.i.i.i ], [ %i.sp, %.lr.ph.split.us.i.i10.i.i.i.i ]
  %i.abg = add i64 %.in.i.i.i.i.i, -1             ; 2 uses
  %.not27.i.i.i.i.i.i = icmp ugt i64 %i.rd, %i.abg
  br i1 %.not27.i.i.i.i.i.i, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread20.i.i.i, label %.split.us.i.i11.i.i.i.i

bb.ei:                                            ; preds = %bb.eh, %.thread92.i.i.i.i.i
  %i.abh = phi i8 [ %.pre.i.i.i.i.i, %.thread92.i.i.i.i.i ], [ %i.aaw, %bb.eh ]
  %i.abi = phi <16 x i8> [ %i.aba, %.thread92.i.i.i.i.i ], [ %i.abc, %bb.eh ] ; 6 uses
  %storemerge9194.i.i.i.i.i = phi i64 [ 1, %.thread92.i.i.i.i.i ], [ %i.aat, %bb.eh ] ; 6 uses
  %i.abj = insertelement <16 x i8> poison, i8 %i.abh, i64 0
  %i.abk = shufflevector <16 x i8> %i.abj, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !339
  store ptr %i.tq, ptr %i.ag, align 8, !noalias !339
  store i64 %i.sp, ptr %i.dp, align 8, !noalias !339
  store ptr %.phi.trans.insert.i.i.i.i.i, ptr %i.dq, align 8, !noalias !339
  store i64 %i.rk, ptr %i.dr, align 8, !noalias !339
  %.not.i6.i.i.i.i = icmp ult i64 %i.ro, %i.sp
  br i1 %.not.i6.i.i.i.i, label %.lr.ph.i9.i.i.i.i, label %.preheader.i7.i.i.i.i

.preheader.i7.i.i.i.i:                            ; preds = %bb.em, %bb.ei
  %.sroa.06.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ei ], [ %i.adf, %bb.em ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i.i = phi i8 [ 0, %bb.ei ], [ %.sroa.014.2.3.i.i.i.i.i, %bb.em ] ; 2 uses
  %i.abl = add i64 %.sroa.06.0.lcssa.i.i.i.i.i, %i.rn
  %i.abm = icmp uge i64 %i.abl, %i.sp
  %i.abn = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i to i1 ; 2 uses
  %or.cond3104.i.i.i.i.i = select i1 %i.abm, i1 true, i1 %i.abn
  br i1 %or.cond3104.i.i.i.i.i, label %._crit_edge.i8.i.i.i.i, label %.lr.ph106.i.i.i.i.i

.lr.ph.i9.i.i.i.i:                                ; preds = %bb.ei, %bb.em
  %.sroa.06.0102.i.i.i.i.i = phi i64 [ %i.adf, %bb.em ], [ 0, %bb.ei ] ; 6 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.tq, i64 %.sroa.06.0102.i.i.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.abo, align 1, !alias.scope !340, !noalias !341
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 %storemerge9194.i.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.abp, align 1, !alias.scope !340, !noalias !341
  %i.abq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i, %i.abi
  %i.abr = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i.i.i, %i.abk
  %i.abs = and <16 x i1> %i.abq, %i.abr
  %i.abt = bitcast <16 x i1> %i.abs to i16        ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abo, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.abu, align 1, !alias.scope !340, !noalias !341
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 %storemerge9194.i.i.i.i.i
  %.sroa.01.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.abv, align 1, !alias.scope !340, !noalias !341
  %i.abw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i, %i.abi
  %i.abx = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i.i.i, %i.abk
  %i.aby = and <16 x i1> %i.abw, %i.abx
  %i.abz = bitcast <16 x i1> %i.aby to i16        ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abo, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.aca, align 1, !alias.scope !340, !noalias !341
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %storemerge9194.i.i.i.i.i
  %.sroa.01.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.acb, align 1, !alias.scope !340, !noalias !341
  %i.acc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i, %i.abi
  %i.acd = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i.i.i, %i.abk
  %i.ace = and <16 x i1> %i.acc, %i.acd
  %i.acf = bitcast <16 x i1> %i.ace to i16        ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abo, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.acg, align 1, !alias.scope !340, !noalias !341
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 %storemerge9194.i.i.i.i.i
  %.sroa.01.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.ach, align 1, !alias.scope !340, !noalias !341
  %i.aci = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i, %i.abi
  %i.acj = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i.i.i, %i.abk
  %i.ack = and <16 x i1> %i.aci, %i.acj
  %i.acl = bitcast <16 x i1> %i.ack to i16        ; 2 uses
  %i.acm = icmp eq i16 %i.abt, 0
  br i1 %i.acm, label %.preheader95.1.i.i.i.i.i, label %bb.en

.preheader95.1.i.i.i.i.i:                         ; preds = %.noexc78.i, %.lr.ph.i9.i.i.i.i
  %.sroa.014.2.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i9.i.i.i.i ], [ %i.adk, %.noexc78.i ] ; 3 uses
  %i.acn = icmp eq i16 %i.abz, 0
  br i1 %i.acn, label %.preheader95.2.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %.preheader95.1.i.i.i.i.i
  %i.aco = or disjoint i64 %.sroa.06.0102.i.i.i.i.i, 16
  %i.acp = trunc nuw i8 %.sroa.014.2.i.i.i.i.i to i1
  %i.acq = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, i64 noundef %i.aco, i16 noundef %i.abz, i1 noundef zeroext %i.acp) #26
          to label %.noexc75.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc75.i:                                       ; preds = %bb.ej
  %i.acr = zext i1 %i.acq to i8
  %i.acs = or i8 %.sroa.014.2.i.i.i.i.i, %i.acr
  br label %.preheader95.2.i.i.i.i.i

.preheader95.2.i.i.i.i.i:                         ; preds = %.noexc75.i, %.preheader95.1.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i, %.preheader95.1.i.i.i.i.i ], [ %i.acs, %.noexc75.i ] ; 3 uses
  %i.act = icmp eq i16 %i.acf, 0
  br i1 %i.act, label %.preheader95.3.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %.preheader95.2.i.i.i.i.i
  %i.acu = or disjoint i64 %.sroa.06.0102.i.i.i.i.i, 32
  %i.acv = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i to i1
  %i.acw = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, i64 noundef %i.acu, i16 noundef %i.acf, i1 noundef zeroext %i.acv) #26
          to label %.noexc76.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc76.i:                                       ; preds = %bb.ek
  %i.acx = zext i1 %i.acw to i8
  %i.acy = or i8 %.sroa.014.2.1.i.i.i.i.i, %i.acx
  br label %.preheader95.3.i.i.i.i.i

.preheader95.3.i.i.i.i.i:                         ; preds = %.noexc76.i, %.preheader95.2.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i, %.preheader95.2.i.i.i.i.i ], [ %i.acy, %.noexc76.i ] ; 3 uses
  %i.acz = icmp eq i16 %i.acl, 0
  br i1 %i.acz, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.preheader95.3.i.i.i.i.i
  %i.ada = or disjoint i64 %.sroa.06.0102.i.i.i.i.i, 48
  %i.adb = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i to i1
  %i.adc = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, i64 noundef %i.ada, i16 noundef %i.acl, i1 noundef zeroext %i.adb) #26
          to label %.noexc77.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc77.i:                                       ; preds = %bb.el
  %i.add = zext i1 %i.adc to i8
  %i.ade = or i8 %.sroa.014.2.2.i.i.i.i.i, %i.add
  br label %bb.em

bb.em:                                            ; preds = %.noexc77.i, %.preheader95.3.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i, %.preheader95.3.i.i.i.i.i ], [ %i.ade, %.noexc77.i ] ; 2 uses
  %i.adf = add i64 %.sroa.06.0102.i.i.i.i.i, 64   ; 3 uses
  %i.adg = add i64 %i.adf, %i.ro
  %i.adh = icmp uge i64 %i.adg, %i.sp
  %i.adi = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i = select i1 %i.adh, i1 true, i1 %i.adi
  br i1 %or.cond.i.i.i.i.i, label %.preheader.i7.i.i.i.i, label %.lr.ph.i9.i.i.i.i

bb.en:                                            ; preds = %.lr.ph.i9.i.i.i.i
  %i.adj = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, i64 noundef %.sroa.06.0102.i.i.i.i.i, i16 noundef %i.abt, i1 noundef zeroext false) #26
          to label %.noexc78.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !202

.noexc78.i:                                       ; preds = %bb.en
  %i.adk = zext i1 %i.adj to i8
  br label %.preheader95.1.i.i.i.i.i

._crit_edge.i8.i.i.i.i:                           ; preds = %bb.eo, %.preheader.i7.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i, %.preheader.i7.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i, %bb.eo ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i1 [ %i.abn, %.preheader.i7.i.i.i.i ], [ %i.aec, %bb.eo ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %i.sp, %invariant.op2113 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.tq, i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i.i.i = load <16 x i8>, ptr %i.adl, align 1, !alias.scope !340, !noalias !344
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 %storemerge9194.i.i.i.i.i
  %.sroa.01.0.copyload.i58.i.i.i.i.i = load <16 x i8>, ptr %i.adm, align 1, !alias.scope !340, !noalias !344
  %i.adn = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i.i.i, %i.abi
  %i.ado = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i.i.i, %i.abk
  %i.adp = and <16 x i1> %i.adn, %i.ado
  %i.adq = bitcast <16 x i1> %i.adp to i16        ; 2 uses
  %i.adr = icmp eq i16 %i.adq, 0
  br i1 %i.adr, label %bb.eq, label %bb.er

.lr.ph106.i.i.i.i.i:                              ; preds = %.preheader.i7.i.i.i.i, %bb.eo
  %.sroa.06.1105.i.i.i.i.i = phi i64 [ %i.adz, %bb.eo ], [ %.sroa.06.0.lcssa.i.i.i.i.i, %.preheader.i7.i.i.i.i ] ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.tq, i64 %.sroa.06.1105.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i.i.i.i = load <16 x i8>, ptr %i.ads, align 1, !alias.scope !340, !noalias !347
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 %storemerge9194.i.i.i.i.i
  %.sroa.01.0.copyload.i60.i.i.i.i.i = load <16 x i8>, ptr %i.adt, align 1, !alias.scope !340, !noalias !347
  %i.adu = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i.i.i.i, %i.abi
  %i.adv = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i.i.i.i, %i.abk
  %i.adw = and <16 x i1> %i.adu, %i.adv
  %i.adx = bitcast <16 x i1> %i.adw to i16        ; 2 uses
  %i.ady = icmp eq i16 %i.adx, 0
  br i1 %i.ady, label %bb.eo, label %bb.ep

end_hunk_1
