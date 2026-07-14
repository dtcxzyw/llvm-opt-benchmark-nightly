inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parser_lex:bb.a
  %.0.i.i2265.ph = phi i64 [ 2, %peek_at.exit11.i.i2267 ], [ 1, %peek_at.exit.i.i2266 ]
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !168 ; 3 uses
  %.not2047 = icmp eq ptr %i.bo, null
  br i1 %.not2047, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !76
  store ptr null, ptr %i.s, align 8, !tbaa !168
  br label %match_eol_offset.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bp = getelementptr i8, ptr %i.at, i64 %.0.i.i2265.ph ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.d, align 8, !tbaa !76
  %i.br = call zeroext i1 @pm_newline_list_append(ptr noundef %i.t, ptr noundef %i.bp) #27 ; 0 uses
  %.pre4550.a = load ptr, ptr %i.d, align 8, !tbaa !76
  br label %match_eol_offset.exit.thread

match_eol_offset.exit2268:                        ; preds = %peek_at.exit11.i.i2267, %bb.k, %peek_at.exit.i.i2266, %bb.j
  %i.bs = call zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext 92) #27
  %.pre4551.a = load ptr, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  br i1 %i.bs, label %bb.o, label %match_eol_offset.exit.thread.thread

bb.o:                                             ; preds = %match_eol_offset.exit2268
  %i.bt = getelementptr i8, ptr %.pre4551.a, i64 2 ; 2 uses
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !76
  br label %match_eol_offset.exit.thread

match_eol_offset.exit.thread.thread:              ; preds = %match_eol_offset.exit2268, %.lr.ph4116, %peek_at.exit.i.i, %peek_at.exit11.i.i
  %.ph = phi ptr [ %i.at, %peek_at.exit11.i.i ], [ %i.at, %peek_at.exit.i.i ], [ %i.at, %.lr.ph4116 ], [ %.pre4551.a, %match_eol_offset.exit2268 ] ; 61 uses
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !78  ; 55 uses
  %i.bv = icmp ult ptr %.ph, %i.bu
  %i.bw = trunc nuw i8 %.018334114 to i1          ; 21 uses
  store ptr %.ph, ptr %i.v, align 8, !tbaa !166
  br i1 %i.bv, label %bb.t, label %.loopexit5137

match_eol_offset.exit.thread:                     ; preds = %bb.n, %bb.m, %bb.o, %match_eol_offset.exit, %bb.g
  %i.bx = phi ptr [ %.pre4550.a, %bb.n ], [ %i.aw, %bb.g ], [ %i.bt, %bb.o ], [ %i.bg, %match_eol_offset.exit ], [ %i.bo, %bb.m ] ; 3 uses
  %.21835 = phi i8 [ 1, %bb.n ], [ 1, %bb.g ], [ %.018334114, %bb.o ], [ 1, %match_eol_offset.exit ], [ %.018334114, %bb.m ]
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !78  ; 2 uses
  %i.bz = icmp ult ptr %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph4116, label %.loopexit5137.sink.split, !llvm.loop !169

.loopexit5137.sink.split:                         ; preds = %bb.f, %match_eol_offset.exit.thread
  %.sink6021 = phi ptr [ %i.bx, %match_eol_offset.exit.thread ], [ %i.aq, %bb.f ] ; 2 uses
  store ptr %.sink6021, ptr %i.v, align 8, !tbaa !166
  br label %.loopexit5137

.loopexit5137:                                    ; preds = %match_eol_offset.exit.thread.thread, %.loopexit5137.sink.split
  %.lcssa36815075 = phi ptr [ %.sink6021, %.loopexit5137.sink.split ], [ %.ph, %match_eol_offset.exit.thread.thread ] ; 2 uses
  %i.ca = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.cb = icmp ugt ptr %.lcssa36815075, %i.ca
  br i1 %i.cb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.loopexit5137
  %i.cc = getelementptr i8, ptr %.lcssa36815075, i64 -1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !67
  %i.ce = icmp eq i8 %i.cd, 10
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %i.cc, ptr %i.v, align 8, !tbaa !166
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.loopexit5137
  store i32 1, ptr %i.c, align 8, !tbaa !170
  %i.cf = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %parser_lex_callback.exit2967, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !172
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !174
  call void %i.ch(ptr noundef %i.ci, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.t:                                             ; preds = %match_eol_offset.exit.thread.thread
  %i.cj = getelementptr i8, ptr %.ph, i64 1       ; 77 uses
  store ptr %i.cj, ptr %i.d, align 8, !tbaa !76
  %i.ck = load i8, ptr %.ph, align 1, !tbaa !67   ; 3 uses
  switch i8 %i.ck, label %bb.yu [
    i8 0, label %bb.u
    i8 4, label %bb.u
    i8 26, label %bb.u
    i8 35, label %bb.w
    i8 13, label %bb.db
    i8 10, label %bb.db
    i8 44, label %bb.gf
    i8 40, label %bb.gk
    i8 41, label %bb.go
    i8 59, label %bb.gq
    i8 91, label %bb.gs
    i8 93, label %bb.hf
    i8 123, label %bb.hh
    i8 125, label %bb.hl
    i8 42, label %bb.ht
    i8 33, label %bb.il
    i8 61, label %bb.iw
    i8 60, label %bb.jn
    i8 62, label %bb.lm
    i8 34, label %bb.lt
    i8 96, label %bb.ly
    i8 39, label %bb.mj
    i8 63, label %bb.mo
    i8 38, label %bb.nj
    i8 124, label %bb.od
    i8 43, label %bb.oq
    i8 45, label %bb.pm
    i8 46, label %bb.qh
    i8 48, label %bb.qv
    i8 49, label %bb.qv
    i8 50, label %bb.qv
    i8 51, label %bb.qv
    i8 52, label %bb.qv
    i8 53, label %bb.qv
    i8 54, label %bb.qv
    i8 55, label %bb.qv
    i8 56, label %bb.qv
    i8 57, label %bb.qv
    i8 58, label %bb.qx
    i8 47, label %bb.rk
    i8 94, label %bb.rz
    i8 126, label %bb.sc
    i8 37, label %bb.sg
    i8 36, label %bb.wa
    i8 64, label %bb.xt
    i8 95, label %.loopexit
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t
  store ptr %.ph, ptr %i.d, align 8, !tbaa !76
  store i32 1, ptr %i.c, align 8, !tbaa !170
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2269 = icmp eq ptr %i.cl, null
  br i1 %.not.i2269, label %parser_lex_callback.exit2967, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !172
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !174
  call void %i.cn(ptr noundef %i.co, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.w:                                             ; preds = %bb.t
  %i.cp = ptrtoint ptr %i.bu to i64
  %i.cq = ptrtoint ptr %i.cj to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  br i1 %i.cs, label %next_newline.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 7348, ptr noundef nonnull @__PRETTY_FUNCTION__.next_newline) #26
  unreachable

next_newline.exit:                                ; preds = %bb.w
  %i.ct = call ptr @memchr(ptr noundef readonly %i.cj, i32 noundef 10, i64 noundef %i.cr) #29 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null                 ; 2 uses
  %spec.select = select i1 %i.cu, ptr %i.bu, ptr %i.ct ; 2 uses
  store ptr %spec.select, ptr %i.d, align 8, !tbaa !76
  %i.cv = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %parser_comment.exit, label %bb.y

bb.y:                                             ; preds = %next_newline.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %.ph, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %spec.select, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !7
  br label %parser_comment.exit

parser_comment.exit:                              ; preds = %next_newline.exit, %bb.y
  call void @pm_list_append(ptr noundef %i.aa, ptr noundef %i.cv) #27
  br i1 %i.cu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %parser_comment.exit
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.cy = getelementptr i8, ptr %i.cx, i64 1
  store ptr %i.cy, ptr %i.d, align 8, !tbaa !76
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %parser_comment.exit
  store i32 40, ptr %i.c, align 8, !tbaa !170
  %i.cz = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2271 = icmp eq ptr %i.cz, null
  br i1 %.not.i2271, label %parser_lex_callback.exit2272, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !172
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !174
  call void %i.db(ptr noundef %i.dc, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2272

parser_lex_callback.exit2272:                     ; preds = %bb.aa, %bb.ab
  %i.dd = load ptr, ptr %i.v, align 8, !tbaa !166 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 1      ; 5 uses
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !76  ; 10 uses
  %i.dg = ptrtoint ptr %i.df to i64               ; 6 uses
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp slt i64 %i.di, 8
  br i1 %i.dj, label %parser_lex_magic_comment.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %parser_lex_callback.exit2272
  %i.dk = getelementptr i8, ptr %i.dd, i64 4
  %.not19.i.i = icmp ugt ptr %i.dk, %i.df
  br i1 %.not19.i.i, label %parser_lex_magic_comment_emacs_marker.exit269.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ag
  %.01420.i.i = phi ptr [ %i.dy, %bb.ag ], [ %i.de, %bb.ac ] ; 2 uses
  %i.dl = ptrtoint ptr %.01420.i.i to i64
  %i.dm = sub i64 %i.dg, %i.dl
  %i.dn = load i8, ptr %i.ac, align 1, !tbaa !43, !range !45, !noundef !46
  %i.do = trunc nuw i8 %i.dn to i1
  %i.dp = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.dq = call ptr @pm_memchr(ptr noundef %.01420.i.i, i32 noundef 45, i64 noundef %i.dm, i1 noundef zeroext %i.do, ptr noundef %i.dp) #27 ; 7 uses
  %.not17.i.i = icmp eq ptr %i.dq, null
  br i1 %.not17.i.i, label %parser_lex_magic_comment_emacs_marker.exit269.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 3      ; 3 uses
  %.not18.i.i = icmp ugt ptr %i.dr, %i.df
  br i1 %.not18.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr i8, ptr %i.dq, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !67
  %i.du = icmp eq i8 %i.dt, 42
  br i1 %i.du, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr i8, ptr %i.dq, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !67
  %i.dx = icmp eq i8 %i.dw, 45
  br i1 %i.dx, label %parser_lex_magic_comment_emacs_marker.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dy = getelementptr i8, ptr %i.dq, i64 1
  %i.dz = getelementptr i8, ptr %i.dq, i64 4
  %.not.i.i = icmp ugt ptr %i.dz, %i.df
  br i1 %.not.i.i, label %parser_lex_magic_comment_emacs_marker.exit269.i, label %.lr.ph.i.i, !llvm.loop !176

parser_lex_magic_comment_emacs_marker.exit.i:     ; preds = %bb.af
  %i.ea = getelementptr i8, ptr %i.dq, i64 6
  %.not19.i262.i = icmp ugt ptr %i.ea, %i.df
  br i1 %.not19.i262.i, label %parser_lex_magic_comment.exit.thread, label %.lr.ph.i263.i

.lr.ph.i263.i:                                    ; preds = %parser_lex_magic_comment_emacs_marker.exit.i, %bb.ak
  %.01420.i264.i = phi ptr [ %i.eo, %bb.ak ], [ %i.dr, %parser_lex_magic_comment_emacs_marker.exit.i ] ; 2 uses
  %i.eb = ptrtoint ptr %.01420.i264.i to i64
  %i.ec = sub i64 %i.dg, %i.eb
  %i.ed = load i8, ptr %i.ac, align 1, !tbaa !43, !range !45, !noundef !46
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.eg = call ptr @pm_memchr(ptr noundef %.01420.i264.i, i32 noundef 45, i64 noundef %i.ec, i1 noundef zeroext %i.ee, ptr noundef %i.ef) #27 ; 8 uses
  %.not17.i265.i = icmp eq ptr %i.eg, null
  br i1 %.not17.i265.i, label %parser_lex_magic_comment.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i263.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 3
  %.not18.i266.i = icmp ugt ptr %i.eh, %i.df
  br i1 %.not18.i266.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = getelementptr i8, ptr %i.eg, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !67
  %i.ek = icmp eq i8 %i.ej, 42
  br i1 %i.ek, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.el = getelementptr i8, ptr %i.eg, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !67
  %i.en = icmp eq i8 %i.em, 45
  br i1 %i.en, label %parser_lex_magic_comment_emacs_marker.exit269.loopexit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.eo = getelementptr i8, ptr %i.eg, i64 1
  %i.ep = getelementptr i8, ptr %i.eg, i64 4
  %.not.i267.i = icmp ugt ptr %i.ep, %i.df
  br i1 %.not.i267.i, label %parser_lex_magic_comment.exit.thread, label %.lr.ph.i263.i, !llvm.loop !176

parser_lex_magic_comment_emacs_marker.exit269.loopexit.i: ; preds = %bb.aj
  %.pre.i = ptrtoint ptr %i.eg to i64
  br label %parser_lex_magic_comment_emacs_marker.exit269.i

parser_lex_magic_comment_emacs_marker.exit269.i:  ; preds = %bb.ag, %.lr.ph.i.i, %parser_lex_magic_comment_emacs_marker.exit269.loopexit.i, %bb.ac
  %.0219386.pre-phi.i = phi i64 [ %i.dg, %bb.ac ], [ %.pre.i, %parser_lex_magic_comment_emacs_marker.exit269.loopexit.i ], [ %i.dg, %.lr.ph.i.i ], [ %i.dg, %bb.ag ] ; 9 uses
  %.not.not288.i = phi i1 [ true, %bb.ac ], [ false, %parser_lex_magic_comment_emacs_marker.exit269.loopexit.i ], [ true, %.lr.ph.i.i ], [ true, %bb.ag ] ; 2 uses
  %.0219.i.a = phi ptr [ %i.df, %bb.ac ], [ %i.eg, %parser_lex_magic_comment_emacs_marker.exit269.loopexit.i ], [ %i.df, %.lr.ph.i.i ], [ %i.df, %bb.ag ] ; 16 uses
  %.0218.i = phi ptr [ %i.de, %bb.ac ], [ %i.dr, %parser_lex_magic_comment_emacs_marker.exit269.loopexit.i ], [ %i.de, %.lr.ph.i.i ], [ %i.de, %bb.ag ]
  br label %.outer.i

.outer.i:                                         ; preds = %.thread.i, %parser_lex_magic_comment_emacs_marker.exit269.i
  %.0227.ph.i = phi ptr [ %.11.i, %.thread.i ], [ %.0218.i, %parser_lex_magic_comment_emacs_marker.exit269.i ] ; 5 uses
  %.0213.ph.i = phi i1 [ %.1214294.i, %.thread.i ], [ true, %parser_lex_magic_comment_emacs_marker.exit269.i ] ; 7 uses
  %i.eq = icmp ult ptr %.0227.ph.i, %.0219.i.a    ; 2 uses
  br i1 %.not.not288.i, label %.outer.i.split.us, label %.outer.i.split

.outer.i.split.us:                                ; preds = %.outer.i
  br i1 %i.eq, label %.preheader319.preheader.i.us, label %parser_lex_magic_comment.exit

.preheader319.preheader.i.us:                     ; preds = %.outer.i.split.us
  %.0227387.i.us = ptrtoint ptr %.0227.ph.i to i64
  %scevgep.i.us = getelementptr i8, ptr %.0227.ph.i, i64 %.0219386.pre-phi.i
  %i.er = sub i64 0, %.0227387.i.us
  %scevgep388.i.us = getelementptr i8, ptr %scevgep.i.us, i64 %i.er
  br label %.preheader319.i.us

.preheader319.i.us:                               ; preds = %.critedge2.i.us, %.preheader319.preheader.i.us
  %.1228327.i.us = phi ptr [ %i.eu, %.critedge2.i.us ], [ %.0227.ph.i, %.preheader319.preheader.i.us ] ; 3 uses
  %i.es = load i8, ptr %.1228327.i.us, align 1, !tbaa !67 ; 2 uses
  switch i8 %i.es, label %pm_char_is_magic_comment_key_delimiter.exit.i.us [
    i8 58, label %.critedge2.i.us
    i8 39, label %.critedge2.i.us
    i8 34, label %.critedge2.i.us
    i8 59, label %.critedge2.i.us
  ]

pm_char_is_magic_comment_key_delimiter.exit.i.us: ; preds = %.preheader319.i.us
  %i.et = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.es) #27
  br i1 %i.et, label %.critedge2.i.us, label %.critedge.i.us

.critedge2.i.us:                                  ; preds = %pm_char_is_magic_comment_key_delimiter.exit.i.us, %.preheader319.i.us, %.preheader319.i.us, %.preheader319.i.us, %.preheader319.i.us
  %i.eu = getelementptr i8, ptr %.1228327.i.us, i64 1 ; 3 uses
  %exitcond.not.i.us = icmp eq ptr %i.eu, %scevgep388.i.us
  br i1 %exitcond.not.i.us, label %.critedge.i.us, label %.preheader319.i.us, !llvm.loop !177

.critedge.i.us:                                   ; preds = %.critedge2.i.us, %pm_char_is_magic_comment_key_delimiter.exit.i.us
  %.1228.lcssa.i.us = phi ptr [ %i.eu, %.critedge2.i.us ], [ %.1228327.i.us, %pm_char_is_magic_comment_key_delimiter.exit.i.us ] ; 6 uses
  %.1228.lcssa390.i.us = ptrtoint ptr %.1228.lcssa.i.us to i64 ; 3 uses
  %i.ev = icmp ult ptr %.1228.lcssa.i.us, %.0219.i.a
  br i1 %i.ev, label %.lr.ph.preheader.i.us, label %.critedge4.i.us

.lr.ph.preheader.i.us:                            ; preds = %.critedge.i.us
  %scevgep389.i.us = getelementptr i8, ptr %.1228.lcssa.i.us, i64 %.0219386.pre-phi.i
  %i.ew = sub i64 0, %.1228.lcssa390.i.us
  %scevgep391.i.us = getelementptr i8, ptr %scevgep389.i.us, i64 %i.ew
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.al, %.lr.ph.preheader.i.us
  %.2229328.i.us = phi ptr [ %i.ez, %bb.al ], [ %.1228.lcssa.i.us, %.lr.ph.preheader.i.us ] ; 7 uses
  %i.ex = load i8, ptr %.2229328.i.us, align 1, !tbaa !67 ; 2 uses
  switch i8 %i.ex, label %pm_char_is_magic_comment_key_delimiter.exit270.i.us [
    i8 58, label %.critedge4.loopexit.i.us
    i8 39, label %.critedge4.loopexit.i.us
    i8 34, label %.critedge4.loopexit.i.us
    i8 59, label %.critedge4.loopexit.i.us
  ]

pm_char_is_magic_comment_key_delimiter.exit270.i.us: ; preds = %.lr.ph.i.us
  %i.ey = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.ex) #27
  br i1 %i.ey, label %.critedge4.loopexit.i.us, label %bb.al

bb.al:                                            ; preds = %pm_char_is_magic_comment_key_delimiter.exit270.i.us
  %i.ez = getelementptr i8, ptr %.2229328.i.us, i64 1 ; 3 uses
  %exitcond392.not.i.us = icmp eq ptr %i.ez, %scevgep391.i.us
  br i1 %exitcond392.not.i.us, label %.critedge4.loopexit.i.us, label %.lr.ph.i.us, !llvm.loop !178

.critedge4.loopexit.i.us:                         ; preds = %bb.al, %pm_char_is_magic_comment_key_delimiter.exit270.i.us, %.lr.ph.i.us, %.lr.ph.i.us, %.lr.ph.i.us, %.lr.ph.i.us
  %.2229.lcssa.ph.i.us = phi ptr [ %.2229328.i.us, %pm_char_is_magic_comment_key_delimiter.exit270.i.us ], [ %i.ez, %bb.al ], [ %.2229328.i.us, %.lr.ph.i.us ], [ %.2229328.i.us, %.lr.ph.i.us ], [ %.2229328.i.us, %.lr.ph.i.us ], [ %.2229328.i.us, %.lr.ph.i.us ] ; 2 uses
  %.pre409.i.us = ptrtoint ptr %.2229.lcssa.ph.i.us to i64
  br label %.critedge4.i.us

.critedge4.i.us:                                  ; preds = %.critedge4.loopexit.i.us, %.critedge.i.us
  %.2229.lcssa394.pre-phi.i.us = phi i64 [ %.pre409.i.us, %.critedge4.loopexit.i.us ], [ %.1228.lcssa390.i.us, %.critedge.i.us ] ; 3 uses
  %.2229.lcssa.i.us = phi ptr [ %.2229.lcssa.ph.i.us, %.critedge4.loopexit.i.us ], [ %.1228.lcssa.i.us, %.critedge.i.us ] ; 5 uses
  %i.fa = icmp ult ptr %.2229.lcssa.i.us, %.0219.i.a
  br i1 %i.fa, label %.lr.ph339.preheader.i.us, label %.critedge6.i.us

.lr.ph339.preheader.i.us:                         ; preds = %.critedge4.i.us
  %scevgep393.i.us = getelementptr i8, ptr %.2229.lcssa.i.us, i64 %.0219386.pre-phi.i
  %i.fb = sub i64 0, %.2229.lcssa394.pre-phi.i.us
  %scevgep395.i.us = getelementptr i8, ptr %scevgep393.i.us, i64 %i.fb
  br label %.lr.ph339.i.us

.lr.ph339.i.us:                                   ; preds = %bb.am, %.lr.ph339.preheader.i.us
  %.3230338.i.us = phi ptr [ %i.fe, %bb.am ], [ %.2229.lcssa.i.us, %.lr.ph339.preheader.i.us ] ; 3 uses
  %i.fc = load i8, ptr %.3230338.i.us, align 1, !tbaa !67
  %i.fd = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.fc) #27
  br i1 %i.fd, label %bb.am, label %.critedge6.loopexit.i.us

bb.am:                                            ; preds = %.lr.ph339.i.us
  %i.fe = getelementptr i8, ptr %.3230338.i.us, i64 1 ; 3 uses
  %exitcond396.not.i.us = icmp eq ptr %i.fe, %scevgep395.i.us
  br i1 %exitcond396.not.i.us, label %.critedge6.loopexit.i.us, label %.lr.ph339.i.us, !llvm.loop !179

.critedge6.loopexit.i.us:                         ; preds = %bb.am, %.lr.ph339.i.us
  %.3230.lcssa.ph.i.us = phi ptr [ %.3230338.i.us, %.lr.ph339.i.us ], [ %i.fe, %bb.am ] ; 2 uses
  %.pre410.i.us = ptrtoint ptr %.3230.lcssa.ph.i.us to i64
  br label %.critedge6.i.us

.critedge6.i.us:                                  ; preds = %.critedge6.loopexit.i.us, %.critedge4.i.us
  %.3230.lcssa398.pre-phi.i.us = phi i64 [ %.pre410.i.us, %.critedge6.loopexit.i.us ], [ %.2229.lcssa394.pre-phi.i.us, %.critedge4.i.us ]
  %.3230.lcssa.i.us = phi ptr [ %.3230.lcssa.ph.i.us, %.critedge6.loopexit.i.us ], [ %.2229.lcssa.i.us, %.critedge4.i.us ] ; 3 uses
  %i.ff = icmp eq ptr %.3230.lcssa.i.us, %.0219.i.a
  br i1 %i.ff, label %parser_lex_magic_comment.exit, label %bb.an

bb.an:                                            ; preds = %.critedge6.i.us
  %i.fg = load i8, ptr %.3230.lcssa.i.us, align 1, !tbaa !67
  %i.fh = icmp eq i8 %i.fg, 58
  br i1 %i.fh, label %.preheader318.i.preheader, label %parser_lex_magic_comment.exit.thread

.outer.i.split:                                   ; preds = %.outer.i
  br i1 %i.eq, label %.preheader319.preheader.i, label %parser_lex_magic_comment.exit

bb.ao:                                            ; preds = %bb.ar
  %i.fi = icmp ult ptr %.3230.lcssa.i, %.0219.i.a
  br i1 %i.fi, label %.preheader319.preheader.i, label %parser_lex_magic_comment.exit

.preheader319.preheader.i:                        ; preds = %.outer.i.split, %bb.ao
  %.0227.i4128 = phi ptr [ %.3230.lcssa.i, %bb.ao ], [ %.0227.ph.i, %.outer.i.split ] ; 3 uses
  %.0227387.i = ptrtoint ptr %.0227.i4128 to i64
  %scevgep.i = getelementptr i8, ptr %.0227.i4128, i64 %.0219386.pre-phi.i
  %i.fj = sub i64 0, %.0227387.i
  %scevgep388.i = getelementptr i8, ptr %scevgep.i, i64 %i.fj
  br label %.preheader319.i

.preheader319.i:                                  ; preds = %.critedge2.i, %.preheader319.preheader.i
  %.1228327.i = phi ptr [ %i.fm, %.critedge2.i ], [ %.0227.i4128, %.preheader319.preheader.i ] ; 3 uses
  %i.fk = load i8, ptr %.1228327.i, align 1, !tbaa !67 ; 2 uses
  switch i8 %i.fk, label %pm_char_is_magic_comment_key_delimiter.exit.i [
    i8 58, label %.critedge2.i
    i8 39, label %.critedge2.i
    i8 34, label %.critedge2.i
    i8 59, label %.critedge2.i
  ]

pm_char_is_magic_comment_key_delimiter.exit.i:    ; preds = %.preheader319.i
  %i.fl = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.fk) #27
  br i1 %i.fl, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %pm_char_is_magic_comment_key_delimiter.exit.i, %.preheader319.i, %.preheader319.i, %.preheader319.i, %.preheader319.i
  %i.fm = getelementptr i8, ptr %.1228327.i, i64 1 ; 3 uses
  %exitcond.not.i = icmp eq ptr %i.fm, %scevgep388.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.preheader319.i, !llvm.loop !177

.critedge.i:                                      ; preds = %.critedge2.i, %pm_char_is_magic_comment_key_delimiter.exit.i
  %.1228.lcssa.i = phi ptr [ %i.fm, %.critedge2.i ], [ %.1228327.i, %pm_char_is_magic_comment_key_delimiter.exit.i ] ; 6 uses
  %.1228.lcssa390.i = ptrtoint ptr %.1228.lcssa.i to i64 ; 3 uses
  %i.fn = icmp ult ptr %.1228.lcssa.i, %.0219.i.a
  br i1 %i.fn, label %.lr.ph.preheader.i, label %.critedge4.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %scevgep389.i = getelementptr i8, ptr %.1228.lcssa.i, i64 %.0219386.pre-phi.i
  %i.fo = sub i64 0, %.1228.lcssa390.i
  %scevgep391.i = getelementptr i8, ptr %scevgep389.i, i64 %i.fo
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.preheader.i
  %.2229328.i = phi ptr [ %i.fr, %bb.ap ], [ %.1228.lcssa.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.fp = load i8, ptr %.2229328.i, align 1, !tbaa !67 ; 2 uses
  switch i8 %i.fp, label %pm_char_is_magic_comment_key_delimiter.exit270.i [
    i8 58, label %.critedge4.loopexit.i
    i8 39, label %.critedge4.loopexit.i
    i8 34, label %.critedge4.loopexit.i
    i8 59, label %.critedge4.loopexit.i
  ]

pm_char_is_magic_comment_key_delimiter.exit270.i: ; preds = %.lr.ph.i
  %i.fq = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.fp) #27
  br i1 %i.fq, label %.critedge4.loopexit.i, label %bb.ap

bb.ap:                                            ; preds = %pm_char_is_magic_comment_key_delimiter.exit270.i
  %i.fr = getelementptr i8, ptr %.2229328.i, i64 1 ; 3 uses
  %exitcond392.not.i = icmp eq ptr %i.fr, %scevgep391.i
  br i1 %exitcond392.not.i, label %.critedge4.loopexit.i, label %.lr.ph.i, !llvm.loop !178

.critedge4.loopexit.i:                            ; preds = %bb.ap, %pm_char_is_magic_comment_key_delimiter.exit270.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %.2229.lcssa.ph.i = phi ptr [ %.2229328.i, %pm_char_is_magic_comment_key_delimiter.exit270.i ], [ %i.fr, %bb.ap ], [ %.2229328.i, %.lr.ph.i ], [ %.2229328.i, %.lr.ph.i ], [ %.2229328.i, %.lr.ph.i ], [ %.2229328.i, %.lr.ph.i ] ; 2 uses
  %.pre409.i = ptrtoint ptr %.2229.lcssa.ph.i to i64
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.critedge4.loopexit.i, %.critedge.i
  %.2229.lcssa394.pre-phi.i = phi i64 [ %.pre409.i, %.critedge4.loopexit.i ], [ %.1228.lcssa390.i, %.critedge.i ] ; 3 uses
  %.2229.lcssa.i = phi ptr [ %.2229.lcssa.ph.i, %.critedge4.loopexit.i ], [ %.1228.lcssa.i, %.critedge.i ] ; 5 uses
  %i.fs = icmp ult ptr %.2229.lcssa.i, %.0219.i.a
  br i1 %i.fs, label %.lr.ph339.preheader.i, label %.critedge6.i

.lr.ph339.preheader.i:                            ; preds = %.critedge4.i
  %scevgep393.i = getelementptr i8, ptr %.2229.lcssa.i, i64 %.0219386.pre-phi.i
  %i.ft = sub i64 0, %.2229.lcssa394.pre-phi.i
  %scevgep395.i = getelementptr i8, ptr %scevgep393.i, i64 %i.ft
  br label %.lr.ph339.i

.lr.ph339.i:                                      ; preds = %bb.aq, %.lr.ph339.preheader.i
  %.3230338.i = phi ptr [ %i.fw, %bb.aq ], [ %.2229.lcssa.i, %.lr.ph339.preheader.i ] ; 3 uses
  %i.fu = load i8, ptr %.3230338.i, align 1, !tbaa !67
  %i.fv = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.fu) #27
  br i1 %i.fv, label %bb.aq, label %.critedge6.loopexit.i

bb.aq:                                            ; preds = %.lr.ph339.i
  %i.fw = getelementptr i8, ptr %.3230338.i, i64 1 ; 3 uses
  %exitcond396.not.i = icmp eq ptr %i.fw, %scevgep395.i
  br i1 %exitcond396.not.i, label %.critedge6.loopexit.i, label %.lr.ph339.i, !llvm.loop !179

.critedge6.loopexit.i:                            ; preds = %bb.aq, %.lr.ph339.i
  %.3230.lcssa.ph.i = phi ptr [ %.3230338.i, %.lr.ph339.i ], [ %i.fw, %bb.aq ] ; 2 uses
  %.pre410.i = ptrtoint ptr %.3230.lcssa.ph.i to i64
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.loopexit.i, %.critedge4.i
  %.3230.lcssa398.pre-phi.i = phi i64 [ %.pre410.i, %.critedge6.loopexit.i ], [ %.2229.lcssa394.pre-phi.i, %.critedge4.i ]
  %.3230.lcssa.i = phi ptr [ %.3230.lcssa.ph.i, %.critedge6.loopexit.i ], [ %.2229.lcssa.i, %.critedge4.i ] ; 5 uses
  %i.fx = icmp eq ptr %.3230.lcssa.i, %.0219.i.a
  br i1 %i.fx, label %parser_lex_magic_comment.exit, label %bb.ar

bb.ar:                                            ; preds = %.critedge6.i
  %i.fy = load i8, ptr %.3230.lcssa.i, align 1, !tbaa !67
  %i.fz = icmp eq i8 %i.fy, 58
  br i1 %i.fz, label %.preheader318.i.preheader, label %bb.ao

.preheader318.i.preheader:                        ; preds = %bb.ar, %bb.an
  %.us-phi4122 = phi i64 [ %.3230.lcssa398.pre-phi.i.us, %bb.an ], [ %.3230.lcssa398.pre-phi.i, %bb.ar ]
  %.us-phi4123.a = phi ptr [ %.3230.lcssa.i.us, %bb.an ], [ %.3230.lcssa.i, %bb.ar ] ; 4 uses
  %.us-phi4124.a = phi i64 [ %.2229.lcssa394.pre-phi.i.us, %bb.an ], [ %.2229.lcssa394.pre-phi.i, %bb.ar ] ; 3 uses
  %.us-phi4125.a = phi ptr [ %.2229.lcssa.i.us, %bb.an ], [ %.2229.lcssa.i, %bb.ar ]
  %.us-phi4126.a = phi ptr [ %.1228.lcssa.i.us, %bb.an ], [ %.1228.lcssa.i, %bb.ar ] ; 4 uses
  %.us-phi4127 = phi i64 [ %.1228.lcssa390.i.us, %bb.an ], [ %.1228.lcssa390.i, %bb.ar ] ; 3 uses
  %.4231.i6009 = getelementptr i8, ptr %.us-phi4123.a, i64 1 ; 3 uses
  %i.ga = icmp ult ptr %.4231.i6009, %.0219.i.a
  br i1 %i.ga, label %.lr.ph6012, label %.critedge8.i

.preheader318.i:                                  ; preds = %.lr.ph6012
  %.4231.i = getelementptr i8, ptr %.4231.i6011, i64 1 ; 3 uses
  %i.gb = icmp ult ptr %.4231.i, %.0219.i.a
  br i1 %i.gb, label %.lr.ph6012, label %.critedge8.i, !llvm.loop !180

.lr.ph6012:                                       ; preds = %.preheader318.i.preheader, %.preheader318.i
  %.4231.i6011 = phi ptr [ %.4231.i, %.preheader318.i ], [ %.4231.i6009, %.preheader318.i.preheader ] ; 5 uses
  %.3230.pn.i6010 = phi ptr [ %.4231.i6011, %.preheader318.i ], [ %.us-phi4123.a, %.preheader318.i.preheader ]
  %i.gc = load i8, ptr %.4231.i6011, align 1, !tbaa !67
  %i.gd = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.gc) #27
  br i1 %i.gd, label %.preheader318.i, label %..critedge8.i_crit_edge, !llvm.loop !180

..critedge8.i_crit_edge:                          ; preds = %.lr.ph6012
  br label %.critedge8.i, !llvm.loop !180

.critedge8.i:                                     ; preds = %.preheader318.i, %..critedge8.i_crit_edge, %.preheader318.i.preheader
  %.3230.pn.i.lcssa = phi ptr [ %.3230.pn.i6010, %..critedge8.i_crit_edge ], [ %.us-phi4123.a, %.preheader318.i.preheader ], [ %.4231.i6011, %.preheader318.i ]
  %.4231.i.lcssa = phi ptr [ %.4231.i6011, %..critedge8.i_crit_edge ], [ %.4231.i6009, %.preheader318.i.preheader ], [ %.4231.i, %.preheader318.i ] ; 10 uses
  %.lcssa5617 = phi i1 [ true, %..critedge8.i_crit_edge ], [ false, %.preheader318.i.preheader ], [ false, %.preheader318.i ]
  %i.ge = icmp eq ptr %.4231.i.lcssa, %.0219.i.a
  br i1 %i.ge, label %parser_lex_magic_comment.exit, label %bb.as

bb.as:                                            ; preds = %.critedge8.i
  %i.gf = load i8, ptr %.4231.i.lcssa, align 1, !tbaa !67
  %i.gg = icmp eq i8 %i.gf, 34
  br i1 %i.gg, label %bb.at, label %.preheader316.i

.preheader316.i:                                  ; preds = %bb.as
  br i1 %.lcssa5617, label %.lr.ph344.preheader.i, label %.critedge12.i

.lr.ph344.preheader.i:                            ; preds = %.preheader316.i
  %scevgep397.i = getelementptr i8, ptr %.us-phi4123.a, i64 %.0219386.pre-phi.i
  %i.gh = sub i64 0, %.us-phi4122
  %scevgep399.i = getelementptr i8, ptr %scevgep397.i, i64 %i.gh
  br label %.lr.ph344.i

bb.at:                                            ; preds = %bb.as
  %i.gi = getelementptr i8, ptr %.3230.pn.i.lcssa, i64 2 ; 7 uses
  %i.gj = icmp ult ptr %i.gi, %.0219.i.a
  br i1 %i.gj, label %.lr.ph353.i, label %.critedge12.i

.lr.ph353.i:                                      ; preds = %bb.at, %bb.av
  %.5232352.i = phi ptr [ %i.gn, %bb.av ], [ %i.gi, %bb.at ] ; 6 uses
  %i.gk = load i8, ptr %.5232352.i, align 1, !tbaa !67
  switch i8 %i.gk, label %bb.av [
    i8 34, label %.critedge10.i
    i8 92, label %bb.au
  ]

bb.au:                                            ; preds = %.lr.ph353.i
  %i.gl = getelementptr i8, ptr %.5232352.i, i64 1 ; 2 uses
  %i.gm = icmp ult ptr %i.gl, %.0219.i.a
  %spec.select.i = select i1 %i.gm, ptr %i.gl, ptr %.5232352.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph353.i
  %.6.i = phi ptr [ %.5232352.i, %.lr.ph353.i ], [ %spec.select.i, %bb.au ]
  %i.gn = getelementptr i8, ptr %.6.i, i64 1      ; 4 uses
  %i.go = icmp ult ptr %i.gn, %.0219.i.a
  br i1 %i.go, label %.lr.ph353.i, label %.critedge12.i, !llvm.loop !181

.critedge10.i:                                    ; preds = %.lr.ph353.i
  %i.gp = getelementptr i8, ptr %.5232352.i, i64 1
  br label %.critedge12.i

.lr.ph344.i:                                      ; preds = %bb.ax, %.lr.ph344.preheader.i
  %.7343.i = phi ptr [ %i.gs, %bb.ax ], [ %.4231.i.lcssa, %.lr.ph344.preheader.i ] ; 8 uses
  %i.gq = load i8, ptr %.7343.i, align 1, !tbaa !67 ; 2 uses
  switch i8 %i.gq, label %bb.aw [
    i8 34, label %.critedge12.i
    i8 59, label %.critedge12.i
  ]

bb.aw:                                            ; preds = %.lr.ph344.i
  %i.gr = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.gq) #27
  br i1 %i.gr, label %.critedge12.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gs = getelementptr i8, ptr %.7343.i, i64 1   ; 4 uses
  %exitcond400.not.i = icmp eq ptr %i.gs, %scevgep399.i
  br i1 %exitcond400.not.i, label %.critedge12.i, label %.lr.ph344.i, !llvm.loop !182

.critedge12.i:                                    ; preds = %bb.ax, %bb.aw, %.lr.ph344.i, %.lr.ph344.i, %bb.av, %.critedge10.i, %bb.at, %.preheader316.i
  %.8.i = phi ptr [ %i.gn, %bb.av ], [ %i.gp, %.critedge10.i ], [ %i.gi, %bb.at ], [ %.4231.i.lcssa, %.preheader316.i ], [ %i.gs, %bb.ax ], [ %.7343.i, %.lr.ph344.i ], [ %.7343.i, %.lr.ph344.i ], [ %.7343.i, %bb.aw ] ; 8 uses
  %.0226.i = phi ptr [ %i.gi, %bb.av ], [ %i.gi, %.critedge10.i ], [ %i.gi, %bb.at ], [ %.4231.i.lcssa, %.preheader316.i ], [ %.4231.i.lcssa, %.lr.ph344.i ], [ %.4231.i.lcssa, %.lr.ph344.i ], [ %.4231.i.lcssa, %bb.aw ], [ %.4231.i.lcssa, %bb.ax ] ; 14 uses
  %.0225.i = phi ptr [ %i.gn, %bb.av ], [ %.5232352.i, %.critedge10.i ], [ %i.gi, %bb.at ], [ %.4231.i.lcssa, %.preheader316.i ], [ %i.gs, %bb.ax ], [ %.7343.i, %.lr.ph344.i ], [ %.7343.i, %.lr.ph344.i ], [ %.7343.i, %bb.aw ] ; 2 uses
  %.8402.i = ptrtoint ptr %.8.i to i64            ; 2 uses
  %i.gt = icmp ult ptr %.8.i, %.0219.i.a          ; 2 uses
  br i1 %.not.not288.i, label %.preheader.i, label %.preheader315.i

.preheader315.i:                                  ; preds = %.critedge12.i
  br i1 %i.gt, label %.lr.ph356.preheader.i, label %.critedge14.i

.lr.ph356.preheader.i:                            ; preds = %.preheader315.i
  %scevgep401.i = getelementptr i8, ptr %.8.i, i64 %.0219386.pre-phi.i
  %i.gu = sub i64 0, %.8402.i
  %scevgep403.i = getelementptr i8, ptr %scevgep401.i, i64 %i.gu
  br label %.lr.ph356.i

.preheader.i:                                     ; preds = %.critedge12.i
  br i1 %i.gt, label %.lr.ph361.preheader.i, label %.critedge18.i

.lr.ph361.preheader.i:                            ; preds = %.preheader.i
  %scevgep405.i = getelementptr i8, ptr %.8.i, i64 %.0219386.pre-phi.i
  %i.gv = sub i64 0, %.8402.i
  %scevgep406.i = getelementptr i8, ptr %scevgep405.i, i64 %i.gv
  br label %.lr.ph361.i

.lr.ph356.i:                                      ; preds = %.critedge16.i, %.lr.ph356.preheader.i
  %.9355.i = phi ptr [ %i.gz, %.critedge16.i ], [ %.8.i, %.lr.ph356.preheader.i ] ; 3 uses
  %i.gw = load i8, ptr %.9355.i, align 1, !tbaa !67 ; 2 uses
  %i.gx = icmp eq i8 %i.gw, 59
  br i1 %i.gx, label %.critedge16.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph356.i
  %i.gy = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.gw) #27
  br i1 %i.gy, label %.critedge16.i, label %.critedge14.i

.critedge16.i:                                    ; preds = %bb.ay, %.lr.ph356.i
  %i.gz = getelementptr i8, ptr %.9355.i, i64 1   ; 3 uses
  %exitcond404.not.i = icmp eq ptr %i.gz, %scevgep403.i
  br i1 %exitcond404.not.i, label %.critedge14.i, label %.lr.ph356.i, !llvm.loop !183

.lr.ph361.i:                                      ; preds = %bb.az, %.lr.ph361.preheader.i
  %.10360.i = phi ptr [ %i.hc, %bb.az ], [ %.8.i, %.lr.ph361.preheader.i ] ; 3 uses
  %i.ha = load i8, ptr %.10360.i, align 1, !tbaa !67
  %i.hb = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.ha) #27
  br i1 %i.hb, label %bb.az, label %.critedge18.i

bb.az:                                            ; preds = %.lr.ph361.i
  %i.hc = getelementptr i8, ptr %.10360.i, i64 1  ; 3 uses
  %exitcond407.not.i = icmp eq ptr %i.hc, %scevgep406.i
  br i1 %exitcond407.not.i, label %.critedge18.i, label %.lr.ph361.i, !llvm.loop !184

.critedge18.i:                                    ; preds = %bb.az, %.lr.ph361.i, %.preheader.i
  %.10.lcssa.i = phi ptr [ %.8.i, %.preheader.i ], [ %.10360.i, %.lr.ph361.i ], [ %i.hc, %bb.az ] ; 2 uses
  %.not249.i = icmp eq ptr %.10.lcssa.i, %.0219.i.a
  br i1 %.not249.i, label %.critedge14.i, label %parser_lex_magic_comment.exit.thread

.critedge14.i:                                    ; preds = %.critedge16.i, %bb.ay, %.critedge18.i, %.preheader315.i
  %.11.i = phi ptr [ %.10.lcssa.i, %.critedge18.i ], [ %.8.i, %.preheader315.i ], [ %.9355.i, %bb.ay ], [ %i.gz, %.critedge16.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.hd = sub i64 %.us-phi4124.a, %.us-phi4127    ; 7 uses
  %i.he = load i8, ptr %i.ac, align 1, !tbaa !43, !range !45, !noundef !46
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.hh = call ptr @pm_memchr(ptr noundef %.us-phi4126.a, i32 noundef 45, i64 noundef %i.hd, i1 noundef zeroext %i.hf, ptr noundef %i.hg) #27 ; 3 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.critedge14.i
  call void @pm_string_shared_init(ptr noundef nonnull %3, ptr noundef %.us-phi4126.a, ptr noundef %.us-phi4125.a) #27
  br label %bb.bd

bb.bb:                                            ; preds = %.critedge14.i
  %i.hj = call noalias ptr @malloc(i64 noundef %i.hd) #28 ; 5 uses
  %.not251.i = icmp eq ptr %i.hj, null
  br i1 %.not251.i, label %.thread.thread.i, label %bb.bc

.thread.thread.i:                                 ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0213.ph.i, label %bb.db, label %parser_lex_magic_comment.exit.thread

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.hj, ptr noundef nonnull align 1 %.us-phi4126.a, i64 noundef %i.hd, i1 noundef false) #27
  %i.hk = ptrtoint ptr %i.hh to i64               ; 2 uses
  %i.hl = sub i64 %i.hk, %.us-phi4127
  %i.hm = getelementptr i8, ptr %i.hj, i64 %i.hl
  store i8 95, ptr %i.hm, align 1, !tbaa !67
  %i.hn = getelementptr i8, ptr %i.hh, i64 1
  %i.ho = xor i64 %i.hk, -1
  %i.hp = add i64 %.us-phi4124.a, %i.ho
  %i.hq = load i8, ptr %i.ac, align 1, !tbaa !43, !range !45, !noundef !46
  %i.hr = trunc nuw i8 %i.hq to i1
  %i.hs = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ht = call ptr @pm_memchr(ptr noundef %i.hn, i32 noundef 45, i64 noundef %i.hp, i1 noundef zeroext %i.hr, ptr noundef %i.hs) #27 ; 2 uses
  %.not250365.i = icmp eq ptr %i.ht, null
  br i1 %.not250365.i, label %._crit_edge.i, label %.lr.ph366.i

.lr.ph366.i:                                      ; preds = %bb.bc, %.lr.ph366.i
  %i.hu = phi ptr [ %i.ie, %.lr.ph366.i ], [ %i.ht, %bb.bc ] ; 2 uses
  %i.hv = ptrtoint ptr %i.hu to i64               ; 2 uses
  %i.hw = sub i64 %i.hv, %.us-phi4127
  %i.hx = getelementptr i8, ptr %i.hj, i64 %i.hw
  store i8 95, ptr %i.hx, align 1, !tbaa !67
  %i.hy = getelementptr i8, ptr %i.hu, i64 1
  %i.hz = xor i64 %i.hv, -1
  %i.ia = add i64 %.us-phi4124.a, %i.hz
  %i.ib = load i8, ptr %i.ac, align 1, !tbaa !43, !range !45, !noundef !46
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ie = call ptr @pm_memchr(ptr noundef %i.hy, i32 noundef 45, i64 noundef %i.ia, i1 noundef zeroext %i.ic, ptr noundef %i.id) #27 ; 2 uses
  %.not250.i = icmp eq ptr %i.ie, null
  br i1 %.not250.i, label %._crit_edge.i, label %.lr.ph366.i, !llvm.loop !185

._crit_edge.i:                                    ; preds = %.lr.ph366.i, %bb.bc
  call void @pm_string_owned_init(ptr noundef nonnull %3, ptr noundef nonnull %i.hj, i64 noundef %i.hd) #27
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i, %bb.ba
  %i.if = call ptr @pm_string_source(ptr noundef nonnull %3) #27 ; 8 uses
  %i.ig = ptrtoint ptr %.0225.i to i64
  %i.ih = ptrtoint ptr %.0226.i to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = trunc i64 %i.ii to i32                  ; 7 uses
  %i.ik = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.il = load ptr, ptr %i.ad, align 8, !tbaa !77
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %bb.be, label %parser_lex_magic_comment_encoding_value.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.in = load i8, ptr %i.ae, align 2, !tbaa !47, !range !45, !noundef !46
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %parser_lex_magic_comment_encoding_value.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  switch i64 %i.hd, label %parser_lex_magic_comment_encoding_value.exit.i [
    i64 8, label %bb.bg
    i64 6, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.ip = call i32 @pm_strncasecmp(ptr noundef %i.if, ptr noundef nonnull @.str.43, i64 noundef 8) #27
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.bi, label %pm_parser_scope_shareable_constant_set.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.ir = call i32 @pm_strncasecmp(ptr noundef %i.if, ptr noundef nonnull @.str.44, i64 noundef 6) #27
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.bi, label %pm_parser_scope_shareable_constant_set.exit.i

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.it = call ptr @pm_encoding_find(ptr noundef %.0226.i, ptr noundef %.0225.i) #27 ; 4 uses
  %.not.i271.not.i = icmp eq ptr %i.it, null
  br i1 %.not.i271.not.i, label %parser_lex_magic_comment_encoding_value.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iu = load ptr, ptr %i.x, align 8, !tbaa !40
  %.not15.i.i = icmp eq ptr %i.iu, %i.it
  br i1 %.not15.i.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.it, ptr %i.x, align 8, !tbaa !40
  %i.iv = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.iv, null
  br i1 %.not16.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void %i.iv(ptr noundef nonnull %0) #27, !inline_history !186
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.iw = icmp ne ptr %i.it, @pm_encodings
  %i.ix = zext i1 %i.iw to i8
  store i8 %i.ix, ptr %i.ac, align 1, !tbaa !43
  br label %parser_lex_magic_comment_encoding_value.exit.i

parser_lex_magic_comment_encoding_value.exit.i:   ; preds = %bb.bm, %bb.bi, %bb.bf, %bb.be, %bb.bd
  %.1214.i = phi i1 [ %.0213.ph.i, %bb.be ], [ %.0213.ph.i, %bb.bf ], [ %.0213.ph.i, %bb.bd ], [ false, %bb.bi ], [ true, %bb.bm ] ; 21 uses
  switch i64 %i.hd, label %pm_parser_scope_shareable_constant_set.exit.i [
    i64 11, label %bb.bn
    i64 21, label %bb.bt
    i64 24, label %bb.cb
  ]

bb.bn:                                            ; preds = %parser_lex_magic_comment_encoding_value.exit.i
  %i.iy = call i32 @pm_strncasecmp(ptr noundef %i.if, ptr noundef nonnull @.str.45, i64 noundef 11) #27
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.bo, label %pm_parser_scope_shareable_constant_set.exit.i

bb.bo:                                            ; preds = %bb.bn
  switch i32 %i.ij, label %bb.br [
    i32 4, label %bb.bp
    i32 5, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ja = call i32 @pm_strncasecmp(ptr noundef %.0226.i, ptr noundef nonnull @.str.52, i64 noundef 4) #27
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %parser_lex_magic_comment_boolean_value.exit.i, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.jc = call i32 @pm_strncasecmp(ptr noundef %.0226.i, ptr noundef nonnull @.str.53, i64 noundef 5) #27
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.je = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.jf = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.jg = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.je, ptr noundef %i.jf, i32 noundef 315, i32 noundef 11, ptr noundef %i.if, i32 noundef %i.ij, ptr noundef %.0226.i) #27 ; 0 uses
  br label %pm_parser_scope_shareable_constant_set.exit.i

bb.bs:                                            ; preds = %bb.bq
  store i8 0, ptr %i.ai, align 8, !tbaa !58
  br label %pm_parser_scope_shareable_constant_set.exit.i

parser_lex_magic_comment_boolean_value.exit.i:    ; preds = %bb.bp
  store i8 1, ptr %i.ai, align 8, !tbaa !58
  br label %pm_parser_scope_shareable_constant_set.exit.i

bb.bt:                                            ; preds = %parser_lex_magic_comment_encoding_value.exit.i
  %i.jh = call i32 @pm_strncasecmp(ptr noundef %i.if, ptr noundef nonnull @.str.46, i64 noundef 21) #27
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.bu, label %pm_parser_scope_shareable_constant_set.exit.i

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.n, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %.val256.i = load ptr, ptr %i.v, align 8, !tbaa !127
  %.val257.i = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.jj = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.u, ptr noundef %.val256.i, ptr noundef %.val257.i, i32 noundef range(i32 297, 324) 311) #27 ; 0 uses
  br label %pm_parser_scope_shareable_constant_set.exit.i

bb.bw:                                            ; preds = %bb.bu
  switch i32 %i.ij, label %bb.bz [
    i32 4, label %bb.bx
    i32 5, label %bb.by
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.jk = call i32 @pm_strncasecmp(ptr noundef %.0226.i, ptr noundef nonnull @.str.52, i64 noundef 4) #27
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %parser_lex_magic_comment_boolean_value.exit274.i, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.jm = call i32 @pm_strncasecmp(ptr noundef %.0226.i, ptr noundef nonnull @.str.53, i64 noundef 5) #27
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.jo = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.jp = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.jq = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.jo, ptr noundef %i.jp, i32 noundef 315, i32 noundef 21, ptr noundef %i.if, i32 noundef %i.ij, ptr noundef %.0226.i) #27 ; 0 uses
  br label %pm_parser_scope_shareable_constant_set.exit.i

bb.ca:                                            ; preds = %bb.by
  store i8 -1, ptr %i.ah, align 1, !tbaa !49
  br label %pm_parser_scope_shareable_constant_set.exit.i

parser_lex_magic_comment_boolean_value.exit274.i: ; preds = %bb.bx
  store i8 1, ptr %i.ah, align 1, !tbaa !49
  br label %pm_parser_scope_shareable_constant_set.exit.i

bb.cb:                                            ; preds = %parser_lex_magic_comment_encoding_value.exit.i
  %i.jr = call i32 @pm_strncasecmp(ptr noundef %i.if, ptr noundef nonnull @.str.47, i64 noundef 24) #27
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.cc, label %pm_parser_scope_shareable_constant_set.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.jt = load ptr, ptr %i.v, align 8, !tbaa !166 ; 6 uses
  %i.ju = load ptr, ptr %i.z, align 8, !tbaa !74  ; 4 uses
  %i.jv = icmp ugt ptr %i.jt, %i.ju
  br i1 %i.jv, label %.lr.ph369.preheader.i, label %.critedge20.i

.lr.ph369.preheader.i:                            ; preds = %bb.cc
  %8 = ptrtoint ptr %i.ju to i64
  %9 = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %8, %9
  %scevgep408.i = getelementptr i8, ptr %i.jt, i64 %i.jw
  br label %.lr.ph369.i

.lr.ph369.i:                                      ; preds = %.critedge22.i, %.lr.ph369.preheader.i
  %.0212367.i = phi ptr [ %i.jx, %.critedge22.i ], [ %i.jt, %.lr.ph369.preheader.i ] ; 2 uses
  %i.jx = getelementptr i8, ptr %.0212367.i, i64 -1 ; 3 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !67
  switch i8 %i.jy, label %.critedge20.i [
    i8 32, label %.critedge22.i
    i8 9, label %.critedge22.i
  ]

.critedge22.i:                                    ; preds = %.lr.ph369.i, %.lr.ph369.i
  %i.jz = icmp ugt ptr %i.jx, %i.ju
  br i1 %i.jz, label %.lr.ph369.i, label %.critedge20.i, !llvm.loop !187

.critedge20.i:                                    ; preds = %.critedge22.i, %.lr.ph369.i, %bb.cc
  %.0212.lcssa.i = phi ptr [ %i.jt, %bb.cc ], [ %scevgep408.i, %.critedge22.i ], [ %.0212367.i, %.lr.ph369.i ] ; 2 uses
  %i.ka = icmp eq ptr %.0212.lcssa.i, %i.ju
  br i1 %i.ka, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %.critedge20.i
  %i.kb = getelementptr i8, ptr %.0212.lcssa.i, i64 -1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !67
  %i.kd = icmp eq i8 %i.kc, 10
  br i1 %i.kd, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val255.i = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.ke = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.u, ptr noundef %i.jt, ptr noundef %.val255.i, i32 noundef range(i32 297, 324) 320) #27 ; 0 uses
  br label %pm_parser_scope_shareable_constant_set.exit.i

bb.cf:                                            ; preds = %bb.cd, %.critedge20.i
  switch i32 %i.ij, label %bb.cw [
    i32 4, label %bb.cg
    i32 7, label %bb.ck
    i32 23, label %bb.co
    i32 17, label %bb.cs
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.kf = call i32 @pm_strncasecmp(ptr noundef %.0226.i, ptr noundef nonnull @.str.48, i64 noundef 4) #27
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.ch, label %bb.cw

bb.ch:                                            ; preds = %bb.cg
  %.val261.i = load ptr, ptr %i.ag, align 8, !tbaa !59
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cj, %bb.ch
  %.0.i275.i = phi ptr [ %.val261.i, %bb.ch ], [ %i.kl, %bb.cj ] ; 3 uses
  %i.kh = getelementptr i8, ptr %.0.i275.i, i64 49
  store i8 0, ptr %i.kh, align 1, !tbaa !60
  %i.ki = getelementptr i8, ptr %.0.i275.i, i64 50
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !188, !range !45, !noundef !46
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %pm_parser_scope_shareable_constant_set.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kl = load ptr, ptr %.0.i275.i, align 8, !tbaa !92 ; 2 uses
  %.not.i276.i = icmp eq ptr %i.kl, null
  br i1 %.not.i276.i, label %pm_parser_scope_shareable_constant_set.exit.i, label %bb.ci, !llvm.loop !189

bb.ck:                                            ; preds = %bb.cf
  %i.km = call i32 @pm_strncasecmp(ptr noundef %.0226.i, ptr noundef nonnull @.str.49, i64 noundef 7) #27
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.cl, label %bb.cw

bb.cl:                                            ; preds = %bb.ck
  %.val260.i = load ptr, ptr %i.ag, align 8, !tbaa !59
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %.0.i277.i = phi ptr [ %.val260.i, %bb.cl ], [ %i.ks, %bb.cn ] ; 3 uses
  %i.ko = getelementptr i8, ptr %.0.i277.i, i64 49
  store i8 4, ptr %i.ko, align 1, !tbaa !60
  %i.kp = getelementptr i8, ptr %.0.i277.i, i64 50
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !188, !range !45, !noundef !46
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %pm_parser_scope_shareable_constant_set.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ks = load ptr, ptr %.0.i277.i, align 8, !tbaa !92 ; 2 uses
  %.not.i278.i = icmp eq ptr %i.ks, null
  br i1 %.not.i278.i, label %pm_parser_scope_shareable_constant_set.exit.i, label %bb.cm, !llvm.loop !189

bb.co:                                            ; preds = %bb.cf
  %i.kt = call i32 @pm_strncasecmp(ptr noundef %.0226.i, ptr noundef nonnull @.str.50, i64 noundef 23) #27
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.cp, label %bb.cw

bb.cp:                                            ; preds = %bb.co
  %.val259.i = load ptr, ptr %i.ag, align 8, !tbaa !59
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cr, %bb.cp
  %.0.i280.i = phi ptr [ %.val259.i, %bb.cp ], [ %i.kz, %bb.cr ] ; 3 uses
  %i.kv = getelementptr i8, ptr %.0.i280.i, i64 49
  store i8 8, ptr %i.kv, align 1, !tbaa !60
  %i.kw = getelementptr i8, ptr %.0.i280.i, i64 50
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !188, !range !45, !noundef !46
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %pm_parser_scope_shareable_constant_set.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kz = load ptr, ptr %.0.i280.i, align 8, !tbaa !92 ; 2 uses
  %.not.i281.i = icmp eq ptr %i.kz, null
  br i1 %.not.i281.i, label %pm_parser_scope_shareable_constant_set.exit.i, label %bb.cq, !llvm.loop !189

bb.cs:                                            ; preds = %bb.cf
  %i.la = call i32 @pm_strncasecmp(ptr noundef %.0226.i, ptr noundef nonnull @.str.51, i64 noundef 17) #27
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %.val258.i = load ptr, ptr %i.ag, align 8, !tbaa !59
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %bb.ct
  %.0.i283.i = phi ptr [ %.val258.i, %bb.ct ], [ %i.lg, %bb.cv ] ; 3 uses
  %i.lc = getelementptr i8, ptr %.0.i283.i, i64 49
  store i8 16, ptr %i.lc, align 1, !tbaa !60
  %i.ld = getelementptr i8, ptr %.0.i283.i, i64 50
  %i.le = load i8, ptr %i.ld, align 2, !tbaa !188, !range !45, !noundef !46
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %pm_parser_scope_shareable_constant_set.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lg = load ptr, ptr %.0.i283.i, align 8, !tbaa !92 ; 2 uses
  %.not.i284.i = icmp eq ptr %i.lg, null
  br i1 %.not.i284.i, label %pm_parser_scope_shareable_constant_set.exit.i, label %bb.cu, !llvm.loop !189

bb.cw:                                            ; preds = %bb.cs, %bb.co, %bb.ck, %bb.cg, %bb.cf
  %i.lh = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.li = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.lj = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.lh, ptr noundef %i.li, i32 noundef 315, i32 noundef 24, ptr noundef %i.if, i32 noundef %i.ij, ptr noundef %.0226.i) #27 ; 0 uses
  br label %pm_parser_scope_shareable_constant_set.exit.i

pm_parser_scope_shareable_constant_set.exit.i:    ; preds = %bb.cv, %bb.cu, %bb.cr, %bb.cq, %bb.cn, %bb.cm, %bb.cj, %bb.ci, %bb.cw, %bb.ce, %bb.cb, %parser_lex_magic_comment_boolean_value.exit274.i, %bb.ca, %bb.bz, %bb.bv, %bb.bt, %parser_lex_magic_comment_boolean_value.exit.i, %bb.bs, %bb.br, %bb.bn, %parser_lex_magic_comment_encoding_value.exit.i, %bb.bh, %bb.bg
  %.1214294.i = phi i1 [ %.1214.i, %bb.cr ], [ %.1214.i, %bb.ce ], [ %.0213.ph.i, %bb.bg ], [ %.1214.i, %bb.cn ], [ %.1214.i, %bb.cw ], [ %.1214.i, %bb.cj ], [ %.1214.i, %bb.br ], [ %.1214.i, %parser_lex_magic_comment_encoding_value.exit.i ], [ %.1214.i, %bb.bv ], [ %.1214.i, %parser_lex_magic_comment_boolean_value.exit274.i ], [ %.1214.i, %bb.ca ], [ %.1214.i, %bb.bz ], [ %.1214.i, %bb.bt ], [ %.1214.i, %bb.cb ], [ %.1214.i, %bb.bn ], [ %.1214.i, %parser_lex_magic_comment_boolean_value.exit.i ], [ %.1214.i, %bb.bs ], [ %.0213.ph.i, %bb.bh ], [ %.1214.i, %bb.ci ], [ %.1214.i, %bb.cm ], [ %.1214.i, %bb.cq ], [ %.1214.i, %bb.cu ], [ %.1214.i, %bb.cv ]
  call void @pm_string_free(ptr noundef nonnull %3) #27
  %i.lk = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 6 uses
  %.not252.i = icmp eq ptr %i.lk, null
  br i1 %.not252.i, label %.thread.i, label %bb.cx

bb.cx:                                            ; preds = %pm_parser_scope_shareable_constant_set.exit.i
  %i.ll = getelementptr i8, ptr %i.lk, i64 8
  store ptr %.us-phi4126.a, ptr %i.ll, align 8, !tbaa !190
  %i.lm = getelementptr i8, ptr %i.lk, i64 16
  store ptr %.0226.i, ptr %i.lm, align 8, !tbaa !192
  %i.ln = trunc i64 %i.hd to i32
  %i.lo = getelementptr i8, ptr %i.lk, i64 24
  store i32 %i.ln, ptr %i.lo, align 8, !tbaa !193
  %i.lp = getelementptr i8, ptr %i.lk, i64 28
  store i32 %i.ij, ptr %i.lp, align 4, !tbaa !194
  call void @pm_list_append(ptr noundef %i.aj, ptr noundef nonnull %i.lk) #27
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cx, %pm_parser_scope_shareable_constant_set.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.outer.i

parser_lex_magic_comment.exit:                    ; preds = %.critedge8.i, %.critedge6.i.us, %.outer.i.split.us, %.outer.i.split, %bb.ao, %.critedge6.i
  br i1 %.0213.ph.i, label %bb.db, label %parser_lex_magic_comment.exit.thread

parser_lex_magic_comment.exit.thread:             ; preds = %.lr.ph.i263.i, %bb.ak, %.critedge18.i, %bb.an, %parser_lex_magic_comment_emacs_marker.exit.i, %parser_lex_callback.exit2272, %.thread.thread.i, %parser_lex_magic_comment.exit
  %i.lq = load ptr, ptr %i.v, align 8, !tbaa !166 ; 2 uses
  %i.lr = load ptr, ptr %i.ad, align 8, !tbaa !77
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %parser_lex_magic_comment.exit.thread
  %i.lt = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.lq to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = icmp sgt i64 %i.lw, 9
  br i1 %i.lx, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ly = load i8, ptr %i.ae, align 2, !tbaa !47, !range !45, !noundef !46
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call fastcc void @parser_lex_magic_comment_encoding(ptr noundef nonnull %0)
  br label %bb.db

bb.db:                                            ; preds = %bb.t, %bb.t, %.thread.thread.i, %parser_lex_magic_comment.exit, %parser_lex_magic_comment.exit.thread, %bb.da, %bb.cz, %bb.cy
  %.1 = phi i1 [ false, %bb.t ], [ false, %bb.t ], [ true, %bb.cy ], [ true, %bb.cz ], [ true, %bb.da ], [ true, %parser_lex_magic_comment.exit.thread ], [ true, %parser_lex_magic_comment.exit ], [ true, %.thread.thread.i ] ; 14 uses
  store i8 %i.m, ptr %i.l, align 2, !tbaa !165
  %i.ma = load ptr, ptr %i.d, align 8, !tbaa !76  ; 5 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 -1     ; 2 uses
  %.val2120 = load ptr, ptr %i.f, align 8, !tbaa !78 ; 2 uses
  %i.mc = icmp ult ptr %i.mb, %.val2120
  br i1 %i.mc, label %peek_at.exit.i, label %match_eol_at.exit

peek_at.exit.i:                                   ; preds = %bb.db
  %i.md = load i8, ptr %i.mb, align 1, !tbaa !67
end_hunk_0
begin_hunk_1_@parser_lex:bb.a
  %i.aek = icmp eq i8 %i.aej, 0
  br i1 %i.aek, label %peek_offset.exit2464.thread, label %bb.jd

peek_offset.exit2464.thread:                      ; preds = %bb.ja, %peek_offset.exit2464, %peek_offset.exit
  %i.ael = call fastcc i32 @lex_embdoc(ptr noundef nonnull %0)
  %i.aem = icmp eq i32 %i.ael, 1
  br i1 %i.aem, label %bb.jb, label %.backedge.backedge

bb.jb:                                            ; preds = %peek_offset.exit2464.thread
  store i32 1, ptr %i.c, align 8, !tbaa !170
  %i.aen = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2465 = icmp eq ptr %i.aen, null
  br i1 %.not.i2465, label %parser_lex_callback.exit2967, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aeo = getelementptr i8, ptr %i.aen, i64 8
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !172
  %i.aeq = load ptr, ptr %i.aen, align 8, !tbaa !174
  call void %i.aep(ptr noundef %i.aeq, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.jd:                                            ; preds = %peek_offset.exit2464, %bb.ix, %current_token_starts_line.exit.thread, %current_token_starts_line.exit
  %.val3.i2480 = phi ptr [ %.val2255, %peek_offset.exit2464 ], [ %i.cj, %bb.ix ], [ %i.cj, %current_token_starts_line.exit.thread ], [ %i.cj, %current_token_starts_line.exit ] ; 8 uses
  %.val.i2467 = phi ptr [ %.val2254, %peek_offset.exit2464 ], [ %i.bu, %bb.ix ], [ %i.bu, %current_token_starts_line.exit.thread ], [ %i.bu, %current_token_starts_line.exit ] ; 2 uses
  %.val2179 = load i32, ptr %i.w, align 4, !tbaa !195
  %i.aer = and i32 %.val2179, 384
  %.not3576 = icmp eq i32 %i.aer, 0
  %.3592 = select i1 %.not3576, i32 1, i32 16
  store i32 %.3592, ptr %i.w, align 4, !tbaa !195
  %i.aes = icmp ult ptr %.val3.i2480, %.val.i2467
  br i1 %i.aes, label %peek.exit.i2469, label %bb.jl

peek.exit.i2469:                                  ; preds = %bb.jd
  %i.aet = load i8, ptr %.val3.i2480, align 1, !tbaa !67
  %i.aeu = icmp eq i8 %i.aet, 62
  br i1 %i.aeu, label %bb.je, label %peek.exit.i2475

bb.je:                                            ; preds = %peek.exit.i2469
  %i.aev = getelementptr i8, ptr %.val3.i2480, i64 1
  store ptr %i.aev, ptr %i.d, align 8, !tbaa !76
  store i32 53, ptr %i.c, align 8, !tbaa !170
  %i.aew = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2471 = icmp eq ptr %i.aew, null
  br i1 %.not.i2471, label %parser_lex_callback.exit2967, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.aex = getelementptr i8, ptr %i.aew, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !172
  %i.aez = load ptr, ptr %i.aew, align 8, !tbaa !174
  call void %i.aey(ptr noundef %i.aez, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

peek.exit.i2475:                                  ; preds = %peek.exit.i2469
  %i.afa = load i8, ptr %.val3.i2480, align 1, !tbaa !67
  %i.afb = icmp eq i8 %i.afa, 126
  br i1 %i.afb, label %bb.jg, label %peek.exit.i2481

bb.jg:                                            ; preds = %peek.exit.i2475
  %i.afc = getelementptr i8, ptr %.val3.i2480, i64 1
  store ptr %i.afc, ptr %i.d, align 8, !tbaa !76
  store i32 54, ptr %i.c, align 8, !tbaa !170
  %i.afd = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2477 = icmp eq ptr %i.afd, null
  br i1 %.not.i2477, label %parser_lex_callback.exit2967, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.afe = getelementptr i8, ptr %i.afd, i64 8
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !172
  %i.afg = load ptr, ptr %i.afd, align 8, !tbaa !174
  call void %i.aff(ptr noundef %i.afg, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

peek.exit.i2481:                                  ; preds = %peek.exit.i2475
  %i.afh = load i8, ptr %.val3.i2480, align 1, !tbaa !67
  %i.afi = icmp eq i8 %i.afh, 61
  br i1 %i.afi, label %bb.ji, label %bb.jl

bb.ji:                                            ; preds = %peek.exit.i2481
  %i.afj = getelementptr i8, ptr %.val3.i2480, i64 1 ; 3 uses
  store ptr %i.afj, ptr %i.d, align 8, !tbaa !76
  %i.afk = icmp ult ptr %i.afj, %.val.i2467
  br i1 %i.afk, label %peek.exit.i2485, label %match.exit2486.thread

peek.exit.i2485:                                  ; preds = %bb.ji
  %i.afl = load i8, ptr %i.afj, align 1, !tbaa !67
  %i.afm = icmp eq i8 %i.afl, 61
  br i1 %i.afm, label %bb.jj, label %match.exit2486.thread

bb.jj:                                            ; preds = %peek.exit.i2485
  %i.afn = getelementptr i8, ptr %.val3.i2480, i64 2
  store ptr %i.afn, ptr %i.d, align 8, !tbaa !76
  br label %match.exit2486.thread

match.exit2486.thread:                            ; preds = %bb.ji, %peek.exit.i2485, %bb.jj
  %i.afo = phi i32 [ 52, %bb.jj ], [ 51, %peek.exit.i2485 ], [ 51, %bb.ji ]
  store i32 %i.afo, ptr %i.c, align 8, !tbaa !170
  %i.afp = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2487 = icmp eq ptr %i.afp, null
  br i1 %.not.i2487, label %parser_lex_callback.exit2967, label %bb.jk

bb.jk:                                            ; preds = %match.exit2486.thread
  %i.afq = getelementptr i8, ptr %i.afp, i64 8
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !172
  %i.afs = load ptr, ptr %i.afp, align 8, !tbaa !174
  call void %i.afr(ptr noundef %i.afs, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.jl:                                            ; preds = %bb.jd, %peek.exit.i2481
  store i32 50, ptr %i.c, align 8, !tbaa !170
  %i.aft = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2489 = icmp eq ptr %i.aft, null
  br i1 %.not.i2489, label %parser_lex_callback.exit2967, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.afu = getelementptr i8, ptr %i.aft, i64 8
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !172
  %i.afw = load ptr, ptr %i.aft, align 8, !tbaa !174
  call void %i.afv(ptr noundef %i.afw, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.jn:                                            ; preds = %bb.t
  %i.afx = icmp ult ptr %i.cj, %i.bu              ; 2 uses
  br i1 %i.afx, label %peek.exit.i2493, label %._crit_edge4610

._crit_edge4610:                                  ; preds = %bb.jn
  %.val2177.pre = load i32, ptr %i.w, align 4, !tbaa !195
  br label %bb.lb

peek.exit.i2493:                                  ; preds = %bb.jn
  %i.afy = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.afz = icmp eq i8 %i.afy, 60
  %.val2177.pre4611 = load i32, ptr %i.w, align 4, !tbaa !195 ; 4 uses
  br i1 %i.afz, label %bb.jo, label %bb.lb

bb.jo:                                            ; preds = %peek.exit.i2493
  %i.aga = getelementptr i8, ptr %.ph, i64 2      ; 10 uses
  store ptr %i.aga, ptr %i.d, align 8, !tbaa !76
  %i.agb = and i32 %.val2177.pre4611, 782
  %or.cond3529.not = icmp eq i32 %i.agb, 0
  br i1 %or.cond3529.not, label %bb.jp, label %bb.kr

bb.jp:                                            ; preds = %bb.jo
  %i.agc = and i32 %.val2177.pre4611, 48
  %.not3570 = icmp eq i32 %i.agc, 0
  br i1 %.not3570, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.agd = and i32 %.val2177.pre4611, 2048
  %i.age = icmp ne i32 %i.agd, 0
  %or.cond17 = select i1 %i.age, i1 true, i1 %i.bw
  br i1 %or.cond17, label %bb.jr, label %bb.kr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.agf = icmp ult ptr %i.aga, %i.bu
  br i1 %i.agf, label %peek.exit.i2497, label %match.exit2502.thread

peek.exit.i2497:                                  ; preds = %bb.jr
  %i.agg = load i8, ptr %i.aga, align 1, !tbaa !67
  %i.agh = icmp eq i8 %i.agg, 45
  br i1 %i.agh, label %match.exit2502.thread.sink.split, label %peek.exit.i2501

peek.exit.i2501:                                  ; preds = %peek.exit.i2497
  %i.agi = load i8, ptr %i.aga, align 1, !tbaa !67
  %i.agj = icmp eq i8 %i.agi, 126
  br i1 %i.agj, label %match.exit2502.thread.sink.split, label %match.exit2502.thread

match.exit2502.thread.sink.split:                 ; preds = %peek.exit.i2501, %peek.exit.i2497
  %.01871.ph = phi i32 [ 1, %peek.exit.i2497 ], [ 2, %peek.exit.i2501 ]
  %i.agk = getelementptr i8, ptr %.ph, i64 3      ; 2 uses
  store ptr %i.agk, ptr %i.d, align 8, !tbaa !76
  br label %match.exit2502.thread

match.exit2502.thread:                            ; preds = %match.exit2502.thread.sink.split, %bb.jr, %peek.exit.i2501
  %.val3.i2512 = phi ptr [ %i.aga, %peek.exit.i2501 ], [ %i.aga, %bb.jr ], [ %i.agk, %match.exit2502.thread.sink.split ] ; 7 uses
  %.01871 = phi i32 [ 0, %peek.exit.i2501 ], [ 0, %bb.jr ], [ %.01871.ph, %match.exit2502.thread.sink.split ] ; 2 uses
  %i.agl = icmp ult ptr %.val3.i2512, %i.bu
  br i1 %i.agl, label %peek.exit.i2505, label %bb.js

peek.exit.i2505:                                  ; preds = %match.exit2502.thread
  %i.agm = load i8, ptr %.val3.i2512, align 1, !tbaa !67
  %i.agn = icmp eq i8 %i.agm, 96
  br i1 %i.agn, label %.sink.split, label %peek.exit.i2509

peek.exit.i2509:                                  ; preds = %peek.exit.i2505
  %i.ago = load i8, ptr %.val3.i2512, align 1, !tbaa !67
  %i.agp = icmp eq i8 %i.ago, 34
  br i1 %i.agp, label %.sink.split, label %peek.exit.i2513

peek.exit.i2513:                                  ; preds = %peek.exit.i2509
  %i.agq = load i8, ptr %.val3.i2512, align 1, !tbaa !67
  %i.agr = icmp eq i8 %i.agq, 39
  br i1 %i.agr, label %.sink.split, label %bb.js

.sink.split:                                      ; preds = %peek.exit.i2513, %peek.exit.i2509, %peek.exit.i2505
  %.01870.ph = phi i32 [ 34, %peek.exit.i2509 ], [ 96, %peek.exit.i2505 ], [ 39, %peek.exit.i2513 ]
  %i.ags = getelementptr i8, ptr %.val3.i2512, i64 1 ; 2 uses
  store ptr %i.ags, ptr %i.d, align 8, !tbaa !76
  br label %bb.js

bb.js:                                            ; preds = %.sink.split, %match.exit2502.thread, %peek.exit.i2513
  %.promoted = phi ptr [ %.val3.i2512, %match.exit2502.thread ], [ %.val3.i2512, %peek.exit.i2513 ], [ %i.ags, %.sink.split ] ; 12 uses
  %i.agt = phi i1 [ true, %match.exit2502.thread ], [ true, %peek.exit.i2513 ], [ false, %.sink.split ] ; 2 uses
  %.01870 = phi i32 [ 0, %match.exit2502.thread ], [ 0, %peek.exit.i2513 ], [ %.01870.ph, %.sink.split ] ; 4 uses
  %.not2014 = icmp ult ptr %.promoted, %i.bu
  br i1 %.not2014, label %bb.jt, label %.critedge2056

bb.jt:                                            ; preds = %bb.js
  br i1 %i.agt, label %bb.ju, label %.lr.ph4141.preheader

.lr.ph4141.preheader:                             ; preds = %bb.jt
  %.promoted4520 = ptrtoint ptr %.promoted to i64 ; 4 uses
  br label %.lr.ph4141

bb.ju:                                            ; preds = %bb.jt
  %i.agu = ptrtoint ptr %i.bu to i64
  %i.agv = ptrtoint ptr %.promoted to i64         ; 3 uses
  %i.agw = sub i64 %i.agu, %i.agv
  %i.agx = call fastcc i64 @char_is_identifier(ptr noundef nonnull %0, ptr noundef %.promoted, i64 noundef %i.agw) ; 2 uses
  %i.agy = icmp eq i64 %i.agx, 0
  %.val.i2523.pre.pre = load ptr, ptr %i.f, align 8, !tbaa !78 ; 2 uses
  br i1 %i.agy, label %.critedge2056, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.agz = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.aha = getelementptr i8, ptr %i.agz, i64 %i.agx ; 5 uses
  store ptr %i.aha, ptr %i.d, align 8, !tbaa !76
  %i.ahb = ptrtoint ptr %.val.i2523.pre.pre to i64
  %i.ahc = ptrtoint ptr %i.aha to i64
  %i.ahd = sub i64 %i.ahb, %i.ahc                 ; 2 uses
  %i.ahe = icmp slt i64 %i.ahd, 1
  br i1 %i.ahe, label %.critedge19.thread, label %.lr.ph4145

.critedge19.thread:                               ; preds = %bb.jv
  %i.ahf = ptrtoint ptr %i.aha to i64
  %i.ahg = sub i64 %i.ahf, %i.agv
  br label %bb.kg

.lr.ph4145:                                       ; preds = %bb.jv, %char_is_identifier.exit.thread
  %i.ahh = phi i64 [ %i.aii, %char_is_identifier.exit.thread ], [ %i.ahd, %bb.jv ] ; 3 uses
  %storemerge4143 = phi ptr [ %i.aie, %char_is_identifier.exit.thread ], [ %i.aha, %bb.jv ] ; 5 uses
  %i.ahi = load i8, ptr %i.ac, align 1, !tbaa !43, !range !45, !noundef !46
  %i.ahj = trunc nuw i8 %i.ahi to i1
  br i1 %i.ahj, label %bb.jw, label %bb.ka

bb.jw:                                            ; preds = %.lr.ph4145
  %i.ahk = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 16
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !153
  %i.ahn = call i64 %i.ahm(ptr noundef %storemerge4143, i64 noundef %i.ahh) #27, !inline_history !204 ; 2 uses
  %.not.i2515 = icmp eq i64 %i.ahn, 0
  br i1 %.not.i2515, label %bb.jx, label %char_is_identifier.exit.thread

bb.jx:                                            ; preds = %bb.jw
  %i.aho = load i8, ptr %storemerge4143, align 1, !tbaa !67 ; 2 uses
  %i.ahp = icmp eq i8 %i.aho, 95
  br i1 %i.ahp, label %char_is_identifier.exit.thread, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ahq = icmp slt i8 %i.aho, 0
  br i1 %i.ahq, label %bb.jz, label %.critedge19.loopexit

bb.jz:                                            ; preds = %bb.jy
  %i.ahr = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !151
  %i.aht = call i64 %i.ahs(ptr noundef nonnull %storemerge4143, i64 noundef %i.ahh) #27, !inline_history !204
  br label %char_is_identifier.exit

bb.ka:                                            ; preds = %.lr.ph4145
  %i.ahu = load i8, ptr %storemerge4143, align 1, !tbaa !67 ; 3 uses
  %i.ahv = icmp sgt i8 %i.ahu, -1
  br i1 %i.ahv, label %bb.kb, label %bb.kd

bb.kb:                                            ; preds = %bb.ka
  %i.ahw = icmp eq i8 %i.ahu, 95
  br i1 %i.ahw, label %char_is_identifier.exit.thread, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.ahx = zext nneg i8 %i.ahu to i64
  %i.ahy = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.ahx
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !67
  %i.aia = lshr i8 %i.ahz, 1
  %.lobit.i.i = and i8 %i.aia, 1
  %i.aib = zext nneg i8 %.lobit.i.i to i64
  br label %char_is_identifier.exit

bb.kd:                                            ; preds = %bb.ka
  %i.aic = call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %storemerge4143, i64 noundef %i.ahh) #27
  br label %char_is_identifier.exit

char_is_identifier.exit:                          ; preds = %bb.jz, %bb.kc, %bb.kd
  %.1.i = phi i64 [ %i.aib, %bb.kc ], [ %i.aht, %bb.jz ], [ %i.aic, %bb.kd ] ; 2 uses
  %.not2016 = icmp eq i64 %.1.i, 0
  br i1 %.not2016, label %.critedge19.loopexit, label %char_is_identifier.exit.thread

char_is_identifier.exit.thread:                   ; preds = %bb.kb, %bb.jw, %bb.jx, %char_is_identifier.exit
  %.1.i3378 = phi i64 [ %.1.i, %char_is_identifier.exit ], [ 1, %bb.kb ], [ %i.ahn, %bb.jw ], [ 1, %bb.jx ]
  %i.aid = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.aie = getelementptr i8, ptr %i.aid, i64 %.1.i3378 ; 3 uses
  store ptr %i.aie, ptr %i.d, align 8, !tbaa !76
  %i.aif = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.aig = ptrtoint ptr %i.aif to i64
  %i.aih = ptrtoint ptr %i.aie to i64
  %i.aii = sub i64 %i.aig, %i.aih                 ; 2 uses
  %i.aij = icmp slt i64 %i.aii, 1
  br i1 %i.aij, label %.critedge19.loopexit, label %.lr.ph4145, !llvm.loop !205

.lr.ph4141:                                       ; preds = %.lr.ph4141.preheader, %.critedge2052
  %i.aik = phi ptr [ %i.ain, %.critedge2052 ], [ %.promoted, %.lr.ph4141.preheader ] ; 5 uses
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !67
  %.fr3572 = freeze i8 %i.ail                     ; 2 uses
  %i.aim = zext i8 %.fr3572 to i32
  %.not2015 = icmp eq i32 %.01870, %i.aim
  br i1 %.not2015, label %.critedge19, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph4141
  switch i8 %.fr3572, label %.critedge2052 [
    i8 13, label %.critedge19
    i8 10, label %.critedge19
  ]

.critedge2052:                                    ; preds = %switch.early.test
  %i.ain = getelementptr i8, ptr %i.aik, i64 1    ; 4 uses
  store ptr %i.ain, ptr %i.d, align 8, !tbaa !76
  %exitcond4522.not = icmp eq ptr %i.ain, %i.bu
  br i1 %exitcond4522.not, label %.critedge19, label %.lr.ph4141, !llvm.loop !206

.critedge19.loopexit:                             ; preds = %char_is_identifier.exit.thread, %bb.jy, %char_is_identifier.exit
  %.pre4562 = load ptr, ptr %i.d, align 8, !tbaa !76
  br label %.critedge19

.critedge19:                                      ; preds = %.critedge2052, %.lr.ph4141, %switch.early.test, %switch.early.test, %.critedge19.loopexit
  %.pre-phi = phi i64 [ %i.agv, %.critedge19.loopexit ], [ %.promoted4520, %switch.early.test ], [ %.promoted4520, %switch.early.test ], [ %.promoted4520, %.lr.ph4141 ], [ %.promoted4520, %.critedge2052 ]
  %10 = phi ptr [ %.pre4562, %.critedge19.loopexit ], [ %i.ain, %.critedge2052 ], [ %i.aik, %.lr.ph4141 ], [ %i.aik, %switch.early.test ], [ %i.aik, %switch.early.test ] ; 5 uses
  %i.aio = ptrtoint ptr %10 to i64
  %i.aip = sub i64 %i.aio, %.pre-phi              ; 4 uses
  br i1 %i.agt, label %bb.kg, label %bb.ke

bb.ke:                                            ; preds = %.critedge19
  %.val.i2516 = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.aiq = icmp ult ptr %10, %.val.i2516
  br i1 %i.aiq, label %peek.exit.i2518, label %bb.kf

peek.exit.i2518:                                  ; preds = %bb.ke
  %i.air = trunc nuw nsw i32 %.01870 to i8
  %i.ais = load i8, ptr %10, align 1, !tbaa !67
  %i.ait = icmp eq i8 %i.ais, %i.air
  br i1 %i.ait, label %match.exit2519, label %bb.kf

match.exit2519:                                   ; preds = %peek.exit.i2518
  %i.aiu = getelementptr i8, ptr %10, i64 1       ; 2 uses
  store ptr %i.aiu, ptr %i.d, align 8, !tbaa !76
  br label %bb.kg

bb.kf:                                            ; preds = %peek.exit.i2518, %bb.ke
  %i.aiv = getelementptr i8, ptr %.promoted, i64 %i.aip
  %i.aiw = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.y, ptr noundef %.promoted, ptr noundef %i.aiv, i32 noundef 137) #27 ; 0 uses
  %.pre4563 = load ptr, ptr %i.d, align 8, !tbaa !76
  br label %bb.kg

bb.kg:                                            ; preds = %.critedge19.thread, %match.exit2519, %bb.kf, %.critedge19
  %i.aix = phi i64 [ %i.aip, %match.exit2519 ], [ %i.aip, %bb.kf ], [ %i.aip, %.critedge19 ], [ %i.ahg, %.critedge19.thread ] ; 4 uses
  %i.aiy = phi ptr [ %i.aiu, %match.exit2519 ], [ %.pre4563, %bb.kf ], [ %10, %.critedge19 ], [ %i.aha, %.critedge19.thread ] ; 2 uses
  %.01873 = phi i1 [ false, %match.exit2519 ], [ true, %bb.kf ], [ false, %.critedge19 ], [ false, %.critedge19.thread ]
  %i.aiz = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.aiz, align 8, !tbaa !207
  %i.aja = load ptr, ptr %i.o, align 8, !tbaa !91 ; 2 uses
  %i.ajb = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !90
  %i.ajd = add i64 %i.ajc, 1                      ; 3 uses
  store i64 %i.ajd, ptr %i.ajb, align 8, !tbaa !90
  %i.aje = icmp ugt i64 %i.ajd, 3
  br i1 %i.aje, label %bb.kh, label %bb.kj

bb.kh:                                            ; preds = %bb.kg
  %i.ajf = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 11 uses
  store ptr %i.ajf, ptr %i.o, align 8, !tbaa !91
  %i.ajg = icmp eq ptr %i.ajf, null
  br i1 %i.ajg, label %lex_mode_push.exit, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  store i32 3, ptr %i.ajf, align 8, !tbaa !7
  %.sroa.53152.0..sroa_idx3153 = getelementptr inbounds nuw i8, ptr %i.ajf, i64 4
  store i32 0, ptr %.sroa.53152.0..sroa_idx3153, align 4
  %.sroa.63155.0..sroa_idx3156 = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  store ptr %.promoted, ptr %.sroa.63155.0..sroa_idx3156, align 8
  %.sroa.73158.0..sroa_idx3159 = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16
  store i64 %i.aix, ptr %.sroa.73158.0..sroa_idx3159, align 8
  %.sroa.83161.0..sroa_idx3162 = getelementptr inbounds nuw i8, ptr %i.ajf, i64 24
  store i32 %.01870, ptr %.sroa.83161.0..sroa_idx3162, align 8
  %.sroa.93164.0..sroa_idx3165 = getelementptr inbounds nuw i8, ptr %i.ajf, i64 28
  store i32 %.01871, ptr %.sroa.93164.0..sroa_idx3165, align 4
  %.sroa.103167.0..sroa_idx3168 = getelementptr inbounds nuw i8, ptr %i.ajf, i64 32
  store ptr %i.aiy, ptr %.sroa.103167.0..sroa_idx3168, align 8
  %.sroa.113170.0..sroa_idx3171 = getelementptr inbounds nuw i8, ptr %i.ajf, i64 40
  %.sroa.14.0..sroa_idx3176 = getelementptr inbounds nuw i8, ptr %i.ajf, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.113170.0..sroa_idx3171, i8 0, i64 16, i1 false)
  store ptr %i.aja, ptr %.sroa.14.0..sroa_idx3176, align 8, !tbaa !11
  br label %lex_mode_push.exit

bb.kj:                                            ; preds = %bb.kg
  %i.ajh = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.aji = getelementptr [64 x i8], ptr %i.ajh, i64 %i.ajd ; 9 uses
  store i32 3, ptr %i.aji, align 8, !tbaa !7
  %.sroa.53152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aji, i64 4
  store i32 0, ptr %.sroa.53152.0..sroa_idx, align 4
  %.sroa.63155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  store ptr %.promoted, ptr %.sroa.63155.0..sroa_idx, align 8
  %.sroa.73158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  store i64 %i.aix, ptr %.sroa.73158.0..sroa_idx, align 8
  %.sroa.83161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  store i32 %.01870, ptr %.sroa.83161.0..sroa_idx, align 8
  %.sroa.93164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aji, i64 28
  store i32 %.01871, ptr %.sroa.93164.0..sroa_idx, align 4
  %.sroa.103167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aji, i64 32
  store ptr %i.aiy, ptr %.sroa.103167.0..sroa_idx, align 8
  %.sroa.113170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aji, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aji, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.113170.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.aja, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !11
  %i.ajj = load i64, ptr %i.ajb, align 8, !tbaa !90
  %i.ajk = getelementptr [64 x i8], ptr %i.ajh, i64 %i.ajj
  store ptr %i.ajk, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_push.exit

lex_mode_push.exit:                               ; preds = %bb.kh, %bb.ki, %bb.kj
  %i.ajl = load ptr, ptr %i.s, align 8, !tbaa !168 ; 2 uses
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %bb.kk, label %bb.kp

bb.kk:                                            ; preds = %lex_mode_push.exit
  %i.ajn = load ptr, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  %i.ajo = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.ajp = ptrtoint ptr %i.ajo to i64
  %i.ajq = ptrtoint ptr %i.ajn to i64
  %i.ajr = sub i64 %i.ajp, %i.ajq
  %i.ajs = call fastcc ptr @next_newline(ptr noundef %i.ajn, i64 noundef %i.ajr) ; 3 uses
  %i.ajt = icmp eq ptr %i.ajs, null
  br i1 %i.ajt, label %bb.kl, label %bb.ko

bb.kl:                                            ; preds = %bb.kk
  br i1 %.01873, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.aju = getelementptr i8, ptr %.promoted, i64 %i.aix
  %i.ajv = trunc i64 %i.aix to i32
  %i.ajw = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.y, ptr noundef %.promoted, ptr noundef %i.aju, i32 noundef 138, i32 noundef %i.ajv, ptr noundef %.promoted) #27 ; 0 uses
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %i.ajx = load ptr, ptr %i.f, align 8, !tbaa !78
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kk
  %i.ajy = call zeroext i1 @pm_newline_list_append(ptr noundef %i.t, ptr noundef nonnull %i.ajs) #27 ; 0 uses
  %i.ajz = getelementptr i8, ptr %i.ajs, i64 1
  br label %bb.kp

bb.kp:                                            ; preds = %lex_mode_push.exit, %bb.kn, %bb.ko
  %storemerge2018 = phi ptr [ %i.ajz, %bb.ko ], [ %i.ajx, %bb.kn ], [ %i.ajl, %lex_mode_push.exit ]
  store ptr %storemerge2018, ptr %i.r, align 8, !tbaa !167
  store i32 65, ptr %i.c, align 8, !tbaa !170
  %i.aka = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2521 = icmp eq ptr %i.aka, null
  br i1 %.not.i2521, label %parser_lex_callback.exit2967, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.akb = getelementptr i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !172
  %i.akd = load ptr, ptr %i.aka, align 8, !tbaa !174
  call void %i.akc(ptr noundef %i.akd, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

.critedge2056:                                    ; preds = %bb.ju, %bb.js
  %.val.i2523.pre = phi ptr [ %.val.i2523.pre.pre, %bb.ju ], [ %i.bu, %bb.js ]
  store ptr %i.aga, ptr %i.d, align 8, !tbaa !76
  br label %bb.kr

bb.kr:                                            ; preds = %.critedge2056, %bb.jq, %bb.jo
  %.val.i2523 = phi ptr [ %.val.i2523.pre, %.critedge2056 ], [ %i.bu, %bb.jq ], [ %i.bu, %bb.jo ]
  %i.ake = icmp ult ptr %i.aga, %.val.i2523
  br i1 %i.ake, label %peek.exit.i2525, label %.thread5097

peek.exit.i2525:                                  ; preds = %bb.kr
  %i.akf = load i8, ptr %i.aga, align 1, !tbaa !67
  %i.akg = icmp eq i8 %i.akf, 61
  br i1 %i.akg, label %bb.ks, label %bb.ku

bb.ks:                                            ; preds = %peek.exit.i2525
  %i.akh = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.akh, ptr %i.d, align 8, !tbaa !76
  store i32 1, ptr %i.w, align 4, !tbaa !195
  store i32 118, ptr %i.c, align 8, !tbaa !170
  %i.aki = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2527 = icmp eq ptr %i.aki, null
  br i1 %.not.i2527, label %parser_lex_callback.exit2967, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.akj = getelementptr i8, ptr %i.aki, i64 8
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !172
  %i.akl = load ptr, ptr %i.aki, align 8, !tbaa !174
  call void %i.akk(ptr noundef %i.akl, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.ku:                                            ; preds = %peek.exit.i2525
  %.val.i2529 = load i32, ptr %i.w, align 4, !tbaa !195
  %i.akm = and i32 %.val.i2529, 904
  %.not5.i = icmp eq i32 %i.akm, 0
  %or.cond.i2530 = and i1 %.not5.i, %i.bw
  br i1 %or.cond.i2530, label %bb.kv, label %ambiguous_operator_p.exit.thread

.thread5097:                                      ; preds = %bb.kr
  %.val.i25295098 = load i32, ptr %i.w, align 4, !tbaa !195
  %i.akn = and i32 %.val.i25295098, 904
  %.not5.i5099 = icmp eq i32 %i.akn, 0
  %or.cond.i25305100 = and i1 %.not5.i5099, %i.bw
  br i1 %or.cond.i25305100, label %ambiguous_operator_p.exit, label %ambiguous_operator_p.exit.thread

bb.kv:                                            ; preds = %bb.ku
  %i.ako = load i8, ptr %i.aga, align 1, !tbaa !67
  br label %ambiguous_operator_p.exit

ambiguous_operator_p.exit:                        ; preds = %.thread5097, %bb.kv
  %.0.i.i.i = phi i8 [ %i.ako, %bb.kv ], [ 0, %.thread5097 ]
  %i.akp = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %.0.i.i.i) #27
  br i1 %i.akp, label %ambiguous_operator_p.exit.thread, label %bb.kw

bb.kw:                                            ; preds = %ambiguous_operator_p.exit
  %i.akq = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.akr = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.aks = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.akq, ptr noundef %i.akr, i32 noundef 296, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26) #27 ; 0 uses
  br label %ambiguous_operator_p.exit.thread

ambiguous_operator_p.exit.thread:                 ; preds = %.thread5097, %bb.ku, %bb.kw, %ambiguous_operator_p.exit
  %.val2178 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.akt = and i32 %.val2178, 384
  %.not3573 = icmp eq i32 %i.akt, 0
  br i1 %.not3573, label %bb.kx, label %bb.kz

bb.kx:                                            ; preds = %ambiguous_operator_p.exit.thread
  %i.aku = and i32 %.val2178, 512
  %.not3574 = icmp eq i32 %i.aku, 0
  br i1 %.not3574, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  store i8 1, ptr %i.i, align 8, !tbaa !164
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kx, %bb.ky, %ambiguous_operator_p.exit.thread
  %storemerge3575 = phi i32 [ 16, %ambiguous_operator_p.exit.thread ], [ 1, %bb.ky ], [ 1, %bb.kx ]
  store i32 %storemerge3575, ptr %i.w, align 4, !tbaa !195
  store i32 117, ptr %i.c, align 8, !tbaa !170
  %i.akv = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2533 = icmp eq ptr %i.akv, null
  br i1 %.not.i2533, label %parser_lex_callback.exit2967, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.akw = getelementptr i8, ptr %i.akv, i64 8
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !172
  %i.aky = load ptr, ptr %i.akv, align 8, !tbaa !174
  call void %i.akx(ptr noundef %i.aky, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

end_hunk_1
begin_hunk_2_@parser_lex:bb.a
  br label %pm_token_buffer_flush.exit3074

bb.akz:                                           ; preds = %bb.akx
  %i.dna = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.dnb = ptrtoint ptr %i.dna to i64
  %i.dnc = ptrtoint ptr %i.dmv to i64
  %i.dnd = sub i64 %i.dnb, %i.dnc
  call void @pm_buffer_append_bytes(ptr noundef nonnull %6, ptr noundef nonnull %i.dmv, i64 noundef %i.dnd) #27
  %i.dne = getelementptr i8, ptr %0, i64 640
  %i.dnf = call ptr @pm_buffer_value(ptr noundef nonnull %6) #27
  %i.dng = call i64 @pm_buffer_length(ptr noundef nonnull %6) #27
  call void @pm_string_owned_init(ptr noundef %i.dne, ptr noundef %i.dnf, i64 noundef %i.dng) #27
  br label %pm_token_buffer_flush.exit3074

pm_token_buffer_flush.exit3074:                   ; preds = %bb.akw, %bb.akz, %bb.aky
  store i32 %i.dmu, ptr %i.c, align 8, !tbaa !170
  %i.dnh = getelementptr i8, ptr %0, i64 544
  %i.dni = load ptr, ptr %i.dnh, align 8, !tbaa !171 ; 2 uses
  %.not.i3075 = icmp eq ptr %i.dni, null
  br i1 %.not.i3075, label %parser_lex_callback.exit3079, label %parser_lex_callback.exit3079.sink.split

parser_lex_callback.exit3076:                     ; preds = %bb.akw
  %i.dnj = load ptr, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  %i.dnk = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dnl = ptrtoint ptr %i.dnk to i64
  %i.dnm = ptrtoint ptr %i.dnj to i64
  %i.dnn = sub i64 %i.dnl, %i.dnm
  %i.dno = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.dnj, ptr noundef %i.dfs, i64 noundef %i.dnn, i1 noundef zeroext true) #27
  br label %.backedge3619

bb.ala:                                           ; preds = %.critedge2063
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 11788, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_lex) #26
  unreachable

._crit_edge:                                      ; preds = %.backedge3619, %bb.akc, %bb.aiq
  %i.dnp = load ptr, ptr %i.d, align 8, !tbaa !76 ; 3 uses
  %i.dnq = load ptr, ptr %i.dfl, align 8, !tbaa !166 ; 3 uses
  %i.dnr = icmp ugt ptr %i.dnp, %i.dnq
  br i1 %i.dnr, label %bb.alb, label %bb.ale

bb.alb:                                           ; preds = %._crit_edge
  %i.dns = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dnt = load ptr, ptr %i.dns, align 8, !tbaa !237 ; 3 uses
  %i.dnu = icmp eq ptr %i.dnt, null
  br i1 %i.dnu, label %bb.alc, label %bb.ald

bb.alc:                                           ; preds = %bb.alb
  %i.dnv = getelementptr i8, ptr %0, i64 640
  call void @pm_string_shared_init(ptr noundef %i.dnv, ptr noundef %i.dnq, ptr noundef nonnull %i.dnp) #27
  br label %pm_token_buffer_flush.exit3077

bb.ald:                                           ; preds = %bb.alb
  %i.dnw = ptrtoint ptr %i.dnp to i64
  %i.dnx = ptrtoint ptr %i.dnt to i64
  %i.dny = sub i64 %i.dnw, %i.dnx
  call void @pm_buffer_append_bytes(ptr noundef nonnull %6, ptr noundef nonnull %i.dnt, i64 noundef %i.dny) #27
  %i.dnz = getelementptr i8, ptr %0, i64 640
  %i.doa = call ptr @pm_buffer_value(ptr noundef nonnull %6) #27
  %i.dob = call i64 @pm_buffer_length(ptr noundef nonnull %6) #27
  call void @pm_string_owned_init(ptr noundef %i.dnz, ptr noundef %i.doa, i64 noundef %i.dob) #27
  br label %pm_token_buffer_flush.exit3077

pm_token_buffer_flush.exit3077:                   ; preds = %bb.alc, %bb.ald
  store i32 148, ptr %i.c, align 8, !tbaa !170
  %i.doc = getelementptr i8, ptr %0, i64 544
  %i.dod = load ptr, ptr %i.doc, align 8, !tbaa !171 ; 2 uses
  %.not.i3078 = icmp eq ptr %i.dod, null
  br i1 %.not.i3078, label %parser_lex_callback.exit3079, label %parser_lex_callback.exit3079.sink.split

bb.ale:                                           ; preds = %._crit_edge
  %i.doe = load ptr, ptr %i.f, align 8, !tbaa !78 ; 3 uses
  store ptr %i.doe, ptr %i.d, align 8, !tbaa !76
  %i.dof = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dog = load ptr, ptr %i.dof, align 8, !tbaa !237 ; 3 uses
  %i.doh = icmp eq ptr %i.dog, null
  br i1 %i.doh, label %bb.alf, label %bb.alg

bb.alf:                                           ; preds = %bb.ale
  %i.doi = getelementptr i8, ptr %0, i64 640
  call void @pm_string_shared_init(ptr noundef %i.doi, ptr noundef %i.dnq, ptr noundef %i.doe) #27
  br label %pm_token_buffer_flush.exit3080

bb.alg:                                           ; preds = %bb.ale
  %i.doj = ptrtoint ptr %i.doe to i64
  %i.dok = ptrtoint ptr %i.dog to i64
  %i.dol = sub i64 %i.doj, %i.dok
  call void @pm_buffer_append_bytes(ptr noundef nonnull %6, ptr noundef nonnull %i.dog, i64 noundef %i.dol) #27
  %i.dom = getelementptr i8, ptr %0, i64 640
  %i.don = call ptr @pm_buffer_value(ptr noundef nonnull %6) #27
  %i.doo = call i64 @pm_buffer_length(ptr noundef nonnull %6) #27
  call void @pm_string_owned_init(ptr noundef %i.dom, ptr noundef %i.don, i64 noundef %i.doo) #27
  br label %pm_token_buffer_flush.exit3080

pm_token_buffer_flush.exit3080:                   ; preds = %bb.alf, %bb.alg
  store i32 148, ptr %i.c, align 8, !tbaa !170
  %i.dop = getelementptr i8, ptr %0, i64 544
  %i.doq = load ptr, ptr %i.dop, align 8, !tbaa !171 ; 2 uses
  %.not.i3081 = icmp eq ptr %i.doq, null
  br i1 %.not.i3081, label %parser_lex_callback.exit3079, label %parser_lex_callback.exit3079.sink.split

parser_lex_callback.exit3079.sink.split:          ; preds = %pm_token_buffer_flush.exit3080, %pm_token_buffer_flush.exit3077, %pm_token_buffer_flush.exit3074, %bb.ako, %pm_token_buffer_flush.exit3060, %lex_mode_pop.exit3050, %peek_offset.exit3045.thread, %pm_token_buffer_flush.exit
  %.sink5577 = phi ptr [ %i.dlz, %bb.ako ], [ %i.dkz, %pm_token_buffer_flush.exit3060 ], [ %i.dhr, %pm_token_buffer_flush.exit ], [ %i.dni, %pm_token_buffer_flush.exit3074 ], [ %i.dio, %peek_offset.exit3045.thread ], [ %i.djf, %lex_mode_pop.exit3050 ], [ %i.dod, %pm_token_buffer_flush.exit3077 ], [ %i.doq, %pm_token_buffer_flush.exit3080 ] ; 2 uses
  %i.dor = getelementptr i8, ptr %.sink5577, i64 8
  %i.dos = load ptr, ptr %i.dor, align 8, !tbaa !172
  %i.dot = load ptr, ptr %.sink5577, align 8, !tbaa !174
  call void %i.dos(ptr noundef %i.dot, ptr noundef nonnull %0, ptr noundef %i.c) #27
  br label %parser_lex_callback.exit3079

parser_lex_callback.exit3079:                     ; preds = %parser_lex_callback.exit3079.sink.split, %pm_token_buffer_flush.exit3074, %bb.ako, %pm_token_buffer_flush.exit3060, %lex_mode_pop.exit3050, %peek_offset.exit3045.thread, %pm_token_buffer_flush.exit, %pm_token_buffer_flush.exit3080, %pm_token_buffer_flush.exit3077
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %parser_lex_callback.exit2967

bb.alh:                                           ; preds = %bb.c
  %i.dou = getelementptr i8, ptr %0, i64 368      ; 4 uses
  %i.dov = load ptr, ptr %i.dou, align 8, !tbaa !167 ; 3 uses
  %i.dow = icmp eq ptr %i.dov, null
  br i1 %i.dow, label %bb.alj, label %bb.ali

bb.ali:                                           ; preds = %bb.alh
  store ptr %i.dov, ptr %i.d, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dou, i8 0, i64 16, i1 false)
  br label %bb.alj

bb.alj:                                           ; preds = %bb.alh, %bb.ali
  %.sink4530 = phi ptr [ %i.dov, %bb.ali ], [ %i.e, %bb.alh ]
  %i.dox = getelementptr i8, ptr %0, i64 352      ; 6 uses
  store ptr %.sink4530, ptr %i.dox, align 8, !tbaa !166
  %i.doy = getelementptr i8, ptr %i.p, i64 8
  %i.doz = getelementptr i8, ptr %i.p, i64 48     ; 3 uses
  %i.dpa = load i8, ptr %i.doz, align 8, !tbaa !67, !range !45, !noundef !46
  %i.dpb = trunc nuw i8 %i.dpa to i1
  store i8 0, ptr %i.doz, align 8, !tbaa !67
  %i.dpc = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.dpd = load ptr, ptr %i.f, align 8, !tbaa !78 ; 3 uses
  %.not1963 = icmp ult ptr %i.dpc, %i.dpd
  %i.dpe = load ptr, ptr %i.doy, align 8, !tbaa !243 ; 5 uses
  %i.dpf = getelementptr i8, ptr %i.p, i64 16
  %i.dpg = load i64, ptr %i.dpf, align 8, !tbaa !245 ; 9 uses
  br i1 %.not1963, label %bb.alq, label %bb.alk

bb.alk:                                           ; preds = %bb.alj
  %i.dph = getelementptr i8, ptr %0, i64 472
  %i.dpi = getelementptr i8, ptr %i.dpe, i64 %i.dpg
  %i.dpj = trunc i64 %i.dpg to i32
  %i.dpk = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.dph, ptr noundef %i.dpe, ptr noundef %i.dpi, i32 noundef 138, i32 noundef %i.dpj, ptr noundef %i.dpe) #27 ; 0 uses
  %i.dpl = getelementptr i8, ptr %i.p, i64 32
  %i.dpm = load ptr, ptr %i.dpl, align 8, !tbaa !67
  store ptr %i.dpm, ptr %i.dou, align 8, !tbaa !167
  %i.dpn = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.dpo = getelementptr i8, ptr %0, i64 376
  store ptr %i.dpn, ptr %i.dpo, align 8, !tbaa !168
  %i.dpp = getelementptr i8, ptr %0, i64 4
  store i32 2, ptr %i.dpp, align 4, !tbaa !195
  %i.dpq = getelementptr i8, ptr %0, i64 296      ; 2 uses
  %i.dpr = load i64, ptr %i.dpq, align 8, !tbaa !90 ; 3 uses
  %i.dps = icmp eq i64 %i.dpr, 0
  br i1 %i.dps, label %bb.all, label %bb.alm

bb.all:                                           ; preds = %bb.alk
  %i.dpt = load ptr, ptr %i.o, align 8, !tbaa !91
  store i32 0, ptr %i.dpt, align 8, !tbaa !99
  br label %lex_mode_pop.exit3083

bb.alm:                                           ; preds = %bb.alk
  %i.dpu = icmp ult i64 %i.dpr, 4
  %i.dpv = add i64 %i.dpr, -1                     ; 2 uses
  store i64 %i.dpv, ptr %i.dpq, align 8, !tbaa !90
  br i1 %i.dpu, label %bb.aln, label %bb.alo

bb.aln:                                           ; preds = %bb.alm
  %i.dpw = getelementptr i8, ptr %0, i64 40
  %i.dpx = getelementptr [64 x i8], ptr %i.dpw, i64 %i.dpv
  store ptr %i.dpx, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_pop.exit3083

bb.alo:                                           ; preds = %bb.alm
  %i.dpy = load ptr, ptr %i.o, align 8, !tbaa !91 ; 2 uses
  %i.dpz = getelementptr i8, ptr %i.dpy, i64 56
  %i.dqa = load ptr, ptr %i.dpz, align 8, !tbaa !96
  tail call void @free(ptr noundef %i.dpy) #27
  store ptr %i.dqa, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_pop.exit3083

lex_mode_pop.exit3083:                            ; preds = %bb.all, %bb.aln, %bb.alo
  store i32 64, ptr %i.c, align 8, !tbaa !170
  %i.dqb = getelementptr i8, ptr %0, i64 544
  %i.dqc = load ptr, ptr %i.dqb, align 8, !tbaa !171 ; 3 uses
  %.not.i3084 = icmp eq ptr %i.dqc, null
  br i1 %.not.i3084, label %parser_lex_callback.exit2967, label %bb.alp

bb.alp:                                           ; preds = %lex_mode_pop.exit3083
  %i.dqd = getelementptr i8, ptr %i.dqc, i64 8
  %i.dqe = load ptr, ptr %i.dqd, align 8, !tbaa !172
  %i.dqf = load ptr, ptr %i.dqc, align 8, !tbaa !174
  tail call void %i.dqe(ptr noundef %i.dqf, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.alq:                                           ; preds = %bb.alj
  %i.dqg = getelementptr i8, ptr %0, i64 304
  %.val2236 = load ptr, ptr %i.dqg, align 8, !tbaa !74
  %.val2237 = load ptr, ptr %i.dox, align 8, !tbaa !166 ; 14 uses
  %.val22374505 = ptrtoint ptr %.val2237 to i64   ; 3 uses
  %i.dqh = icmp eq ptr %.val2237, %.val2236
  br i1 %i.dqh, label %current_token_starts_line.exit3086.thread, label %current_token_starts_line.exit3086

current_token_starts_line.exit3086:               ; preds = %bb.alq
  %i.dqi = getelementptr i8, ptr %.val2237, i64 -1
  %i.dqj = load i8, ptr %i.dqi, align 1, !tbaa !67
  %i.dqk = icmp eq i8 %i.dqj, 10
  br i1 %i.dqk, label %current_token_starts_line.exit3086.thread, label %pm_heredoc_strspn_inline_whitespace.exit.thread3491

current_token_starts_line.exit3086.thread:        ; preds = %bb.alq, %current_token_starts_line.exit3086
  %i.dql = getelementptr i8, ptr %.val2237, i64 %i.dpg
  %.not1964 = icmp ugt ptr %i.dql, %i.dpd
  %or.cond3534 = select i1 %i.dpb, i1 true, i1 %.not1964
  br i1 %or.cond3534, label %bb.amc, label %bb.alr

bb.alr:                                           ; preds = %current_token_starts_line.exit3086.thread
  %i.dqm = ptrtoint ptr %i.dpd to i64
  %i.dqn = sub i64 %i.dqm, %.val22374505
  %i.dqo = tail call fastcc ptr @next_newline(ptr noundef %.val2237, i64 noundef %i.dqn) ; 5 uses
  %i.dqp = icmp eq ptr %i.dqo, null               ; 2 uses
  br i1 %i.dqp, label %bb.als, label %bb.alt

bb.als:                                           ; preds = %bb.alr
  %i.dqq = load ptr, ptr %i.f, align 8, !tbaa !78 ; 2 uses
  br label %bb.alu

bb.alt:                                           ; preds = %bb.alr
  %i.dqr = getelementptr i8, ptr %i.dqo, i64 1
  %i.dqs = getelementptr i8, ptr %i.dqo, i64 -1   ; 2 uses
  %i.dqt = load i8, ptr %i.dqs, align 1, !tbaa !67
  %i.dqu = icmp eq i8 %i.dqt, 13
  %spec.select2066 = select i1 %i.dqu, ptr %i.dqs, ptr %i.dqo
  br label %bb.alu

bb.alu:                                           ; preds = %bb.alt, %bb.als
  %.01866 = phi ptr [ %i.dqq, %bb.als ], [ %spec.select2066, %bb.alt ] ; 2 uses
  %i.dqv = phi ptr [ %i.dqq, %bb.als ], [ %i.dqr, %bb.alt ] ; 2 uses
  %i.dqw = sub i64 0, %i.dpg
  %i.dqx = getelementptr i8, ptr %.01866, i64 %i.dqw ; 3 uses
  %i.dqy = getelementptr i8, ptr %i.p, i64 28
  %i.dqz = load i32, ptr %i.dqy, align 4, !tbaa !246
  %.off = add i32 %i.dqz, -1
  %switch = icmp ult i32 %.off, 2
  %i.dra = icmp ult ptr %.val2237, %i.dqx
  %or.cond = select i1 %switch, i1 %i.dra, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge42

.lr.ph.preheader:                                 ; preds = %bb.alu
  %.018664504 = ptrtoint ptr %.01866 to i64
  %i.drb = add i64 %i.dpg, %.val22374505
  %i.drc = sub i64 %.018664504, %i.drb
  %scevgep = getelementptr i8, ptr %.val2237, i64 %i.drc ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.alv
  %.018624093 = phi ptr [ %i.drf, %bb.alv ], [ %.val2237, %.lr.ph.preheader ] ; 3 uses
  %i.drd = load i8, ptr %.018624093, align 1, !tbaa !67
  %i.dre = tail call zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext %i.drd) #27
  br i1 %i.dre, label %bb.alv, label %.critedge42

bb.alv:                                           ; preds = %.lr.ph
  %i.drf = getelementptr i8, ptr %.018624093, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.drf, %scevgep
  br i1 %exitcond.not, label %.critedge42, label %.lr.ph, !llvm.loop !247

.critedge42:                                      ; preds = %bb.alv, %.lr.ph, %bb.alu
  %.11863 = phi ptr [ %.val2237, %bb.alu ], [ %.018624093, %.lr.ph ], [ %scevgep, %bb.alv ]
  %i.drg = icmp eq ptr %.11863, %i.dqx
  br i1 %i.drg, label %bb.alw, label %bb.amc

bb.alw:                                           ; preds = %.critedge42
  %bcmp = tail call i32 @bcmp(ptr %i.dqx, ptr %i.dpe, i64 %i.dpg)
  %i.drh = icmp eq i32 %bcmp, 0
  br i1 %i.drh, label %bb.alx, label %bb.amc

bb.alx:                                           ; preds = %bb.alw
  br i1 %i.dqp, label %bb.alz, label %bb.aly

bb.aly:                                           ; preds = %bb.alx
  %i.dri = getelementptr i8, ptr %0, i64 600
  %i.drj = tail call zeroext i1 @pm_newline_list_append(ptr noundef %i.dri, ptr noundef nonnull %i.dqo) #27 ; 0 uses
  br label %bb.alz

bb.alz:                                           ; preds = %bb.aly, %bb.alx
  store ptr %i.dqv, ptr %i.d, align 8, !tbaa !76
  %i.drk = getelementptr i8, ptr %i.p, i64 32
  %i.drl = load ptr, ptr %i.drk, align 8, !tbaa !67 ; 2 uses
  %i.drm = load i8, ptr %i.drl, align 1, !tbaa !67
  %i.drn = icmp eq i8 %i.drm, 92
  br i1 %i.drn, label %.critedge2068, label %bb.ama

bb.ama:                                           ; preds = %bb.alz
  %i.dro = getelementptr i8, ptr %0, i64 376
  store ptr %i.dqv, ptr %i.dro, align 8, !tbaa !168
  br label %.critedge2068

.critedge2068:                                    ; preds = %bb.alz, %bb.ama
  %.sink4531 = phi ptr [ %i.drl, %bb.ama ], [ null, %bb.alz ]
  store ptr %.sink4531, ptr %i.dou, align 8, !tbaa !167
  %i.drp = getelementptr i8, ptr %0, i64 4
  store i32 2, ptr %i.drp, align 4, !tbaa !195
  tail call fastcc void @lex_mode_pop(ptr noundef nonnull %0)
  store i32 64, ptr %i.c, align 8, !tbaa !170
  %i.drq = getelementptr i8, ptr %0, i64 544
  %i.drr = load ptr, ptr %i.drq, align 8, !tbaa !171 ; 3 uses
  %.not.i3087 = icmp eq ptr %i.drr, null
  br i1 %.not.i3087, label %parser_lex_callback.exit2967, label %bb.amb

bb.amb:                                           ; preds = %.critedge2068
  %i.drs = getelementptr i8, ptr %i.drr, i64 8
  %i.drt = load ptr, ptr %i.drs, align 8, !tbaa !172
  %i.dru = load ptr, ptr %i.drr, align 8, !tbaa !174
  tail call void %i.drt(ptr noundef %i.dru, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.amc:                                           ; preds = %bb.alw, %.critedge42, %current_token_starts_line.exit3086.thread
  %i.drv = getelementptr i8, ptr %i.p, i64 28     ; 2 uses
  %i.drw = load i32, ptr %i.drv, align 4, !tbaa !246
  switch i32 %i.drw, label %pm_heredoc_strspn_inline_whitespace.exit.thread3491 [
    i32 2, label %.preheader.i3090
    i32 1, label %bb.amd
  ]

.preheader.i3090:                                 ; preds = %bb.amc
  %i.drx = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dry = icmp ult ptr %.val2237, %i.drx
  br i1 %i.dry, label %.lr.ph.i3091, label %pm_heredoc_strspn_inline_whitespace.exit.thread

bb.amd:                                           ; preds = %bb.amc
  %i.drz = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dsa = ptrtoint ptr %i.drz to i64
  %i.dsb = sub i64 %i.dsa, %.val22374505
  %i.dsc = tail call i64 @pm_strspn_inline_whitespace(ptr noundef %.val2237, i64 noundef %i.dsb) #27
  %i.dsd = getelementptr i8, ptr %.val2237, i64 %i.dsc
  br label %pm_heredoc_strspn_inline_whitespace.exit

.lr.ph.i3091:                                     ; preds = %.preheader.i3090, %bb.ame
  %.03298 = phi ptr [ %i.dsl, %bb.ame ], [ %.val2237, %.preheader.i3090 ] ; 4 uses
  %.013.i = phi i64 [ %.1.i3092, %bb.ame ], [ 0, %.preheader.i3090 ] ; 3 uses
  %i.dse = load i8, ptr %.03298, align 1, !tbaa !67
  %i.dsf = tail call zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext %i.dse) #27
  br i1 %i.dsf, label %bb.ame, label %pm_heredoc_strspn_inline_whitespace.exit

bb.ame:                                           ; preds = %.lr.ph.i3091
  %i.dsg = load i8, ptr %.03298, align 1, !tbaa !67
  %i.dsh = icmp eq i8 %i.dsg, 9
  %i.dsi = and i64 %.013.i, -8
  %i.dsj = add i64 %i.dsi, 8
  %i.dsk = add i64 %.013.i, 1
  %.1.i3092 = select i1 %i.dsh, i64 %i.dsj, i64 %i.dsk ; 2 uses
  %i.dsl = getelementptr i8, ptr %.03298, i64 1   ; 3 uses
  %i.dsm = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dsn = icmp ult ptr %i.dsl, %i.dsm
  br i1 %i.dsn, label %.lr.ph.i3091, label %pm_heredoc_strspn_inline_whitespace.exit, !llvm.loop !248

pm_heredoc_strspn_inline_whitespace.exit:         ; preds = %.lr.ph.i3091, %bb.ame, %bb.amd
  %.13299.ph = phi ptr [ %i.dsd, %bb.amd ], [ %i.dsl, %bb.ame ], [ %.03298, %.lr.ph.i3091 ]
  %.2.i.ph = phi i64 [ 0, %bb.amd ], [ %.1.i3092, %bb.ame ], [ %.013.i, %.lr.ph.i3091 ]
  %.pr3486 = load i32, ptr %i.drv, align 4, !tbaa !246
  %i.dso = icmp eq i32 %.pr3486, 2
  br i1 %i.dso, label %pm_heredoc_strspn_inline_whitespace.exit.thread, label %pm_heredoc_strspn_inline_whitespace.exit.thread3491

pm_heredoc_strspn_inline_whitespace.exit.thread:  ; preds = %.preheader.i3090, %pm_heredoc_strspn_inline_whitespace.exit
  %.2.i3490 = phi i64 [ %.2.i.ph, %pm_heredoc_strspn_inline_whitespace.exit ], [ 0, %.preheader.i3090 ] ; 2 uses
  %.132993489 = phi ptr [ %.13299.ph, %pm_heredoc_strspn_inline_whitespace.exit ], [ %.val2237, %.preheader.i3090 ] ; 2 uses
  %i.dsp = getelementptr i8, ptr %i.p, i64 40
  %i.dsq = load ptr, ptr %i.dsp, align 8, !tbaa !67 ; 3 uses
  %.not1966 = icmp eq ptr %i.dsq, null
  br i1 %.not1966, label %pm_heredoc_strspn_inline_whitespace.exit.thread3491, label %bb.amf

bb.amf:                                           ; preds = %pm_heredoc_strspn_inline_whitespace.exit.thread
  %i.dsr = load i64, ptr %i.dsq, align 8, !tbaa !20
  %i.dss = icmp ugt i64 %i.dsr, %.2.i3490
  br i1 %i.dss, label %bb.amg, label %pm_heredoc_strspn_inline_whitespace.exit.thread3491

bb.amg:                                           ; preds = %bb.amf
  %.val2078 = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dst = icmp ult ptr %.132993489, %.val2078
  br i1 %i.dst, label %peek_at.exit3094, label %peek_at.exit3094.thread

peek_at.exit3094:                                 ; preds = %bb.amg
  %i.dsu = load i8, ptr %.132993489, align 1, !tbaa !67
  %.not1967 = icmp eq i8 %i.dsu, 10
  br i1 %.not1967, label %pm_heredoc_strspn_inline_whitespace.exit.thread3491, label %peek_at.exit3094.thread

peek_at.exit3094.thread:                          ; preds = %bb.amg, %peek_at.exit3094
  store i64 %.2.i3490, ptr %i.dsq, align 8, !tbaa !20
  br label %pm_heredoc_strspn_inline_whitespace.exit.thread3491

pm_heredoc_strspn_inline_whitespace.exit.thread3491: ; preds = %bb.amc, %peek_at.exit3094.thread, %peek_at.exit3094, %bb.amf, %pm_heredoc_strspn_inline_whitespace.exit.thread, %pm_heredoc_strspn_inline_whitespace.exit, %current_token_starts_line.exit3086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @__const.parser_lex.breakpoints, i64 5, i1 false)
  %i.dsv = getelementptr i8, ptr %i.p, i64 24
  %i.dsw = load i32, ptr %i.dsv, align 8, !tbaa !249
  %i.dsx = icmp eq i32 %i.dsw, 39                 ; 2 uses
  br i1 %i.dsx, label %bb.amh, label %bb.ami

bb.amh:                                           ; preds = %pm_heredoc_strspn_inline_whitespace.exit.thread3491
  %i.dsy = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 0, ptr %i.dsy, align 1, !tbaa !67
  br label %bb.ami

bb.ami:                                           ; preds = %bb.amh, %pm_heredoc_strspn_inline_whitespace.exit.thread3491
  %i.dsz = load ptr, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  %i.dta = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dtb = ptrtoint ptr %i.dta to i64
  %i.dtc = ptrtoint ptr %i.dsz to i64
  %i.dtd = sub i64 %i.dtb, %i.dtc
  %i.dte = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.dsz, ptr noundef nonnull %i.b, i64 noundef %i.dtd, i1 noundef zeroext true) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.dtf = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  %i.dtg = getelementptr i8, ptr %i.p, i64 28     ; 4 uses
  %i.dth = getelementptr i8, ptr %0, i64 699
  %i.dti = getelementptr i8, ptr %0, i64 520
  %i.dtj = getelementptr i8, ptr %0, i64 376      ; 2 uses
  %i.dtk = getelementptr i8, ptr %0, i64 600      ; 2 uses
  %i.dtl = sub i64 0, %i.dpg                      ; 2 uses
  %.not1968.peel6004 = icmp eq ptr %i.dte, null
  br i1 %.not1968.peel6004, label %.loopexit4507, label %.lr.ph6008

.lr.ph6008:                                       ; preds = %bb.ami, %.outer.backedge
  %.01850.ph6006 = phi i1 [ %.01850.ph.be, %.outer.backedge ], [ false, %bb.ami ] ; 2 uses
  %.01852.ph6005 = phi ptr [ %.01852.ph.be, %.outer.backedge ], [ %i.dte, %bb.ami ] ; 7 uses
  %i.dtm = load i8, ptr %.01852.ph6005, align 1, !tbaa !67
  switch i8 %i.dtm, label %.loopexit4514 [
    i8 0, label %._crit_edge4537
    i8 13, label %bb.amk
    i8 10, label %.loopexit3620
    i8 92, label %bb.amj
    i8 35, label %bb.any
  ]

bb.amj:                                           ; preds = %.lr.ph6008
  %i.dtn = getelementptr i8, ptr %.01852.ph6005, i64 1 ; 3 uses
  store ptr %i.dtn, ptr %i.d, align 8, !tbaa !76
  %i.dto = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dtp = icmp eq ptr %i.dtn, %i.dto
  br i1 %i.dtp, label %.loopexit4507, label %bb.ang

._crit_edge4537:                                  ; preds = %.lr.ph6008
  %.pre4538 = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dtq = getelementptr i8, ptr %.01852.ph6005, i64 1 ; 3 uses
  store ptr %i.dtq, ptr %i.d, align 8, !tbaa !76
  %i.dtr = ptrtoint ptr %.pre4538 to i64
  %i.dts = ptrtoint ptr %i.dtq to i64
  %i.dtt = sub i64 %i.dtr, %i.dts
  %i.dtu = call ptr @pm_strpbrk(ptr noundef nonnull %0, ptr noundef %i.dtq, ptr noundef nonnull %i.b, i64 noundef %i.dtt, i1 noundef zeroext true) #27
  br label %.outer.backedge

bb.amk:                                           ; preds = %.lr.ph6008
  %.val2077.pre = load ptr, ptr %i.f, align 8, !tbaa !78 ; 2 uses
  %i.dtv = getelementptr i8, ptr %.01852.ph6005, i64 1 ; 8 uses
  store ptr %i.dtv, ptr %i.d, align 8, !tbaa !76
  %i.dtw = icmp ult ptr %i.dtv, %.val2077.pre
  br i1 %i.dtw, label %peek_at.exit3096, label %peek_at.exit3096.thread

peek_at.exit3096:                                 ; preds = %bb.amk
  %i.dtx = load i8, ptr %i.dtv, align 1, !tbaa !67
  %.not1971 = icmp eq i8 %i.dtx, 10
  br i1 %.not1971, label %bb.aml, label %peek_at.exit3096.thread

peek_at.exit3096.thread:                          ; preds = %bb.amk, %peek_at.exit3096
  %i.dty = ptrtoint ptr %.val2077.pre to i64
  %i.dtz = ptrtoint ptr %i.dtv to i64
  %i.dua = sub i64 %i.dty, %i.dtz
  %i.dub = call ptr @pm_strpbrk(ptr noundef nonnull %0, ptr noundef %i.dtv, ptr noundef nonnull %i.b, i64 noundef %i.dua, i1 noundef zeroext true) #27
  br label %.outer.backedge

bb.aml:                                           ; preds = %peek_at.exit3096
  %i.duc = load ptr, ptr %i.dtf, align 8, !tbaa !237 ; 2 uses
  %i.dud = icmp eq ptr %i.duc, null
  br i1 %i.dud, label %bb.amm, label %bb.amn

bb.amm:                                           ; preds = %bb.aml
  %i.due = call zeroext i1 @pm_buffer_init_capacity(ptr noundef nonnull %7, i64 noundef 16) #27 ; 0 uses
  %i.duf = load ptr, ptr %i.dox, align 8, !tbaa !166
  %.pre4536 = load ptr, ptr %i.d, align 8, !tbaa !76
  br label %bb.amn

bb.amn:                                           ; preds = %bb.amm, %bb.aml
  %i.dug = phi ptr [ %.pre4536, %bb.amm ], [ %i.dtv, %bb.aml ]
  %.0.i3097 = phi ptr [ %i.duf, %bb.amm ], [ %i.duc, %bb.aml ] ; 3 uses
  %i.duh = getelementptr i8, ptr %i.dug, i64 -1   ; 2 uses
  %.not.i3098 = icmp ult ptr %i.duh, %.0.i3097
  br i1 %.not.i3098, label %bb.amo, label %pm_token_buffer_escape.exit3099

bb.amo:                                           ; preds = %bb.amn
  call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2, i32 noundef 9626, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_token_buffer_escape) #26
  unreachable

pm_token_buffer_escape.exit3099:                  ; preds = %bb.amn
  %i.dui = ptrtoint ptr %i.duh to i64
  %i.duj = ptrtoint ptr %.0.i3097 to i64
  %i.duk = sub i64 %i.dui, %i.duj
  call void @pm_buffer_append_bytes(ptr noundef nonnull %7, ptr noundef %.0.i3097, i64 noundef %i.duk) #27
  store ptr %i.dtv, ptr %i.dtf, align 8, !tbaa !237
  br label %.loopexit3620

.loopexit3620:                                    ; preds = %.lr.ph6008, %pm_token_buffer_escape.exit3099
  %.11853 = phi ptr [ %i.dtv, %pm_token_buffer_escape.exit3099 ], [ %.01852.ph6005, %.lr.ph6008 ] ; 5 uses
  %.118534517 = ptrtoint ptr %.11853 to i64
  %i.dul = load ptr, ptr %i.dtj, align 8, !tbaa !168
  %i.dum = icmp ugt ptr %i.dul, %.11853
  %i.dun = getelementptr i8, ptr %.11853, i64 1   ; 20 uses
  br i1 %i.dum, label %bb.amp, label %bb.amq

bb.amp:                                           ; preds = %.loopexit3620
  call fastcc void @parser_flush_heredoc_end(ptr noundef nonnull %0)
  store ptr %i.dun, ptr %i.d, align 8, !tbaa !76
  call fastcc void @pm_token_buffer_flush(ptr noundef nonnull %0, ptr noundef %7)
  store i32 148, ptr %i.c, align 8, !tbaa !170
  %i.duo = getelementptr i8, ptr %0, i64 544
  %i.dup = load ptr, ptr %i.duo, align 8, !tbaa !171 ; 2 uses
  %.not.i3100 = icmp eq ptr %i.dup, null
  br i1 %.not.i3100, label %parser_lex_callback.exit3101, label %parser_lex_callback.exit3101.sink.split

bb.amq:                                           ; preds = %.loopexit3620
  %i.duq = call zeroext i1 @pm_newline_list_append(ptr noundef %i.dtk, ptr noundef nonnull %.11853) #27 ; 0 uses
  br i1 %.01850.ph6006, label %bb.amy, label %bb.amr

bb.amr:                                           ; preds = %bb.amq
  %i.dur = getelementptr i8, ptr %i.dun, i64 %i.dpg
  %i.dus = load ptr, ptr %i.f, align 8, !tbaa !78 ; 3 uses
  %.not1973 = icmp ugt ptr %i.dur, %i.dus
  br i1 %.not1973, label %bb.amy, label %bb.ams

bb.ams:                                           ; preds = %bb.amr
  %i.dut = ptrtoint ptr %i.dus to i64             ; 2 uses
  %i.duu = ptrtoint ptr %i.dun to i64
  %i.duv = sub i64 %i.dut, %i.duu                 ; 2 uses
  %i.duw = icmp sgt i64 %i.duv, -1
  br i1 %i.duw, label %next_newline.exit3102, label %bb.amt

bb.amt:                                           ; preds = %bb.ams
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 7348, ptr noundef nonnull @__PRETTY_FUNCTION__.next_newline) #26
  unreachable

next_newline.exit3102:                            ; preds = %bb.ams
  %i.dux = call ptr @memchr(ptr noundef readonly %i.dun, i32 noundef 10, i64 noundef %i.duv) #29 ; 3 uses
  %i.duy = icmp eq ptr %i.dux, null
  br i1 %i.duy, label %bb.amv, label %bb.amu

bb.amu:                                           ; preds = %next_newline.exit3102
  %i.duz = getelementptr i8, ptr %i.dux, i64 -1   ; 2 uses
  %i.dva = load i8, ptr %i.duz, align 1, !tbaa !67
  %i.dvb = icmp eq i8 %i.dva, 13
  %spec.select2072 = select i1 %i.dvb, ptr %i.duz, ptr %i.dux ; 2 uses
  %.pre4620 = ptrtoint ptr %spec.select2072 to i64
  br label %bb.amv

bb.amv:                                           ; preds = %next_newline.exit3102, %bb.amu
  %.018494516.pre-phi = phi i64 [ %i.dut, %next_newline.exit3102 ], [ %.pre4620, %bb.amu ]
  %.01849 = phi ptr [ %i.dus, %next_newline.exit3102 ], [ %spec.select2072, %bb.amu ]
  %i.dvc = getelementptr i8, ptr %.01849, i64 %i.dtl ; 3 uses
  %i.dvd = load i32, ptr %i.dtg, align 4, !tbaa !246
  %.off2075 = add i32 %i.dvd, -1
  %switch2076 = icmp ult i32 %.off2075, 2
  %i.dve = icmp ult ptr %i.dun, %i.dvc
  %or.cond4149 = select i1 %switch2076, i1 %i.dve, i1 false
  br i1 %or.cond4149, label %.lr.ph4097.preheader, label %.critedge44

.lr.ph4097.preheader:                             ; preds = %bb.amv
  %scevgep4515 = getelementptr i8, ptr %.11853, i64 %i.dtl
  %i.dvf = sub i64 %.018494516.pre-phi, %.118534517
  %scevgep4518 = getelementptr i8, ptr %scevgep4515, i64 %i.dvf ; 2 uses
  br label %.lr.ph4097

.lr.ph4097:                                       ; preds = %.lr.ph4097.preheader, %bb.amw
  %.018474096 = phi ptr [ %i.dvi, %bb.amw ], [ %i.dun, %.lr.ph4097.preheader ] ; 3 uses
  %i.dvg = load i8, ptr %.018474096, align 1, !tbaa !67
  %i.dvh = call zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext %i.dvg) #27
  br i1 %i.dvh, label %bb.amw, label %.critedge44

bb.amw:                                           ; preds = %.lr.ph4097
  %i.dvi = getelementptr i8, ptr %.018474096, i64 1 ; 2 uses
  %exitcond4519.not = icmp eq ptr %i.dvi, %scevgep4518
  br i1 %exitcond4519.not, label %.critedge44, label %.lr.ph4097, !llvm.loop !250

.critedge44:                                      ; preds = %bb.amw, %.lr.ph4097, %bb.amv
  %.11848 = phi ptr [ %i.dun, %bb.amv ], [ %.018474096, %.lr.ph4097 ], [ %scevgep4518, %bb.amw ]
  %i.dvj = icmp eq ptr %.11848, %i.dvc
  br i1 %i.dvj, label %bb.amx, label %bb.amy

bb.amx:                                           ; preds = %.critedge44
  %bcmp1974 = call i32 @bcmp(ptr %i.dvc, ptr %i.dpe, i64 %i.dpg)
  %i.dvk = icmp eq i32 %bcmp1974, 0
  br i1 %i.dvk, label %.critedge2074, label %bb.amy

.critedge2074:                                    ; preds = %bb.amx
  store ptr %i.dun, ptr %i.d, align 8, !tbaa !76
  call fastcc void @pm_token_buffer_flush(ptr noundef %0, ptr noundef %7)
  store i32 148, ptr %i.c, align 8, !tbaa !170
  %i.dvl = getelementptr i8, ptr %0, i64 544
  %i.dvm = load ptr, ptr %i.dvl, align 8, !tbaa !171 ; 2 uses
  %.not.i3103 = icmp eq ptr %i.dvm, null
  br i1 %.not.i3103, label %parser_lex_callback.exit3101, label %parser_lex_callback.exit3101.sink.split

bb.amy:                                           ; preds = %bb.amx, %.critedge44, %bb.amr, %bb.amq
  %i.dvn = load i32, ptr %i.dtg, align 4, !tbaa !67
  switch i32 %i.dvn, label %parser_lex_callback.exit3104 [
    i32 2, label %.preheader.i3107
    i32 1, label %bb.amz
  ]

.preheader.i3107:                                 ; preds = %bb.amy
  %i.dvo = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dvp = icmp ult ptr %i.dun, %i.dvo
  br i1 %i.dvp, label %.lr.ph.i3108, label %pm_heredoc_strspn_inline_whitespace.exit3111.thread3501

bb.amz:                                           ; preds = %bb.amy
  %i.dvq = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dvr = ptrtoint ptr %i.dvq to i64
  %i.dvs = ptrtoint ptr %i.dun to i64
  %i.dvt = sub i64 %i.dvr, %i.dvs
  %i.dvu = call i64 @pm_strspn_inline_whitespace(ptr noundef %i.dun, i64 noundef %i.dvt) #27
  %i.dvv = getelementptr i8, ptr %i.dun, i64 %i.dvu
  br label %pm_heredoc_strspn_inline_whitespace.exit3111

.lr.ph.i3108:                                     ; preds = %.preheader.i3107, %bb.ana
  %.03296 = phi ptr [ %i.dwd, %bb.ana ], [ %i.dun, %.preheader.i3107 ] ; 4 uses
  %.013.i3109 = phi i64 [ %.1.i3110, %bb.ana ], [ 0, %.preheader.i3107 ] ; 3 uses
  %i.dvw = load i8, ptr %.03296, align 1, !tbaa !67
  %i.dvx = call zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext %i.dvw) #27
  br i1 %i.dvx, label %bb.ana, label %pm_heredoc_strspn_inline_whitespace.exit3111

bb.ana:                                           ; preds = %.lr.ph.i3108
  %i.dvy = load i8, ptr %.03296, align 1, !tbaa !67
  %i.dvz = icmp eq i8 %i.dvy, 9
  %i.dwa = and i64 %.013.i3109, -8
  %i.dwb = add i64 %i.dwa, 8
  %i.dwc = add i64 %.013.i3109, 1
  %.1.i3110 = select i1 %i.dvz, i64 %i.dwb, i64 %i.dwc ; 2 uses
  %i.dwd = getelementptr i8, ptr %.03296, i64 1   ; 3 uses
  %i.dwe = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dwf = icmp ult ptr %i.dwd, %i.dwe
  br i1 %i.dwf, label %.lr.ph.i3108, label %pm_heredoc_strspn_inline_whitespace.exit3111, !llvm.loop !248

pm_heredoc_strspn_inline_whitespace.exit3111:     ; preds = %.lr.ph.i3108, %bb.ana, %bb.amz
  %.13297.ph = phi ptr [ %i.dvv, %bb.amz ], [ %i.dwd, %bb.ana ], [ %.03296, %.lr.ph.i3108 ]
  %.2.i3106.ph = phi i64 [ 0, %bb.amz ], [ %.1.i3110, %bb.ana ], [ %.013.i3109, %.lr.ph.i3108 ]
  %.pr3498 = load i32, ptr %i.dtg, align 4, !tbaa !67
  %.not3537 = icmp eq i32 %.pr3498, 2
  br i1 %.not3537, label %pm_heredoc_strspn_inline_whitespace.exit3111.thread3501, label %parser_lex_callback.exit3104

pm_heredoc_strspn_inline_whitespace.exit3111.thread3501: ; preds = %.preheader.i3107, %pm_heredoc_strspn_inline_whitespace.exit3111
  %.2.i31063505 = phi i64 [ %.2.i3106.ph, %pm_heredoc_strspn_inline_whitespace.exit3111 ], [ 0, %.preheader.i3107 ] ; 2 uses
  %.132973504 = phi ptr [ %.13297.ph, %pm_heredoc_strspn_inline_whitespace.exit3111 ], [ %i.dun, %.preheader.i3107 ] ; 2 uses
  %i.dwg = getelementptr i8, ptr %i.p, i64 40
  %i.dwh = load ptr, ptr %i.dwg, align 8, !tbaa !67 ; 3 uses
  %.not1975 = icmp eq ptr %i.dwh, null
  br i1 %.not1975, label %bb.and, label %bb.anb

bb.anb:                                           ; preds = %pm_heredoc_strspn_inline_whitespace.exit3111.thread3501
  %i.dwi = load i64, ptr %i.dwh, align 8, !tbaa !20
  %i.dwj = icmp ugt i64 %i.dwi, %.2.i31063505
  br i1 %i.dwj, label %bb.anc, label %bb.and

bb.anc:                                           ; preds = %bb.anb
  %.val = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dwk = icmp ult ptr %.132973504, %.val
  br i1 %i.dwk, label %peek_at.exit3113, label %peek_at.exit3113.thread

peek_at.exit3113:                                 ; preds = %bb.anc
  %i.dwl = load i8, ptr %.132973504, align 1, !tbaa !67
  %.not1976 = icmp eq i8 %i.dwl, 10
  br i1 %.not1976, label %bb.and, label %peek_at.exit3113.thread

peek_at.exit3113.thread:                          ; preds = %bb.anc, %peek_at.exit3113
  store i64 %.2.i31063505, ptr %i.dwh, align 8, !tbaa !20
  br label %bb.and

bb.and:                                           ; preds = %peek_at.exit3113.thread, %peek_at.exit3113, %bb.anb, %pm_heredoc_strspn_inline_whitespace.exit3111.thread3501
  store ptr %i.dun, ptr %i.d, align 8, !tbaa !76
  %i.dwm = load ptr, ptr %i.dtf, align 8, !tbaa !237 ; 3 uses
  %i.dwn = icmp eq ptr %i.dwm, null
  br i1 %i.dwn, label %bb.ane, label %bb.anf

bb.ane:                                           ; preds = %bb.and
  %i.dwo = getelementptr i8, ptr %0, i64 640
  %i.dwp = load ptr, ptr %i.dox, align 8, !tbaa !166
  call void @pm_string_shared_init(ptr noundef %i.dwo, ptr noundef %i.dwp, ptr noundef %i.dun) #27
  br label %pm_token_buffer_flush.exit3114

bb.anf:                                           ; preds = %bb.and
  %i.dwq = ptrtoint ptr %i.dun to i64
  %i.dwr = ptrtoint ptr %i.dwm to i64
  %i.dws = sub i64 %i.dwq, %i.dwr
  call void @pm_buffer_append_bytes(ptr noundef nonnull %7, ptr noundef nonnull %i.dwm, i64 noundef %i.dws) #27
  %i.dwt = getelementptr i8, ptr %0, i64 640
  %i.dwu = call ptr @pm_buffer_value(ptr noundef nonnull %7) #27
  %i.dwv = call i64 @pm_buffer_length(ptr noundef nonnull %7) #27
  call void @pm_string_owned_init(ptr noundef %i.dwt, ptr noundef %i.dwu, i64 noundef %i.dwv) #27
  br label %pm_token_buffer_flush.exit3114

pm_token_buffer_flush.exit3114:                   ; preds = %bb.ane, %bb.anf
  store i32 148, ptr %i.c, align 8, !tbaa !170
  %i.dww = getelementptr i8, ptr %0, i64 544
  %i.dwx = load ptr, ptr %i.dww, align 8, !tbaa !171 ; 2 uses
  %.not.i3115 = icmp eq ptr %i.dwx, null
  br i1 %.not.i3115, label %parser_lex_callback.exit3101, label %parser_lex_callback.exit3101.sink.split

parser_lex_callback.exit3104:                     ; preds = %bb.amy, %pm_heredoc_strspn_inline_whitespace.exit3111
  store ptr %i.dun, ptr %i.d, align 8, !tbaa !76
  %i.dwy = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.dwz = ptrtoint ptr %i.dwy to i64
  %i.dxa = ptrtoint ptr %i.dun to i64
  %i.dxb = sub i64 %i.dwz, %i.dxa
  %i.dxc = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.dun, ptr noundef nonnull %i.b, i64 noundef %i.dxb, i1 noundef zeroext true) #27
  br label %.outer.backedge

bb.ang:                                           ; preds = %bb.amj
  %i.dxd = load ptr, ptr %i.dtf, align 8, !tbaa !237 ; 2 uses
  %i.dxe = icmp eq ptr %i.dxd, null
  br i1 %i.dxe, label %bb.anh, label %bb.ani

bb.anh:                                           ; preds = %bb.ang
  %i.dxf = call zeroext i1 @pm_buffer_init_capacity(ptr noundef nonnull %7, i64 noundef 16) #27 ; 0 uses
  %i.dxg = load ptr, ptr %i.dox, align 8, !tbaa !166
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !76
  br label %bb.ani

bb.ani:                                           ; preds = %bb.anh, %bb.ang
  %i.dxh = phi ptr [ %.pre, %bb.anh ], [ %i.dtn, %bb.ang ]
  %.0.i3117 = phi ptr [ %i.dxg, %bb.anh ], [ %i.dxd, %bb.ang ] ; 3 uses
  %i.dxi = getelementptr i8, ptr %i.dxh, i64 -1   ; 3 uses
  %.not.i3118 = icmp ult ptr %i.dxi, %.0.i3117
  br i1 %.not.i3118, label %bb.anj, label %pm_token_buffer_escape.exit3119

bb.anj:                                           ; preds = %bb.ani
  call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2, i32 noundef 9626, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_token_buffer_escape) #26
  unreachable

pm_token_buffer_escape.exit3119:                  ; preds = %bb.ani
  %i.dxj = ptrtoint ptr %i.dxi to i64
  %i.dxk = ptrtoint ptr %.0.i3117 to i64
  %i.dxl = sub i64 %i.dxj, %i.dxk
  call void @pm_buffer_append_bytes(ptr noundef nonnull %7, ptr noundef %.0.i3117, i64 noundef %i.dxl) #27
  store ptr %i.dxi, ptr %i.dtf, align 8, !tbaa !237
  %.val2188 = load ptr, ptr %i.f, align 8, !tbaa !78 ; 3 uses
  %.val2189 = load ptr, ptr %i.d, align 8, !tbaa !76 ; 5 uses
  %i.dxm = icmp ult ptr %.val2189, %.val2188
  br i1 %i.dxm, label %bb.ank, label %peek.exit3122

bb.ank:                                           ; preds = %pm_token_buffer_escape.exit3119
  %i.dxn = load i8, ptr %.val2189, align 1, !tbaa !67
  br label %peek.exit3122

peek.exit3122:                                    ; preds = %pm_token_buffer_escape.exit3119, %bb.ank
  %.0.i.i3121 = phi i8 [ %i.dxn, %bb.ank ], [ 0, %pm_token_buffer_escape.exit3119 ] ; 2 uses
  br i1 %i.dsx, label %bb.anl, label %bb.anr

bb.anl:                                           ; preds = %peek.exit3122
  switch i8 %.0.i.i3121, label %bb.ano [
    i8 13, label %bb.anm
    i8 10, label %bb.ann
  ]

bb.anm:                                           ; preds = %bb.anl
  %i.dxo = getelementptr i8, ptr %.val2189, i64 1 ; 3 uses
  store ptr %i.dxo, ptr %i.d, align 8, !tbaa !76
  %i.dxp = icmp ult ptr %i.dxo, %.val2188
  br i1 %i.dxp, label %peek.exit3125, label %peek.exit3125.thread

peek.exit3125:                                    ; preds = %bb.anm
end_hunk_2
begin_hunk_3_@pm_locals_order:bb.a
  tail call void @pm_constant_id_list_insert(ptr noundef nonnull %2, i64 noundef %i.ba, i32 noundef %i.ax) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !268
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_block_exits(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 680        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !138
  %.not16 = icmp eq i64 %i.c, 0
  br i1 %.not16, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 472
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.e = phi ptr [ %i.b, %.lr.ph ], [ %i.q, %bb.g ]
  %.01114 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.g ] ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %.01114
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b, %bb.g, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !100
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %i.i, align 8, !tbaa !115
  switch i16 %i.j, label %bb.f [
    i16 17, label %bb.g
    i16 107, label %bb.d
    i16 124, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 15115, ptr noundef nonnull @__PRETTY_FUNCTION__.flush_block_exits) #26
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.0 = phi ptr [ @.str.74, %bb.e ], [ @.str.73, %bb.d ], [ @.str.80, %bb.c ]
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.m = getelementptr i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.o = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.d, ptr noundef %i.l, ptr noundef %i.n, i32 noundef 145, ptr noundef nonnull %.0) #27 ; 0 uses
  %i.p = add nuw i64 %.01114, 1                   ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %.critedge, !llvm.loop !140
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_statements_node_create(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  store i16 140, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

declare zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext) local_unnamed_addr #5

declare void @pm_list_append(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_lex_magic_comment_encoding(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.c = getelementptr i8, ptr %i.b, i64 1        ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 360
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp slt i64 %i.h, 7
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.052 = phi ptr [ %.0.be, %.backedge ], [ %i.c, %bb.a ] ; 8 uses
  %i.j = getelementptr i8, ptr %.052, i64 6       ; 6 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !67    ; 2 uses
  switch i8 %i.k, label %bb.g [
    i8 67, label %.backedge
    i8 99, label %.backedge
    i8 79, label %bb.b
    i8 111, label %bb.b
    i8 68, label %bb.c
    i8 100, label %bb.c
    i8 73, label %bb.d
    i8 105, label %bb.d
    i8 78, label %bb.e
    i8 110, label %bb.e
    i8 71, label %bb.f
    i8 103, label %bb.f
    i8 61, label %bb.h
    i8 58, label %bb.h
  ]

.backedge:                                        ; preds = %.lr.ph, %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.be = phi ptr [ %i.s, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.o, %bb.b ], [ %i.p, %bb.c ], [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.j, %.lr.ph ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.l = ptrtoint ptr %.0.be to i64
  %i.m = sub i64 %i.f, %i.l
  %i.n = icmp slt i64 %i.m, 7
  br i1 %i.n, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.o = getelementptr i8, ptr %.052, i64 5
  br label %.backedge

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.p = getelementptr i8, ptr %.052, i64 4
  br label %.backedge

bb.d:                                             ; preds = %.lr.ph, %.lr.ph
  %i.q = getelementptr i8, ptr %.052, i64 3
  br label %.backedge

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %i.r = getelementptr i8, ptr %.052, i64 2
  br label %.backedge

bb.f:                                             ; preds = %.lr.ph, %.lr.ph
  %i.s = getelementptr i8, ptr %.052, i64 1
  br label %.backedge

bb.g:                                             ; preds = %.lr.ph
  %i.t = tail call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.k) #27
  br i1 %i.t, label %bb.h, label %.backedge

bb.h:                                             ; preds = %.lr.ph, %.lr.ph, %bb.g
  %.135 = phi i1 [ false, %bb.g ], [ true, %.lr.ph ], [ true, %.lr.ph ]
  %i.u = tail call i32 @pm_strncasecmp(ptr noundef nonnull %.052, ptr noundef nonnull @.str.44, i64 noundef 6) #27
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.preheader46.preheader, label %.backedge

.preheader46.preheader:                           ; preds = %bb.h
  %i.w = getelementptr i8, ptr %.052, i64 7       ; 2 uses
  %.not8083 = icmp ult ptr %i.w, %i.e
  br i1 %.not8083, label %.lr.ph82, label %.loopexit

.lr.ph82:                                         ; preds = %.preheader46.preheader, %.preheader46
  %i.x = phi ptr [ %i.ag, %.preheader46 ], [ %i.w, %.preheader46.preheader ]
  %.285 = phi ptr [ %i.af, %.preheader46 ], [ %i.j, %.preheader46.preheader ] ; 3 uses
  %.23684 = phi i1 [ true, %.preheader46 ], [ %.135, %.preheader46.preheader ]
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %i.z, i64 1        ; 2 uses
  %.not = icmp ult ptr %i.y, %i.e
  br i1 %.not, label %bb.j, label %.loopexit, !llvm.loop !269

bb.j:                                             ; preds = %.lr.ph82, %bb.i
  %i.z = phi ptr [ %i.x, %.lr.ph82 ], [ %i.y, %bb.i ] ; 7 uses
  %.381 = phi ptr [ %.285, %.lr.ph82 ], [ %i.z, %bb.i ] ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !67
  %i.ab = tail call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.aa) #27
  br i1 %i.ab, label %bb.i, label %bb.k, !llvm.loop !269

bb.k:                                             ; preds = %bb.j
  br i1 %.23684, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.2.lcssa5961 = ptrtoint ptr %.285 to i64
  %i.ac = getelementptr i8, ptr %0, i64 520
  %scevgep = getelementptr i8, ptr %.285, i64 %i.f
  %i.ad = sub i64 0, %.2.lcssa5961
  %scevgep62 = getelementptr i8, ptr %scevgep, i64 %i.ad ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !67
  switch i8 %i.ae, label %.loopexit [
    i8 61, label %.preheader46
    i8 58, label %.preheader46
  ]

.preheader46:                                     ; preds = %bb.l, %bb.l
  %i.af = getelementptr i8, ptr %.381, i64 2
  %i.ag = getelementptr i8, ptr %.381, i64 3      ; 2 uses
  %.not80 = icmp ult ptr %i.ag, %i.e
  br i1 %.not80, label %.lr.ph82, label %.loopexit

bb.m:                                             ; preds = %.preheader, %bb.o
  %.4 = phi ptr [ %i.am, %bb.o ], [ %i.z, %.preheader ] ; 4 uses
  %i.ah = load i8, ptr %.4, align 1, !tbaa !67
  switch i8 %i.ah, label %bb.n [
    i8 45, label %bb.o
    i8 95, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !153
  %i.al = tail call i64 %i.ak(ptr noundef nonnull %.4, i64 noundef 1) #27
  %.not45 = icmp eq i64 %i.al, 0
  br i1 %.not45, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.n
  %i.am = getelementptr i8, ptr %.4, i64 1        ; 2 uses
  %exitcond.not = icmp eq ptr %i.am, %scevgep62
  br i1 %exitcond.not, label %.critedge, label %bb.m, !llvm.loop !270

.critedge:                                        ; preds = %bb.n, %bb.o
  %.5 = phi ptr [ %scevgep62, %bb.o ], [ %.4, %bb.n ] ; 2 uses
  %i.an = tail call fastcc zeroext i1 @parser_lex_magic_comment_encoding_value(ptr noundef %0, ptr noundef nonnull %i.z, ptr noundef %.5)
  br i1 %i.an, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ao = getelementptr i8, ptr %0, i64 472
  %i.ap = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ao, ptr noundef nonnull %i.z, ptr noundef %.5, i32 noundef 148) #27 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.l, %.preheader46, %bb.i, %.preheader46.preheader, %bb.a, %.critedge, %bb.p
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @parser_flush_heredoc_end(ptr nofree noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 376        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %.not = icmp ugt ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, i32 noundef 9428, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_flush_heredoc_end) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 368
  store ptr %i.b, ptr %i.e, align 8, !tbaa !167
  store ptr null, ptr %i.a, align 8, !tbaa !168
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @char_is_identifier(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i64 %2, 1
  br i1 %i.a, label %char_is_identifier_utf8.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 699
  %i.c = load i8, ptr %i.b, align 1, !tbaa !43, !range !45, !noundef !46
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.i = tail call i64 %i.h(ptr noundef %1, i64 noundef %2) #27 ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %char_is_identifier_utf8.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !67      ; 2 uses
  %i.k = icmp eq i8 %i.j, 95
  br i1 %i.k, label %char_is_identifier_utf8.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i8 %i.j, 0
  br i1 %i.l, label %bb.f, label %char_is_identifier_utf8.exit

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151
  %i.o = tail call i64 %i.n(ptr noundef nonnull %1, i64 noundef %2) #27
  br label %char_is_identifier_utf8.exit

bb.g:                                             ; preds = %bb.b
  %i.p = load i8, ptr %1, align 1, !tbaa !67      ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = icmp eq i8 %i.p, 95
  br i1 %i.r, label %char_is_identifier_utf8.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = zext nneg i8 %i.p to i64
  %i.t = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !67
  %i.v = lshr i8 %i.u, 1
  %.lobit.i = and i8 %i.v, 1
  %i.w = zext nneg i8 %.lobit.i to i64
  br label %char_is_identifier_utf8.exit

bb.j:                                             ; preds = %bb.g
  %i.x = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %1, i64 noundef %2) #27
  br label %char_is_identifier_utf8.exit

char_is_identifier_utf8.exit:                     ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.c, %bb.d, %bb.e, %bb.a
  %.1 = phi i64 [ 0, %bb.e ], [ 0, %bb.a ], [ 1, %bb.d ], [ %i.i, %bb.c ], [ %i.o, %bb.f ], [ %i.x, %bb.j ], [ %i.w, %bb.i ], [ 1, %bb.h ]
  ret i64 %.1
}

declare zeroext i1 @pm_diagnostic_list_append_format(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #5

declare ptr @pm_token_type_human(i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc zeroext i1 @lex_state_spcarg_p(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !195
  %i.f = and i32 %.val, 48
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = and i1 %1, %i.g
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.b, align 1, !tbaa !67
  %i.i = tail call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.h) #27
  %i.j = xor i1 %i.i, true
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.j, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc zeroext i1 @ambiguous_operator_p(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !195
  %i.b = and i32 %.val, 904
  %.not5 = icmp eq i32 %i.b, 0
  %or.cond = and i1 %1, %.not5
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 312
  %.val3 = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr i8, ptr %0, i64 360
  %.val4 = load ptr, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  %i.e = icmp ult ptr %.val4, %.val3
  br i1 %i.e, label %bb.c, label %peek.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.val4, align 1, !tbaa !67
  br label %peek.exit

peek.exit:                                        ; preds = %bb.b, %bb.c
  %.0.i.i = phi i8 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.g = tail call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %.0.i.i) #27
  %i.h = xor i1 %i.g, true
  br label %bb.d

bb.d:                                             ; preds = %peek.exit, %bb.a
end_hunk_3
begin_hunk_4_@pm_float_node_create:bb.a
vec.epilog.middle.block:                          ; preds = %pred.store.continue96
  %cmp.n98 = icmp eq i64 %i.p, %n.vec78
  br i1 %cmp.n98, label %.loopexit.i.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05667.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec78, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.g
  %.05667.i = phi i64 [ %i.et, %bb.g ], [ %.05667.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.eq = getelementptr i8, ptr %i.s, i64 %.05667.i ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !67
  %i.es = icmp eq i8 %i.er, 46
  br i1 %i.es, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.i
  store i8 %i.v, ptr %i.eq, align 1, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.i
  %i.et = add nuw nsw i64 %.05667.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.et, %i.p
  br i1 %exitcond.not.i, label %.loopexit.i.preheader, label %.preheader.i, !llvm.loop !455

bb.h:                                             ; preds = %bb.j
  %i.eu = getelementptr i8, ptr %i.s, i64 %.159.i ; 2 uses
  store i8 0, ptr %i.eu, align 1, !tbaa !67
  %i.ev = tail call ptr @__errno_location() #31   ; 2 uses
  store i32 0, ptr %i.ev, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ew = call double @strtod(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a) #27 ; 3 uses
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !14
  %.not62.i = icmp eq ptr %i.ex, %i.eu
  br i1 %.not62.i, label %bb.k, label %bb.l

.loopexit.i:                                      ; preds = %.loopexit.i.preheader, %bb.j
  %.05569.i = phi i64 [ %i.fe, %bb.j ], [ 0, %.loopexit.i.preheader ] ; 3 uses
  %.05868.i = phi i64 [ %.159.i, %bb.j ], [ %i.p, %.loopexit.i.preheader ] ; 3 uses
  %i.ey = getelementptr i8, ptr %i.s, i64 %.05569.i ; 3 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !67
  %i.fa = icmp eq i8 %i.ez, 95
  br i1 %i.fa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit.i
  %i.fb = getelementptr i8, ptr %i.ey, i64 1
  %i.fc = sub i64 %.05868.i, %.05569.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ey, ptr noundef nonnull align 1 %i.fb, i64 noundef %i.fc, i1 noundef false) #27
  %i.fd = add nsw i64 %.05868.i, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit.i
  %.159.i = phi i64 [ %i.fd, %bb.i ], [ %.05868.i, %.loopexit.i ] ; 5 uses
  %i.fe = add nuw i64 %.05569.i, 1                ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %.159.i
  br i1 %i.ff, label %.loopexit.i, label %bb.h, !llvm.loop !456

bb.k:                                             ; preds = %bb.h
  %i.fg = load i32, ptr %i.ev, align 4, !tbaa !7  ; 2 uses
  switch i32 %i.fg, label %bb.l [
    i32 0, label %bb.m
    i32 34, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.fh = getelementptr i8, ptr %0, i64 472
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !127 ; 3 uses
  %i.fj = load ptr, ptr %i.l, align 8, !tbaa !128 ; 2 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.fh, ptr noundef %i.fi, ptr noundef %i.fj, i32 noundef 126, i32 noundef %i.fn, ptr noundef %i.fi) #27 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.k
  %i.fp = icmp eq i32 %i.fg, 34
  %i.fq = tail call double @llvm.fabs.f64(double %i.ew) #32
  %i.fr = fcmp oeq double %i.fq, +inf
  %or.cond.i = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fs = icmp ugt i64 %.159.i, 20
  %.05366.i = tail call i64 @llvm.umin.i64(i64 %.159.i, i64 20)
  %.053.i = trunc nuw nsw i64 %.05366.i to i32
  %.0.i = select i1 %i.fs, ptr @.str.128, ptr @.str.103
  %i.ft = getelementptr i8, ptr %0, i64 448
  %i.fu = load ptr, ptr %i.j, align 8, !tbaa !127 ; 2 uses
  %i.fv = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.fw = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ft, ptr noundef %i.fu, ptr noundef %i.fv, i32 noundef 310, i32 noundef %.053.i, ptr noundef %i.fu, ptr noundef nonnull %.0.i) #27 ; 0 uses
  %i.fx = fcmp olt double %i.ew, 0.000000e+00
  %i.fy = select i1 %i.fx, double -inf, double +inf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.057.i = phi double [ 0.000000e+00, %bb.l ], [ %i.fy, %bb.n ], [ %i.ew, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.s) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %pm_double_parse.exit

pm_double_parse.exit:                             ; preds = %pm_node_alloc.exit, %bb.o
  %.1.i = phi double [ %.057.i, %bb.o ], [ 0.000000e+00, %pm_node_alloc.exit ]
  store i16 54, ptr %i.d, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.i, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !457
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_float_node_imaginary_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.pm_token_t, align 8         ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 56
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.2, i32 noundef 3911, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_imaginary_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  store i32 55, ptr %2, align 8, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.n, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr i8, ptr %i.l, i64 -1
  store ptr %i.p, ptr %i.o, align 8, !tbaa !128
  %i.q = call fastcc ptr @pm_float_node_create(ptr noundef nonnull %0, ptr noundef nonnull %2)
  store i16 68, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_float_node_rational_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 57
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.2, i32 noundef 3931, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_rational_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 6 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 3 uses
  %2 = ptrtoint ptr %i.l to i64                   ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.c, i64 48 ; 2 uses
  store i16 123, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 10, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %i.m = getelementptr i8, ptr %i.l, i64 -1       ; 4 uses
  %i.n = icmp ult ptr %i.j, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %pm_node_alloc.exit..critedge_crit_edge

pm_node_alloc.exit..critedge_crit_edge:           ; preds = %pm_node_alloc.exit
  %.pre = add i64 %2, -1
  br label %.critedge

.lr.ph.preheader:                                 ; preds = %pm_node_alloc.exit
  %3 = ptrtoint ptr %i.j to i64
  %i.o = add i64 %2, -1                           ; 3 uses
  %i.p = sub i64 %i.o, %3
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.06268 = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.preheader ] ; 3 uses
  %i.q = load i8, ptr %.06268, align 1, !tbaa !67
  %i.r = icmp eq i8 %i.q, 48
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr i8, ptr %.06268, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.s, %scevgep
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !459

.critedge:                                        ; preds = %.lr.ph, %bb.e, %pm_node_alloc.exit..critedge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %pm_node_alloc.exit..critedge_crit_edge ], [ %i.o, %bb.e ], [ %i.o, %.lr.ph ] ; 2 uses
  %.062.lcssa = phi ptr [ %i.j, %pm_node_alloc.exit..critedge_crit_edge ], [ %.06268, %.lr.ph ], [ %scevgep, %bb.e ] ; 5 uses
  %i.t = icmp ugt ptr %i.m, %.062.lcssa
  br i1 %i.t, label %.lr.ph87, label %.critedge2

bb.f:                                             ; preds = %.lr.ph87
  %indvars.iv.next = add i64 %indvars.iv85, -1    ; 2 uses
  %i.u = icmp ugt ptr %i.v, %.062.lcssa
  br i1 %i.u, label %.lr.ph87, label %.critedge2, !llvm.loop !460

.lr.ph87:                                         ; preds = %.critedge, %bb.f
  %.06386 = phi ptr [ %i.v, %bb.f ], [ %i.m, %.critedge ] ; 2 uses
  %indvars.iv85 = phi i64 [ %indvars.iv.next, %bb.f ], [ %.pre-phi, %.critedge ] ; 2 uses
  %i.v = getelementptr i8, ptr %.06386, i64 -1    ; 4 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !67
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %bb.f, label %..critedge2_crit_edge89, !llvm.loop !460

..critedge2_crit_edge89:                          ; preds = %.lr.ph87
  br label %.critedge2, !llvm.loop !460

.critedge2:                                       ; preds = %bb.f, %..critedge2_crit_edge89, %.critedge
  %indvars.iv.lcssa = phi i64 [ %.pre-phi, %.critedge ], [ %indvars.iv85, %..critedge2_crit_edge89 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.063.lcssa = phi ptr [ %i.m, %.critedge ], [ %.06386, %..critedge2_crit_edge89 ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = ptrtoint ptr %.063.lcssa to i64          ; 2 uses
  %i.z = ptrtoint ptr %.062.lcssa to i64          ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge2
  %i.ac = getelementptr i8, ptr %i.c, i64 64
  store i32 1, ptr %i.ac, align 8, !tbaa !461
  br label %bb.o

bb.h:                                             ; preds = %.critedge2
  %i.ad = tail call ptr @memchr(ptr noundef %.062.lcssa, i32 noundef 46, i64 noundef %i.aa) #29 ; 8 uses
  %4 = ptrtoint ptr %i.ad to i64                  ; 4 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.2, i32 noundef 3953, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_rational_create) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.aa) #28 ; 11 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ah = tail call i64 @fwrite(ptr nonnull @.str.133, i64 57, i64 1, ptr %i.ag) #33 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = sub i64 %4, %i.z                        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull align 1 %.062.lcssa, i64 noundef %i.ai, i1 noundef false) #27
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.ad, i64 1
  %i.al = xor i64 %4, -1
  %i.am = add i64 %i.al, %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aj, ptr noundef nonnull align 1 %i.ak, i64 noundef %i.am, i1 noundef false) #27
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.aa
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  tail call void @pm_integer_parse(ptr noundef nonnull %.sroa.6.0..sroa_idx, i32 noundef 0, ptr noundef nonnull %i.ae, ptr noundef %i.ao) #27
  %i.ap = icmp ult ptr %i.ad, %.063.lcssa
  br i1 %i.ap, label %.lr.ph73.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l
  store i8 49, ptr %i.ae, align 1, !tbaa !67
  br label %bb.n

.lr.ph73.preheader:                               ; preds = %bb.l
  %i.aq = sub i64 0, %4
  %scevgep75 = getelementptr i8, ptr %i.ad, i64 %i.aq
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %indvars.iv.lcssa
  %i.ar = sub i64 %indvars.iv.lcssa, %4           ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph73.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph73.preheader
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %i.as = getelementptr i8, ptr %i.ad, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi92 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.ad, i64 %index ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !67
  %wide.load93 = load <2 x i8>, ptr %i.at, align 1, !tbaa !67
  %i.au = icmp ne <2 x i8> %wide.load, splat (i8 95)
  %i.av = icmp ne <2 x i8> %wide.load93, splat (i8 95)
  %i.aw = zext <2 x i1> %i.au to <2 x i64>
  %i.ax = zext <2 x i1> %i.av to <2 x i64>
  %i.ay = add <2 x i64> %vec.phi, %i.aw           ; 2 uses
  %i.az = add <2 x i64> %vec.phi92, %i.ax         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !465

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.az, %i.ay
  %i.bb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph73.preheader94

.lr.ph73.preheader94:                             ; preds = %.lr.ph73.preheader, %middle.block
  %.072.ph = phi ptr [ %i.ad, %.lr.ph73.preheader ], [ %i.as, %middle.block ]
  %.06071.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph73

._crit_edge:                                      ; preds = %.lr.ph73, %middle.block
  %spec.select.lcssa = phi i64 [ %i.bb, %middle.block ], [ %spec.select, %.lr.ph73 ] ; 4 uses
  store i8 49, ptr %i.ae, align 1, !tbaa !67
  %i.bc = icmp ugt i64 %spec.select.lcssa, 1
  br i1 %i.bc, label %bb.m, label %bb.n

.lr.ph73:                                         ; preds = %.lr.ph73.preheader94, %.lr.ph73
  %.072 = phi ptr [ %i.bf, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader94 ] ; 2 uses
  %.06071 = phi i64 [ %spec.select, %.lr.ph73 ], [ %.06071.ph, %.lr.ph73.preheader94 ]
  %i.bd = load i8, ptr %.072, align 1, !tbaa !67
  %.not67 = icmp ne i8 %i.bd, 95
  %i.be = zext i1 %.not67 to i64
  %spec.select = add i64 %.06071, %i.be           ; 2 uses
  %i.bf = getelementptr i8, ptr %.072, i64 1      ; 2 uses
  %exitcond77.not = icmp eq ptr %i.bf, %scevgep76
  br i1 %exitcond77.not, label %._crit_edge, label %.lr.ph73, !llvm.loop !466

bb.m:                                             ; preds = %._crit_edge
  %i.bg = getelementptr i8, ptr %i.ae, i64 1
  %i.bh = add i64 %spec.select.lcssa, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bg, i8 noundef 48, i64 noundef range(i64 1, -1) %i.bh, i1 noundef false) #27
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread, %bb.m, %._crit_edge
  %.060.lcssa84 = phi i64 [ 0, %._crit_edge.thread ], [ %spec.select.lcssa, %bb.m ], [ %spec.select.lcssa, %._crit_edge ]
  %i.bi = getelementptr i8, ptr %i.ae, i64 %.060.lcssa84
  tail call void @pm_integer_parse(ptr noundef nonnull %.sroa.7.0..sroa_idx, i32 noundef 0, ptr noundef nonnull %i.ae, ptr noundef %i.bi) #27
  tail call void @free(ptr noundef nonnull %i.ae) #27
  tail call void @pm_integers_reduce(ptr noundef nonnull %.sroa.6.0..sroa_idx, ptr noundef nonnull %.sroa.7.0..sroa_idx) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_float_node_rational_imaginary_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.pm_token_t, align 8         ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 58
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.2, i32 noundef 3984, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_rational_imaginary_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  store i32 57, ptr %2, align 8, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.n, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr i8, ptr %i.l, i64 -1
  store ptr %i.p, ptr %i.o, align 8, !tbaa !128
  %i.q = call fastcc ptr @pm_float_node_rational_create(ptr noundef nonnull %0, ptr noundef nonnull %2)
  store i16 68, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_numbered_reference_read_node_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !126
  %i.c = icmp eq i32 %i.b, 123
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.2, i32 noundef 5593, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_numbered_reference_read_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128  ; 4 uses
  %i.n = getelementptr i8, ptr %i.k, i64 1        ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.2, i32 noundef 5557, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_numbered_reference_read_node_number) #26
  unreachable

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.s = add nuw i64 %i.q, 1                      ; 2 uses
  %i.t = tail call noalias ptr @calloc(i64 noundef %i.s, i64 noundef 1) #30 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.t, ptr noundef nonnull align 1 %i.n, i64 noundef %i.q, i1 noundef false) #27
  %i.u = getelementptr i8, ptr %i.t, i64 %i.q
  store i8 0, ptr %i.u, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.v = tail call ptr @__errno_location() #31    ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !7
  %i.w = call i64 @strtoul(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, i32 noundef 10) #27
end_hunk_4
begin_hunk_5_@parse_alias_argument:bb.a
  %i.as = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ar, ptr noundef %i.ao, ptr noundef %i.aq, i32 noundef 0) #27 ; 0 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !76
  %i.av = tail call fastcc ptr @pm_missing_node_create(ptr noundef nonnull %0, ptr noundef %i.at, ptr noundef %i.au)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %parse_symbol_encoding.exit, %bb.b
  %.0 = phi ptr [ %i.av, %bb.o ], [ %i.h, %bb.b ], [ %i.j, %parse_symbol_encoding.exit ], [ %i.ag, %bb.k ], [ %i.ai, %bb.l ], [ %i.ak, %bb.m ], [ %i.am, %bb.n ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_alias_global_variable_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 73
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.2, i32 noundef 1979, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_alias_global_variable_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = getelementptr i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134
  store i16 1, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !14
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !127
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.l, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_alias_method_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 73
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.2, i32 noundef 1997, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_alias_method_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = getelementptr i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134
  store i16 2, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !14
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !127
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.l, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @token_newline_index(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 608
  %i.e = load i64, ptr %i.d, align 8, !tbaa !483
  %i.f = add i64 %i.e, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 600
  %i.h = getelementptr i8, ptr %0, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.j = tail call i32 @pm_newline_list_line(ptr noundef %i.g, ptr noundef %i.i, i32 noundef 0) #27
  %i.k = sext i32 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_warn_indentation_mismatch(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 704
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %token_column.exit51.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 608
  %i.h = load i64, ptr %i.g, align 8, !tbaa !483
  %i.i = add i64 %i.h, -1
  br label %token_newline_index.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 600
  %i.k = getelementptr i8, ptr %0, i64 352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !166
  %i.m = tail call i32 @pm_newline_list_line(ptr noundef %i.j, ptr noundef %i.l, i32 noundef 0) #27
  %i.n = sext i32 %i.m to i64
  br label %token_newline_index.exit

token_newline_index.exit:                         ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %i.o = icmp eq i64 %1, %.0.i
  br i1 %i.o, label %token_column.exit51.thread, label %bb.e

bb.e:                                             ; preds = %token_newline_index.exit
  %i.p = getelementptr i8, ptr %0, i64 304
  %.val38 = load ptr, ptr %i.p, align 8, !tbaa !74 ; 8 uses
  %i.q = getelementptr i8, ptr %0, i64 624
  %.val39 = load ptr, ptr %i.q, align 8, !tbaa !484 ; 2 uses
  %i.r = getelementptr i8, ptr %2, i64 8
  %.val40 = load ptr, ptr %i.r, align 8, !tbaa !127 ; 5 uses
  %.val4067 = ptrtoint ptr %.val40 to i64         ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %.val39, i64 %1
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  %i.u = getelementptr i8, ptr %.val38, i64 %i.t  ; 4 uses
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %.val38, align 1, !tbaa !67
  %i.x = icmp eq i8 %i.w, -17
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %.val38, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !67
  %i.aa = icmp eq i8 %i.z, -69
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %.val38, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !67
  %i.ad = icmp eq i8 %i.ac, -65
  %spec.select.idx.i = select i1 %i.ad, i64 3, i64 0
  %spec.select.i = getelementptr i8, ptr %i.u, i64 %spec.select.idx.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.019.i = phi ptr [ %i.u, %bb.e ], [ %spec.select.i, %bb.h ], [ %i.u, %bb.g ], [ %i.u, %bb.f ] ; 5 uses
  %.019.i68 = ptrtoint ptr %.019.i to i64         ; 2 uses
  %i.ae = icmp ult ptr %.019.i, %.val40
  br i1 %i.ae, label %.lr.ph.i, label %token_column.exit.thread

.lr.ph.i:                                         ; preds = %bb.i
  br i1 %3, label %.lr.ph.split.i.preheader, label %.lr.ph.split.us.i

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.af = sub i64 %.val4067, %.019.i68            ; 3 uses
  %xtraiter = and i64 %i.af, 1
  %i.ag = add i64 %.val4067, -1
  %i.ah = icmp eq i64 %i.ag, %.019.i68
  br i1 %i.ah, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.af, -2
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.l
  %.02.us.i = phi i64 [ %.1.us.i, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %.1201.us.i = phi ptr [ %i.an, %bb.l ], [ %.019.i, %.lr.ph.i ] ; 2 uses
  %i.ai = load i8, ptr %.1201.us.i, align 1, !tbaa !67
  switch i8 %i.ai, label %token_column.exit [
    i8 9, label %bb.k
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.aj = add i64 %.02.us.i, 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.ak = sdiv i64 %.02.us.i, 8
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = add i64 %i.al, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.us.i = phi i64 [ %i.aj, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %i.an = getelementptr i8, ptr %.1201.us.i, i64 1 ; 2 uses
  %exitcond11.not.i = icmp eq ptr %i.an, %.val40
  br i1 %exitcond11.not.i, label %token_column.exit, label %.lr.ph.split.us.i, !llvm.loop !485

.lr.ph.split.i:                                   ; preds = %bb.s, %.lr.ph.split.i.preheader.new
  %.02.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %.1.i.1, %bb.s ] ; 3 uses
  %.1201.i = phi ptr [ %.019.i, %.lr.ph.split.i.preheader.new ], [ %i.bb, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.ao = load i8, ptr %.1201.i, align 1, !tbaa !67
  switch i8 %i.ao, label %bb.o [
    i8 9, label %bb.m
    i8 32, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.ap = sdiv i64 %.02.i, 8
  %i.aq = shl nsw i64 %i.ap, 3
  %i.ar = add i64 %i.aq, 8
  br label %.lr.ph.split.i.1

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.as = add i64 %.02.i, 1
  br label %.lr.ph.split.i.1

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.at = add i64 %.02.i, 1
  br label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.o, %bb.n, %bb.m
  %.1.i = phi i64 [ %i.at, %bb.o ], [ %i.ar, %bb.m ], [ %i.as, %bb.n ] ; 3 uses
  %i.au = getelementptr i8, ptr %.1201.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !67
  switch i8 %i.av, label %bb.r [
    i8 9, label %bb.q
    i8 32, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph.split.i.1
  %i.aw = add i64 %.1.i, 1
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split.i.1
  %i.ax = sdiv i64 %.1.i, 8
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = add i64 %i.ay, 8
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.i.1
  %i.ba = add i64 %.1.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1.i.1 = phi i64 [ %i.ba, %bb.r ], [ %i.az, %bb.q ], [ %i.aw, %bb.p ] ; 3 uses
  %i.bb = getelementptr i8, ptr %.1201.i, i64 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %token_column.exit.loopexit.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !485

token_column.exit.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %token_column.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %token_column.exit.loopexit.unr-lcssa, %.lr.ph.split.i.preheader
  %.02.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %.1.i.1, %token_column.exit.loopexit.unr-lcssa ] ; 3 uses
  %.1201.i.epil.init = phi ptr [ %.019.i, %.lr.ph.split.i.preheader ], [ %i.bb, %token_column.exit.loopexit.unr-lcssa ]
  %lcmp.mod70 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.bc = load i8, ptr %.1201.i.epil.init, align 1, !tbaa !67
  switch i8 %i.bc, label %bb.v [
    i8 9, label %bb.u
    i8 32, label %bb.t
  ]

bb.t:                                             ; preds = %.lr.ph.split.i.epil.preheader
  %i.bd = add i64 %.02.i.epil.init, 1
  br label %token_column.exit

bb.u:                                             ; preds = %.lr.ph.split.i.epil.preheader
  %i.be = sdiv i64 %.02.i.epil.init, 8
  %i.bf = shl nsw i64 %i.be, 3
  %i.bg = add i64 %i.bf, 8
  br label %token_column.exit

bb.v:                                             ; preds = %.lr.ph.split.i.epil.preheader
  %i.bh = add i64 %.02.i.epil.init, 1
  br label %token_column.exit

token_column.exit:                                ; preds = %.lr.ph.split.us.i, %bb.l, %token_column.exit.loopexit.unr-lcssa, %bb.v, %bb.u, %bb.t
  %.018.i = phi i64 [ %i.bd, %bb.t ], [ %.1.i.1, %token_column.exit.loopexit.unr-lcssa ], [ %i.bh, %bb.v ], [ %i.bg, %bb.u ], [ -1, %.lr.ph.split.us.i ], [ %.1.us.i, %bb.l ] ; 2 uses
  %i.bi = icmp ne i64 %.018.i, -1
  %or.cond.not = select i1 %3, i1 true, i1 %i.bi
  br i1 %or.cond.not, label %token_column.exit.thread, label %token_column.exit51.thread

token_column.exit.thread:                         ; preds = %bb.i, %token_column.exit
  %.018.i54 = phi i64 [ %.018.i, %token_column.exit ], [ 0, %bb.i ] ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 352
  %.val37 = load ptr, ptr %i.bj, align 8, !tbaa !127 ; 5 uses
  %i.bk = getelementptr [8 x i8], ptr %.val39, i64 %.0.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !20
  %i.bm = getelementptr i8, ptr %.val38, i64 %i.bl ; 4 uses
  %i.bn = icmp eq i64 %.0.i, 0
  br i1 %i.bn, label %bb.w, label %bb.z

bb.w:                                             ; preds = %token_column.exit.thread
  %i.bo = load i8, ptr %.val38, align 1, !tbaa !67
  %i.bp = icmp eq i8 %i.bo, -17
  br i1 %i.bp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr i8, ptr %.val38, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !67
  %i.bs = icmp eq i8 %i.br, -69
  br i1 %i.bs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr i8, ptr %.val38, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !67
  %i.bv = icmp eq i8 %i.bu, -65
  %spec.select.idx.i49 = select i1 %i.bv, i64 3, i64 0
  %spec.select.i50 = getelementptr i8, ptr %i.bm, i64 %spec.select.idx.i49
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %token_column.exit.thread
  %.019.i41 = phi ptr [ %i.bm, %token_column.exit.thread ], [ %spec.select.i50, %bb.y ], [ %i.bm, %bb.x ], [ %i.bm, %bb.w ] ; 2 uses
  %i.bw = icmp ult ptr %.019.i41, %.val37
  br i1 %i.bw, label %.lr.ph.split.us.i44, label %token_column.exit51

.lr.ph.split.us.i44:                              ; preds = %bb.z, %bb.ac
  %.02.us.i45 = phi i64 [ %.1.us.i47, %bb.ac ], [ 0, %bb.z ] ; 2 uses
  %.1201.us.i46 = phi ptr [ %i.cc, %bb.ac ], [ %.019.i41, %bb.z ] ; 2 uses
  %i.bx = load i8, ptr %.1201.us.i46, align 1, !tbaa !67
  switch i8 %i.bx, label %token_column.exit51.thread [
    i8 9, label %bb.ab
    i8 32, label %bb.aa
  ]

bb.aa:                                            ; preds = %.lr.ph.split.us.i44
  %i.by = add i64 %.02.us.i45, 1
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.us.i44
  %i.bz = sdiv i64 %.02.us.i45, 8
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = add i64 %i.ca, 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.us.i47 = phi i64 [ %i.by, %bb.aa ], [ %i.cb, %bb.ab ] ; 2 uses
  %i.cc = getelementptr i8, ptr %.1201.us.i46, i64 1 ; 2 uses
  %exitcond11.not.i48 = icmp eq ptr %i.cc, %.val37
  br i1 %exitcond11.not.i48, label %token_column.exit51, label %.lr.ph.split.us.i44, !llvm.loop !485

token_column.exit51:                              ; preds = %bb.ac, %bb.z
  %.018.i42 = phi i64 [ 0, %bb.z ], [ %.1.us.i47, %bb.ac ] ; 3 uses
  %i.cd = icmp eq i64 %.018.i42, -1
  %i.ce = icmp eq i64 %.018.i54, %.018.i42
  %i.cf = icmp sgt i64 %.018.i42, %.018.i54
  %or.cond34 = select i1 %4, i1 %i.cf, i1 false
  %i.cg = or i1 %i.ce, %or.cond34
  %or.cond35 = select i1 %i.cd, i1 true, i1 %i.cg
  br i1 %or.cond35, label %token_column.exit51.thread, label %bb.ad

end_hunk_5
