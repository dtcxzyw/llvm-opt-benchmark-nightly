Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/egg?download=true
inline.NumInlined: 48
inline.NumDeleted: 8
begin_hunk_0_@cli_egg_open:bb.a
  %.1.i.i = phi i32 [ %.056.i.i, %getMagicHeaderName.exit78.i.i ], [ %.056.i.i, %bb.an ], [ %i.bo, %.egg_parse_archive_extra_field.exit.i_crit_edge ], [ 8, %bb.au ], [ %.056.i.i, %bb.ar ]
  %i.bv = zext i32 %.1.i.i to i64
  %i.bw = add i64 %i.bu, %i.bv                    ; 4 uses
  store i64 %i.bw, ptr %i.i, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !22
  %i.bz = icmp ugt i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.l, label %egg_parse_archive_headers.exit

bb.bj:                                            ; preds = %bb.ba, %bb.ay, %bb.aw, %bb.at, %bb.ap, %bb.am, %bb.ai, %bb.af, %bb.r, %.critedge.i.i
  switch i32 %i.ai, label %bb.bu [
    i32 1095190341, label %getMagicHeaderName.exit.i
    i32 176525539, label %bb.bk
    i32 45419539, label %bb.bl
    i32 147932943, label %bb.bm
    i32 747017483, label %bb.bn
    i32 518595301, label %bb.bo
    i32 122041095, label %bb.bp
    i32 176525740, label %bb.bq
    i32 80098930, label %bb.br
    i32 620077666, label %bb.bs
    i32 619028576, label %bb.bt
  ]

bb.bk:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bl:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bm:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bn:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bo:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bp:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bq:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.br:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bs:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bt:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

bb.bu:                                            ; preds = %bb.bj
  br label %getMagicHeaderName.exit.i

getMagicHeaderName.exit.i:                        ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.0.i.i = phi ptr [ @.str.17, %bb.bu ], [ @.str.16, %bb.bt ], [ @.str.7, %bb.bk ], [ @.str.8, %bb.bl ], [ @.str.9, %bb.bm ], [ @.str.10, %bb.bn ], [ @.str.11, %bb.bo ], [ @.str.12, %bb.bp ], [ @.str.13, %bb.bq ], [ @.str.14, %bb.br ], [ @.str.15, %bb.bs ], [ @.str.6, %bb.bj ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.111, i32 noundef %i.ai, ptr noundef nonnull %.0.i.i) #13
  %.pre484.pre = load i64, ptr %i.i, align 8, !tbaa !21
  br label %egg_parse_archive_headers.exit

egg_parse_archive_headers.exit:                   ; preds = %egg_parse_archive_extra_field.exit.i, %bb.k, %bb.o, %getMagicHeaderName.exit.i
  %.pre484 = phi i64 [ %.pre484.pre, %getMagicHeaderName.exit.i ], [ 14, %bb.k ], [ %i.al, %bb.o ], [ %i.bw, %egg_parse_archive_extra_field.exit.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %.pre483 = load ptr, ptr %i.g, align 8, !tbaa !16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre483, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !68
  %i.cj = tail call ptr %i.ci(ptr noundef %.pre483, i64 noundef %.pre484, i64 noundef 4, i32 noundef 0) #13, !inline_history !63 ; 2 uses
  %.not159985 = icmp eq ptr %i.cj, null
  br i1 %.not159985, label %._crit_edge, label %.lr.ph

bb.bv:                                            ; preds = %bb.h, %bb.f, %bb.m
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.20) #13
  br label %.thread212

._crit_edge:                                      ; preds = %.backedge, %egg_parse_archive_headers.exit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21) #13
  br label %bb.hv

.lr.ph:                                           ; preds = %egg_parse_archive_headers.exit, %.backedge
  %i.ck = phi ptr [ %i.mo, %.backedge ], [ %i.cj, %egg_parse_archive_headers.exit ]
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12 ; 3 uses
  switch i32 %i.cl, label %bb.ht [
    i32 149062178, label %bb.bw
    i32 176525539, label %bb.bz
    i32 45419539, label %bb.fw
    i32 80098930, label %bb.gt
  ]

bb.bw:                                            ; preds = %.lr.ph
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !21
  %i.cn = add i64 %i.cm, 4                        ; 3 uses
  store i64 %i.cn, ptr %i.i, align 8, !tbaa !21
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !22 ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, %i.cn
  br i1 %i.cr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.cs = sub nuw i64 %i.cq, %i.cn
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.22, i64 noundef %i.cs) #13
  br label %bb.hv

bb.by:                                            ; preds = %bb.bw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #13
  br label %bb.hv

bb.bz:                                            ; preds = %.lr.ph
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !16  ; 6 uses
  %.not.i179 = icmp eq ptr %i.ct, null
  br i1 %.not.i179, label %.critedge.i187, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.cu = load i64, ptr %i.i, align 8, !tbaa !21  ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 88 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !22
  %i.cx = icmp ugt i64 %i.cu, %i.cw
  br i1 %i.cx, label %.critedge.i187, label %bb.cb

.critedge.i187:                                   ; preds = %bb.ca, %bb.bz
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.142) #13
  br label %egg_parse_file_headers.exit

bb.cb:                                            ; preds = %bb.ca
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !68
  %i.da = call ptr %i.cz(ptr noundef nonnull %i.ct, i64 noundef %i.cu, i64 noundef 16, i32 noundef 0) #13, !inline_history !64 ; 5 uses
  %.not55.i = icmp eq ptr %i.da, null
  br i1 %.not55.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.143) #13
  br label %egg_parse_file_headers.exit

bb.cd:                                            ; preds = %bb.cb
  %i.db = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #14 ; 12 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.144) #13
  br label %egg_parse_file_headers.exit

bb.cf:                                            ; preds = %bb.cd
  store ptr %i.da, ptr %i.db, align 8, !tbaa !29
  %i.dd = load i32, ptr %i.da, align 1, !tbaa !82 ; 2 uses
  switch i32 %i.dd, label %bb.ck [
    i32 176525539, label %bb.cl
    i32 1095190341, label %.thread68.i.loopexit
    i32 619028576, label %bb.cj
    i32 45419539, label %.thread68.i.loopexit368
    i32 147932943, label %.thread68.i.loopexit554
    i32 747017483, label %.thread68.i.loopexit770
    i32 518595301, label %.thread68.i.loopexit986
    i32 122041095, label %.thread68.i
    i32 176525740, label %bb.cg
    i32 80098930, label %bb.ch
    i32 620077666, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.cf
  br label %.thread68.i

bb.ch:                                            ; preds = %bb.cf
  br label %.thread68.i

bb.ci:                                            ; preds = %bb.cf
  br label %.thread68.i

bb.cj:                                            ; preds = %bb.cf
  br label %.thread68.i

bb.ck:                                            ; preds = %bb.cf
  br label %.thread68.i

.thread68.i.loopexit:                             ; preds = %bb.cf
  br label %.thread68.i

.thread68.i.loopexit368:                          ; preds = %bb.cf
  br label %.thread68.i

.thread68.i.loopexit554:                          ; preds = %bb.cf
  br label %.thread68.i

.thread68.i.loopexit770:                          ; preds = %bb.cf
  br label %.thread68.i

.thread68.i.loopexit986:                          ; preds = %bb.cf
  br label %.thread68.i

.thread68.i:                                      ; preds = %bb.cf, %.thread68.i.loopexit986, %.thread68.i.loopexit770, %.thread68.i.loopexit554, %.thread68.i.loopexit368, %.thread68.i.loopexit, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg
  %4 = phi i32 [ %i.dd, %bb.ck ], [ 619028576, %bb.cj ], [ 620077666, %bb.ci ], [ 1095190341, %.thread68.i.loopexit ], [ 45419539, %.thread68.i.loopexit368 ], [ 147932943, %.thread68.i.loopexit554 ], [ 747017483, %.thread68.i.loopexit770 ], [ 518595301, %.thread68.i.loopexit986 ], [ 176525740, %bb.cg ], [ 80098930, %bb.ch ], [ 122041095, %bb.cf ]
  %.0.i.i180 = phi ptr [ @.str.17, %bb.ck ], [ @.str.16, %bb.cj ], [ @.str.15, %bb.ci ], [ @.str.6, %.thread68.i.loopexit ], [ @.str.8, %.thread68.i.loopexit368 ], [ @.str.9, %.thread68.i.loopexit554 ], [ @.str.10, %.thread68.i.loopexit770 ], [ @.str.11, %.thread68.i.loopexit986 ], [ @.str.13, %bb.cg ], [ @.str.14, %bb.ch ], [ @.str.12, %bb.cf ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.145, i32 noundef %4, ptr noundef nonnull %.0.i.i180) #13
  br label %bb.fv

bb.cl:                                            ; preds = %bb.cf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.146, i32 noundef 176525539, ptr noundef nonnull @.str.7) #13
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.df = load i32, ptr %i.de, align 1, !tbaa !83
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.147, i32 noundef %i.df) #13
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 1, !tbaa !31 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.148, i64 noundef %i.dh, i64 noundef %i.dh) #13
  %i.di = load i64, ptr %i.dg, align 1, !tbaa !31
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.149) #13
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.dk = add i64 %i.cu, 16                       ; 4 uses
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !21
  %i.dl = load i64, ptr %i.cv, align 8, !tbaa !22
  %i.dm = icmp ugt i64 %i.dl, %i.dk
  br i1 %i.dm, label %.lr.ph.i181, label %.thread

.lr.ph.i181:                                      ; preds = %bb.cn
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 72 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  br label %bb.co

bb.co:                                            ; preds = %egg_parse_file_extra_field.exit.i, %.lr.ph.i181
  %i.du = phi ptr [ %i.ct, %.lr.ph.i181 ], [ %i.ib, %egg_parse_file_extra_field.exit.i ] ; 20 uses
  %i.dv = phi i64 [ %i.dk, %.lr.ph.i181 ], [ %i.ie, %egg_parse_file_extra_field.exit.i ] ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 104 ; 8 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !68
  %i.dy = call ptr %i.dx(ptr noundef nonnull %i.du, i64 noundef %i.dv, i64 noundef 4, i32 noundef 0) #13, !inline_history !64 ; 2 uses
  %.not57.i = icmp eq ptr %i.dy, null
  br i1 %.not57.i, label %bb.fu, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !12 ; 3 uses
  %i.ea = icmp eq i32 %i.dz, 149062178
  br i1 %i.ea, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.eb = load i64, ptr %i.i, align 8, !tbaa !21
  %i.ec = add i64 %i.eb, 4                        ; 2 uses
  store i64 %i.ec, ptr %i.i, align 8, !tbaa !21
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.151) #13
  br label %.thread

bb.cr:                                            ; preds = %bb.cp
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 88
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !22
  %i.ef = icmp ugt i64 %i.dv, %i.ee
  br i1 %i.ef, label %.critedge.i.i186, label %bb.cs

.critedge.i.i186:                                 ; preds = %bb.cr
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.154) #13
  br label %bb.ft

bb.cs:                                            ; preds = %bb.cr
  %i.eg = load ptr, ptr %i.dw, align 8, !tbaa !68
  %i.eh = call ptr %i.eg(ptr noundef nonnull %i.du, i64 noundef %i.dv, i64 noundef 5, i32 noundef 0) #13, !inline_history !65 ; 5 uses
  %.not155.i.i = icmp eq ptr %i.eh, null
  br i1 %.not155.i.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.155) #13
  br label %bb.ft

bb.cu:                                            ; preds = %bb.cs
  %i.ei = load i32, ptr %i.eh, align 1, !tbaa !75 ; 2 uses
  switch i32 %i.ei, label %bb.df [
    i32 1095190341, label %getMagicHeaderName.exit.i.i183
    i32 176525539, label %bb.cv
    i32 45419539, label %bb.cw
    i32 147932943, label %bb.cx
    i32 747017483, label %bb.cy
    i32 518595301, label %bb.cz
    i32 122041095, label %bb.da
    i32 176525740, label %bb.db
    i32 80098930, label %bb.dc
    i32 620077666, label %bb.dd
    i32 619028576, label %bb.de
  ]

bb.cv:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.cw:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.cx:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.cy:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.cz:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.da:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.db:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.dc:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.dd:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.de:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

bb.df:                                            ; preds = %bb.cu
  br label %getMagicHeaderName.exit.i.i183

getMagicHeaderName.exit.i.i183:                   ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %.0.i.i.i184 = phi ptr [ @.str.17, %bb.df ], [ @.str.16, %bb.de ], [ @.str.7, %bb.cv ], [ @.str.8, %bb.cw ], [ @.str.9, %bb.cx ], [ @.str.10, %bb.cy ], [ @.str.11, %bb.cz ], [ @.str.12, %bb.da ], [ @.str.13, %bb.db ], [ @.str.14, %bb.dc ], [ @.str.15, %bb.dd ], [ @.str.6, %bb.cu ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156, i32 noundef %i.ei, ptr noundef nonnull %.0.i.i.i184) #13
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 8 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !24
  %i.el = zext i8 %i.ek to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.157, i32 noundef %i.el) #13
  %i.em = add i64 %i.dv, 5                        ; 6 uses
  store i64 %i.em, ptr %i.i, align 8, !tbaa !21
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !24
  %i.eo = and i8 %i.en, 1
  %.not156.i.i = icmp eq i8 %i.eo, 0
  %i.ep = load ptr, ptr %i.dw, align 8, !tbaa !68 ; 2 uses
  br i1 %.not156.i.i, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %getMagicHeaderName.exit.i.i183
  %i.eq = call ptr %i.ep(ptr noundef nonnull %i.du, i64 noundef %i.em, i64 noundef 4, i32 noundef 0) #13, !inline_history !65 ; 2 uses
  %.not158.i.i = icmp eq ptr %i.eq, null
  br i1 %.not158.i.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.155) #13
  br label %bb.ft

bb.di:                                            ; preds = %bb.dg
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !12
  br label %bb.dm

bb.dj:                                            ; preds = %getMagicHeaderName.exit.i.i183
  %i.es = call ptr %i.ep(ptr noundef nonnull %i.du, i64 noundef %i.em, i64 noundef 2, i32 noundef 0) #13, !inline_history !65 ; 2 uses
  %.not157.i.i = icmp eq ptr %i.es, null
  br i1 %.not157.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.155) #13
  br label %bb.ft

bb.dl:                                            ; preds = %bb.dj
  %i.et = load i16, ptr %i.es, align 2, !tbaa !76
  %i.eu = zext i16 %i.et to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.di
  %.sink212.i.i = phi i64 [ 2, %bb.dl ], [ 4, %bb.di ]
  %.0129.i.i = phi i32 [ %i.eu, %bb.dl ], [ %i.er, %bb.di ] ; 16 uses
  %i.ev = add i64 %i.em, %.sink212.i.i            ; 26 uses
  store i64 %i.ev, ptr %i.i, align 8, !tbaa !21
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.158, i32 noundef %.0129.i.i) #13
  %i.ew = load i32, ptr %i.eh, align 1, !tbaa !75 ; 3 uses
  switch i32 %i.ew, label %bb.fs [
    i32 176525740, label %bb.dn
    i32 80098930, label %bb.ek
    i32 147932943, label %bb.et
    i32 747017483, label %bb.ez
    i32 518595301, label %bb.fg
    i32 176525539, label %bb.fp
  ]

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.ex = load ptr, ptr %i.ds, align 8, !tbaa !34
  %.not173.i.i = icmp eq ptr %i.ex, null
  br i1 %.not173.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.159) #13
  br label %.thread.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.ey = zext i32 %.0129.i.i to i64
  %i.ez = load ptr, ptr %i.dw, align 8, !tbaa !68
  %i.fa = call ptr %i.ez(ptr noundef nonnull %i.du, i64 noundef %i.ev, i64 noundef range(i64 0, 4294967296) %i.ey, i32 noundef 0) #13, !inline_history !65 ; 4 uses
end_hunk_0
begin_hunk_1_@cli_egg_open:bb.a
  %i.ky = call ptr @cli_safer_realloc(ptr noundef %i.kt, i64 noundef %i.kx) #13 ; 3 uses
  %.not169 = icmp eq ptr %i.ky, null
  br i1 %.not169, label %bb.gs, label %.split550

.split550:                                        ; preds = %bb.gr
  store ptr %i.ky, ptr %i.ks, align 8, !tbaa !56
  %i.kz = load i64, ptr %i.ku, align 8, !tbaa !57 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kz
  store ptr %i.jb, ptr %i.la, align 8, !tbaa !9
  %i.lb = add i64 %i.kz, 1
  store i64 %i.lb, ptr %i.ku, align 8, !tbaa !57
  br label %.backedge

bb.gs:                                            ; preds = %bb.gr
  call void @free(ptr noundef nonnull %i.jb) #13
  br label %.thread212

bb.gt:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !32
  %i.lc = load ptr, ptr %i.g, align 8, !tbaa !16  ; 6 uses
  %i.ld = load i64, ptr %i.i, align 8, !tbaa !21  ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 104 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !68
  %i.lg = call ptr %i.lf(ptr noundef %i.lc, i64 noundef %i.ld, i64 noundef 5, i32 noundef 0) #13, !inline_history !63 ; 4 uses
  %.not160 = icmp eq ptr %i.lg, null
  br i1 %.not160, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #13
  br label %.thread245

bb.gv:                                            ; preds = %bb.gt
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !75 ; 2 uses
  switch i32 %i.lh, label %bb.hg [
    i32 1095190341, label %getMagicHeaderName.exit
    i32 176525539, label %bb.gw
    i32 45419539, label %bb.gx
    i32 147932943, label %bb.gy
    i32 747017483, label %bb.gz
    i32 518595301, label %bb.ha
    i32 122041095, label %bb.hb
    i32 176525740, label %bb.hc
    i32 80098930, label %bb.hd
    i32 620077666, label %bb.he
    i32 619028576, label %bb.hf
  ]

bb.gw:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.gx:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.gy:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.gz:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.ha:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.hb:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.hc:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.hd:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.he:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.hf:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

bb.hg:                                            ; preds = %bb.gv
  br label %getMagicHeaderName.exit

getMagicHeaderName.exit:                          ; preds = %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg
  %.0.i190 = phi ptr [ @.str.17, %bb.hg ], [ @.str.16, %bb.hf ], [ @.str.7, %bb.gw ], [ @.str.8, %bb.gx ], [ @.str.9, %bb.gy ], [ @.str.10, %bb.gz ], [ @.str.11, %bb.ha ], [ @.str.12, %bb.hb ], [ @.str.13, %bb.hc ], [ @.str.14, %bb.hd ], [ @.str.15, %bb.he ], [ @.str.6, %bb.gv ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30, i32 noundef %i.lh, ptr noundef nonnull %.0.i190) #13
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 4 ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !24
  %i.lk = zext i8 %i.lj to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31, i32 noundef %i.lk) #13
  %i.ll = add i64 %i.ld, 5                        ; 3 uses
  store i64 %i.ll, ptr %i.i, align 8, !tbaa !21
  %i.lm = load i8, ptr %i.li, align 1, !tbaa !24
  %i.ln = and i8 %i.lm, 1
  %.not161 = icmp eq i8 %i.ln, 0
  %i.lo = load ptr, ptr %i.le, align 8, !tbaa !68 ; 2 uses
  br i1 %.not161, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %getMagicHeaderName.exit
  %i.lp = call ptr %i.lo(ptr noundef nonnull %i.lc, i64 noundef %i.ll, i64 noundef 4, i32 noundef 0) #13, !inline_history !63 ; 2 uses
  %.not163 = icmp eq ptr %i.lp, null
  br i1 %.not163, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32) #13
  br label %.thread245

bb.hj:                                            ; preds = %bb.hh
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !12
  br label %bb.hn

bb.hk:                                            ; preds = %getMagicHeaderName.exit
  %i.lr = call ptr %i.lo(ptr noundef nonnull %i.lc, i64 noundef %i.ll, i64 noundef 2, i32 noundef 0) #13, !inline_history !63 ; 2 uses
  %.not162 = icmp eq ptr %i.lr, null
  br i1 %.not162, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32) #13
  br label %.thread245

bb.hm:                                            ; preds = %bb.hk
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !76
  %i.lt = zext i16 %i.ls to i32
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hj
  %.sink = phi i64 [ 7, %bb.hm ], [ 9, %bb.hj ]
  %.0 = phi i32 [ %i.lt, %bb.hm ], [ %i.lq, %bb.hj ] ; 2 uses
  %i.lu = add i64 %i.ld, %.sink                   ; 4 uses
  store i64 %i.lu, ptr %i.i, align 8, !tbaa !21
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33, i32 noundef %.0) #13
  %i.lv = zext i32 %.0 to i64                     ; 4 uses
  %i.lw = load ptr, ptr %i.le, align 8, !tbaa !68
  %i.lx = call ptr %i.lw(ptr noundef nonnull %i.lc, i64 noundef %i.lu, i64 noundef range(i64 0, 4294967296) %i.lv, i32 noundef 0) #13, !inline_history !63 ; 2 uses
  %.not164 = icmp eq ptr %i.lx, null
  br i1 %.not164, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #13
  br label %.thread245

bb.hp:                                            ; preds = %bb.hn
  %i.ly = call fastcc i32 @egg_parse_comment_header(ptr noundef %i.lx, i64 noundef %i.lv, ptr noundef %i.lg, ptr noundef %i.d) ; 2 uses
  %.not165 = icmp eq i32 %i.ly, 0
  br i1 %.not165, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %bb.hp
  %i.lz = load ptr, ptr %i.d, align 8, !tbaa !32  ; 3 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35) #13
  br label %.thread245

bb.hs:                                            ; preds = %bb.hq
  %i.mb = load ptr, ptr %i.ca, align 8, !tbaa !58
  %i.mc = load i64, ptr %i.cb, align 8, !tbaa !59 ; 3 uses
  %i.md = shl i64 %i.mc, 3
  %i.me = add i64 %i.md, 8
  %i.mf = call ptr @cli_safer_realloc(ptr noundef %i.mb, i64 noundef %i.me) #13 ; 3 uses
  %.not166 = icmp eq ptr %i.mf, null
  br i1 %.not166, label %.thread241, label %.split552

.thread241:                                       ; preds = %bb.hs
  call void @free(ptr noundef nonnull %i.lz) #13
  br label %.thread245

.thread245:                                       ; preds = %bb.hr, %.thread241, %bb.ho, %bb.hi, %bb.hl, %bb.gu
  %.11.ph = phi i32 [ 27, %bb.gu ], [ 27, %bb.hl ], [ 27, %bb.hi ], [ 27, %bb.ho ], [ 20, %.thread241 ], [ 27, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.thread212

.split552:                                        ; preds = %bb.hs
  store ptr %i.mf, ptr %i.ca, align 8, !tbaa !58
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.mc
  store ptr %i.lz, ptr %i.mg, align 8, !tbaa !32
  %i.mh = add i64 %i.mc, 1
  store i64 %i.mh, ptr %i.cb, align 8, !tbaa !59
  %i.mi = add i64 %i.lu, %i.lv                    ; 2 uses
  store i64 %i.mi, ptr %i.i, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.backedge

bb.ht:                                            ; preds = %.lr.ph
  %i.mj = call ptr @getMagicHeaderName(i32 noundef %i.cl)
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36, i32 noundef %i.cl, ptr noundef nonnull %i.mj) #13
  br label %.thread212

.thread237:                                       ; preds = %bb.gp
  store ptr %i.kl, ptr %i.cd, align 8, !tbaa !54
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.ki
  store ptr %i.jb, ptr %i.mk, align 8, !tbaa !9
  %i.ml = add i64 %i.ki, 1
  store i64 %i.ml, ptr %i.ce, align 8, !tbaa !55
  br label %.backedge

.backedge:                                        ; preds = %.thread237, %.split, %.split548, %.split550, %.split552
  %.be = phi i64 [ %i.kf, %.thread237 ], [ %i.ik, %.split ], [ %i.kf, %.split548 ], [ %i.kf, %.split550 ], [ %i.mi, %.split552 ]
  %.be555 = phi ptr [ %i.it, %.thread237 ], [ %i.il, %.split ], [ %i.it, %.split548 ], [ %i.it, %.split550 ], [ %i.lc, %.split552 ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.be555, i64 104
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !68
  %i.mo = call ptr %i.mn(ptr noundef nonnull %.be555, i64 noundef %.be, i64 noundef 4, i32 noundef 0) #13, !inline_history !63 ; 2 uses
  %.not159 = icmp eq ptr %i.mo, null
  br i1 %.not159, label %._crit_edge, label %.lr.ph

bb.hu:                                            ; preds = %bb.hp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34, i32 noundef %i.ly) #13
  %i.mp = add i64 %i.lu, %i.lv
  store i64 %i.mp, ptr %i.i, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.39) #13
  br label %bb.hv

bb.hv:                                            ; preds = %._crit_edge, %bb.by, %bb.bx, %bb.hu
  %i.mq = load ptr, ptr %i.ca, align 8, !tbaa !58
  store ptr %i.mq, ptr %2, align 8, !tbaa !67
  store ptr null, ptr %i.ca, align 8, !tbaa !58
  %i.mr = load i64, ptr %i.cb, align 8, !tbaa !59
  %i.ms = trunc i64 %i.mr to i32
  store i32 %i.ms, ptr %3, align 4, !tbaa !12
  store ptr %i.g, ptr %1, align 8, !tbaa !9
  br label %bb.hw

.thread212:                                       ; preds = %.thread221, %bb.gn, %.thread209, %egg_parse_file_headers.exit, %bb.bv, %bb.gs, %.thread245, %bb.ht
  %.13.ph = phi i32 [ 27, %egg_parse_file_headers.exit ], [ 27, %bb.ht ], [ %.11.ph, %.thread245 ], [ 20, %bb.gs ], [ 27, %bb.bv ], [ 20, %.thread209 ], [ 27, %bb.gn ], [ 20, %.thread221 ]
  call fastcc void @egg_free_egg_handle(ptr noundef %i.g)
  br label %bb.hw

bb.hw:                                            ; preds = %bb.d, %bb.hv, %.thread212, %bb.b
  %.0136 = phi i32 [ 3, %bb.b ], [ %.13.ph, %.thread212 ], [ 20, %bb.d ], [ 0, %bb.hv ]
  ret i32 %.0136
}

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

declare ptr @cli_safer_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @egg_free_egg_file(ptr noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #13
  store ptr null, ptr %i.a, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not30 = icmp eq ptr %i.d, null
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #13
  store ptr null, ptr %i.c, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.f, label %.preheader33

.preheader33:                                     ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57
  %.not38 = icmp eq i64 %i.h, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33, %.lr.ph
  %i.i = phi i64 [ %i.p, %.lr.ph ], [ 0, %.preheader33 ] ; 2 uses
  %.034 = phi i32 [ %i.o, %.lr.ph ], [ 0, %.preheader33 ]
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9
  tail call void @free(ptr noundef %i.l) #13
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.i
  store ptr null, ptr %i.n, align 8, !tbaa !9
  %i.o = add i32 %.034, 1                         ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !57
  %i.r = icmp ugt i64 %i.q, %i.p
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader33
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %.preheader33 ]
  tail call void @free(ptr noundef %i.s) #13
  store ptr null, ptr %i.e, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 3 uses
  %.not32 = icmp eq ptr %i.u, null
  br i1 %.not32, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36
  %.not39 = icmp eq i64 %i.w, 0
  br i1 %.not39, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader, %.lr.ph36
  %i.x = phi ptr [ %i.ab, %.lr.ph36 ], [ %i.u, %.preheader ]
  %i.y = phi i64 [ %i.ae, %.lr.ph36 ], [ 0, %.preheader ] ; 2 uses
  %.135 = phi i32 [ %i.ad, %.lr.ph36 ], [ 0, %.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.aa) #13
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !35  ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  store ptr null, ptr %i.ac, align 8, !tbaa !32
  %i.ad = add i32 %.135, 1                        ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = load i64, ptr %i.v, align 8, !tbaa !36
  %i.ag = icmp ugt i64 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph36, label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36, %.preheader
  %i.ah = phi ptr [ %i.u, %.preheader ], [ %i.ab, %.lr.ph36 ]
  tail call void @free(ptr noundef nonnull %i.ah) #13
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge37, %bb.f
  tail call void @free(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 21) i32 @egg_parse_comment_header(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.224) #13
  br label %.thread30

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = and i32 %i.e, 4
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.d, label %.thread30

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %i.e, 8
  %.not23 = icmp eq i32 %i.g, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @cli_codepage_to_utf8(ptr noundef nonnull %0, i64 noundef %1, i16 noundef zeroext -535, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %..thread_crit_edge, label %bb.h

..thread_crit_edge:                               ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.i = tail call noalias ptr @strndup(ptr noundef nonnull %0, i64 noundef %1) #13 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !32
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.226) #13
  br label %.thread30

.thread:                                          ; preds = %..thread_crit_edge, %bb.f
  %i.k = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.i, %bb.f ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.227, ptr noundef %i.k) #13
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !32
  store ptr %i.l, ptr %3, align 8, !tbaa !32
  br label %.thread30

bb.h:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.225) #13
end_hunk_1
