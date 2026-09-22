Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 177
begin_hunk_0_@js_Date_parse:bb.a
  %.not5.i.i.i = icmp eq i8 %i.nu, %i.oc
  br i1 %.not5.i.i.i, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.od = load i8, ptr %i.nv, align 1, !tbaa !218 ; 3 uses
  %i.oe = add i8 %i.od, -97
  %or.cond.i.i.i.i = icmp ult i8 %i.oe, 26
  %i.of = add nsw i8 %i.od, -32
  %i.og = select i1 %or.cond.i.i.i.i, i8 %i.of, i8 %i.od
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !218 ; 3 uses
  %i.oj = add i8 %i.oi, -97
  %or.cond.i14.i.i.i = icmp ult i8 %i.oj, 26
  %i.ok = add nsw i8 %i.oi, -32
  %i.ol = select i1 %or.cond.i14.i.i.i, i8 %i.ok, i8 %i.oi
  %.not.i.i.i = icmp eq i8 %i.og, %i.ol
  br i1 %.not.i.i.i, label %.lr.ph.1.i.i.i, label %._crit_edge.i.i.i

.lr.ph.1.i.i.i:                                   ; preds = %.lr.ph.preheader.i.i.i
  %i.om = load i8, ptr %i.nw, align 1, !tbaa !218 ; 3 uses
  %i.on = add i8 %i.om, -97
  %or.cond.i.1.i.i.i = icmp ult i8 %i.on, 26
  %i.oo = add nsw i8 %i.om, -32
  %i.op = select i1 %or.cond.i.1.i.i.i, i8 %i.oo, i8 %i.om
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !218 ; 3 uses
  %i.os = add i8 %i.or, -97
  %or.cond.i14.1.i.i.i = icmp ult i8 %i.os, 26
  %i.ot = add nsw i8 %i.or, -32
  %i.ou = select i1 %or.cond.i14.1.i.i.i, i8 %i.ot, i8 %i.or
  %.not.1.i.i.i = icmp eq i8 %i.op, %i.ou
  br i1 %.not.1.i.i.i, label %bb.bo, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.1.i.i.i, %.lr.ph.preheader.i.i.i, %.preheader.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 12
  br i1 %exitcond.not.i.i.i, label %string_get_month.exit.i, label %.preheader.i.i.i, !llvm.loop !1964

bb.bo:                                            ; preds = %.lr.ph.1.i.i.i
  store i32 %i.jg, ptr %i.be, align 4
  store i32 %i.jf, ptr %i.bi, align 16
  %i.ov = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ow = add nuw nsw i32 %i.ov, 1
  store i32 %i.ow, ptr %i.bc, align 4, !tbaa !191
  %i.ox = add nsw i32 %.promoted.i177.i, 3        ; 3 uses
  store i32 %i.ox, ptr %i.a, align 4, !tbaa !191
  %i.oy = sext i32 %i.ox to i64                   ; 2 uses
  %i.oz = getelementptr inbounds i8, ptr %i.f, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !218 ; 2 uses
  %i.pb = zext nneg i8 %i.pa to i64
  %memchr.bounds214.i.a = icmp ugt i8 %i.pa, 63
  %i.pc = shl nuw i64 1, %i.pb
  %i.pd = and i64 %i.pc, 288125926842040321
  %memchr.bits215.i.a = icmp eq i64 %i.pd, 0
  %memchr216.not.i.a = select i1 %memchr.bounds214.i.a, i1 true, i1 %memchr.bits215.i.a
  br i1 %memchr216.not.i.a, label %.lr.ph.i154.i.a, label %string_skip_until.exit.i

.lr.ph.i154.i.a:                                  ; preds = %bb.bo, %.lr.ph.i154.i.a
  %indvars.iv.i155.i = phi i64 [ %indvars.iv.next.i156.i, %.lr.ph.i154.i.a ], [ %i.oy, %bb.bo ]
  %indvars.iv.next.i156.i = add nsw i64 %indvars.iv.i155.i, 1 ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i156.i
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !218 ; 2 uses
  %i.pg = zext nneg i8 %i.pf to i64
  %memchr.bounds217.i = icmp ugt i8 %i.pf, 63
  %i.ph = shl nuw i64 1, %i.pg
  %i.pi = and i64 %i.ph, 288125926842040321
  %memchr.bits218.i = icmp eq i64 %i.pi, 0
  %memchr219.not.i = select i1 %memchr.bounds217.i, i1 true, i1 %memchr.bits218.i
  br i1 %memchr219.not.i, label %.lr.ph.i154.i.a, label %string_skip_until.exit.loopexit.i, !llvm.loop !1965

string_get_month.exit.i:                          ; preds = %._crit_edge.i.i.i
  br i1 %i.je, label %.lr.ph.i157.i, label %.lr.ph.preheader.i.i172.i.preheader

.lr.ph.preheader.i.i172.i.preheader:              ; preds = %.lr.ph.i161.1.i, %.lr.ph.i157.1.i, %.lr.ph.i157.i, %string_get_month.exit.i
  br label %.lr.ph.preheader.i.i172.i

.lr.ph.i157.i:                                    ; preds = %string_get_month.exit.i
  %i.pj = add nsw i64 %i.jr, 2                    ; 2 uses
  switch i8 %i.nu, label %.lr.ph.preheader.i.i172.i.preheader [
    i8 80, label %.lr.ph.i157.1.i
    i8 65, label %.lr.ph.i161.1.i
  ]

.lr.ph.i157.1.i:                                  ; preds = %.lr.ph.i157.i
  %i.pk = load i8, ptr %i.nv, align 1, !tbaa !218 ; 3 uses
  %i.pl = add i8 %i.pk, -97
  %or.cond.i.i.1.i = icmp ult i8 %i.pl, 26
  %i.pm = add nsw i8 %i.pk, -32
  %i.pn = select i1 %or.cond.i.i.1.i, i8 %i.pm, i8 %i.pk
  %.not10.i.1.i = icmp eq i8 %i.pn, 77
  br i1 %.not10.i.1.i, label %bb.bp, label %.lr.ph.preheader.i.i172.i.preheader

bb.bp:                                            ; preds = %.lr.ph.i157.1.i
  %.not119.i = icmp eq i32 %i.jg, 12
  %i.po = add nsw i32 %i.jg, 12
  %spec.select115 = select i1 %.not119.i, i32 12, i32 %i.po
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.br, %bb.bp, %bb.bt
  %i.pp = phi i32 [ %i.qo, %bb.bt ], [ %i.jf, %bb.bp ], [ %i.jf, %bb.br ]
  %i.pq = phi i32 [ %i.jg, %bb.bt ], [ %spec.select115, %bb.bp ], [ %spec.select116, %bb.br ]
  %.6 = phi i8 [ 0, %bb.bt ], [ %.4, %bb.bp ], [ %.4, %bb.br ]
  %.in.i = phi i64 [ %indvars.iv.next.i.i175.i, %bb.bt ], [ %i.pj, %bb.bp ], [ %i.pj, %bb.br ]
  %i.pr = trunc i64 %.in.i to i32
  br label %bb.am, !llvm.loop !1966

.lr.ph.i161.1.i:                                  ; preds = %.lr.ph.i157.i
  %i.ps = load i8, ptr %i.nv, align 1, !tbaa !218 ; 3 uses
  %i.pt = add i8 %i.ps, -97
  %or.cond.i.i164.1.i = icmp ult i8 %i.pt, 26
  %i.pu = add nsw i8 %i.ps, -32
  %i.pv = select i1 %or.cond.i.i164.1.i, i8 %i.pu, i8 %i.ps
  %.not10.i166.1.i = icmp eq i8 %i.pv, 77
  br i1 %.not10.i166.1.i, label %bb.bq, label %.lr.ph.preheader.i.i172.i.preheader

bb.bq:                                            ; preds = %.lr.ph.i161.1.i
  %i.pw = icmp sgt i32 %i.jg, 12
  br i1 %i.pw, label %js_date_parse_otherstring.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.px = icmp eq i32 %i.jg, 12
  %spec.select116 = select i1 %i.px, i32 0, i32 %i.jg
  br label %.backedge.i

.lr.ph.preheader.i.i172.i:                        ; preds = %.lr.ph.preheader.i.i172.i.preheader, %string_match.exit.i.i
  %.011.i.i = phi i64 [ %i.ql, %string_match.exit.i.i ], [ 0, %.lr.ph.preheader.i.i172.i.preheader ] ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr @js_tzabbr, i64 %.011.i.i ; 3 uses
  %i.pz = load i8, ptr %i.py, align 8, !tbaa !218
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bs, %.lr.ph.preheader.i.i172.i
  %indvars.iv.i.i173.i = phi i64 [ %i.jr, %.lr.ph.preheader.i.i172.i ], [ %indvars.iv.next.i.i175.i, %bb.bs ] ; 2 uses
  %i.qa = phi i8 [ %i.pz, %.lr.ph.preheader.i.i172.i ], [ %i.qk, %bb.bs ] ; 3 uses
  %.0816.i.i.i = phi ptr [ %i.py, %.lr.ph.preheader.i.i172.i ], [ %i.qj, %bb.bs ]
  %i.qb = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i.i173.i
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !218 ; 3 uses
  %i.qd = add i8 %i.qc, -97
  %or.cond.i.i.i174.i = icmp ult i8 %i.qd, 26
  %i.qe = add nsw i8 %i.qc, -32
  %i.qf = select i1 %or.cond.i.i.i174.i, i8 %i.qe, i8 %i.qc
  %i.qg = add i8 %i.qa, -97
  %or.cond.i11.i.i.i = icmp ult i8 %i.qg, 26
  %i.qh = add nsw i8 %i.qa, -32
  %i.qi = select i1 %or.cond.i11.i.i.i, i8 %i.qh, i8 %i.qa
  %.not10.i.i.i = icmp eq i8 %i.qf, %i.qi
  br i1 %.not10.i.i.i, label %bb.bs, label %string_match.exit.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.0816.i.i.i, i64 1 ; 2 uses
  %indvars.iv.next.i.i175.i = add nsw i64 %indvars.iv.i.i173.i, 1 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !218 ; 2 uses
  %.not.i.i176.i = icmp eq i8 %i.qk, 0
  br i1 %.not.i.i176.i, label %bb.bt, label %.lr.ph.i.i.i, !llvm.loop !1967

string_match.exit.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.ql = add nuw nsw i64 %.011.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ql, 18
  br i1 %exitcond.not.i.i, label %string_get_tzabbr.exit.i, label %.lr.ph.preheader.i.i172.i, !llvm.loop !1968

bb.bt:                                            ; preds = %bb.bs
  %i.qm = getelementptr inbounds nuw i8, ptr %i.py, i64 6
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !1972
  %i.qo = sext i16 %i.qn to i32
  br label %.backedge.i

string_get_tzabbr.exit.i:                         ; preds = %string_match.exit.i.i
  store i32 %i.jg, ptr %i.be, align 4
  store i32 %i.jf, ptr %i.bi, align 16
  store i32 %.promoted.i177.i, ptr %i.a, align 4
  switch i8 %i.jq, label %bb.bw [
    i8 40, label %.preheader.i
    i8 41, label %js_date_parse_otherstring.exit.thread
  ]

.preheader.i:                                     ; preds = %string_get_tzabbr.exit.i, %bb.bu
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bu ], [ %i.jr, %string_get_tzabbr.exit.i ] ; 3 uses
  %.0.i = phi i32 [ %i.qv, %bb.bu ], [ 0, %string_get_tzabbr.exit.i ] ; 2 uses
  %i.qp = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !218 ; 3 uses
  %.not117.i = icmp eq i8 %i.qq, 0
  br i1 %.not117.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.qr = icmp eq i8 %i.qq, 40
  %i.qs = zext i1 %i.qr to i32
  %i.qt = add nsw i32 %.0.i, %i.qs
  %i.qu = icmp eq i8 %i.qq, 41
  %.neg.i = sext i1 %i.qu to i32
  %i.qv = add i32 %i.qt, %.neg.i                  ; 2 uses
  %.not118.i = icmp eq i32 %i.qv, 0
  br i1 %.not118.i, label %string_skip_until.exit.loopexit221.i, label %.preheader.i, !llvm.loop !1969

bb.bv:                                            ; preds = %.preheader.i
  %i.qw = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  store i32 %i.qw, ptr %i.a, align 4
  %i.qx = icmp slt i32 %.0.i, 1
  br i1 %i.qx, label %string_skip_until.exit.i, label %js_date_parse_otherstring.exit.thread

bb.bw:                                            ; preds = %string_get_tzabbr.exit.i
  %narrow.i = add nuw nsw i8 %.096.ph.i, %.098.ph.i
  %narrow115.i = add nuw nsw i8 %narrow.i, %.094.ph.i
  %i.qy = zext nneg i8 %narrow115.i to i32
  %i.qz = sub nsw i32 0, %i.qy
  %.not116.i = icmp eq i32 %.092.ph.i, %i.qz
  br i1 %.not116.i, label %bb.bx, label %js_date_parse_otherstring.exit.thread

bb.bx:                                            ; preds = %bb.bw
  %i.ra = zext nneg i8 %i.jq to i64
  %memchr.bounds.i = icmp ugt i8 %i.jq, 63
  %i.rb = shl nuw i64 1, %i.ra
  %i.rc = and i64 %i.rb, 177025667039233
  %memchr.bits.i = icmp eq i64 %i.rc, 0
  %memchr210.not.i.a = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr210.not.i.a, label %.lr.ph.i180.i, label %string_skip_until.exit.i

.lr.ph.i180.i:                                    ; preds = %bb.bx, %.lr.ph.i180.i
  %indvars.iv.i181.i = phi i64 [ %indvars.iv.next.i182.i, %.lr.ph.i180.i ], [ %i.jr, %bb.bx ]
  %indvars.iv.next.i182.i = add nsw i64 %indvars.iv.i181.i, 1 ; 3 uses
  %i.rd = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i182.i
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !218 ; 2 uses
  %i.rf = zext nneg i8 %i.re to i64
  %memchr.bounds211.i = icmp ugt i8 %i.re, 63
  %i.rg = shl nuw i64 1, %i.rf
  %i.rh = and i64 %i.rg, 177025667039233
  %memchr.bits212.i = icmp eq i64 %i.rh, 0
  %memchr213.not.i = select i1 %memchr.bounds211.i, i1 true, i1 %memchr.bits212.i
  br i1 %memchr213.not.i, label %.lr.ph.i180.i, label %string_skip_until.exit.loopexit220.i, !llvm.loop !1965

string_skip_until.exit.loopexit.i:                ; preds = %.lr.ph.i154.i.a
  %i.ri = trunc nsw i64 %indvars.iv.next.i156.i to i32 ; 2 uses
  store i32 %i.ri, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_until.exit.loopexit220.i:             ; preds = %.lr.ph.i180.i
  %i.rj = trunc nsw i64 %indvars.iv.next.i182.i to i32 ; 2 uses
  store i32 %i.rj, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_until.exit.loopexit221.i:             ; preds = %bb.bu
  %i.rk = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.rk, ptr %i.a, align 4
  br label %string_skip_until.exit.i

string_skip_until.exit.i:                         ; preds = %bb.ar, %bb.at, %bb.au, %bb.ap, %string_skip_until.exit.loopexit221.i, %string_skip_until.exit.loopexit220.i, %string_skip_until.exit.loopexit.i, %bb.bx, %bb.bv, %bb.bo, %bb.bn, %bb.bl, %bb.bj, %bb.bi, %bb.bf, %bb.bf, %bb.ay, %.split.loop.exit.i.i
  %.promoted.i185.i = phi i32 [ %i.ri, %string_skip_until.exit.loopexit.i ], [ %i.ox, %bb.bo ], [ %i.rj, %string_skip_until.exit.loopexit220.i ], [ %.promoted.i177.i, %bb.bx ], [ %i.qw, %bb.bv ], [ %i.rk, %string_skip_until.exit.loopexit221.i ], [ %.promoted.i185.i.pre, %bb.bi ], [ %i.mj, %bb.bf ], [ %i.mj, %bb.bf ], [ %i.lp, %bb.bj ], [ %i.lp, %bb.bl ], [ %i.lp, %bb.bn ], [ %i.jw, %.split.loop.exit.i.i ], [ %i.ks, %bb.ay ], [ %.promoted.i185.i.pre179, %bb.ap ], [ %i.jw, %bb.au ], [ %i.jw, %bb.at ], [ %i.jw, %bb.ar ] ; 2 uses
  %.5 = phi i8 [ %.4, %string_skip_until.exit.loopexit.i ], [ %.4, %bb.bo ], [ %.4, %string_skip_until.exit.loopexit220.i ], [ %.4, %bb.bx ], [ %.4, %bb.bv ], [ %.4, %string_skip_until.exit.loopexit221.i ], [ %.4, %bb.bi ], [ %.4, %bb.bf ], [ %.4, %bb.bf ], [ %.4, %bb.bj ], [ %.4, %bb.bl ], [ %.4, %bb.bn ], [ %.4, %.split.loop.exit.i.i ], [ %.4, %bb.ay ], [ 0, %bb.ap ], [ %.4, %bb.au ], [ %.4, %bb.at ], [ %.4, %bb.ar ]
  %.199.i = phi i8 [ %.098.ph.i, %string_skip_until.exit.loopexit.i ], [ %.098.ph.i, %bb.bo ], [ %.098.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.098.ph.i, %bb.bx ], [ %.098.ph.i, %bb.bv ], [ %.098.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.098.ph.i, %bb.bi ], [ %.098.ph.i, %bb.bf ], [ %.098.ph.i, %bb.bf ], [ 1, %bb.bj ], [ 1, %bb.bl ], [ %.098.ph.i, %bb.bn ], [ %.098.ph.i, %.split.loop.exit.i.i ], [ 1, %bb.ay ], [ %.098.ph.i, %bb.ap ], [ %.098.ph.i, %bb.au ], [ %.098.ph.i, %bb.at ], [ %.098.ph.i, %bb.ar ]
  %.197.i = phi i8 [ 1, %string_skip_until.exit.loopexit.i ], [ 1, %bb.bo ], [ %.096.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.096.ph.i, %bb.bx ], [ %.096.ph.i, %bb.bv ], [ %.096.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.096.ph.i, %bb.bi ], [ %.096.ph.i, %bb.bf ], [ %.096.ph.i, %bb.bf ], [ %.096.ph.i, %bb.bj ], [ %.096.ph.i, %bb.bl ], [ %.096.ph.i, %bb.bn ], [ %.096.ph.i, %.split.loop.exit.i.i ], [ %.096.ph.i, %bb.ay ], [ %.096.ph.i, %bb.ap ], [ %.096.ph.i, %bb.au ], [ %.096.ph.i, %bb.at ], [ %.096.ph.i, %bb.ar ]
  %.195.i = phi i8 [ %.094.ph.i, %string_skip_until.exit.loopexit.i ], [ %.094.ph.i, %bb.bo ], [ %.094.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.094.ph.i, %bb.bx ], [ %.094.ph.i, %bb.bv ], [ %.094.ph.i, %string_skip_until.exit.loopexit221.i ], [ 1, %bb.bi ], [ 1, %bb.bf ], [ 1, %bb.bf ], [ %.094.ph.i, %bb.bj ], [ %.094.ph.i, %bb.bl ], [ %.094.ph.i, %bb.bn ], [ %.094.ph.i, %.split.loop.exit.i.i ], [ %.094.ph.i, %bb.ay ], [ 1, %bb.ap ], [ %.094.ph.i, %bb.au ], [ %.094.ph.i, %bb.at ], [ %.094.ph.i, %bb.ar ]
  %.193.i = phi i32 [ %.092.ph.i, %string_skip_until.exit.loopexit.i ], [ %.092.ph.i, %bb.bo ], [ %.092.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.092.ph.i, %bb.bx ], [ %.092.ph.i, %bb.bv ], [ %.092.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.092.ph.i, %bb.bi ], [ %.092.ph.i, %bb.bf ], [ %.092.ph.i, %bb.bf ], [ %.092.ph.i, %bb.bj ], [ %.092.ph.i, %bb.bl ], [ %i.np, %bb.bn ], [ %.092.ph.i, %.split.loop.exit.i.i ], [ %.092.ph.i, %bb.ay ], [ %.092.ph.i, %bb.ap ], [ %.092.ph.i, %bb.au ], [ %.092.ph.i, %bb.at ], [ %.092.ph.i, %bb.ar ]
  %i.rl = sext i32 %.promoted.i185.i to i64       ; 2 uses
  %i.rm = getelementptr inbounds i8, ptr %i.f, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !218
  %i.ro = and i8 %i.rn, -4
  %i.rp = icmp eq i8 %i.ro, 44
  br i1 %i.rp, label %.critedge.i.i, label %string_skip_separators.exit.i

.critedge.i.i:                                    ; preds = %string_skip_until.exit.i, %.critedge.i.i
  %indvars.iv.i187.i = phi i64 [ %indvars.iv.next.i188.i, %.critedge.i.i ], [ %i.rl, %string_skip_until.exit.i ]
  %indvars.iv.next.i188.i = add nsw i64 %indvars.iv.i187.i, 1 ; 3 uses
  %i.rq = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i188.i
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !218
  %i.rs = and i8 %i.rr, -4
  %i.rt = icmp eq i8 %i.rs, 44
  br i1 %i.rt, label %.critedge.i.i, label %string_skip_separators.exit.loopexit.i, !llvm.loop !1970

string_skip_separators.exit.loopexit.i:           ; preds = %.critedge.i.i
  %i.ru = trunc nsw i64 %indvars.iv.next.i188.i to i32 ; 2 uses
  store i32 %i.ru, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_separators.exit.i

string_skip_separators.exit.i:                    ; preds = %string_skip_separators.exit.loopexit.i, %string_skip_until.exit.i
  %.promoted353.i = phi i32 [ %i.ru, %string_skip_separators.exit.loopexit.i ], [ %.promoted.i185.i, %string_skip_until.exit.i ]
  %.promoted.pre = load i32, ptr %i.be, align 4
  %.promoted105.pre = load i32, ptr %i.bi, align 16
  br label %.outer.i, !llvm.loop !1966

bb.by:                                            ; preds = %string_skip_spaces.exit.i
  store i32 %i.jg, ptr %i.be, align 4
  store i32 %i.jf, ptr %i.bi, align 16
  %i.rv = trunc nuw i8 %.098.ph.i to i1           ; 2 uses
  %i.rw = zext nneg i8 %.098.ph.i to i32
  %i.rx = trunc nuw i8 %.096.ph.i to i1           ; 2 uses
  %i.ry = zext nneg i8 %.096.ph.i to i32
  %i.rz = add nuw nsw i32 %i.ry, %i.rw
  %i.sa = add i32 %i.rz, %.092.ph.i
  %i.sb = icmp sgt i32 %i.sa, 3
  br i1 %i.sb, label %js_date_parse_otherstring.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  switch i32 %.092.ph.i, label %js_date_parse_otherstring.exit.thread [
    i32 0, label %bb.ca
    i32 1, label %bb.cb
    i32 2, label %bb.cc
    i32 3, label %bb.ch
  ]

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.rv, label %thread-pre-split.i, label %js_date_parse_otherstring.exit.thread

bb.cb:                                            ; preds = %bb.bz
  %i.sc = load i32, ptr %i.b, align 4, !tbaa !191 ; 2 uses
  br i1 %i.rx, label %thread-pre-split.sink.split.i, label %bb.ci

bb.cc:                                            ; preds = %bb.bz
  br i1 %i.rv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.sd = load i32, ptr %i.b, align 4, !tbaa !191
  %i.se = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !191
  store i32 %i.sf, ptr %i.bd, align 8, !tbaa !191
  br label %bb.ci

bb.ce:                                            ; preds = %bb.cc
  br i1 %i.rx, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.sg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !191 ; 3 uses
  %i.si = icmp slt i32 %i.sh, 100
  %i.sj = select i1 %i.si, i32 1900, i32 0
  %i.sk = add nsw i32 %i.sj, %i.sh
  %i.sl = icmp slt i32 %i.sh, 50
  %i.sm = select i1 %i.sl, i32 100, i32 0
  %i.sn = add nsw i32 %i.sk, %i.sm
  store i32 %i.sn, ptr %i.d, align 16, !tbaa !191
  %i.so = load i32, ptr %i.b, align 4, !tbaa !191
  br label %thread-pre-split.sink.split.i

bb.cg:                                            ; preds = %bb.ce
  %i.sp = load i32, ptr %i.b, align 4, !tbaa !191
  %i.sq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !191
  store i32 %i.sr, ptr %i.bd, align 8, !tbaa !191
  br label %bb.ci

bb.ch:                                            ; preds = %bb.bz
  %i.ss = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !191 ; 3 uses
  %i.su = icmp slt i32 %i.st, 100
  %i.sv = select i1 %i.su, i32 1900, i32 0
  %i.sw = add nsw i32 %i.sv, %i.st
  %i.sx = icmp slt i32 %i.st, 50
  %i.sy = select i1 %i.sx, i32 100, i32 0
  %i.sz = add nsw i32 %i.sw, %i.sy
  store i32 %i.sz, ptr %i.d, align 16, !tbaa !191
  %i.ta = load i32, ptr %i.b, align 4, !tbaa !191
  %i.tb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !191
  store i32 %i.tc, ptr %i.bd, align 8, !tbaa !191
  br label %bb.ci

thread-pre-split.sink.split.i:                    ; preds = %bb.cf, %bb.cb
  %.sink.i = phi i32 [ %i.so, %bb.cf ], [ %i.sc, %bb.cb ]
  store i32 %.sink.i, ptr %i.bd, align 8, !tbaa !191
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.sink.split.i, %bb.ca
  %.pr.i = load i32, ptr %i.bc, align 4, !tbaa !191
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cb, %thread-pre-split.i, %bb.ch, %bb.cg, %bb.cd
  %i.td = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.sd, %bb.cd ], [ %i.sp, %bb.cg ], [ %i.ta, %bb.ch ], [ %i.sc, %bb.cb ] ; 2 uses
  %i.te = icmp slt i32 %i.td, 1
  %i.tf = load i32, ptr %i.bd, align 8
  %i.tg = icmp slt i32 %i.tf, 1
  %or.cond = select i1 %i.te, i1 true, i1 %i.tg
  br i1 %or.cond, label %js_date_parse_otherstring.exit.thread, label %js_date_parse_otherstring.exit

js_date_parse_otherstring.exit.thread:            ; preds = %bb.bf, %bb.bv, %bb.aw, %bb.bm, %string_get_tzabbr.exit.i, %bb.bw, %.split.loop.exit.i136.i, %.split.loop.exit.i146.i, %bb.bq, %bb.by, %bb.ci, %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.cl

js_date_parse_otherstring.exit:                   ; preds = %bb.ci
  %i.th = add nsw i32 %i.td, -1
  store i32 %i.th, ptr %i.bc, align 4, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.cj

bb.cj:                                            ; preds = %js_date_parse_otherstring.exit, %js_date_parse_isostring.exit.thread50, %js_date_parse_isostring.exit
  %.045 = phi i8 [ 0, %js_date_parse_isostring.exit ], [ %.4, %js_date_parse_otherstring.exit ], [ %.246.ph, %js_date_parse_isostring.exit.thread50 ]
  %i.ti = load <2 x i32>, ptr %i.bc, align 4, !tbaa !191 ; 2 uses
  %i.tj = load <2 x i32>, ptr %i.be, align 4, !tbaa !191 ; 4 uses
  %i.tk = extractelement <2 x i32> %i.tj, i64 0
  %i.tl = shufflevector <2 x i32> %i.tj, <2 x i32> %i.ti, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.tm = icmp slt <4 x i32> %i.tl, <i32 60, i32 25, i32 32, i32 12> ; 3 uses
  %.bc = bitcast <4 x i1> %i.tm to <2 x i2>
  %.extract = extractelement <2 x i2> %.bc, i64 0
  %i.tn = icmp eq i2 %.extract, -1
  %i.to = load i32, ptr %i.bg, align 4, !tbaa !191 ; 3 uses
  %i.tp = icmp slt i32 %i.to, 60
  %i.tq = select i1 %i.tp, i1 %i.tn, i1 false
  %i.tr = extractelement <4 x i1> %i.tm, i64 2
  %i.ts = select i1 %i.tq, i1 %i.tr, i1 false
  %i.tt = extractelement <4 x i1> %i.tm, i64 3
  %spec.select.4 = select i1 %i.ts, i1 %i.tt, i1 false ; 2 uses
  %i.tu = icmp eq i32 %i.tk, 24
  br i1 %i.tu, label %.split, label %bb.ck

.split:                                           ; preds = %bb.cj
  %i.tv = load i32, ptr %i.bh, align 8, !tbaa !191
end_hunk_0
begin_hunk_1_@js_parse_class:bb.a
  %.not468 = icmp eq i32 %i.fz, 0
  br i1 %.not468, label %bb.ak, label %.thread591

bb.ak:                                            ; preds = %bb.aj
  %i.ga = load i32, ptr %i.j, align 8, !tbaa !661
  switch i32 %i.ga, label %bb.ar [
    i32 123, label %bb.al
    i32 59, label %emit_op.exit576
    i32 61, label %emit_op.exit576
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gb = load ptr, ptr %i.fl, align 8, !tbaa !923 ; 2 uses
  %.not484.a = icmp eq ptr %i.gb, null
  br i1 %.not484.a, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gc = call fastcc i32 @emit_class_init_start(ptr noundef %0, ptr noundef %i.fl)
  %.not485 = icmp eq i32 %i.gc, 0
  br i1 %.not485, label %._crit_edge, label %.thread591

._crit_edge:                                      ; preds = %bb.am
  %.pre = load ptr, ptr %i.fl, align 8, !tbaa !923
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge, %bb.al
  %i.gd = phi ptr [ %.pre, %._crit_edge ], [ %i.gb, %bb.al ]
  store ptr %i.gd, ptr %i.h, align 8, !tbaa !553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #49
  %i.ge = load ptr, ptr %i.k, align 8, !tbaa !555
  %i.gf = load i32, ptr %i.fq, align 4, !tbaa !558
  %i.gg = load i32, ptr %i.fr, align 8, !tbaa !554
  %i.gh = call fastcc i32 @js_parse_function_decl2(ptr noundef %0, i32 noundef 7, i32 noundef 0, ptr noundef %i.ge, i32 noundef %i.gf, i32 noundef %i.gg, i32 noundef 0, ptr noundef nonnull %i.e)
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %.thread593, label %bb.ao

.thread593:                                       ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  br label %.thread591

bb.ao:                                            ; preds = %bb.an
  %i.gj = call fastcc i32 @push_scope(ptr noundef %0) ; 0 uses
  %.val540 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val540, i8 noundef zeroext -67)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef 8)
  %.val558 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_u16(ptr %.val558, i16 noundef zeroext 0)
  br i1 %i.bt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.val539 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val539, i8 noundef zeroext 17)
  %.val538 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val538, i8 noundef zeroext -62)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %.0424)
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !553 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 160
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !717
  %i.gn = trunc i32 %i.gm to i16
  call fastcc void @emit_u16(ptr %i.gk, i16 noundef zeroext %i.gn)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.val537 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val537, i8 noundef zeroext 27)
  %.val536 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val536, i8 noundef zeroext 36)
  %.val556 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_u16(ptr %.val556, i16 noundef zeroext 0)
  %.val535 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val535, i8 noundef zeroext 14)
  call fastcc void @pop_scope(ptr noundef %0)
  %i.go = load ptr, ptr %i.h, align 8, !tbaa !553
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !860
  store ptr %i.gq, ptr %i.h, align 8, !tbaa !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  br label %.backedge.backedge

bb.ar:                                            ; preds = %bb.ak
  %.val534 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.val534, i64 288 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.val534, i64 296 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !466 ; 4 uses
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %.val534, i64 336
  store i32 %i.gu, ptr %i.gv, align 8, !tbaa !730
  %i.gw = getelementptr inbounds nuw i8, ptr %.val534, i64 304
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !465
  %i.gy = icmp eq i64 %i.gx, %i.gt
  br i1 %i.gy, label %bb.as, label %bb.at, !prof !192

bb.as:                                            ; preds = %bb.ar
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.gr, i8 noundef zeroext 27)
  br label %emit_op.exit576.thread602

bb.at:                                            ; preds = %bb.ar
  %i.gz = load ptr, ptr %i.gr, align 8, !tbaa !467
  %i.ha = add i64 %i.gt, 1
  store i64 %i.ha, ptr %i.gs, align 8, !tbaa !466
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gt
  store i8 27, ptr %i.hb, align 1, !tbaa !218
  br label %emit_op.exit576.thread602

emit_op.exit576:                                  ; preds = %bb.ak, %bb.ak
  store i32 45, ptr %i.b, align 4, !tbaa !191
  %i.hc = load ptr, ptr %i.k, align 8, !tbaa !555
  br label %emit_op.exit576.thread602._crit_edge

emit_op.exit576.thread602:                        ; preds = %.backedge, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.at, %bb.as
  %.2415598601 = phi i8 [ 1, %bb.at ], [ 1, %bb.as ], [ 0, %bb.ai ], [ 0, %bb.ai ], [ 0, %bb.ai ], [ 0, %bb.ai ], [ 0, %.backedge ]
  %i.hd = phi i1 [ true, %bb.at ], [ true, %bb.as ], [ false, %bb.ai ], [ false, %bb.ai ], [ false, %bb.ai ], [ false, %bb.ai ], [ false, %.backedge ]
  %i.he = load ptr, ptr %i.k, align 8, !tbaa !555
  %i.hf = call fastcc i32 @js_parse_property_name(ptr noundef %0, ptr noundef %i.b, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 0
  %.pre672.pre = load i32, ptr %i.b, align 4, !tbaa !191 ; 2 uses
  br i1 %i.hg, label %.thread591, label %emit_op.exit576.thread602._crit_edge

emit_op.exit576.thread602._crit_edge:             ; preds = %emit_op.exit576.thread602, %emit_op.exit576
  %i.hh = phi i32 [ 45, %emit_op.exit576 ], [ %.pre672.pre, %emit_op.exit576.thread602 ] ; 38 uses
  %i.hi = phi ptr [ %i.hc, %emit_op.exit576 ], [ %i.he, %emit_op.exit576.thread602 ] ; 2 uses
  %.2415598600 = phi i8 [ 0, %emit_op.exit576 ], [ %.2415598601, %emit_op.exit576.thread602 ] ; 2 uses
  %i.hj = phi i1 [ false, %emit_op.exit576 ], [ %i.hd, %emit_op.exit576.thread602 ] ; 14 uses
  %.1419 = phi i32 [ 0, %emit_op.exit576 ], [ %i.hf, %emit_op.exit576.thread602 ] ; 3 uses
  %i.hk = and i32 %.1419, 16
  %.not469 = icmp eq i32 %i.hk, 0                 ; 7 uses
  %i.hl = and i32 %.1419, 2147483631              ; 3 uses
  %i.hm = icmp ne i32 %i.hh, 64                   ; 2 uses
  %i.hn = icmp eq i32 %i.hl, 0
  %i.ho = or i1 %i.hm, %i.hn
  %or.cond12.not = or i1 %i.hj, %i.ho
  br i1 %or.cond12.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %emit_op.exit576.thread602._crit_edge
  %i.hp = icmp eq i32 %i.hh, 63
  %or.cond14 = and i1 %i.hp, %i.hj
  %i.hq = icmp eq i32 %i.hh, 129
  %or.cond16 = or i1 %i.hq, %or.cond14
  br i1 %or.cond16, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %emit_op.exit576.thread602._crit_edge
  %i.hr = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.557) ; 0 uses
  br label %.thread591

bb.aw:                                            ; preds = %bb.au
  %i.hs = and i32 %.1419, 2147483630
  %or.cond18 = icmp eq i32 %i.hs, 2
  br i1 %or.cond18, label %bb.ax, label %bb.ca

bb.ax:                                            ; preds = %bb.aw
  %.not483 = icmp eq i32 %i.hl, 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #49
  br i1 %.not469, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ht = load i32, ptr %i.fs, align 8, !tbaa !717 ; 2 uses
  %i.hu = load ptr, ptr %i.ft, align 8, !tbaa !720
  %i.hv = sext i32 %i.ht to i64
  %i.hw = getelementptr inbounds [20 x i8], ptr %i.hu, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.01.i = load i32, ptr %i.hx, align 4, !tbaa !191 ; 2 uses
  %.not2.i = icmp eq i32 %.01.i, -1
  br i1 %.not2.i, label %find_private_class_field.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ay
  %i.hy = load ptr, ptr %i.fu, align 8, !tbaa !875 ; 2 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.bb
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.0.i = load i32, ptr %i.hz, align 4, !tbaa !191 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, -1
  br i1 %.not.i, label %find_private_class_field.exit.thread, label %bb.ba, !llvm.loop !178

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i
  %.03.i = phi i32 [ %.01.i, %.lr.ph.i ], [ %.0.i, %bb.az ] ; 3 uses
  %i.ia = sext i32 %.03.i to i64
  %i.ib = getelementptr inbounds [20 x i8], ptr %i.hy, i64 %i.ia ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !711
  %.not13.i = icmp eq i32 %i.id, %i.ht
  br i1 %.not13.i, label %bb.bb, label %find_private_class_field.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.ie = load i32, ptr %i.ib, align 4, !tbaa !546
  %i.if = icmp eq i32 %i.ie, %i.hh
  br i1 %i.if, label %find_private_class_field.exit, label %bb.az

find_private_class_field.exit:                    ; preds = %bb.bb
  %i.ig = icmp sgt i32 %.03.i, -1
  br i1 %i.ig, label %bb.bc, label %find_private_class_field.exit.thread

bb.bc:                                            ; preds = %find_private_class_field.exit
  %i.ih = zext nneg i32 %.03.i to i64
  %i.ii = getelementptr inbounds nuw [20 x i8], ptr %i.hy, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 12 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 4             ; 3 uses
  %i.il = lshr i8 %i.ik, 4                        ; 2 uses
  %i.im = zext nneg i8 %i.il to i32               ; 2 uses
  %i.in = lshr i8 %i.ik, 3
  switch i8 %i.il, label %4 [
    i8 9, label %emit_u8.exit577.thread625
    i8 6, label %emit_u8.exit577.thread625
    i8 5, label %emit_u8.exit577.thread625
  ]

4:                                                ; preds = %bb.bc
  %5 = select i1 %.not483, i32 7, i32 8
  %6 = icmp eq i32 %5, %i.im
  br i1 %6, label %emit_u8.exit577.thread625, label %bb.bd

bb.bd:                                            ; preds = %4
  %i.io = select i1 %.not483, i32 8, i32 7
  %i.ip = icmp eq i32 %i.io, %i.im
  br i1 %i.ip, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %7 = xor i8 %i.in, %.2415598600
  %8 = and i8 %7, 1
  %.not481.a = icmp eq i8 %8, 0
  br i1 %.not481.a, label %bb.bf, label %emit_u8.exit577.thread625

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.iq = and i8 %i.ik, 15
  %i.ir = or disjoint i8 %i.iq, -112
  store i8 %i.ir, ptr %i.ij, align 4
  br label %bb.bg

find_private_class_field.exit.thread:             ; preds = %bb.az, %bb.ba, %bb.ay, %find_private_class_field.exit
  %.val568.a = load ptr, ptr %0, align 8, !tbaa !552
  %i.is = call fastcc i32 @add_var(ptr noundef %.val568.a, ptr noundef %i.i, i32 noundef %i.hh) ; 4 uses
  %i.it = icmp sgt i32 %i.is, -1
  br i1 %i.it, label %add_private_class_field.exit, label %emit_u8.exit577.thread627

add_private_class_field.exit:                     ; preds = %find_private_class_field.exit.thread
  %i.iu = load ptr, ptr %i.fu, align 8, !tbaa !875
  %i.iv = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iw = getelementptr inbounds nuw [20 x i8], ptr %i.iu, i64 %i.iv ; 2 uses
  %i.ix = select i1 %.not483, i8 112, i8 -128
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 12 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 4
  %i.ja = and i8 %i.iz, 15
  %i.jb = or disjoint i8 %i.ja, %i.ix
  store i8 %i.jb, ptr %i.iy, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.jd = load <2 x i32>, ptr %i.fs, align 8, !tbaa !191
  %i.je = load i32, ptr %i.fs, align 8, !tbaa !717
  store <2 x i32> %i.jd, ptr %i.jc, align 4, !tbaa !191
  %i.jf = load ptr, ptr %i.ft, align 8, !tbaa !720
  %i.jg = sext i32 %i.je to i64
  %i.jh = getelementptr inbounds [20 x i8], ptr %i.jf, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  store i32 %i.is, ptr %i.ji, align 4, !tbaa !863
  store i32 %i.is, ptr %i.fv, align 4, !tbaa !917
  %i.jj = load ptr, ptr %i.fu, align 8, !tbaa !875
  %i.jk = getelementptr inbounds nuw [20 x i8], ptr %i.jj, i64 %i.iv
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 12 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 4
  %i.jn = and i8 %i.jm, -12
  %i.jo = select i1 %i.hj, i8 11, i8 3
  %i.jp = or disjoint i8 %i.jn, %i.jo
  store i8 %i.jp, ptr %i.jl, align 4
  br label %bb.bg

emit_u8.exit577.thread627:                        ; preds = %find_private_class_field.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  br label %.thread591

bb.bg:                                            ; preds = %add_private_class_field.exit, %bb.bf
  %.sroa.sel94.sroa.sel.v.sroa.sel.v.sroa.sel = select i1 %i.hj, ptr %i.fn, ptr %i.fj
  store i8 1, ptr %.sroa.sel94.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !2059
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ax
  %i.jq = select i1 %.not483, i32 4, i32 5
  %i.jr = load i32, ptr %i.fq, align 4, !tbaa !558
  %i.js = load i32, ptr %i.fr, align 8, !tbaa !554
  %i.jt = call fastcc i32 @js_parse_function_decl2(ptr noundef %0, i32 noundef %i.jq, i32 noundef 0, ptr noundef %i.hi, i32 noundef %i.jr, i32 noundef %i.js, i32 noundef 0, ptr noundef nonnull %i.f)
  %.not482 = icmp eq i32 %i.jt, 0
  br i1 %.not482, label %bb.bi, label %emit_u8.exit577.thread614

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not469, label %bb.bu, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ju = load ptr, ptr %i.f, align 8, !tbaa !918
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 60 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 4
  %i.jx = or i64 %i.jw, 262144
  store i64 %i.jx, ptr %i.jv, align 4
  %.val533 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.val533, i64 288 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.val533, i64 296 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !466 ; 4 uses
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %.val533, i64 336
  store i32 %i.kb, ptr %i.kc, align 8, !tbaa !730
  %i.kd = getelementptr inbounds nuw i8, ptr %.val533, i64 304
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !465
  %i.kf = icmp eq i64 %i.ke, %i.ka
  br i1 %i.kf, label %bb.bk, label %bb.bl, !prof !192

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.jy, i8 noundef zeroext 79)
  br label %emit_op.exit721.a

bb.bl:                                            ; preds = %bb.bj
  %i.kg = load ptr, ptr %i.jy, align 8, !tbaa !467
  %i.kh = add i64 %i.ka, 1
  store i64 %i.kh, ptr %i.jz, align 8, !tbaa !466
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ka
  store i8 79, ptr %i.ki, align 1, !tbaa !218
  br label %emit_op.exit721.a

emit_op.exit721.a:                                ; preds = %bb.bk, %bb.bl
  %.val532 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val532, i64 288 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.val532, i64 296 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !466 ; 4 uses
  %i.km = trunc i64 %i.kl to i32
  %i.kn = getelementptr inbounds nuw i8, ptr %.val532, i64 336
  store i32 %i.km, ptr %i.kn, align 8, !tbaa !730
  %i.ko = getelementptr inbounds nuw i8, ptr %.val532, i64 304
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !465
  %i.kq = icmp eq i64 %i.kp, %i.kl
  br i1 %i.kq, label %bb.bm, label %bb.bn, !prof !192

bb.bm:                                            ; preds = %emit_op.exit721.a
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.kj, i8 noundef zeroext -62)
  br label %emit_op.exit722

bb.bn:                                            ; preds = %emit_op.exit721.a
  %i.kr = load ptr, ptr %i.kj, align 8, !tbaa !467
  %i.ks = add i64 %i.kl, 1
  store i64 %i.ks, ptr %i.kk, align 8, !tbaa !466
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kl
  store i8 -62, ptr %i.kt, align 1, !tbaa !218
  br label %emit_op.exit722

emit_op.exit722:                                  ; preds = %bb.bm, %bb.bn
  br i1 %.not483, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %emit_op.exit722
  %i.ku = call fastcc i32 @js_atom_concat_str(ptr noundef %i.g, i32 noundef %i.hh, ptr noundef nonnull @.str.562) ; 4 uses
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %emit_u8.exit577.thread614, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.ku)
  %.val567 = load ptr, ptr %0, align 8, !tbaa !552
  %i.kw = call fastcc i32 @add_private_class_field(ptr %.val567, ptr noundef %i.i, i32 noundef %i.ku, i32 noundef 8, i1 noundef zeroext %i.hj)
  call void @JS_FreeAtom(ptr noundef %i.g, i32 noundef %i.ku)
  %i.kx = icmp sgt i32 %i.kw, -1
  br i1 %i.kx, label %bb.br, label %emit_u8.exit577.a

bb.bq:                                            ; preds = %emit_op.exit722
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.hh)
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.ky = load ptr, ptr %i.h, align 8, !tbaa !553 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 160
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !717
  %i.lb = trunc i32 %i.la to i16                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 288 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 304
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !465
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 296 ; 3 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !466 ; 2 uses
  %i.lh = sub i64 %i.le, %i.lg
  %i.li = icmp ult i64 %i.lh, 2
  br i1 %i.li, label %bb.bs, label %bb.bt, !prof !192

bb.bs:                                            ; preds = %bb.br
  %i.lj = call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %i.lc, i16 noundef zeroext %i.lb) ; 0 uses
  br label %emit_u8.exit577.thread

bb.bt:                                            ; preds = %bb.br
  %i.lk = load ptr, ptr %i.lc, align 8, !tbaa !467
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lg
  store i16 %i.lb, ptr %i.ll, align 1
  %i.lm = load i64, ptr %i.lf, align 8, !tbaa !466
  %i.ln = add i64 %i.lm, 2
  store i64 %i.ln, ptr %i.lf, align 8, !tbaa !466
  br label %emit_u8.exit577.thread

bb.bu:                                            ; preds = %bb.bi
  %i.lo = icmp eq i32 %i.hh, 0
  %.val531 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 2 uses
  br i1 %i.lo, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @emit_op(ptr %.val531, i8 noundef zeroext 84)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  call fastcc void @emit_op(ptr %.val531, i8 noundef zeroext 83)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.hh)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.lp = select i1 %.not483, i8 1, i8 2          ; 2 uses
  %.val563 = load ptr, ptr %i.h, align 8, !tbaa !553 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.val563, i64 288 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.val563, i64 304
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !465
  %i.lt = getelementptr inbounds nuw i8, ptr %.val563, i64 296 ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !466 ; 3 uses
  %i.lv = icmp eq i64 %i.ls, %i.lu
  br i1 %i.lv, label %bb.by, label %bb.bz, !prof !192

bb.by:                                            ; preds = %bb.bx
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.lq, i8 noundef zeroext %i.lp)
  br label %emit_u8.exit577.thread

bb.bz:                                            ; preds = %bb.bx
  %i.lw = load ptr, ptr %i.lq, align 8, !tbaa !467
  %i.lx = add i64 %i.lu, 1
  store i64 %i.lx, ptr %i.lt, align 8, !tbaa !466
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lu
  store i8 %i.lp, ptr %i.ly, align 1, !tbaa !218
  br label %emit_u8.exit577.thread

emit_u8.exit577.thread:                           ; preds = %bb.bt, %bb.bs, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  br label %emit_u8.exit578

emit_u8.exit577.thread614:                        ; preds = %bb.bh, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  br label %.thread591

emit_u8.exit577.thread625:                        ; preds = %bb.be, %bb.bc, %bb.bc, %bb.bc, %4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  br label %.loopexit

emit_u8.exit577.a:                                ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  br label %.thread591

bb.ca:                                            ; preds = %bb.aw
  switch i32 %i.hl, label %bb.dh [
    i32 0, label %bb.cb
    i32 4, label %bb.dk
    i32 5, label %bb.df
    i32 6, label %bb.dg
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.lz = load i32, ptr %i.j, align 8, !tbaa !661
  %.not471 = icmp eq i32 %i.lz, 40
  br i1 %.not471, label %bb.dh, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.sroa.sel97.idx.sroa.sel.idx.sroa.sel = select i1 %i.hj, ptr %i.fl, ptr %3 ; 3 uses
  %i.ma = add i32 %i.hh, -63
  %or.cond24 = icmp ult i32 %i.ma, 2
  br i1 %or.cond24, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mb = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.558) ; 0 uses
  br label %.thread591

bb.ce:                                            ; preds = %bb.cc
  br i1 %.not469, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mc = load i32, ptr %i.fs, align 8, !tbaa !717
  %i.md = call fastcc i32 @find_private_class_field(ptr noundef %i.i, i32 noundef %i.hh, i32 noundef %i.mc)
  %i.me = icmp sgt i32 %i.md, -1
  br i1 %i.me, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.val566 = load ptr, ptr %0, align 8, !tbaa !552
  %i.mf = call fastcc i32 @add_private_class_field(ptr %.val566, ptr noundef nonnull %i.i, i32 noundef %i.hh, i32 noundef 5, i1 noundef zeroext %i.hj)
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %.thread591, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.val529 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val529, i8 noundef zeroext 5)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.hh)
  %.val528 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val528, i8 noundef zeroext -62)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.hh)
  %i.mh = load ptr, ptr %i.h, align 8, !tbaa !553 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 160
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !717
  %i.mk = trunc i32 %i.mj to i16
  call fastcc void @emit_u16(ptr %i.mh, i16 noundef zeroext %i.mk)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ce
  %i.ml = load ptr, ptr %.sroa.sel97.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !923
  %.not475 = icmp eq ptr %i.ml, null
  br i1 %.not475, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mm = call fastcc i32 @emit_class_init_start(ptr noundef %0, ptr noundef %.sroa.sel97.idx.sroa.sel.idx.sroa.sel)
  %.not476 = icmp eq i32 %i.mm, 0
  br i1 %.not476, label %bb.ck, label %.thread591

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.mn = icmp eq i32 %i.hh, 0                    ; 3 uses
  br i1 %i.mn, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %narrow = add nuw nsw i8 %.2415598600, 125
  %9 = zext nneg i8 %narrow to i32
  %.sroa.gep659.val = load i32, ptr %i.fm, align 16
  %.val698 = load i32, ptr %i.fi, align 8
  %i.mo = select i1 %i.hj, i32 %.sroa.gep659.val, i32 %.val698
  %i.mp = call fastcc i32 @js_atom_concat_num(ptr noundef %i.g, i32 noundef %9, i32 noundef %i.mo) ; 5 uses
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %.thread591, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mr = call fastcc i32 @define_var(ptr noundef %0, ptr noundef %i.i, i32 noundef %i.mp, i32 noundef 2)
  %i.ms = icmp slt i32 %i.mr, 0
  br i1 %i.ms, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  call void @JS_FreeAtom(ptr noundef %i.g, i32 noundef %i.mp)
  br label %.thread591

bb.co:                                            ; preds = %bb.cm
  %.val527 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val527, i8 noundef zeroext 113)
  %.val526 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val526, i8 noundef zeroext -62)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.mp)
  %i.mt = load ptr, ptr %i.h, align 8, !tbaa !553 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 160
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !717
  %i.mw = trunc i32 %i.mv to i16
  call fastcc void @emit_u16(ptr %i.mt, i16 noundef zeroext %i.mw)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ck
  %.0411 = phi i32 [ %i.mp, %bb.co ], [ 0, %bb.ck ] ; 2 uses
  %i.mx = load ptr, ptr %.sroa.sel97.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !923 ; 2 uses
  store ptr %i.mx, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %i.mx, i8 noundef zeroext -67)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef 8)
  %.val552 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_u16(ptr %.val552, i16 noundef zeroext 0)
  %or.cond26 = and i1 %i.bt, %i.hj
  br i1 %or.cond26, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %.val524 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val524, i8 noundef zeroext 17)
  %.val523 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val523, i8 noundef zeroext -62)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %.0424)
  %i.my = load ptr, ptr %i.h, align 8, !tbaa !553 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 160
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !717
  %i.nb = trunc i32 %i.na to i16
  call fastcc void @emit_u16(ptr %i.my, i16 noundef zeroext %i.nb)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %i.mn, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.val522 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val522, i8 noundef zeroext -67)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %.0411)
  %i.nc = load ptr, ptr %i.h, align 8, !tbaa !553 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 160
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !717
  %i.nf = trunc i32 %i.ne to i16
  call fastcc void @emit_u16(ptr %i.nc, i16 noundef zeroext %i.nf)
  %.sroa.sel97.sroa.sel437.v.sroa.sel.v.sroa.sel = select i1 %i.hj, ptr %i.fm, ptr %i.fi ; 2 uses
  %i.ng = load i32, ptr %.sroa.sel97.sroa.sel437.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2058
  %i.nh = add nsw i32 %i.ng, 1
  store i32 %i.nh, ptr %.sroa.sel97.sroa.sel437.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2058
  call void @JS_FreeAtom(ptr noundef %i.g, i32 noundef %.0411)
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cr
  br i1 %.not469, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.val521 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val521, i8 noundef zeroext -67)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.hh)
  %i.ni = load ptr, ptr %i.h, align 8, !tbaa !553 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 160
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !717
  %i.nl = trunc i32 %i.nk to i16
  call fastcc void @emit_u16(ptr %i.ni, i16 noundef zeroext %i.nl)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu, %bb.cs
  %i.nm = load i32, ptr %i.j, align 8, !tbaa !661
  %i.nn = icmp eq i32 %i.nm, 61
  br i1 %i.nn, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.no = call fastcc i32 @next_token(ptr noundef %0)
  %.not477 = icmp eq i32 %i.no, 0
  br i1 %.not477, label %bb.cx, label %.thread591

bb.cx:                                            ; preds = %bb.cw
  %i.np = call fastcc i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef 1), !inline_history !174
  %.not478 = icmp eq i32 %i.np, 0
  br i1 %.not478, label %bb.cz, label %.thread591

bb.cy:                                            ; preds = %bb.cv
  %.val520 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val520, i8 noundef zeroext 6)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  br i1 %.not469, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val570 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @set_object_name_computed(ptr %.val570)
  %.val519 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val519, i8 noundef zeroext 69)
  br label %bb.de

bb.db:                                            ; preds = %bb.cz
  br i1 %i.mn, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %.val569 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @set_object_name_computed(ptr %.val569)
  %.val518 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val518, i8 noundef zeroext 80)
  %.val517 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val517, i8 noundef zeroext 14)
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  call fastcc void @set_object_name(ptr noundef %0, i32 noundef %i.hh)
  %.val516 = load ptr, ptr %i.h, align 8, !tbaa !553
  call fastcc void @emit_op(ptr %.val516, i8 noundef zeroext 75)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.hh)
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd, %bb.da
  %i.nq = load ptr, ptr %i.h, align 8, !tbaa !553
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !860
  store ptr %i.ns, ptr %i.h, align 8, !tbaa !553
  %i.nt = call fastcc i32 @js_parse_expect_semi(ptr noundef %0)
  %.not479 = icmp eq i32 %i.nt, 0
  br i1 %.not479, label %emit_u8.exit578, label %.thread591

bb.df:                                            ; preds = %bb.ca
  br label %bb.dk

bb.dg:                                            ; preds = %bb.ca
  br label %bb.dk

bb.dh:                                            ; preds = %bb.cb, %bb.ca
  %or.cond28 = or i1 %i.hm, %i.hj
  br i1 %or.cond28, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.not472 = icmp eq ptr %.ph839, null
  br i1 %.not472, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nu = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.559) ; 0 uses
  br label %.thread591

bb.dk:                                            ; preds = %bb.di, %bb.ca, %bb.df, %bb.dh, %bb.dg
  %or.cond30 = phi i1 [ false, %bb.ca ], [ false, %bb.df ], [ false, %bb.dg ], [ false, %bb.dh ], [ true, %bb.di ]
  %.0410 = phi i32 [ 6, %bb.ca ], [ 6, %bb.df ], [ 6, %bb.dg ], [ 6, %bb.dh ], [ %.492, %bb.di ]
  %.0409 = phi i32 [ 1, %bb.ca ], [ 2, %bb.df ], [ 3, %bb.dg ], [ 0, %bb.dh ], [ 0, %bb.di ]
  br i1 %.not469, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %.sroa.sel100.sroa.sel.v.sroa.sel.v.sroa.sel = select i1 %i.hj, ptr %i.fn, ptr %i.fj
  store i8 1, ptr %.sroa.sel100.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !2059
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.nv = load i32, ptr %i.fq, align 4, !tbaa !558
  %i.nw = load i32, ptr %i.fr, align 8, !tbaa !554
  %i.nx = call fastcc i32 @js_parse_function_decl2(ptr noundef %0, i32 noundef %.0410, i32 noundef %.0409, ptr noundef %i.hi, i32 noundef %i.nv, i32 noundef %i.nw, i32 noundef 0, ptr noundef nonnull %i.c)
  %.not474 = icmp eq i32 %i.nx, 0
  br i1 %.not474, label %bb.dn, label %.thread591

bb.dn:                                            ; preds = %bb.dm
  br i1 %or.cond30, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ny = load ptr, ptr %i.c, align 8, !tbaa !918
  br label %emit_u8.exit578

bb.dp:                                            ; preds = %bb.dn
  br i1 %.not469, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.nz = load ptr, ptr %i.c, align 8, !tbaa !918
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 60 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 4
  %i.oc = or i64 %i.ob, 262144
  store i64 %i.oc, ptr %i.oa, align 4
  %i.od = load i32, ptr %i.fs, align 8, !tbaa !717
  %i.oe = call fastcc i32 @find_private_class_field(ptr noundef %i.i, i32 noundef %i.hh, i32 noundef %i.od)
  %i.of = icmp sgt i32 %i.oe, -1
  br i1 %i.of, label %.loopexit, label %bb.dr

.loopexit:                                        ; preds = %bb.cf, %bb.dq, %emit_u8.exit577.thread625
  %i.og = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.560) ; 0 uses
  br label %.thread591
end_hunk_1
