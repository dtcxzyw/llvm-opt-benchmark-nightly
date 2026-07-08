inline.NumInlined: 114
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17duckdb_libpgquery10core_yylexEPNS_12core_YYSTYPEEPiPv:bb.a
  %i.po = phi ptr [ %i.pk, %bb.bd ], [ %.pre.i896, %._crit_edge.i894 ]
  %i.pp = sext i32 %i.pn to i64
  %i.pq = getelementptr inbounds i8, ptr %i.po, i64 %i.pp
  %sext1054 = shl i64 %i.ox, 32
  %i.pr = ashr exact i64 %sext1054, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pq, ptr readonly align 1 %i.ow, i64 %i.pr, i1 false)
  %i.ps = load ptr, ptr %2, align 8, !tbaa !45
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 48 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !51
  %i.pv = add nsw i32 %i.pu, %i.oy
  store i32 %i.pv, ptr %i.pt, align 8, !tbaa !51
  br label %.loopexit.backedge

bb.be:                                            ; preds = %bb.r
  %i.pw = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 2
  %i.py = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.px, ptr noundef null, i32 noundef 16) #20
  %i.pz = trunc i64 %i.py to i32                  ; 3 uses
  tail call fastcc void @_ZN17duckdb_libpgqueryL20check_escape_warningEPv(ptr noundef nonnull %2)
  %i.qa = and i32 %i.pz, -1024
  switch i32 %i.qa, label %bb.bh [
    i32 55296, label %bb.bf
    i32 56320, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.qb = load ptr, ptr %2, align 8, !tbaa !45
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 72
  store i32 %i.pz, ptr %i.qc, align 8, !tbaa !67
  store i32 25, ptr %i.at, align 4, !tbaa !20
  br label %.loopexit.backedge

bb.bg:                                            ; preds = %bb.be
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.8, ptr noundef nonnull %2)
  br label %.loopexit.backedge

bb.bh:                                            ; preds = %bb.be
  tail call fastcc void @_ZN17duckdb_libpgqueryL10addunicodeEjPv(i32 noundef %i.pz, ptr noundef nonnull %2)
  br label %.loopexit.backedge

bb.bi:                                            ; preds = %bb.r
  %i.qd = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %i.qf = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.qe, ptr noundef null, i32 noundef 16) #20
  %i.qg = trunc i64 %i.qf to i32                  ; 2 uses
  %i.qh = and i32 %i.qg, -1024
  %i.qi = icmp eq i32 %i.qh, 56320
  br i1 %i.qi, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.8, ptr noundef nonnull %2)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.qj = load ptr, ptr %2, align 8, !tbaa !45
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 72
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !67
  %i.qm = shl i32 %i.ql, 10
  %i.qn = and i32 %i.qm, 1047552
  %i.qo = add nuw nsw i32 %i.qn, 65536
  %i.qp = and i32 %i.qg, 1023
  %i.qq = or disjoint i32 %i.qo, %i.qp
  tail call fastcc void @_ZN17duckdb_libpgqueryL10addunicodeEjPv(i32 noundef %i.qq, ptr noundef nonnull %2)
  store i32 11, ptr %i.at, align 4, !tbaa !20
  br label %.loopexit.backedge

bb.bl:                                            ; preds = %bb.r
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.8, ptr noundef nonnull %2)
  br label %.loopexit.backedge

bb.bm:                                            ; preds = %bb.r
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.8, ptr noundef nonnull %2)
  br label %.loopexit.backedge

bb.bn:                                            ; preds = %bb.r
  tail call void @_ZN17duckdb_libpgquery15scanner_yyerrorEPKcPv(ptr noundef nonnull @.str.8, ptr noundef nonnull %2)
  br label %.loopexit.backedge

bb.bo:                                            ; preds = %bb.r
  %i.qr = tail call noundef i32 @_ZN17duckdb_libpgquery7errcodeEi(i32 noundef 5) ; 0 uses
  %i.qs = tail call noundef i32 (ptr, ...) @_ZN17duckdb_libpgquery6errmsgEPKcz(ptr noundef nonnull @.str.9) ; 0 uses
  %i.qt = tail call noundef i32 @_ZN17duckdb_libpgquery7errhintEPKc(ptr noundef nonnull @.str.10) ; 0 uses
  %i.qu = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !3  ; 2 uses
  %i.qw = icmp slt i32 %i.qv, 0
  br i1 %i.qw, label %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qx = load ptr, ptr %2, align 8, !tbaa !45
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !46
  %i.qz = tail call noundef i32 @_ZN17duckdb_libpgquery20pg_mbstrlen_with_lenEPKci(ptr noundef %i.qy, i32 noundef %i.qv)
  %i.ra = add nsw i32 %i.qz, 1
  %i.rb = tail call noundef i32 @_ZN17duckdb_libpgquery11errpositionEi(i32 noundef %i.ra)
  br label %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit

_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit: ; preds = %bb.bo, %bb.bp
  %.0.i898 = phi i32 [ %i.rb, %bb.bp ], [ 0, %bb.bo ]
  %i.rc = tail call noundef i32 (i32, ...) @_ZN17duckdb_libpgquery7ereportEiz(i32 noundef 3, i32 noundef %.0.i898) ; 0 uses
  br label %.loopexit.backedge

bb.bq:                                            ; preds = %bb.r
  %i.rd = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 1
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !34
  switch i8 %i.rf, label %bb.cb [
    i8 39, label %bb.br
    i8 92, label %bb.bw
  ]

bb.br:                                            ; preds = %bb.bq
  %i.rg = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 76
  %i.ri = load i8, ptr %i.rh, align 4, !tbaa !60, !range !63, !noundef !64
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  %i.rl = load i8, ptr %i.rk, align 8, !tbaa !68, !range !63, !noundef !64
  %i.rm = trunc nuw i8 %i.rl to i1
  br i1 %i.rm, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.rn = tail call noundef i32 @_ZN17duckdb_libpgquery7errcodeEi(i32 noundef 6) ; 0 uses
  %i.ro = tail call noundef i32 (ptr, ...) @_ZN17duckdb_libpgquery6errmsgEPKcz(ptr noundef nonnull @.str.43) ; 0 uses
  %i.rp = tail call noundef i32 @_ZN17duckdb_libpgquery7errhintEPKc(ptr noundef nonnull @.str.44) ; 0 uses
  %i.rq = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !3  ; 2 uses
  %i.rs = icmp slt i32 %i.rr, 0
  br i1 %i.rs, label %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rt = load ptr, ptr %2, align 8, !tbaa !45
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !46
  %i.rv = tail call noundef i32 @_ZN17duckdb_libpgquery20pg_mbstrlen_with_lenEPKci(ptr noundef %i.ru, i32 noundef %i.rr)
  %i.rw = add nsw i32 %i.rv, 1
  %i.rx = tail call noundef i32 @_ZN17duckdb_libpgquery11errpositionEi(i32 noundef %i.rw)
  br label %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit.i

_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i = phi i32 [ %i.rx, %bb.bu ], [ 0, %bb.bt ]
  %i.ry = tail call noundef i32 (i32, ...) @_ZN17duckdb_libpgquery7ereportEiz(i32 noundef 2, i32 noundef %.0.i.i) ; 0 uses
  %.pre14.i = load ptr, ptr %2, align 8, !tbaa !45
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit.i, %bb.bs, %bb.br
  %i.rz = phi ptr [ %.pre14.i, %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit.i ], [ %i.rg, %bb.bs ], [ %i.rg, %bb.br ]
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 76
  store i8 0, ptr %i.sa, align 4, !tbaa !60
  br label %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit

bb.bw:                                            ; preds = %bb.bq
  %i.sb = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 76
  %i.sd = load i8, ptr %i.sc, align 4, !tbaa !60, !range !63, !noundef !64
  %i.se = trunc nuw i8 %i.sd to i1
  br i1 %i.se, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 32
  %i.sg = load i8, ptr %i.sf, align 8, !tbaa !68, !range !63, !noundef !64
  %i.sh = trunc nuw i8 %i.sg to i1
  br i1 %i.sh, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.si = tail call noundef i32 @_ZN17duckdb_libpgquery7errcodeEi(i32 noundef 6) ; 0 uses
  %i.sj = tail call noundef i32 (ptr, ...) @_ZN17duckdb_libpgquery6errmsgEPKcz(ptr noundef nonnull @.str.45) ; 0 uses
  %i.sk = tail call noundef i32 @_ZN17duckdb_libpgquery7errhintEPKc(ptr noundef nonnull @.str.46) ; 0 uses
  %i.sl = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3  ; 2 uses
  %i.sn = icmp slt i32 %i.sm, 0
  br i1 %i.sn, label %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit13.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.so = load ptr, ptr %2, align 8, !tbaa !45
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !46
  %i.sq = tail call noundef i32 @_ZN17duckdb_libpgquery20pg_mbstrlen_with_lenEPKci(ptr noundef %i.sp, i32 noundef %i.sm)
  %i.sr = add nsw i32 %i.sq, 1
  %i.ss = tail call noundef i32 @_ZN17duckdb_libpgquery11errpositionEi(i32 noundef %i.sr)
  br label %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit13.i

_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit13.i: ; preds = %bb.bz, %bb.by
  %.0.i12.i = phi i32 [ %i.ss, %bb.bz ], [ 0, %bb.by ]
  %i.st = tail call noundef i32 (i32, ...) @_ZN17duckdb_libpgquery7ereportEiz(i32 noundef 2, i32 noundef %.0.i12.i) ; 0 uses
  %.pre.i899 = load ptr, ptr %2, align 8, !tbaa !45
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit13.i, %bb.bx, %bb.bw
  %i.su = phi ptr [ %.pre.i899, %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit13.i ], [ %i.sb, %bb.bx ], [ %i.sb, %bb.bw ]
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 76
  store i8 0, ptr %i.sv, align 4, !tbaa !60
  br label %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit

bb.cb:                                            ; preds = %bb.bq
  tail call fastcc void @_ZN17duckdb_libpgqueryL20check_escape_warningEPv(ptr noundef nonnull readonly %2)
  br label %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit

_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit: ; preds = %bb.bv, %bb.ca, %bb.cb
  %i.sw = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 1
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !34  ; 5 uses
  %3 = tail call i8 @llvm.fshl.i8(i8 %i.sy, i8 %i.sy, i8 7)
  switch i8 %3, label %bb.cg [
    i8 49, label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit
    i8 51, label %bb.cc
    i8 55, label %bb.cd
    i8 57, label %bb.ce
    i8 58, label %bb.cf
    i8 0, label %bb.ch
  ]

bb.cc:                                            ; preds = %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit
  br label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit

bb.cd:                                            ; preds = %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit
  br label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit

bb.ce:                                            ; preds = %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit
  br label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit

bb.cf:                                            ; preds = %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit
  br label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit

bb.cg:                                            ; preds = %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit
  %.not.i901 = icmp sgt i8 %i.sy, -1
  br i1 %.not.i901, label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit
  %i.sz = load ptr, ptr %2, align 8, !tbaa !45
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 77
  store i8 1, ptr %i.ta, align 1, !tbaa !61
  br label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit

_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit: ; preds = %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch
  %.0.i900 = phi i8 [ 8, %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit ], [ 9, %bb.cf ], [ 12, %bb.cc ], [ 10, %bb.cd ], [ 13, %bb.ce ], [ %i.sy, %bb.ch ], [ %i.sy, %bb.cg ]
  %i.tb = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 48
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !51 ; 2 uses
  %i.te = add nsw i32 %i.td, 1
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 52 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !52 ; 2 uses
  %.not.i902 = icmp slt i32 %i.te, %i.tg
  br i1 %.not.i902, label %._crit_edge.i905, label %bb.ci

._crit_edge.i905:                                 ; preds = %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit
  %.phi.trans.insert.i906 = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %.pre.i907 = load ptr, ptr %.phi.trans.insert.i906, align 8, !tbaa !53
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit908

bb.ci:                                            ; preds = %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit
  %i.th = shl nsw i32 %i.tg, 1                    ; 2 uses
  store i32 %i.th, ptr %i.tf, align 4, !tbaa !52
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !53
  %i.tk = sext i32 %i.th to i64
  %i.tl = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef %i.tj, i64 noundef %i.tk) ; 2 uses
  %i.tm = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  store ptr %i.tl, ptr %i.tn, align 8, !tbaa !53
  %.phi.trans.insert9.i903 = getelementptr inbounds nuw i8, ptr %i.tm, i64 48
  %.pre10.i904 = load i32, ptr %.phi.trans.insert9.i903, align 8, !tbaa !51
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit908

_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit908:  ; preds = %._crit_edge.i905, %bb.ci
  %i.to = phi i32 [ %.pre10.i904, %bb.ci ], [ %i.td, %._crit_edge.i905 ]
  %i.tp = phi ptr [ %i.tl, %bb.ci ], [ %.pre.i907, %._crit_edge.i905 ]
  %i.tq = sext i32 %i.to to i64
  %i.tr = getelementptr inbounds i8, ptr %i.tp, i64 %i.tq
  store i8 %.0.i900, ptr %i.tr, align 1, !tbaa !34
  %i.ts = load ptr, ptr %2, align 8, !tbaa !45
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 48 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !51
  %i.tv = add nsw i32 %i.tu, 1
  store i32 %i.tv, ptr %i.tt, align 8, !tbaa !51
  br label %.loopexit.backedge

bb.cj:                                            ; preds = %bb.r
  %i.tw = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  %i.ty = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.tx, ptr noundef null, i32 noundef 8) #20 ; 2 uses
  %i.tz = trunc i64 %i.ty to i8
  tail call fastcc void @_ZN17duckdb_libpgqueryL20check_escape_warningEPv(ptr noundef nonnull %2)
  %i.ua = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 48
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !51 ; 2 uses
  %i.ud = add nsw i32 %i.uc, 1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 52 ; 2 uses
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !52 ; 2 uses
  %.not.i909 = icmp slt i32 %i.ud, %i.uf
  br i1 %.not.i909, label %._crit_edge.i912, label %bb.ck

._crit_edge.i912:                                 ; preds = %bb.cj
  %.phi.trans.insert.i913 = getelementptr inbounds nuw i8, ptr %i.ua, i64 40
  %.pre.i914 = load ptr, ptr %.phi.trans.insert.i913, align 8, !tbaa !53
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit915

bb.ck:                                            ; preds = %bb.cj
  %i.ug = shl nsw i32 %i.uf, 1                    ; 2 uses
  store i32 %i.ug, ptr %i.ue, align 4, !tbaa !52
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ua, i64 40
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !53
  %i.uj = sext i32 %i.ug to i64
  %i.uk = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef %i.ui, i64 noundef %i.uj) ; 2 uses
  %i.ul = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 40
  store ptr %i.uk, ptr %i.um, align 8, !tbaa !53
  %.phi.trans.insert9.i910 = getelementptr inbounds nuw i8, ptr %i.ul, i64 48
  %.pre10.i911 = load i32, ptr %.phi.trans.insert9.i910, align 8, !tbaa !51
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit915

_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit915:  ; preds = %._crit_edge.i912, %bb.ck
  %i.un = phi i32 [ %.pre10.i911, %bb.ck ], [ %i.uc, %._crit_edge.i912 ]
  %i.uo = phi ptr [ %i.uk, %bb.ck ], [ %.pre.i914, %._crit_edge.i912 ]
  %i.up = sext i32 %i.un to i64
  %i.uq = getelementptr inbounds i8, ptr %i.uo, i64 %i.up
  store i8 %i.tz, ptr %i.uq, align 1, !tbaa !34
  %i.ur = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 48 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !51
  %i.uu = add nsw i32 %i.ut, 1
  store i32 %i.uu, ptr %i.us, align 8, !tbaa !51
  %i.uv = trunc i64 %i.ty to i32                  ; 2 uses
  %i.uw = and i32 %i.uv, 255
  %i.ux = icmp ne i32 %i.uw, 0
  %i.uy = and i32 %i.uv, 128
  %.not849 = icmp eq i32 %i.uy, 0
  %or.cond854 = and i1 %i.ux, %.not849
  br i1 %or.cond854, label %.loopexit.backedge, label %bb.cl

bb.cl:                                            ; preds = %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit915
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ur, i64 77
  store i8 1, ptr %i.uz, align 1, !tbaa !61
  br label %.loopexit.backedge

bb.cm:                                            ; preds = %bb.r
  %i.va = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  %i.vc = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.vb, ptr noundef null, i32 noundef 16) #20 ; 2 uses
  %i.vd = trunc i64 %i.vc to i8
  tail call fastcc void @_ZN17duckdb_libpgqueryL20check_escape_warningEPv(ptr noundef nonnull %2)
  %i.ve = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 48
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !51 ; 2 uses
  %i.vh = add nsw i32 %i.vg, 1
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 52 ; 2 uses
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !52 ; 2 uses
  %.not.i916 = icmp slt i32 %i.vh, %i.vj
  br i1 %.not.i916, label %._crit_edge.i919, label %bb.cn

._crit_edge.i919:                                 ; preds = %bb.cm
  %.phi.trans.insert.i920 = getelementptr inbounds nuw i8, ptr %i.ve, i64 40
  %.pre.i921 = load ptr, ptr %.phi.trans.insert.i920, align 8, !tbaa !53
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit922

bb.cn:                                            ; preds = %bb.cm
  %i.vk = shl nsw i32 %i.vj, 1                    ; 2 uses
  store i32 %i.vk, ptr %i.vi, align 4, !tbaa !52
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ve, i64 40
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !53
  %i.vn = sext i32 %i.vk to i64
  %i.vo = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef %i.vm, i64 noundef %i.vn) ; 2 uses
  %i.vp = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 40
  store ptr %i.vo, ptr %i.vq, align 8, !tbaa !53
  %.phi.trans.insert9.i917 = getelementptr inbounds nuw i8, ptr %i.vp, i64 48
  %.pre10.i918 = load i32, ptr %.phi.trans.insert9.i917, align 8, !tbaa !51
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit922

_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit922:  ; preds = %._crit_edge.i919, %bb.cn
  %i.vr = phi i32 [ %.pre10.i918, %bb.cn ], [ %i.vg, %._crit_edge.i919 ]
  %i.vs = phi ptr [ %i.vo, %bb.cn ], [ %.pre.i921, %._crit_edge.i919 ]
  %i.vt = sext i32 %i.vr to i64
  %i.vu = getelementptr inbounds i8, ptr %i.vs, i64 %i.vt
  store i8 %i.vd, ptr %i.vu, align 1, !tbaa !34
  %i.vv = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 48 ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !51
  %i.vy = add nsw i32 %i.vx, 1
  store i32 %i.vy, ptr %i.vw, align 8, !tbaa !51
  %i.vz = trunc i64 %i.vc to i32                  ; 2 uses
  %i.wa = and i32 %i.vz, 255
  %i.wb = icmp ne i32 %i.wa, 0
  %i.wc = and i32 %i.vz, 128
  %.not848 = icmp eq i32 %i.wc, 0
  %or.cond855 = and i1 %i.wb, %.not848
  br i1 %or.cond855, label %.loopexit.backedge, label %bb.co

bb.co:                                            ; preds = %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit922
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vv, i64 77
  store i8 1, ptr %i.wd, align 1, !tbaa !61
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.co, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit922, %bb.cl, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit915, %bb.bf, %bb.bh, %bb.bg, %bb.w, %bb.x, %bb.dw, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit985, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit976, %bb.dk, %bb.dg, %bb.df, %bb.de, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit963, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit956, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit947, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit938, %bb.cs, %bb.cr, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit929, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit908, %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit897, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit888, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit879, %bb.au, %bb.aq, %bb.an, %bb.am, %bb.ai, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit871, %bb.ae, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit, %bb.y, %bb.u, %bb.t
  br label %.loopexit, !llvm.loop !44

bb.cp:                                            ; preds = %bb.r
  %i.we = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !34
  %i.wg = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 48
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !51 ; 2 uses
  %i.wj = add nsw i32 %i.wi, 1
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wg, i64 52 ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !52 ; 2 uses
  %.not.i923 = icmp slt i32 %i.wj, %i.wl
  br i1 %.not.i923, label %._crit_edge.i926, label %bb.cq

._crit_edge.i926:                                 ; preds = %bb.cp
end_hunk_0
begin_hunk_1_@_ZN17duckdb_libpgquery12scanner_initEPKcPNS_18core_yy_extra_typeEPKNS_13PGScanKeywordEi:bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #19
  store i32 12, ptr %i.e, align 4, !tbaa !3
  tail call void (i32, ptr, ...) @_ZN17duckdb_libpgquery4elogEiPKcz(i32 noundef 3, ptr noundef nonnull @.str.35)
  br label %bb.c

bb.c:                                             ; preds = %_ZN17duckdb_libpgquery15core_yylex_initEPPv.exit.thread, %bb.b
  store ptr %1, ptr %i.b, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %3, ptr %i.g, align 8, !tbaa !56
  %i.h = load i32, ptr @_ZN17duckdb_libpgquery15backslash_quoteE, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.h, ptr %i.i, align 4, !tbaa !109
  %i.j = load i8, ptr @_ZN17duckdb_libpgquery21escape_string_warningE, align 1, !tbaa !110, !range !63, !noundef !64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.j, ptr %i.k, align 8, !tbaa !68
  %i.l = load i8, ptr @_ZN17duckdb_libpgquery27standard_conforming_stringsE, align 1, !tbaa !110, !range !63, !noundef !64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 %i.l, ptr %i.m, align 1, !tbaa !62
  %i.n = add i64 %i.a, 2                          ; 2 uses
  %i.o = tail call noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef %i.n) ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.a, ptr %i.p, align 8, !tbaa !111
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %0, i64 %i.a, i1 false)
  %i.q = load ptr, ptr %1, align 8, !tbaa !46
  %i.r = getelementptr i8, ptr %i.q, i64 %i.a
  %i.s = getelementptr i8, ptr %i.r, i64 1
  store i8 0, ptr %i.s, align 1, !tbaa !34
  %i.t = load ptr, ptr %1, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.a
  store i8 0, ptr %i.u, align 1, !tbaa !34
  %i.v = load ptr, ptr %1, align 8, !tbaa !46     ; 4 uses
  %i.w = icmp ugt i64 %i.a, -3
  br i1 %i.w, label %_ZN17duckdb_libpgquery19core_yy_scan_bufferEPcmPv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.a
  %i.y = load i8, ptr %i.x, align 1, !tbaa !34
  %.not.i = icmp eq i8 %i.y, 0
  br i1 %.not.i, label %bb.e, label %_ZN17duckdb_libpgquery19core_yy_scan_bufferEPcmPv.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.v, i64 %i.n
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  %.not26.i = icmp eq i8 %i.ab, 0
  br i1 %.not26.i, label %bb.f, label %_ZN17duckdb_libpgquery19core_yy_scan_bufferEPcmPv.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef 72) ; 12 uses
  %.not27.i = icmp eq ptr %i.ac, null
  br i1 %.not27.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN17duckdb_libpgqueryL14yy_fatal_errorEPKcPv(ptr noundef nonnull @.str.28) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %sext.i = shl i64 %i.a, 32
  %i.ad = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.v, ptr %i.af, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.v, ptr %i.ag, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 0, ptr %i.ah, align 8, !tbaa !85
  store ptr null, ptr %i.ac, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  store i32 0, ptr %i.aj, align 4, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i32 1, ptr %i.ak, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  store i32 0, ptr %i.al, align 4, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store i32 0, ptr %i.am, align 8, !tbaa !72
  tail call void @_ZN17duckdb_libpgquery24core_yy_switch_to_bufferEPNS_15yy_buffer_stateEPv(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b)
  br label %_ZN17duckdb_libpgquery19core_yy_scan_bufferEPcmPv.exit

_ZN17duckdb_libpgquery19core_yy_scan_bufferEPcmPv.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 1024, ptr %i.an, align 4, !tbaa !52
  %i.ao = tail call noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef 1024)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.aq, align 8, !tbaa !51
  ret ptr %i.b
}

declare void @_ZN17duckdb_libpgquery4elogEiPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17duckdb_libpgquery14scanner_finishEPv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !111
  %i.d = icmp ugt i64 %i.c, 8191
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !46
  tail call void @_ZN17duckdb_libpgquery5pfreeEPv(ptr noundef %i.e)
  %.pre = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52
  %i.i = icmp sgt i32 %i.h, 8191
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  tail call void @_ZN17duckdb_libpgquery5pfreeEPv(ptr noundef %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef nonnull %0, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @clearerr(ptr noundef captures(none)) local_unnamed_addr #12

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

declare noundef ptr @_ZN17duckdb_libpgquery15unicode_to_utf8EjPh(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN17duckdb_libpgquery8pg_mblenEPKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN17duckdb_libpgquery15scanner_isspaceEc(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !17, i64 152}
!8 = !{!"_ZTSN17duckdb_libpgquery8yyguts_tE", !9, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !12, i64 56, !12, i64 64, !15, i64 72, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !16, i64 104, !4, i64 112, !15, i64 120, !4, i64 128, !4, i64 132, !15, i64 136, !4, i64 144, !4, i64 148, !17, i64 152, !16, i64 160}
!9 = !{!"p1 _ZTSN17duckdb_libpgquery18core_yy_extra_typeE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p2 _ZTSN17duckdb_libpgquery15yy_buffer_stateE", !14, i64 0}
!14 = !{!"any p2 pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"p1 _ZTSN17duckdb_libpgquery12core_YYSTYPEE", !10, i64 0}
!18 = !{!8, !16, i64 160}
!19 = !{!8, !4, i64 80}
!20 = !{!8, !4, i64 84}
!21 = !{!8, !13, i64 40}
!22 = !{!8, !12, i64 24}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN17duckdb_libpgquery15yy_buffer_stateE", !10, i64 0}
!25 = !{!8, !12, i64 32}
!26 = !{!8, !11, i64 8}
!27 = !{!28, !12, i64 32}
!28 = !{!"_ZTSN17duckdb_libpgquery15yy_buffer_stateE", !11, i64 0, !15, i64 8, !15, i64 16, !12, i64 24, !12, i64 32, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64}
!29 = !{!8, !12, i64 56}
!30 = !{!28, !15, i64 16}
!31 = !{!8, !15, i64 72}
!32 = !{!8, !15, i64 136}
!33 = !{!28, !11, i64 0}
!34 = !{!5, !5, i64 0}
!35 = !{!8, !5, i64 48}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = !{!8, !4, i64 112}
!39 = !{!8, !15, i64 120}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!8, !12, i64 64}
!44 = distinct !{!44, !41}
!45 = !{!8, !9, i64 0}
!46 = !{!47, !15, i64 0}
!47 = !{!"_ZTSN17duckdb_libpgquery18core_yy_extra_typeE", !15, i64 0, !12, i64 8, !48, i64 16, !4, i64 24, !4, i64 28, !49, i64 32, !49, i64 33, !15, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !15, i64 64, !4, i64 72, !49, i64 76, !49, i64 77}
!48 = !{!"p1 _ZTSN17duckdb_libpgquery13PGScanKeywordE", !10, i64 0}
!49 = !{!"bool", !5, i64 0}
!50 = !{!47, !4, i64 56}
!51 = !{!47, !4, i64 48}
!52 = !{!47, !4, i64 52}
!53 = !{!47, !15, i64 40}
!54 = distinct !{!54, !41}
!55 = !{!47, !48, i64 16}
!56 = !{!47, !4, i64 24}
!57 = !{!58, !15, i64 0}
!58 = !{!"_ZTSN17duckdb_libpgquery13PGScanKeywordE", !15, i64 0, !37, i64 8, !37, i64 10}
!59 = !{!58, !37, i64 8}
!60 = !{!47, !49, i64 76}
!61 = !{!47, !49, i64 77}
!62 = !{!47, !49, i64 33}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 short", !10, i64 0}
!67 = !{!47, !4, i64 72}
!68 = !{!47, !49, i64 32}
!69 = !{!47, !15, i64 64}
!70 = distinct !{!70, !41}
!71 = distinct !{null}
!72 = !{!28, !4, i64 64}
!73 = !{!28, !15, i64 8}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = !{!28, !4, i64 60}
!78 = distinct !{!78, !41, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 4, i32 28}
!82 = distinct !{!82, !41, !79, !80}
!83 = distinct !{!83, !41, !79}
!84 = !{!28, !12, i64 24}
!85 = !{!28, !4, i64 40}
!86 = distinct !{!86, !41}
!87 = !{!28, !4, i64 44}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41}
!90 = !{!8, !4, i64 88}
!91 = !{!28, !4, i64 48}
!92 = !{!28, !4, i64 52}
!93 = !{!28, !4, i64 56}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !41}
!97 = !{!15, !15, i64 0}
!98 = distinct !{!98, !41, !79, !80}
!99 = distinct !{!99, !41, !79, !80}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !41, !79}
!103 = !{!8, !11, i64 16}
!104 = !{!8, !4, i64 132}
!105 = !{!10, !10, i64 0}
!106 = !{!8, !4, i64 92}
!107 = !{!8, !4, i64 96}
!108 = !{!8, !16, i64 104}
!109 = !{!47, !4, i64 28}
!110 = !{!49, !49, i64 0}
!111 = !{!47, !12, i64 8}
end_hunk_1
