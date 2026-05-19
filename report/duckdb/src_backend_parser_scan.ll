inline.NumInlined: 114
inline.NumDeleted: 19
begin_hunk_0_@_ZN17duckdb_libpgquery10core_yylexEPNS_12core_YYSTYPEEPiPv:bb.a
  %i.pp = sext i32 %i.pn to i64
  %i.pq = getelementptr inbounds i8, ptr %i.po, i64 %i.pp
  %sext1053 = shl i64 %i.ox, 32
  %i.pr = ashr exact i64 %sext1053, 32
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
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !34  ; 4 uses
  %i.sz = zext i8 %i.sy to i32
  %3 = add nsw i32 %i.sz, -98                     ; 2 uses
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 31) ; 3 uses
  %i.ta = icmp ult i32 %4, 10
  %switch.maskindex = trunc i32 %4 to i16
  %switch.shifted = lshr i16 837, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.ta, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.cc

bb.cc:                                            ; preds = %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit
  %or.cond.i = icmp sgt i8 %i.sy, 0
  br i1 %or.cond.i, label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.tb = load ptr, ptr %2, align 8, !tbaa !45
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 77
  store i8 1, ptr %i.tc, align 1, !tbaa !61
  br label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit

switch.lookup:                                    ; preds = %_ZN17duckdb_libpgqueryL27check_string_escape_warningEhPv.exit
  %i.td = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN17duckdb_libpgquery10core_yylexEPNS_12core_YYSTYPEEPiPv, i64 %i.td
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit

_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit: ; preds = %switch.lookup, %bb.cc, %bb.cd
  %.0.i900 = phi i8 [ %switch.load, %switch.lookup ], [ %i.sy, %bb.cc ], [ %i.sy, %bb.cd ]
  %i.te = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 48
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !51 ; 2 uses
  %i.th = add nsw i32 %i.tg, 1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 52 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !52 ; 2 uses
  %.not.i901 = icmp slt i32 %i.th, %i.tj
  br i1 %.not.i901, label %._crit_edge.i904, label %bb.ce

._crit_edge.i904:                                 ; preds = %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit
  %.phi.trans.insert.i905 = getelementptr inbounds nuw i8, ptr %i.te, i64 40
  %.pre.i906 = load ptr, ptr %.phi.trans.insert.i905, align 8, !tbaa !53
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit907

bb.ce:                                            ; preds = %_ZN17duckdb_libpgqueryL20unescape_single_charEhPv.exit
  %i.tk = shl nsw i32 %i.tj, 1                    ; 2 uses
  store i32 %i.tk, ptr %i.ti, align 4, !tbaa !52
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 40
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !53
  %i.tn = sext i32 %i.tk to i64
  %i.to = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef %i.tm, i64 noundef %i.tn) ; 2 uses
  %i.tp = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 40
  store ptr %i.to, ptr %i.tq, align 8, !tbaa !53
  %.phi.trans.insert9.i902 = getelementptr inbounds nuw i8, ptr %i.tp, i64 48
  %.pre10.i903 = load i32, ptr %.phi.trans.insert9.i902, align 8, !tbaa !51
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit907

_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit907:  ; preds = %._crit_edge.i904, %bb.ce
  %i.tr = phi i32 [ %.pre10.i903, %bb.ce ], [ %i.tg, %._crit_edge.i904 ]
  %i.ts = phi ptr [ %i.to, %bb.ce ], [ %.pre.i906, %._crit_edge.i904 ]
  %i.tt = sext i32 %i.tr to i64
  %i.tu = getelementptr inbounds i8, ptr %i.ts, i64 %i.tt
  store i8 %.0.i900, ptr %i.tu, align 1, !tbaa !34
  %i.tv = load ptr, ptr %2, align 8, !tbaa !45
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 48 ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !51
  %i.ty = add nsw i32 %i.tx, 1
  store i32 %i.ty, ptr %i.tw, align 8, !tbaa !51
  br label %.loopexit.backedge

bb.cf:                                            ; preds = %bb.r
  %i.tz = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 1
  %i.ub = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ua, ptr noundef null, i32 noundef 8) #20 ; 2 uses
  %i.uc = trunc i64 %i.ub to i8
  tail call fastcc void @_ZN17duckdb_libpgqueryL20check_escape_warningEPv(ptr noundef nonnull %2)
  %i.ud = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !51 ; 2 uses
  %i.ug = add nsw i32 %i.uf, 1
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 52 ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !52 ; 2 uses
  %.not.i908 = icmp slt i32 %i.ug, %i.ui
  br i1 %.not.i908, label %._crit_edge.i911, label %bb.cg

._crit_edge.i911:                                 ; preds = %bb.cf
  %.phi.trans.insert.i912 = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %.pre.i913 = load ptr, ptr %.phi.trans.insert.i912, align 8, !tbaa !53
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit914

bb.cg:                                            ; preds = %bb.cf
  %i.uj = shl nsw i32 %i.ui, 1                    ; 2 uses
  store i32 %i.uj, ptr %i.uh, align 4, !tbaa !52
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !53
  %i.um = sext i32 %i.uj to i64
  %i.un = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef %i.ul, i64 noundef %i.um) ; 2 uses
  %i.uo = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 40
  store ptr %i.un, ptr %i.up, align 8, !tbaa !53
  %.phi.trans.insert9.i909 = getelementptr inbounds nuw i8, ptr %i.uo, i64 48
  %.pre10.i910 = load i32, ptr %.phi.trans.insert9.i909, align 8, !tbaa !51
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit914

_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit914:  ; preds = %._crit_edge.i911, %bb.cg
  %i.uq = phi i32 [ %.pre10.i910, %bb.cg ], [ %i.uf, %._crit_edge.i911 ]
  %i.ur = phi ptr [ %i.un, %bb.cg ], [ %.pre.i913, %._crit_edge.i911 ]
  %i.us = sext i32 %i.uq to i64
  %i.ut = getelementptr inbounds i8, ptr %i.ur, i64 %i.us
  store i8 %i.uc, ptr %i.ut, align 1, !tbaa !34
  %i.uu = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 48 ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !51
  %i.ux = add nsw i32 %i.uw, 1
  store i32 %i.ux, ptr %i.uv, align 8, !tbaa !51
  %i.uy = trunc i64 %i.ub to i32                  ; 2 uses
  %i.uz = and i32 %i.uy, 255
  %i.va = icmp ne i32 %i.uz, 0
  %i.vb = and i32 %i.uy, 128
  %.not849 = icmp eq i32 %i.vb, 0
  %or.cond854 = and i1 %i.va, %.not849
  br i1 %or.cond854, label %.loopexit.backedge, label %bb.ch

bb.ch:                                            ; preds = %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit914
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uu, i64 77
  store i8 1, ptr %i.vc, align 1, !tbaa !61
  br label %.loopexit.backedge

bb.ci:                                            ; preds = %bb.r
  %i.vd = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 2
  %i.vf = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ve, ptr noundef null, i32 noundef 16) #20 ; 2 uses
  %i.vg = trunc i64 %i.vf to i8
  tail call fastcc void @_ZN17duckdb_libpgqueryL20check_escape_warningEPv(ptr noundef nonnull %2)
  %i.vh = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 48
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !51 ; 2 uses
  %i.vk = add nsw i32 %i.vj, 1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 52 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !52 ; 2 uses
  %.not.i915 = icmp slt i32 %i.vk, %i.vm
  br i1 %.not.i915, label %._crit_edge.i918, label %bb.cj

._crit_edge.i918:                                 ; preds = %bb.ci
  %.phi.trans.insert.i919 = getelementptr inbounds nuw i8, ptr %i.vh, i64 40
  %.pre.i920 = load ptr, ptr %.phi.trans.insert.i919, align 8, !tbaa !53
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit921

bb.cj:                                            ; preds = %bb.ci
  %i.vn = shl nsw i32 %i.vm, 1                    ; 2 uses
  store i32 %i.vn, ptr %i.vl, align 4, !tbaa !52
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vh, i64 40
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !53
  %i.vq = sext i32 %i.vn to i64
  %i.vr = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef %i.vp, i64 noundef %i.vq) ; 2 uses
  %i.vs = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 40
  store ptr %i.vr, ptr %i.vt, align 8, !tbaa !53
  %.phi.trans.insert9.i916 = getelementptr inbounds nuw i8, ptr %i.vs, i64 48
  %.pre10.i917 = load i32, ptr %.phi.trans.insert9.i916, align 8, !tbaa !51
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit921

_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit921:  ; preds = %._crit_edge.i918, %bb.cj
  %i.vu = phi i32 [ %.pre10.i917, %bb.cj ], [ %i.vj, %._crit_edge.i918 ]
  %i.vv = phi ptr [ %i.vr, %bb.cj ], [ %.pre.i920, %._crit_edge.i918 ]
  %i.vw = sext i32 %i.vu to i64
  %i.vx = getelementptr inbounds i8, ptr %i.vv, i64 %i.vw
  store i8 %i.vg, ptr %i.vx, align 1, !tbaa !34
  %i.vy = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 48 ; 2 uses
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !51
  %i.wb = add nsw i32 %i.wa, 1
  store i32 %i.wb, ptr %i.vz, align 8, !tbaa !51
  %i.wc = trunc i64 %i.vf to i32                  ; 2 uses
  %i.wd = and i32 %i.wc, 255
  %i.we = icmp ne i32 %i.wd, 0
  %i.wf = and i32 %i.wc, 128
  %.not848 = icmp eq i32 %i.wf, 0
  %or.cond855 = and i1 %i.we, %.not848
  br i1 %or.cond855, label %.loopexit.backedge, label %bb.ck

bb.ck:                                            ; preds = %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit921
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vy, i64 77
  store i8 1, ptr %i.wg, align 1, !tbaa !61
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.ck, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit921, %bb.ch, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit914, %bb.bf, %bb.bh, %bb.bg, %bb.w, %bb.x, %bb.ds, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit984, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit975, %bb.dg, %bb.dc, %bb.db, %bb.da, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit962, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit955, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit946, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit937, %bb.co, %bb.cn, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit928, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit907, %_ZN17duckdb_libpgquery19scanner_errpositionEiPv.exit, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit897, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit888, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit879, %bb.au, %bb.aq, %bb.an, %bb.am, %bb.ai, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit871, %bb.ae, %_ZN17duckdb_libpgqueryL6addlitEPciPv.exit, %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit, %bb.y, %bb.u, %bb.t
  br label %.loopexit, !llvm.loop !44

bb.cl:                                            ; preds = %bb.r
  %i.wh = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !34
  %i.wj = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 48
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !51 ; 2 uses
  %i.wm = add nsw i32 %i.wl, 1
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wj, i64 52 ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !52 ; 2 uses
  %.not.i922 = icmp slt i32 %i.wm, %i.wo
  br i1 %.not.i922, label %._crit_edge.i925, label %bb.cm

._crit_edge.i925:                                 ; preds = %bb.cl
  %.phi.trans.insert.i926 = getelementptr inbounds nuw i8, ptr %i.wj, i64 40
  %.pre.i927 = load ptr, ptr %.phi.trans.insert.i926, align 8, !tbaa !53
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit928

bb.cm:                                            ; preds = %bb.cl
  %i.wp = shl nsw i32 %i.wo, 1                    ; 2 uses
  store i32 %i.wp, ptr %i.wn, align 4, !tbaa !52
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wj, i64 40
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !53
  %i.ws = sext i32 %i.wp to i64
  %i.wt = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef %i.wr, i64 noundef %i.ws) ; 2 uses
  %i.wu = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 40
  store ptr %i.wt, ptr %i.wv, align 8, !tbaa !53
  %.phi.trans.insert9.i923 = getelementptr inbounds nuw i8, ptr %i.wu, i64 48
  %.pre10.i924 = load i32, ptr %.phi.trans.insert9.i923, align 8, !tbaa !51
  br label %_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit928

_ZN17duckdb_libpgqueryL10addlitcharEhPv.exit928:  ; preds = %._crit_edge.i925, %bb.cm
  %i.ww = phi i32 [ %.pre10.i924, %bb.cm ], [ %i.wl, %._crit_edge.i925 ]
  %i.wx = phi ptr [ %i.wt, %bb.cm ], [ %.pre.i927, %._crit_edge.i925 ]
end_hunk_0
