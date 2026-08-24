Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/lexer.lex?download=true
inline.NumInlined: 68
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@yylex:bb.a
    i32 16, label %bb.ae
    i32 17, label %bb.af
    i32 18, label %bb.ag
    i32 19, label %bb.ah
    i32 20, label %bb.ai
    i32 21, label %bb.aj
    i32 22, label %bb.ak
    i32 23, label %bb.al
    i32 24, label %bb.am
    i32 25, label %bb.an
    i32 26, label %bb.ao
    i32 27, label %bb.ap
    i32 28, label %bb.aq
    i32 29, label %bb.ar
    i32 30, label %bb.as
    i32 31, label %bb.at
    i32 32, label %bb.au
    i32 33, label %bb.av
    i32 34, label %bb.aw
    i32 35, label %bb.ax
    i32 36, label %bb.ay
    i32 37, label %bb.az
    i32 38, label %bb.ba
    i32 39, label %bb.bb
    i32 40, label %bb.bc
    i32 41, label %bb.bd
    i32 42, label %bb.be
    i32 43, label %bb.bf
    i32 44, label %bb.bg
    i32 45, label %bb.bh
    i32 46, label %bb.bi
    i32 47, label %bb.bj
    i32 48, label %bb.bl
    i32 49, label %bb.bn
    i32 50, label %bb.cj
    i32 51, label %bb.ck
    i32 52, label %bb.cm
    i32 53, label %.loopexit.i.backedge
    i32 54, label %bb.cn
    i32 55, label %bb.cw
    i32 56, label %bb.cz
    i32 57, label %bb.dc
    i32 58, label %bb.dh
    i32 68, label %bb.dl
    i32 59, label %.loopexit127.i
    i32 60, label %bb.dt
    i32 61, label %bb.dw
    i32 62, label %thread-pre-split.i
    i32 67, label %bb.ee
    i32 65, label %bb.ef
    i32 66, label %bb.ef
    i32 63, label %bb.em
    i32 64, label %bb.en
  ]

bb.ab:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ac:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ad:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ae:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.af:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ag:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ah:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ai:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.aj:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ak:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.al:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.am:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.an:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ao:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ap:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.aq:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ar:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.as:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.at:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.au:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.av:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.aw:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ax:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ay:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.az:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.ba:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.bb:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.bc:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.bd:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.be:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.bf:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.bg:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.bh:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.bi:                                            ; preds = %.preheader482.i
  br label %yylex1.exit

bb.bj:                                            ; preds = %.preheader482.i
  %i.cb = load ptr, ptr @yytext, align 8, !tbaa !30
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !24
  %i.cd = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i103, label %bb.bk, label %new_string.exit

bb.bk:                                            ; preds = %bb.bj
  call void @exit(i32 noundef 1) #30
  unreachable

new_string.exit:                                  ; preds = %bb.bj
  store ptr %i.cd, ptr @text, align 8, !tbaa !30
  store i32 16, ptr @text_asize, align 4, !tbaa !19
  store i32 0, ptr @text_size, align 4, !tbaa !19
  store i8 0, ptr %i.cd, align 1, !tbaa !24
  store i32 7, ptr @yy_start, align 4, !tbaa !19
  br label %.loopexit.i.backedge

bb.bl:                                            ; preds = %.preheader482.i
  %i.ce = load ptr, ptr @yytext, align 8, !tbaa !30
  %i.cf = load i32, ptr @yyleng, align 4, !tbaa !19 ; 2 uses
  %i.cg = add nsw i32 %i.cf, 1
  %i.ch = sext i32 %i.cg to i64
  %i.ci = call noalias ptr @malloc(i64 noundef range(i64 -2147483647, 2147483648) %i.ch) #25 ; 5 uses
  %.not.i.i101 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i101, label %bb.bm, label %alloc_string.exit102

bb.bm:                                            ; preds = %bb.bl
  call void @exit(i32 noundef 1) #30
  unreachable

alloc_string.exit102:                             ; preds = %bb.bl
  store ptr %i.ci, ptr @text, align 8, !tbaa !30
  %i.cj = sext i32 %i.cf to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr readonly align 1 %i.ce, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  store i8 0, ptr %i.ck, align 1, !tbaa !24
  store ptr %i.ci, ptr @yylval, align 8, !tbaa !24
  br label %yylex1.exit

bb.bn:                                            ; preds = %.preheader482.i
  %i.cl = load ptr, ptr @yytext, align 8, !tbaa !30
  %i.cm = load i32, ptr @yyleng, align 4, !tbaa !19 ; 4 uses
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.co = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %.not.i.i.i73 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i73, label %bb.bo, label %new_string.exit.i

bb.bo:                                            ; preds = %bb.bn
  call void @exit(i32 noundef 1) #30
  unreachable

new_string.exit.i:                                ; preds = %bb.bn
  store ptr %i.co, ptr @text, align 8, !tbaa !30
  store i32 16, ptr @text_asize, align 4, !tbaa !19
  store i32 0, ptr @text_size, align 4, !tbaa !19
  store i8 0, ptr %i.co, align 1, !tbaa !24
  %.not.i.i74 = icmp slt i32 %i.cm, 16
  br i1 %.not.i.i74, label %append_string.exit.i78, label %bb.bp

bb.bp:                                            ; preds = %new_string.exit.i
  %i.cp = and i32 %i.cm, 2147483632
  %i.cq = add nuw nsw i32 %i.cp, 16               ; 2 uses
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = call ptr @realloc(ptr noundef nonnull %i.co, i64 noundef range(i64 16, 2147483633) %i.cr) #27 ; 3 uses
  %.not.i.i8.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i8.i, label %bb.bq, label %xrealloc.exit.i.i75

bb.bq:                                            ; preds = %bb.bp
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i.i75:                              ; preds = %bb.bp
  store ptr %i.cs, ptr @text, align 8, !tbaa !30
  store i32 %i.cq, ptr @text_asize, align 4, !tbaa !19
  br label %append_string.exit.i78

append_string.exit.i78:                           ; preds = %xrealloc.exit.i.i75, %new_string.exit.i
  %i.ct = phi ptr [ %i.cs, %xrealloc.exit.i.i75 ], [ %i.co, %new_string.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr readonly align 1 %i.cl, i64 range(i64 -2147483648, 2147483648) %i.cn, i1 false)
  store i32 %i.cm, ptr @text_size, align 4, !tbaa !19
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cn
  store i8 0, ptr %i.cu, align 1, !tbaa !24
  %.pre71.i = load i8, ptr @yy_hold_char, align 1, !tbaa !24
  br label %bb.br

bb.br:                                            ; preds = %append_string.exit19.i, %append_string.exit.i78
  %i.cv = phi ptr [ %i.dv, %append_string.exit19.i ], [ %.pre72.i, %append_string.exit.i78 ] ; 6 uses
  %i.cw = phi i8 [ %i.dw, %append_string.exit19.i ], [ %.pre71.i, %append_string.exit.i78 ] ; 3 uses
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !24
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.cy = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %i.cz = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !23
  %i.de = load i32, ptr @yy_n_chars, align 4, !tbaa !19
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 %i.df
  %i.dh = icmp ult ptr %i.cv, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 3 uses
  br i1 %i.dh, label %.thread.i.i, label %bb.bt

.thread.i.i:                                      ; preds = %bb.bs
  store i8 0, ptr %i.cv, align 1, !tbaa !24
  store ptr %i.di, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !24
  store i8 %i.dj, ptr @yy_hold_char, align 1, !tbaa !24
  br label %input.exit.thread.i

bb.bt:                                            ; preds = %bb.bs
  %i.dk = load ptr, ptr @yytext, align 8, !tbaa !30
  store ptr %i.di, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.dl = call fastcc i32 @yy_get_next_buffer()
  switch i32 %i.dl, label %.unreachabledefault [
    i32 2, label %bb.bu
    i32 1, label %input.exit.thread.i
    i32 0, label %.critedge.i.i
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.dm = load ptr, ptr @yyin, align 8, !tbaa !17
  call void @yyrestart(ptr noundef %i.dm)
  br label %input.exit.thread.i

.critedge.i.i:                                    ; preds = %bb.bt
  %i.dn = ptrtoint ptr %i.cv to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = load ptr, ptr @yytext, align 8, !tbaa !30
  %sext.i.i100 = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %sext.i.i100, 32
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr ; 2 uses
  %.pre.i9.i = load i8, ptr %i.ds, align 1, !tbaa !24
  br label %bb.bv

.unreachabledefault:                              ; preds = %bb.bt
  unreachable

default.unreachable:                              ; preds = %bb.ew
  unreachable

bb.bv:                                            ; preds = %.critedge.i.i, %bb.br
  %i.dt = phi i8 [ %.pre.i9.i, %.critedge.i.i ], [ %i.cw, %bb.br ] ; 2 uses
  %i.du = phi ptr [ %i.ds, %.critedge.i.i ], [ %i.cv, %bb.br ] ; 2 uses
  store i8 0, ptr %i.du, align 1, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 7 uses
  store ptr %i.dv, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !24  ; 3 uses
  store i8 %i.dw, ptr @yy_hold_char, align 1, !tbaa !24
  switch i8 %i.dt, label %bb.bz [
    i8 10, label %input.exit.thread36.i
    i8 0, label %input.exit.thread.i
  ]

input.exit.thread36.i:                            ; preds = %bb.bv
  %i.dx = load i32, ptr @yylineno, align 4, !tbaa !19
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr @yylineno, align 4, !tbaa !19
  %i.dz = load ptr, ptr @yytext, align 8, !tbaa !30 ; 2 uses
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !24
  %i.ea = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %i.eb = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eb ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !15 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !23 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.eh = icmp ult ptr %i.dv, %i.eg
  br i1 %i.eh, label %bb.bw, label %yyunput.exit.i86

bb.bw:                                            ; preds = %input.exit.thread36.i
  %i.ei = load i32, ptr @yy_n_chars, align 4, !tbaa !19
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !34 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr i8, ptr %i.ef, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 2      ; 2 uses
  %i.eo = sext i32 %i.ei to i64
  %i.ep = getelementptr i8, ptr %i.ef, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 2      ; 3 uses
  %i.er = icmp ugt ptr %i.eq, %i.ef
  br i1 %i.er, label %.lr.ph.i.i94, label %._crit_edge.i.i89

.lr.ph.i.i94:                                     ; preds = %bb.bw, %.lr.ph.i.i94
  %.025.i.i95 = phi ptr [ %i.es, %.lr.ph.i.i94 ], [ %i.eq, %bb.bw ]
  %.01824.i.i96 = phi ptr [ %i.eu, %.lr.ph.i.i94 ], [ %i.en, %bb.bw ]
  %i.es = getelementptr inbounds i8, ptr %.025.i.i95, i64 -1 ; 4 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !24
  %i.eu = getelementptr inbounds i8, ptr %.01824.i.i96, i64 -1 ; 3 uses
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !24
  %i.ev = load ptr, ptr %i.ec, align 8, !tbaa !15 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !23 ; 2 uses
  %i.ey = icmp ugt ptr %i.es, %i.ex
  br i1 %i.ey, label %.lr.ph.i.i94, label %._crit_edge.loopexit.i.i97, !llvm.loop !41

._crit_edge.loopexit.i.i97:                       ; preds = %.lr.ph.i.i94
  %.phi.trans.insert.i.i98 = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %.pre.i11.i = load i32, ptr %.phi.trans.insert.i.i98, align 8, !tbaa !34
  br label %._crit_edge.i.i89

._crit_edge.i.i89:                                ; preds = %._crit_edge.loopexit.i.i97, %bb.bw
  %i.ez = phi i32 [ %i.ek, %bb.bw ], [ %.pre.i11.i, %._crit_edge.loopexit.i.i97 ] ; 2 uses
  %.018.lcssa.i.i90 = phi ptr [ %i.en, %bb.bw ], [ %i.eu, %._crit_edge.loopexit.i.i97 ]
  %.0.lcssa.i.i91 = phi ptr [ %i.eq, %bb.bw ], [ %i.es, %._crit_edge.loopexit.i.i97 ]
  %.lcssa23.i.i92 = phi ptr [ %i.ed, %bb.bw ], [ %i.ev, %._crit_edge.loopexit.i.i97 ]
  %.lcssa.i.i93 = phi ptr [ %i.ef, %bb.bw ], [ %i.ex, %._crit_edge.loopexit.i.i97 ]
  %i.fa = ptrtoint ptr %.018.lcssa.i.i90 to i64
  %i.fb = ptrtoint ptr %.0.lcssa.i.i91 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %sext.i10.i = shl i64 %i.fc, 32
  %i.fd = ashr exact i64 %sext.i10.i, 32          ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.dv, i64 %i.fd ; 2 uses
  store i32 %i.ez, ptr @yy_n_chars, align 4, !tbaa !19
  %i.ff = getelementptr inbounds nuw i8, ptr %.lcssa23.i.i92, i64 28
  store i32 %i.ez, ptr %i.ff, align 4, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i93, i64 2
  %i.fh = icmp ult ptr %i.fe, %i.fg
  br i1 %i.fh, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i89
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.20) #26
  unreachable

bb.by:                                            ; preds = %._crit_edge.i.i89
  %i.fi = getelementptr inbounds i8, ptr %i.dz, i64 %i.fd
  br label %yyunput.exit.i86

yyunput.exit.i86:                                 ; preds = %bb.by, %input.exit.thread36.i
  %.020.i.i87 = phi ptr [ %i.fi, %bb.by ], [ %i.dz, %input.exit.thread36.i ]
  %.019.i.i88 = phi ptr [ %i.fe, %bb.by ], [ %i.dv, %input.exit.thread36.i ]
  %i.fj = getelementptr inbounds i8, ptr %.019.i.i88, i64 -1 ; 3 uses
  store i8 10, ptr %i.fj, align 1, !tbaa !24
  %i.fk = load i32, ptr @yylineno, align 4, !tbaa !19
  %i.fl = add nsw i32 %i.fk, -1
  store i32 %i.fl, ptr @yylineno, align 4, !tbaa !19
  store ptr %.020.i.i87, ptr @yytext, align 8, !tbaa !30
  %i.fm = load i8, ptr %i.fj, align 1, !tbaa !24
  store i8 %i.fm, ptr @yy_hold_char, align 1, !tbaa !24
  store ptr %i.fj, ptr @yy_c_buf_p, align 8, !tbaa !30
  br label %input.exit.thread.i

bb.bz:                                            ; preds = %bb.bv
  %i.fn = load i32, ptr @text_size, align 4, !tbaa !19 ; 2 uses
  %i.fo = add nsw i32 %i.fn, 1                    ; 4 uses
  %i.fp = load i32, ptr @text_asize, align 4, !tbaa !19
  %.not.i12.i = icmp slt i32 %i.fo, %i.fp
  %.pre.i13.i = load ptr, ptr @text, align 8, !tbaa !30 ; 2 uses
  br i1 %.not.i12.i, label %append_string.exit19.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fq = and i32 %i.fo, -16
  %i.fr = add nsw i32 %i.fq, 16                   ; 2 uses
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = call ptr @realloc(ptr noundef %.pre.i13.i, i64 noundef range(i64 16, 2147483633) %i.fs) #27 ; 3 uses
  %.not.i.i14.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i14.i, label %bb.cb, label %xrealloc.exit.i15.i

bb.cb:                                            ; preds = %bb.ca
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i15.i:                              ; preds = %bb.ca
  store ptr %i.ft, ptr @text, align 8, !tbaa !30
  store i32 %i.fr, ptr @text_asize, align 4, !tbaa !19
  br label %append_string.exit19.i

append_string.exit19.i:                           ; preds = %xrealloc.exit.i15.i, %bb.bz
  %i.fu = phi ptr [ %i.ft, %xrealloc.exit.i15.i ], [ %.pre.i13.i, %bb.bz ] ; 2 uses
  %i.fv = sext i32 %i.fn to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 %i.fv
  store i8 %i.dt, ptr %i.fw, align 1
  store i32 %i.fo, ptr @text_size, align 4, !tbaa !19
  %i.fx = sext i32 %i.fo to i64
  %i.fy = getelementptr inbounds i8, ptr %i.fu, i64 %i.fx
  store i8 0, ptr %i.fy, align 1, !tbaa !24
  br label %bb.br, !llvm.loop !42

input.exit.thread.i:                              ; preds = %bb.bv, %bb.bt, %yyunput.exit.i86, %bb.bu, %.thread.i.i
  %i.fz = load ptr, ptr @text, align 8, !tbaa !30
  store ptr %i.fz, ptr %i.a, align 8, !tbaa !30
  %i.ga = call ptr @expand_one_token(ptr noundef nonnull %i.a) #31 ; 3 uses
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.gc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gb) #32 ; 2 uses
  %.not.i80 = icmp eq i64 %i.gc, 0
  br i1 %.not.i80, label %expand_token.exit, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %input.exit.thread.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gc
  %yy_n_chars.promoted.i82 = load i32, ptr @yy_n_chars, align 4
  %yy_hold_char.promoted.i83 = load i8, ptr @yy_hold_char, align 1
  %yy_c_buf_p.promoted.i84 = load ptr, ptr @yy_c_buf_p, align 8
  %i.ge = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %i.gf = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gf ; 2 uses
  %.pre73.i = load ptr, ptr @yytext, align 8, !tbaa !30
  br label %bb.cc

bb.cc:                                            ; preds = %yyunput.exit34.i, %.lr.ph.i81
  %i.gh = phi ptr [ %.pre73.i, %.lr.ph.i81 ], [ %.020.i20.i, %yyunput.exit34.i ] ; 2 uses
  %.054.i = phi ptr [ %i.gd, %.lr.ph.i81 ], [ %i.gl, %yyunput.exit34.i ]
  %i.gi = phi ptr [ %yy_c_buf_p.promoted.i84, %.lr.ph.i81 ], [ %i.ht, %yyunput.exit34.i ] ; 4 uses
  %i.gj = phi i8 [ %yy_hold_char.promoted.i83, %.lr.ph.i81 ], [ %i.hx, %yyunput.exit34.i ]
  %i.gk = phi i32 [ %yy_n_chars.promoted.i82, %.lr.ph.i81 ], [ %i.hs, %yyunput.exit34.i ] ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.054.i, i64 -1 ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !24  ; 2 uses
  store i8 %i.gj, ptr %i.gi, align 1, !tbaa !24
  %i.gn = load ptr, ptr %i.gg, align 8, !tbaa !15 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !23 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.gr = icmp ult ptr %i.gi, %i.gq
  br i1 %i.gr, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !34 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr i8, ptr %i.gp, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 2      ; 2 uses
  %i.gx = sext i32 %i.gk to i64
  %i.gy = getelementptr i8, ptr %i.gp, i64 %i.gx
  %i.gz = getelementptr i8, ptr %i.gy, i64 2      ; 3 uses
  %i.ha = icmp ugt ptr %i.gz, %i.gp
  br i1 %i.ha, label %.lr.ph.i28.i, label %._crit_edge.i22.i

.lr.ph.i28.i:                                     ; preds = %bb.cd, %.lr.ph.i28.i
  %.025.i29.i = phi ptr [ %i.hb, %.lr.ph.i28.i ], [ %i.gz, %bb.cd ]
  %.01824.i30.i = phi ptr [ %i.hd, %.lr.ph.i28.i ], [ %i.gw, %bb.cd ]
  %i.hb = getelementptr inbounds i8, ptr %.025.i29.i, i64 -1 ; 4 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !24
  %i.hd = getelementptr inbounds i8, ptr %.01824.i30.i, i64 -1 ; 3 uses
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !24
  %i.he = load ptr, ptr %i.gg, align 8, !tbaa !15 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !23 ; 2 uses
  %i.hh = icmp ugt ptr %i.hb, %i.hg
  br i1 %i.hh, label %.lr.ph.i28.i, label %._crit_edge.loopexit.i31.i, !llvm.loop !41

._crit_edge.loopexit.i31.i:                       ; preds = %.lr.ph.i28.i
  %.phi.trans.insert.i32.i = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %.pre.i33.i = load i32, ptr %.phi.trans.insert.i32.i, align 8, !tbaa !34
  br label %._crit_edge.i22.i

._crit_edge.i22.i:                                ; preds = %._crit_edge.loopexit.i31.i, %bb.cd
  %i.hi = phi i32 [ %i.gt, %bb.cd ], [ %.pre.i33.i, %._crit_edge.loopexit.i31.i ] ; 3 uses
  %.018.lcssa.i23.i = phi ptr [ %i.gw, %bb.cd ], [ %i.hd, %._crit_edge.loopexit.i31.i ]
  %.0.lcssa.i24.i = phi ptr [ %i.gz, %bb.cd ], [ %i.hb, %._crit_edge.loopexit.i31.i ]
  %.lcssa23.i25.i = phi ptr [ %i.gn, %bb.cd ], [ %i.he, %._crit_edge.loopexit.i31.i ]
  %.lcssa.i26.i = phi ptr [ %i.gp, %bb.cd ], [ %i.hg, %._crit_edge.loopexit.i31.i ]
  %i.hj = ptrtoint ptr %.018.lcssa.i23.i to i64
  %i.hk = ptrtoint ptr %.0.lcssa.i24.i to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %sext.i27.i = shl i64 %i.hl, 32
  %i.hm = ashr exact i64 %sext.i27.i, 32          ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %i.gi, i64 %i.hm ; 2 uses
  store i32 %i.hi, ptr @yy_n_chars, align 4, !tbaa !19
  %i.ho = getelementptr inbounds nuw i8, ptr %.lcssa23.i25.i, i64 28
  store i32 %i.hi, ptr %i.ho, align 4, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.lcssa.i26.i, i64 2
  %i.hq = icmp ult ptr %i.hn, %i.hp
  br i1 %i.hq, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge.i22.i
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.20) #26
  unreachable

bb.cf:                                            ; preds = %._crit_edge.i22.i
  %i.hr = getelementptr inbounds i8, ptr %i.gh, i64 %i.hm
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cc
  %i.hs = phi i32 [ %i.hi, %bb.cf ], [ %i.gk, %bb.cc ]
  %.020.i20.i = phi ptr [ %i.hr, %bb.cf ], [ %i.gh, %bb.cc ] ; 2 uses
  %.019.i21.i = phi ptr [ %i.hn, %bb.cf ], [ %i.gi, %bb.cc ]
  %i.ht = getelementptr inbounds i8, ptr %.019.i21.i, i64 -1 ; 4 uses
  store i8 %i.gm, ptr %i.ht, align 1, !tbaa !24
  %i.hu = icmp eq i8 %i.gm, 10
  br i1 %i.hu, label %bb.ch, label %yyunput.exit34.i

bb.ch:                                            ; preds = %bb.cg
  %i.hv = load i32, ptr @yylineno, align 4, !tbaa !19
  %i.hw = add nsw i32 %i.hv, -1
  store i32 %i.hw, ptr @yylineno, align 4, !tbaa !19
  br label %yyunput.exit34.i

yyunput.exit34.i:                                 ; preds = %bb.ch, %bb.cg
  store ptr %.020.i20.i, ptr @yytext, align 8, !tbaa !30
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !24  ; 2 uses
  store i8 %i.hx, ptr @yy_hold_char, align 1, !tbaa !24
  store ptr %i.ht, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.hy = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.hz = icmp ugt ptr %i.gl, %i.hy
  br i1 %i.hz, label %bb.cc, label %expand_token.exit, !llvm.loop !43

expand_token.exit:                                ; preds = %yyunput.exit34.i, %input.exit.thread.i
  %i.ia = load ptr, ptr @text, align 8, !tbaa !30
  call void @free(ptr noundef %i.ia) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  store ptr %i.ga, ptr @yylval, align 8, !tbaa !24
  %char0.i = load i8, ptr %i.ga, align 1
  %.not106.i = icmp eq i8 %char0.i, 0
  br i1 %.not106.i, label %bb.ci, label %yylex1.exit

bb.ci:                                            ; preds = %expand_token.exit
  call void @free(ptr noundef nonnull %i.ga) #31
  br label %.loopexit.i.backedge

bb.cj:                                            ; preds = %.preheader482.i
  %i.ib = load ptr, ptr @yytext, align 8, !tbaa !30
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !24
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ie = load ptr, ptr @cur_filename, align 8, !tbaa !30
  %i.if = load i32, ptr @yylineno, align 4, !tbaa !19
  %i.ig = sext i8 %i.ic to i32
  %i.ih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.19, ptr noundef %i.ie, i32 noundef %i.if, i32 noundef %i.ig) #29 ; 0 uses
  br label %.loopexit.i.backedge

bb.ck:                                            ; preds = %.preheader482.i
  %i.ii = load ptr, ptr @yytext, align 8, !tbaa !30
  %i.ij = load i32, ptr @yyleng, align 4, !tbaa !19 ; 2 uses
  %i.ik = add nsw i32 %i.ij, 1
  %i.il = sext i32 %i.ik to i64
  %i.im = call noalias ptr @malloc(i64 noundef range(i64 -2147483647, 2147483648) %i.il) #25 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.im, null
  br i1 %.not.i.i72, label %bb.cl, label %alloc_string.exit

bb.cl:                                            ; preds = %bb.ck
  call void @exit(i32 noundef 1) #30
  unreachable

alloc_string.exit:                                ; preds = %bb.ck
  store ptr %i.im, ptr @text, align 8, !tbaa !30
  %i.in = sext i32 %i.ij to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.im, ptr readonly align 1 %i.ii, i64 %i.in, i1 false)
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 %i.in
  store i8 0, ptr %i.io, align 1, !tbaa !24
  store ptr %i.im, ptr @yylval, align 8, !tbaa !24
  br label %yylex1.exit

bb.cm:                                            ; preds = %.preheader482.i
  store i32 1, ptr @yy_start, align 4, !tbaa !19
  br label %yylex1.exit

bb.cn:                                            ; preds = %.preheader482.i
  %i.ip = load ptr, ptr @yytext, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  store ptr %i.iq, ptr %i.b, align 8, !tbaa !30
  %i.ir = call ptr @expand_dollar(ptr noundef nonnull %i.b) #31 ; 3 uses
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.it = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.is) #32 ; 2 uses
  %.not.i59 = icmp eq i64 %i.it, 0
  br i1 %.not.i59, label %._crit_edge.i62, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.cn
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.it
  %yy_n_chars.promoted.i = load i32, ptr @yy_n_chars, align 4
  %yy_hold_char.promoted.i = load i8, ptr @yy_hold_char, align 1
  %yy_c_buf_p.promoted.i = load ptr, ptr @yy_c_buf_p, align 8
  %i.iv = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %i.iw = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iw ; 2 uses
  %.pre.i61 = load ptr, ptr @yytext, align 8, !tbaa !30
  br label %bb.co

bb.co:                                            ; preds = %yyunput.exit.i, %.lr.ph.i60
  %i.iy = phi ptr [ %.pre.i61, %.lr.ph.i60 ], [ %.020.i.i, %yyunput.exit.i ] ; 2 uses
  %.09.i = phi ptr [ %i.iu, %.lr.ph.i60 ], [ %i.jc, %yyunput.exit.i ]
  %i.iz = phi ptr [ %yy_c_buf_p.promoted.i, %.lr.ph.i60 ], [ %i.kk, %yyunput.exit.i ] ; 4 uses
  %i.ja = phi i8 [ %yy_hold_char.promoted.i, %.lr.ph.i60 ], [ %i.ko, %yyunput.exit.i ]
  %i.jb = phi i32 [ %yy_n_chars.promoted.i, %.lr.ph.i60 ], [ %i.kj, %yyunput.exit.i ] ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 3 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !24  ; 2 uses
  store i8 %i.ja, ptr %i.iz, align 1, !tbaa !24
  %i.je = load ptr, ptr %i.ix, align 8, !tbaa !15 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !23 ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.ji = icmp ult ptr %i.iz, %i.jh
  br i1 %i.ji, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !34 ; 2 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr i8, ptr %i.jg, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 2      ; 2 uses
  %i.jo = sext i32 %i.jb to i64
  %i.jp = getelementptr i8, ptr %i.jg, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jp, i64 2      ; 3 uses
  %i.jr = icmp ugt ptr %i.jq, %i.jg
  br i1 %i.jr, label %.lr.ph.i.i71, label %._crit_edge.i.i

.lr.ph.i.i71:                                     ; preds = %bb.cp, %.lr.ph.i.i71
  %.025.i.i = phi ptr [ %i.js, %.lr.ph.i.i71 ], [ %i.jq, %bb.cp ]
  %.01824.i.i = phi ptr [ %i.ju, %.lr.ph.i.i71 ], [ %i.jn, %bb.cp ]
  %i.js = getelementptr inbounds i8, ptr %.025.i.i, i64 -1 ; 4 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !24
  %i.ju = getelementptr inbounds i8, ptr %.01824.i.i, i64 -1 ; 3 uses
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !24
  %i.jv = load ptr, ptr %i.ix, align 8, !tbaa !15 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !23 ; 2 uses
  %i.jy = icmp ugt ptr %i.js, %i.jx
  br i1 %i.jy, label %.lr.ph.i.i71, label %._crit_edge.loopexit.i.i, !llvm.loop !41

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i71
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.cp
  %i.jz = phi i32 [ %i.jk, %bb.cp ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.018.lcssa.i.i = phi ptr [ %i.jn, %bb.cp ], [ %i.ju, %._crit_edge.loopexit.i.i ]
  %.0.lcssa.i.i = phi ptr [ %i.jq, %bb.cp ], [ %i.js, %._crit_edge.loopexit.i.i ]
  %.lcssa23.i.i = phi ptr [ %i.je, %bb.cp ], [ %i.jv, %._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi ptr [ %i.jg, %bb.cp ], [ %i.jx, %._crit_edge.loopexit.i.i ]
  %i.ka = ptrtoint ptr %.018.lcssa.i.i to i64
  %i.kb = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %sext.i.i = shl i64 %i.kc, 32
  %i.kd = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %i.iz, i64 %i.kd ; 2 uses
  store i32 %i.jz, ptr @yy_n_chars, align 4, !tbaa !19
  %i.kf = getelementptr inbounds nuw i8, ptr %.lcssa23.i.i, i64 28
  store i32 %i.jz, ptr %i.kf, align 4, !tbaa !20
  %i.kg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 2
  %i.kh = icmp ult ptr %i.ke, %i.kg
  br i1 %i.kh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.20) #26
  unreachable

bb.cr:                                            ; preds = %._crit_edge.i.i
  %i.ki = getelementptr inbounds i8, ptr %i.iy, i64 %i.kd
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %i.kj = phi i32 [ %i.jz, %bb.cr ], [ %i.jb, %bb.co ]
  %.020.i.i = phi ptr [ %i.ki, %bb.cr ], [ %i.iy, %bb.co ] ; 2 uses
  %.019.i.i = phi ptr [ %i.ke, %bb.cr ], [ %i.iz, %bb.co ]
  %i.kk = getelementptr inbounds i8, ptr %.019.i.i, i64 -1 ; 4 uses
  store i8 %i.jd, ptr %i.kk, align 1, !tbaa !24
  %i.kl = icmp eq i8 %i.jd, 10
  br i1 %i.kl, label %bb.ct, label %yyunput.exit.i

bb.ct:                                            ; preds = %bb.cs
  %i.km = load i32, ptr @yylineno, align 4, !tbaa !19
  %i.kn = add nsw i32 %i.km, -1
  store i32 %i.kn, ptr @yylineno, align 4, !tbaa !19
  br label %yyunput.exit.i

yyunput.exit.i:                                   ; preds = %bb.ct, %bb.cs
  store ptr %.020.i.i, ptr @yytext, align 8, !tbaa !30
  %i.ko = load i8, ptr %i.kk, align 1, !tbaa !24  ; 2 uses
  store i8 %i.ko, ptr @yy_hold_char, align 1, !tbaa !24
  store ptr %i.kk, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.kp = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.kq = icmp ugt ptr %i.jc, %i.kp
  br i1 %i.kq, label %bb.co, label %._crit_edge.i62, !llvm.loop !44

._crit_edge.i62:                                  ; preds = %yyunput.exit.i, %bb.cn
  %i.kr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ir) #32 ; 2 uses
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = load i32, ptr @text_size, align 4, !tbaa !19 ; 2 uses
  %i.ku = add nsw i32 %i.kt, %i.ks                ; 4 uses
  %i.kv = load i32, ptr @text_asize, align 4, !tbaa !19
  %.not.i.i63 = icmp slt i32 %i.ku, %i.kv
  %.pre.i5.i = load ptr, ptr @text, align 8, !tbaa !30 ; 2 uses
  br i1 %.not.i.i63, label %append_expanded_string.exit, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i62
  %i.kw = and i32 %i.ku, -16
  %i.kx = add nsw i32 %i.kw, 16                   ; 2 uses
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = call ptr @realloc(ptr noundef %.pre.i5.i, i64 noundef range(i64 16, 2147483633) %i.ky) #27 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i64, label %bb.cv, label %xrealloc.exit.i.i65

bb.cv:                                            ; preds = %bb.cu
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i.i65:                              ; preds = %bb.cu
  store ptr %i.kz, ptr @text, align 8, !tbaa !30
  store i32 %i.kx, ptr @text_asize, align 4, !tbaa !19
  br label %append_expanded_string.exit

append_expanded_string.exit:                      ; preds = %._crit_edge.i62, %xrealloc.exit.i.i65
  %i.la = phi ptr [ %i.kz, %xrealloc.exit.i.i65 ], [ %.pre.i5.i, %._crit_edge.i62 ] ; 2 uses
  %i.lb = sext i32 %i.kt to i64
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.lb
  %sext.i70 = shl i64 %i.kr, 32
  %i.ld = ashr exact i64 %sext.i70, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr nonnull readonly align 1 %i.ir, i64 %i.ld, i1 false)
  store i32 %i.ku, ptr @text_size, align 4, !tbaa !19
  %i.le = sext i32 %i.ku to i64
  %i.lf = getelementptr inbounds i8, ptr %i.la, i64 %i.le
  store i8 0, ptr %i.lf, align 1, !tbaa !24
  call void @free(ptr noundef nonnull %i.ir) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit.i.backedge

bb.cw:                                            ; preds = %.preheader482.i
  %i.lg = load ptr, ptr @yytext, align 8, !tbaa !30
  %i.lh = load i32, ptr @yyleng, align 4, !tbaa !19 ; 2 uses
  %i.li = load i32, ptr @text_size, align 4, !tbaa !19 ; 2 uses
  %i.lj = add nsw i32 %i.li, %i.lh                ; 4 uses
  %i.lk = load i32, ptr @text_asize, align 4, !tbaa !19
  %.not.i51 = icmp slt i32 %i.lj, %i.lk
  %.pre.i52 = load ptr, ptr @text, align 8, !tbaa !30 ; 2 uses
  br i1 %.not.i51, label %append_string.exit58, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ll = and i32 %i.lj, -16
  %i.lm = add nsw i32 %i.ll, 16                   ; 2 uses
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = call ptr @realloc(ptr noundef %.pre.i52, i64 noundef range(i64 16, 2147483633) %i.ln) #27 ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i53, label %bb.cy, label %xrealloc.exit.i54

bb.cy:                                            ; preds = %bb.cx
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i54:                                ; preds = %bb.cx
  store ptr %i.lo, ptr @text, align 8, !tbaa !30
  store i32 %i.lm, ptr @text_asize, align 4, !tbaa !19
  br label %append_string.exit58

append_string.exit58:                             ; preds = %bb.cw, %xrealloc.exit.i54
  %i.lp = phi ptr [ %i.lo, %xrealloc.exit.i54 ], [ %.pre.i52, %bb.cw ] ; 2 uses
  %i.lq = sext i32 %i.li to i64
  %i.lr = getelementptr inbounds i8, ptr %i.lp, i64 %i.lq
  %i.ls = sext i32 %i.lh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lr, ptr readonly align 1 %i.lg, i64 %i.ls, i1 false)
  store i32 %i.lj, ptr @text_size, align 4, !tbaa !19
  %i.lt = sext i32 %i.lj to i64
  %i.lu = getelementptr inbounds i8, ptr %i.lp, i64 %i.lt
  store i8 0, ptr %i.lu, align 1, !tbaa !24
  br label %.loopexit.i.backedge

bb.cz:                                            ; preds = %.preheader482.i
  %i.lv = load ptr, ptr @yytext, align 8, !tbaa !30
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  %i.lx = load i32, ptr @yyleng, align 4, !tbaa !19
  %i.ly = add nsw i32 %i.lx, -1                   ; 2 uses
  %i.lz = load i32, ptr @text_size, align 4, !tbaa !19 ; 2 uses
  %i.ma = add nsw i32 %i.lz, %i.ly                ; 4 uses
  %i.mb = load i32, ptr @text_asize, align 4, !tbaa !19
  %.not.i43 = icmp slt i32 %i.ma, %i.mb
  %.pre.i44 = load ptr, ptr @text, align 8, !tbaa !30 ; 2 uses
  br i1 %.not.i43, label %append_string.exit50, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mc = and i32 %i.ma, -16
  %i.md = add nsw i32 %i.mc, 16                   ; 2 uses
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = call ptr @realloc(ptr noundef %.pre.i44, i64 noundef range(i64 16, 2147483633) %i.me) #27 ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i45, label %bb.db, label %xrealloc.exit.i46

bb.db:                                            ; preds = %bb.da
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i46:                                ; preds = %bb.da
  store ptr %i.mf, ptr @text, align 8, !tbaa !30
  store i32 %i.md, ptr @text_asize, align 4, !tbaa !19
  br label %append_string.exit50

append_string.exit50:                             ; preds = %bb.cz, %xrealloc.exit.i46
  %i.mg = phi ptr [ %i.mf, %xrealloc.exit.i46 ], [ %.pre.i44, %bb.cz ] ; 2 uses
  %i.mh = sext i32 %i.lz to i64
  %i.mi = getelementptr inbounds i8, ptr %i.mg, i64 %i.mh
  %i.mj = sext i32 %i.ly to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mi, ptr nonnull readonly align 1 %i.lw, i64 %i.mj, i1 false)
  store i32 %i.ma, ptr @text_size, align 4, !tbaa !19
  %i.mk = sext i32 %i.ma to i64
  %i.ml = getelementptr inbounds i8, ptr %i.mg, i64 %i.mk
  store i8 0, ptr %i.ml, align 1, !tbaa !24
  br label %.loopexit.i.backedge

bb.dc:                                            ; preds = %.preheader482.i
  %i.mm = load ptr, ptr @yytext, align 8, !tbaa !30 ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !24  ; 2 uses
  %i.mo = icmp eq i8 %.060.i, %i.mn
  br i1 %i.mo, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 1, ptr @yy_start, align 4, !tbaa !19
  %i.mp = load ptr, ptr @text, align 8, !tbaa !30
  store ptr %i.mp, ptr @yylval, align 8, !tbaa !24
  br label %yylex1.exit

bb.de:                                            ; preds = %bb.dc
  %i.mq = load i32, ptr @text_size, align 4, !tbaa !19 ; 2 uses
  %i.mr = add nsw i32 %i.mq, 1                    ; 4 uses
  %i.ms = load i32, ptr @text_asize, align 4, !tbaa !19
  %.not.i35 = icmp slt i32 %i.mr, %i.ms
  %.pre.i36 = load ptr, ptr @text, align 8, !tbaa !30 ; 2 uses
  br i1 %.not.i35, label %append_string.exit42, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mt = and i32 %i.mr, -16
  %i.mu = add nsw i32 %i.mt, 16                   ; 2 uses
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = call ptr @realloc(ptr noundef %.pre.i36, i64 noundef range(i64 16, 2147483633) %i.mv) #27 ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i37, label %bb.dg, label %xrealloc.exit.i38

bb.dg:                                            ; preds = %bb.df
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i38:                                ; preds = %bb.df
  store ptr %i.mw, ptr @text, align 8, !tbaa !30
  store i32 %i.mu, ptr @text_asize, align 4, !tbaa !19
  %.pre731 = load i8, ptr %i.mm, align 1
  br label %append_string.exit42

append_string.exit42:                             ; preds = %bb.de, %xrealloc.exit.i38
  %i.mx = phi i8 [ %.pre731, %xrealloc.exit.i38 ], [ %i.mn, %bb.de ]
  %i.my = phi ptr [ %i.mw, %xrealloc.exit.i38 ], [ %.pre.i36, %bb.de ] ; 2 uses
  %i.mz = sext i32 %i.mq to i64
  %i.na = getelementptr inbounds i8, ptr %i.my, i64 %i.mz
  store i8 %i.mx, ptr %i.na, align 1
  store i32 %i.mr, ptr @text_size, align 4, !tbaa !19
  %i.nb = sext i32 %i.mr to i64
  %i.nc = getelementptr inbounds i8, ptr %i.my, i64 %i.nb
  store i8 0, ptr %i.nc, align 1, !tbaa !24
  br label %.loopexit.i.backedge

bb.dh:                                            ; preds = %.preheader482.i
  %i.nd = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ne = load ptr, ptr @cur_filename, align 8, !tbaa !30
  %i.nf = load i32, ptr @cur_lineno, align 4, !tbaa !19
  %i.ng = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nd, ptr noundef nonnull @.str.13, ptr noundef %i.ne, i32 noundef %i.nf) #29 ; 0 uses
  %i.nh = load ptr, ptr @yytext, align 8, !tbaa !30 ; 2 uses
  %i.ni = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !30 ; 4 uses
  %i.nj = load i8, ptr @yy_hold_char, align 1, !tbaa !24
  store i8 %i.nj, ptr %i.ni, align 1, !tbaa !24
  %i.nk = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %i.nl = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nl ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !15 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !23 ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 2
  %i.nr = icmp ult ptr %i.ni, %i.nq
  br i1 %i.nr, label %bb.di, label %yyunput.exit

bb.di:                                            ; preds = %bb.dh
  %i.ns = load i32, ptr @yy_n_chars, align 4, !tbaa !19
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !34 ; 2 uses
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr i8, ptr %i.np, i64 %i.nv
  %i.nx = getelementptr i8, ptr %i.nw, i64 2      ; 2 uses
  %i.ny = sext i32 %i.ns to i64
  %i.nz = getelementptr i8, ptr %i.np, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nz, i64 2      ; 3 uses
  %i.ob = icmp ugt ptr %i.oa, %i.np
  br i1 %i.ob, label %.lr.ph.i33, label %._crit_edge.i31

.lr.ph.i33:                                       ; preds = %bb.di, %.lr.ph.i33
  %.025.i = phi ptr [ %i.oc, %.lr.ph.i33 ], [ %i.oa, %bb.di ]
  %.01824.i = phi ptr [ %i.oe, %.lr.ph.i33 ], [ %i.nx, %bb.di ]
  %i.oc = getelementptr inbounds i8, ptr %.025.i, i64 -1 ; 4 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !24
  %i.oe = getelementptr inbounds i8, ptr %.01824.i, i64 -1 ; 3 uses
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !24
  %i.of = load ptr, ptr %i.nm, align 8, !tbaa !15 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !23 ; 2 uses
  %i.oi = icmp ugt ptr %i.oc, %i.oh
  br i1 %i.oi, label %.lr.ph.i33, label %._crit_edge.loopexit.i, !llvm.loop !41

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i33
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %.pre.i34 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !34
  br label %._crit_edge.i31

._crit_edge.i31:                                  ; preds = %._crit_edge.loopexit.i, %bb.di
  %i.oj = phi i32 [ %i.nu, %bb.di ], [ %.pre.i34, %._crit_edge.loopexit.i ] ; 2 uses
  %.018.lcssa.i = phi ptr [ %i.nx, %bb.di ], [ %i.oe, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ %i.oa, %bb.di ], [ %i.oc, %._crit_edge.loopexit.i ]
  %.lcssa23.i = phi ptr [ %i.nn, %bb.di ], [ %i.of, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi ptr [ %i.np, %bb.di ], [ %i.oh, %._crit_edge.loopexit.i ]
  %i.ok = ptrtoint ptr %.018.lcssa.i to i64
  %i.ol = ptrtoint ptr %.0.lcssa.i to i64
  %i.om = sub i64 %i.ok, %i.ol
  %sext.i32 = shl i64 %i.om, 32
  %i.on = ashr exact i64 %sext.i32, 32            ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %i.ni, i64 %i.on ; 2 uses
  store i32 %i.oj, ptr @yy_n_chars, align 4, !tbaa !19
  %i.op = getelementptr inbounds nuw i8, ptr %.lcssa23.i, i64 28
  store i32 %i.oj, ptr %i.op, align 4, !tbaa !20
  %i.oq = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 2
  %i.or = icmp ult ptr %i.oo, %i.oq
  br i1 %i.or, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %._crit_edge.i31
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.20) #26
  unreachable

bb.dk:                                            ; preds = %._crit_edge.i31
  %i.os = getelementptr inbounds i8, ptr %i.nh, i64 %i.on
  br label %yyunput.exit

yyunput.exit:                                     ; preds = %bb.dh, %bb.dk
  %.020.i = phi ptr [ %i.os, %bb.dk ], [ %i.nh, %bb.dh ]
  %.019.i = phi ptr [ %i.oo, %bb.dk ], [ %i.ni, %bb.dh ]
  %i.ot = getelementptr inbounds i8, ptr %.019.i, i64 -1 ; 3 uses
  store i8 10, ptr %i.ot, align 1, !tbaa !24
  %i.ou = load i32, ptr @yylineno, align 4, !tbaa !19
  %i.ov = add nsw i32 %i.ou, -1
  store i32 %i.ov, ptr @yylineno, align 4, !tbaa !19
  store ptr %.020.i, ptr @yytext, align 8, !tbaa !30
  %i.ow = load i8, ptr %i.ot, align 1, !tbaa !24
  store i8 %i.ow, ptr @yy_hold_char, align 1, !tbaa !24
  store ptr %i.ot, ptr @yy_c_buf_p, align 8, !tbaa !30
  store i32 1, ptr @yy_start, align 4, !tbaa !19
  %i.ox = load ptr, ptr @text, align 8, !tbaa !30
  store ptr %i.ox, ptr @yylval, align 8, !tbaa !24
  br label %yylex1.exit

bb.dl:                                            ; preds = %.preheader482.i
  store i32 1, ptr @yy_start, align 4, !tbaa !19
  %i.oy = load ptr, ptr @text, align 8, !tbaa !30
  store ptr %i.oy, ptr @yylval, align 8, !tbaa !24
  br label %yylex1.exit

.loopexit127.i:                                   ; preds = %.preheader482.i
  %i.oz = load i32, ptr @yyleng, align 4, !tbaa !19 ; 4 uses
  %i.pa = icmp sgt i32 %i.oz, 0
  br i1 %i.pa, label %.lr.ph284.i, label %._crit_edge285.i

.lr.ph284.i:                                      ; preds = %.loopexit127.i
  %i.pb = load ptr, ptr @yytext, align 8, !tbaa !30 ; 3 uses
  %wide.trip.count447.i = zext nneg i32 %i.oz to i64 ; 2 uses
  %xtraiter1986 = and i64 %wide.trip.count447.i, 1
  %i.pc = icmp eq i32 %i.oz, 1
  br i1 %i.pc, label %.epil.preheader1985, label %.lr.ph284.i.new

.lr.ph284.i.new:                                  ; preds = %.lr.ph284.i
  %unroll_iter1990 = and i64 %wide.trip.count447.i, 2147483646
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dm, %.lr.ph284.i.new
  %indvars.iv444.i = phi i64 [ 0, %.lr.ph284.i.new ], [ %indvars.iv.next445.i.1, %bb.dm ] ; 3 uses
  %.055282.i = phi i32 [ 0, %.lr.ph284.i.new ], [ %.1.i.1, %bb.dm ] ; 2 uses
  %niter1991 = phi i64 [ 0, %.lr.ph284.i.new ], [ %niter1991.next.1, %bb.dm ]
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv444.i
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !24
  %i.pf = icmp eq i8 %i.pe, 9
  %i.pg = and i32 %.055282.i, -8
  %i.ph = add nsw i32 %i.pg, 8
  %i.pi = add nsw i32 %.055282.i, 1
  %.1.i = select i1 %i.pf, i32 %i.ph, i32 %i.pi   ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv444.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !24
  %i.pm = icmp eq i8 %i.pl, 9
  %i.pn = and i32 %.1.i, -8
  %i.po = add nsw i32 %i.pn, 8
  %i.pp = add nsw i32 %.1.i, 1
  %.1.i.1 = select i1 %i.pm, i32 %i.po, i32 %i.pp ; 3 uses
  %indvars.iv.next445.i.1 = add nuw nsw i64 %indvars.iv444.i, 2 ; 2 uses
  %niter1991.next.1 = add i64 %niter1991, 2       ; 2 uses
  %niter1991.ncmp.1 = icmp eq i64 %niter1991.next.1, %unroll_iter1990
  br i1 %niter1991.ncmp.1, label %._crit_edge285.i.loopexit.unr-lcssa, label %bb.dm, !llvm.loop !45

._crit_edge285.i.loopexit.unr-lcssa:              ; preds = %bb.dm
  %lcmp.mod1987.not = icmp eq i64 %xtraiter1986, 0
  br i1 %lcmp.mod1987.not, label %._crit_edge285.i, label %.epil.preheader1985

.epil.preheader1985:                              ; preds = %._crit_edge285.i.loopexit.unr-lcssa, %.lr.ph284.i
  %indvars.iv444.i.epil.init = phi i64 [ 0, %.lr.ph284.i ], [ %indvars.iv.next445.i.1, %._crit_edge285.i.loopexit.unr-lcssa ]
  %.055282.i.epil.init = phi i32 [ 0, %.lr.ph284.i ], [ %.1.i.1, %._crit_edge285.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1989 = trunc i32 %i.oz to i1
  call void @llvm.assume(i1 %lcmp.mod1989)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv444.i.epil.init
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !24
  %i.ps = icmp eq i8 %i.pr, 9
  %i.pt = and i32 %.055282.i.epil.init, -8
  %i.pu = add nsw i32 %i.pt, 8
  %i.pv = add nsw i32 %.055282.i.epil.init, 1
  %.1.i.epil = select i1 %i.ps, i32 %i.pu, i32 %i.pv
  br label %._crit_edge285.i

._crit_edge285.i:                                 ; preds = %.epil.preheader1985, %._crit_edge285.i.loopexit.unr-lcssa, %.loopexit127.i
  %.055.lcssa.i = phi i32 [ 0, %.loopexit127.i ], [ %.1.i.1, %._crit_edge285.i.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader1985 ] ; 3 uses
  store i32 %.055.lcssa.i, ptr @last_ts, align 4, !tbaa !19
  %i.pw = load i32, ptr @first_ts, align 4, !tbaa !19 ; 3 uses
  %.not105.i = icmp eq i32 %i.pw, 0
  br i1 %.not105.i, label %.loopexit.i.backedge, label %bb.dn

bb.dn:                                            ; preds = %._crit_edge285.i
  %i.px = icmp slt i32 %.055.lcssa.i, %i.pw
  br i1 %i.px, label %.critedge.i, label %bb.do

.critedge.i:                                      ; preds = %bb.dn
  %i.py = load ptr, ptr @text, align 8, !tbaa !30
  store ptr %i.py, ptr @yylval, align 8, !tbaa !24
  store i32 1, ptr @yy_start, align 4, !tbaa !19
  br label %yylex1.exit

bb.do:                                            ; preds = %bb.dn
  %i.pz = sub nsw i32 %.055.lcssa.i, %i.pw        ; 3 uses
  %i.qa = icmp samesign ugt i32 %i.pz, 8
  %.pre729 = load i32, ptr @text_asize, align 4   ; 2 uses
  br i1 %i.qa, label %.lr.ph289.preheader.i, label %.._crit_edge290.i_crit_edge

.._crit_edge290.i_crit_edge:                      ; preds = %bb.do
  %.pre = load i32, ptr @text_size, align 4, !tbaa !19
  %.pre.i21.pre = load ptr, ptr @text, align 8, !tbaa !30
  br label %._crit_edge290.i

.lr.ph289.preheader.i:                            ; preds = %bb.do
  %text.promoted.i = load ptr, ptr @text, align 8
  %text_size.promoted.i = load i32, ptr @text_size, align 4
  %0 = sext i32 %text_size.promoted.i to i64
  br label %.lr.ph289.i

.lr.ph289.i:                                      ; preds = %append_string.exit.i, %.lr.ph289.preheader.i
  %indvars.iv449.i = phi i64 [ %0, %.lr.ph289.preheader.i ], [ %indvars.iv.next450.i, %append_string.exit.i ] ; 2 uses
  %i.qb = phi i32 [ %i.pz, %.lr.ph289.preheader.i ], [ %i.ql, %append_string.exit.i ] ; 2 uses
  %.2287.i = phi i32 [ %.pre729, %.lr.ph289.preheader.i ], [ %i.qi, %append_string.exit.i ] ; 2 uses
  %i.qc = phi ptr [ %text.promoted.i, %.lr.ph289.preheader.i ], [ %i.qh, %append_string.exit.i ] ; 2 uses
  %indvars.iv.next450.i = add nsw i64 %indvars.iv449.i, 8 ; 4 uses
  %1 = sext i32 %.2287.i to i64
  %.not.i107.i = icmp slt i64 %indvars.iv.next450.i, %1
  %.pre455.i = trunc nsw i64 %indvars.iv.next450.i to i32 ; 3 uses
  br i1 %.not.i107.i, label %append_string.exit.i, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph289.i
  %i.qd = and i32 %.pre455.i, -16
  %i.qe = add nsw i32 %i.qd, 16                   ; 3 uses
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = call ptr @realloc(ptr noundef %i.qc, i64 noundef range(i64 16, 2147483633) %i.qf) #27 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i, label %bb.dq, label %xrealloc.exit.i.i

bb.dq:                                            ; preds = %bb.dp
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i.i:                                ; preds = %bb.dp
  store ptr %i.qg, ptr @text, align 8, !tbaa !30
  store i32 %i.qe, ptr @text_asize, align 4, !tbaa !19
  br label %append_string.exit.i

append_string.exit.i:                             ; preds = %xrealloc.exit.i.i, %.lr.ph289.i
  %i.qh = phi ptr [ %i.qg, %xrealloc.exit.i.i ], [ %i.qc, %.lr.ph289.i ] ; 4 uses
  %i.qi = phi i32 [ %i.qe, %xrealloc.exit.i.i ], [ %.2287.i, %.lr.ph289.i ] ; 2 uses
  %i.qj = getelementptr inbounds i8, ptr %i.qh, i64 %indvars.iv449.i
  store i64 2314885530818453536, ptr %i.qj, align 1
  store i32 %.pre455.i, ptr @text_size, align 4, !tbaa !19
  %i.qk = getelementptr inbounds i8, ptr %i.qh, i64 %indvars.iv.next450.i
  store i8 0, ptr %i.qk, align 1, !tbaa !24
  %i.ql = add nsw i32 %i.qb, -8                   ; 2 uses
  %i.qm = icmp sgt i32 %i.qb, 16
  br i1 %i.qm, label %.lr.ph289.i, label %._crit_edge290.i, !llvm.loop !46

._crit_edge290.i:                                 ; preds = %append_string.exit.i, %.._crit_edge290.i_crit_edge
  %.pre.i24 = phi ptr [ %.pre.i21.pre, %.._crit_edge290.i_crit_edge ], [ %i.qh, %append_string.exit.i ] ; 2 uses
  %i.qn = phi i32 [ %.pre729, %.._crit_edge290.i_crit_edge ], [ %i.qi, %append_string.exit.i ]
  %i.qo = phi i32 [ %.pre, %.._crit_edge290.i_crit_edge ], [ %.pre455.i, %append_string.exit.i ] ; 2 uses
  %.2.lcssa.i = phi i32 [ %i.pz, %.._crit_edge290.i_crit_edge ], [ %i.ql, %append_string.exit.i ] ; 2 uses
  %i.qp = add nsw i32 %i.qo, %.2.lcssa.i          ; 4 uses
  %.not.i23 = icmp slt i32 %i.qp, %i.qn
  br i1 %.not.i23, label %append_string.exit30, label %bb.dr

bb.dr:                                            ; preds = %._crit_edge290.i
  %i.qq = and i32 %i.qp, -16
  %i.qr = add nsw i32 %i.qq, 16                   ; 2 uses
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = call ptr @realloc(ptr noundef %.pre.i24, i64 noundef range(i64 16, 2147483633) %i.qs) #27 ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i25, label %bb.ds, label %xrealloc.exit.i26

bb.ds:                                            ; preds = %bb.dr
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i26:                                ; preds = %bb.dr
  store ptr %i.qt, ptr @text, align 8, !tbaa !30
  store i32 %i.qr, ptr @text_asize, align 4, !tbaa !19
  br label %append_string.exit30

append_string.exit30:                             ; preds = %._crit_edge290.i, %xrealloc.exit.i26
  %i.qu = phi ptr [ %i.qt, %xrealloc.exit.i26 ], [ %.pre.i24, %._crit_edge290.i ] ; 2 uses
  %i.qv = sext i32 %i.qo to i64
  %i.qw = getelementptr inbounds i8, ptr %i.qu, i64 %i.qv
  %i.qx = sext i32 %.2.lcssa.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qw, ptr nonnull align 1 @.str.14, i64 %i.qx, i1 false)
  store i32 %i.qp, ptr @text_size, align 4, !tbaa !19
  %i.qy = sext i32 %i.qp to i64
  %i.qz = getelementptr inbounds i8, ptr %i.qu, i64 %i.qy
  store i8 0, ptr %i.qz, align 1, !tbaa !24
  br label %.loopexit.i.backedge

bb.dt:                                            ; preds = %.preheader482.i
  %i.ra = load i8, ptr @yy_hold_char, align 1, !tbaa !24
  store i8 %i.ra, ptr %.269.i, align 1, !tbaa !24
  %.ptr104.i = getelementptr inbounds i8, ptr %.269.i, i64 -1 ; 6 uses
  %i.rb = load i8, ptr %.ptr104.i, align 1, !tbaa !24
  %i.rc = icmp eq i8 %i.rb, 10
  br i1 %i.rc, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %yylineno.promoted292.i = load i32, ptr @yylineno, align 4
  %i.rd = add nsw i32 %yylineno.promoted292.i, -1
  store i32 %i.rd, ptr @yylineno, align 4, !tbaa !19
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  store ptr %.ptr104.i, ptr @yy_c_buf_p, align 8, !tbaa !30
  store ptr %.165.i, ptr @yytext, align 8, !tbaa !30
  %i.re = ptrtoint ptr %.ptr104.i to i64
  %i.rf = sub i64 %i.re, %i.ba
  %i.rg = trunc i64 %i.rf to i32
  store i32 %i.rg, ptr @yyleng, align 4, !tbaa !19
  %i.rh = load i8, ptr %.ptr104.i, align 1, !tbaa !24
  store i8 %i.rh, ptr @yy_hold_char, align 1, !tbaa !24
  store i8 0, ptr %.ptr104.i, align 1, !tbaa !24
  store ptr %.ptr104.i, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.ri = load ptr, ptr @text, align 8, !tbaa !30
  store ptr %i.ri, ptr @yylval, align 8, !tbaa !24
  store i32 1, ptr @yy_start, align 4, !tbaa !19
  br label %yylex1.exit

bb.dw:                                            ; preds = %.preheader482.i
  %i.rj = load i32, ptr @text_size, align 4, !tbaa !19 ; 2 uses
  %i.rk = add nsw i32 %i.rj, 1                    ; 4 uses
  %i.rl = load i32, ptr @text_asize, align 4, !tbaa !19
  %.not.i15 = icmp slt i32 %i.rk, %i.rl
  %.pre.i16 = load ptr, ptr @text, align 8, !tbaa !30 ; 2 uses
  br i1 %.not.i15, label %append_string.exit22, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rm = and i32 %i.rk, -16
  %i.rn = add nsw i32 %i.rm, 16                   ; 2 uses
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = call ptr @realloc(ptr noundef %.pre.i16, i64 noundef range(i64 16, 2147483633) %i.ro) #27 ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i17, label %bb.dy, label %xrealloc.exit.i18

bb.dy:                                            ; preds = %bb.dx
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i18:                                ; preds = %bb.dx
  store ptr %i.rp, ptr @text, align 8, !tbaa !30
  store i32 %i.rn, ptr @text_asize, align 4, !tbaa !19
  br label %append_string.exit22

append_string.exit22:                             ; preds = %bb.dw, %xrealloc.exit.i18
  %i.rq = phi ptr [ %i.rp, %xrealloc.exit.i18 ], [ %.pre.i16, %bb.dw ] ; 2 uses
  %i.rr = sext i32 %i.rj to i64
  %i.rs = getelementptr inbounds i8, ptr %i.rq, i64 %i.rr
  store i8 10, ptr %i.rs, align 1
  store i32 %i.rk, ptr @text_size, align 4, !tbaa !19
  %i.rt = sext i32 %i.rk to i64
  %i.ru = getelementptr inbounds i8, ptr %i.rq, i64 %i.rt
  store i8 0, ptr %i.ru, align 1, !tbaa !24
  br label %.loopexit.i.backedge

thread-pre-split.i:                               ; preds = %.preheader482.i
  %.pr.i = load i32, ptr @yyleng, align 4, !tbaa !19 ; 2 uses
  %.not99278.i = icmp eq i32 %.pr.i, 0
  %.pre451.i = load ptr, ptr @yytext, align 8, !tbaa !30 ; 2 uses
  br i1 %.not99278.i, label %._crit_edge.i, label %.lr.ph279.i

.lr.ph279.i:                                      ; preds = %thread-pre-split.i
  %i.rv = sext i32 %.pr.i to i64
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ea, %.lr.ph279.i
  %indvars.iv441.i = phi i64 [ %i.rv, %.lr.ph279.i ], [ %indvars.iv.next442.i, %bb.ea ] ; 3 uses
  %i.rw = getelementptr i8, ptr %.pre451.i, i64 %indvars.iv441.i
  %i.rx = getelementptr i8, ptr %i.rw, i64 -1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !24
  switch i8 %i.ry, label %._crit_edge.loopexit.split.loop.exit.i [
    i8 32, label %bb.ea
    i8 9, label %bb.ea
  ]

bb.ea:                                            ; preds = %bb.dz, %bb.dz
  %indvars.iv.next442.i = add nsw i64 %indvars.iv441.i, -1 ; 3 uses
  %i.rz = trunc nsw i64 %indvars.iv.next442.i to i32
  store i32 %i.rz, ptr @yyleng, align 4, !tbaa !19
  %.not99.i = icmp eq i64 %indvars.iv.next442.i, 0
  br i1 %.not99.i, label %._crit_edge.i, label %bb.dz, !llvm.loop !47

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.dz
  %i.sa = trunc nsw i64 %indvars.iv441.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ea, %._crit_edge.loopexit.split.loop.exit.i, %thread-pre-split.i
  %.lcssa275.i = phi i32 [ 0, %thread-pre-split.i ], [ %i.sa, %._crit_edge.loopexit.split.loop.exit.i ], [ 0, %bb.ea ] ; 2 uses
  %i.sb = load i32, ptr @text_size, align 4, !tbaa !19 ; 2 uses
  %i.sc = add nsw i32 %i.sb, %.lcssa275.i         ; 4 uses
  %i.sd = load i32, ptr @text_asize, align 4, !tbaa !19
  %.not.i13 = icmp slt i32 %i.sc, %i.sd
  %.pre.i14 = load ptr, ptr @text, align 8, !tbaa !30 ; 2 uses
  br i1 %.not.i13, label %append_string.exit, label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.i
  %i.se = and i32 %i.sc, -16
  %i.sf = add nsw i32 %i.se, 16                   ; 2 uses
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = call ptr @realloc(ptr noundef %.pre.i14, i64 noundef range(i64 16, 2147483633) %i.sg) #27 ; 3 uses
  %.not.i.i = icmp eq ptr %i.sh, null
  br i1 %.not.i.i, label %bb.ec, label %xrealloc.exit.i

bb.ec:                                            ; preds = %bb.eb
  call void @exit(i32 noundef 1) #30
  unreachable

xrealloc.exit.i:                                  ; preds = %bb.eb
  store ptr %i.sh, ptr @text, align 8, !tbaa !30
  store i32 %i.sf, ptr @text_asize, align 4, !tbaa !19
  br label %append_string.exit

append_string.exit:                               ; preds = %._crit_edge.i, %xrealloc.exit.i
  %i.si = phi ptr [ %i.sh, %xrealloc.exit.i ], [ %.pre.i14, %._crit_edge.i ] ; 2 uses
  %i.sj = sext i32 %i.sb to i64
  %i.sk = getelementptr inbounds i8, ptr %i.si, i64 %i.sj
  %i.sl = sext i32 %.lcssa275.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sk, ptr readonly align 1 %.pre451.i, i64 %i.sl, i1 false)
  store i32 %i.sc, ptr @text_size, align 4, !tbaa !19
  %i.sm = sext i32 %i.sc to i64
  %i.sn = getelementptr inbounds i8, ptr %i.si, i64 %i.sm
  store i8 0, ptr %i.sn, align 1, !tbaa !24
  %i.so = load i32, ptr @first_ts, align 4, !tbaa !19
  %.not102.i = icmp eq i32 %i.so, 0
  br i1 %.not102.i, label %bb.ed, label %.loopexit.i.backedge

bb.ed:                                            ; preds = %append_string.exit
  %i.sp = load i32, ptr @last_ts, align 4, !tbaa !19
  store i32 %i.sp, ptr @first_ts, align 4, !tbaa !19
  br label %.loopexit.i.backedge

.loopexit.i.backedge:                             ; preds = %.preheader482.i, %.preheader482.i, %.preheader482.i, %.preheader482.i, %bb.ed, %append_string.exit, %append_string.exit22, %append_string.exit30, %._crit_edge285.i, %append_string.exit42, %append_string.exit50, %append_string.exit58, %append_expanded_string.exit, %bb.cj, %bb.ci, %new_string.exit
  %.060.i.be = phi i8 [ %.060.i, %bb.ed ], [ %.060.i, %append_string.exit42 ], [ %i.cc, %new_string.exit ], [ %.060.i, %bb.ci ], [ %.060.i, %bb.cj ], [ %.060.i, %append_string.exit22 ], [ %.060.i, %append_string.exit ], [ %.060.i, %._crit_edge285.i ], [ %.060.i, %append_string.exit30 ], [ %.060.i, %append_expanded_string.exit ], [ %.060.i, %append_string.exit58 ], [ %.060.i, %append_string.exit50 ], [ %.060.i, %.preheader482.i ], [ %.060.i, %.preheader482.i ], [ %.060.i, %.preheader482.i ], [ %.060.i, %.preheader482.i ]
  br label %.loopexit.i

bb.ee:                                            ; preds = %.preheader482.i
  %i.sq = load ptr, ptr @text, align 8, !tbaa !30
  store ptr %i.sq, ptr @yylval, align 8, !tbaa !24
  store i32 1, ptr @yy_start, align 4, !tbaa !19
  br label %yylex1.exit

bb.ef:                                            ; preds = %.preheader482.i, %.preheader482.i
  store i32 1, ptr @yy_start, align 4, !tbaa !19
  %i.sr = load i32, ptr @prev_token, align 4, !tbaa !19
  switch i32 %i.sr, label %bb.eg [
    i32 294, label %bb.eh
    i32 258, label %bb.eh
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.ss = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.st = load ptr, ptr @cur_filename, align 8, !tbaa !30
  %i.su = load i32, ptr @yylineno, align 4, !tbaa !19
  %i.sv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ss, ptr noundef nonnull @.str.16, ptr noundef %i.st, i32 noundef %i.su) #29 ; 0 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ef
  %i.sw = load ptr, ptr @current_buf, align 8, !tbaa !48
  %.not98.i = icmp eq ptr %i.sw, null
  %i.sx = load ptr, ptr @yyin, align 8, !tbaa !17
  %i.sy = call i32 @fclose(ptr noundef %i.sx)     ; 0 uses
  br i1 %.not98.i, label %yylex1.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.sz = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9 ; 2 uses
  %.not.i108.i = icmp eq ptr %i.sz, null
  br i1 %.not.i108.i, label %zconf_endfile.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ta = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %i.ta ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !15 ; 4 uses
  %.not.i.i109.i = icmp eq ptr %i.tc, null
  br i1 %.not.i.i109.i, label %zconf_endfile.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.ej
  store ptr null, ptr %i.tb, align 8, !tbaa !15
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 32
  %i.te = load i32, ptr %i.td, align 8, !tbaa !35
  %.not7.i.i.i = icmp eq i32 %i.te, 0
  br i1 %.not7.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.critedge.i.i.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !23
  call void @free(ptr noundef %i.tg) #31
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.critedge.i.i.i
  call void @free(ptr noundef nonnull %i.tc) #31
  br label %zconf_endfile.exit.i

zconf_endfile.exit.i:                             ; preds = %bb.el, %bb.ej, %bb.ei
  %i.th = load ptr, ptr @current_buf, align 8, !tbaa !48
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !50
  call void @yy_switch_to_buffer(ptr noundef %i.tj)
  %i.tk = load ptr, ptr @current_buf, align 8, !tbaa !48 ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !52
  store i32 %i.tm, ptr @yylineno, align 4, !tbaa !19
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !53
  store ptr %i.to, ptr @cur_filename, align 8, !tbaa !30
  %i.tp = load ptr, ptr %i.tk, align 8, !tbaa !54
  store ptr %i.tp, ptr @current_buf, align 8, !tbaa !48
  call void @free(ptr noundef %i.tk) #31
  br label %yylex1.exit

bb.em:                                            ; preds = %.preheader482.i
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.17) #26
  unreachable

bb.en:                                            ; preds = %.preheader482.i
  %i.tq = load ptr, ptr @yytext, align 8, !tbaa !30 ; 2 uses
  %i.tr = load i8, ptr @yy_hold_char, align 1, !tbaa !24
  store i8 %i.tr, ptr %.269.i, align 1, !tbaa !24
  %i.ts = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %i.tt = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tt
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !15 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 56 ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !27
  %i.ty = icmp eq i32 %i.tx, 0
  br i1 %i.ty, label %bb.eo, label %._crit_edge449.i

._crit_edge449.i:                                 ; preds = %bb.en
  %.pre450.i = load i32, ptr @yy_n_chars, align 4, !tbaa !19
  br label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 28
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !20 ; 2 uses
  store i32 %i.ua, ptr @yy_n_chars, align 4, !tbaa !19
  %i.ub = load ptr, ptr @yyin, align 8, !tbaa !17
  store ptr %i.ub, ptr %i.tv, align 8, !tbaa !28
  store i32 1, ptr %i.tw, align 8, !tbaa !27
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %._crit_edge449.i
  %i.uc = phi i32 [ %.pre450.i, %._crit_edge449.i ], [ %i.ua, %bb.eo ]
  %i.ud = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !23
  %i.ug = sext i32 %i.uc to i64
  %i.uh = getelementptr inbounds i8, ptr %i.uf, i64 %i.ug
  %.not96.i = icmp ugt ptr %i.ud, %i.uh
  br i1 %.not96.i, label %bb.ew, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ui = ptrtoint ptr %i.tq to i64
  %i.uj = sub i64 %i.az, %i.ui                    ; 2 uses
  %i.uk = trunc i64 %i.uj to i32
  %i.ul = load ptr, ptr @yytext, align 8, !tbaa !30 ; 6 uses
  %i.um = shl i64 %i.uj, 32
  %sext.i = add i64 %i.um, -4294967296            ; 3 uses
  %i.un = ashr exact i64 %sext.i, 32
  %i.uo = getelementptr inbounds i8, ptr %i.ul, i64 %i.un ; 4 uses
  store ptr %i.uo, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.up = load i32, ptr @yy_start, align 4, !tbaa !19 ; 3 uses
  %i.uq = icmp sgt i32 %i.uk, 1
  br i1 %i.uq, label %.lr.ph.i.i.preheader, label %yy_get_previous_state.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.eq
  %i.ur = and i64 %sext.i, 4294967296
  %lcmp.mod1980.not = icmp eq i64 %i.ur, 0
  br i1 %lcmp.mod1980.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.us = sext i32 %i.up to i64
  %i.ut = getelementptr inbounds [84 x i8], ptr @yy_nxt, i64 %i.us
  %i.uu = load i8, ptr %i.ul, align 1, !tbaa !24  ; 2 uses
  %.not.i110.i.prol = icmp eq i8 %i.uu, 0
  br i1 %.not.i110.i.prol, label %.lr.ph.i.i.prol.loopexit.unr-lcssa, label %bb.er

bb.er:                                            ; preds = %.lr.ph.i.i.prol
  %i.uv = zext i8 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !24
  %i.uy = zext i8 %i.ux to i64
  br label %.lr.ph.i.i.prol.loopexit.unr-lcssa

.lr.ph.i.i.prol.loopexit.unr-lcssa:               ; preds = %bb.er, %.lr.ph.i.i.prol
  %i.uz = phi i64 [ %i.uy, %bb.er ], [ 1, %.lr.ph.i.i.prol ]
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.ut, i64 %i.uz
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !36
  %i.vc = sext i16 %i.vb to i32                   ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.lcssa1669.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.vc, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.07.i.i.unr = phi ptr [ %i.ul, %.lr.ph.i.i.preheader ], [ %i.vd, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.056.i.i.unr = phi i32 [ %i.up, %.lr.ph.i.i.preheader ], [ %i.vc, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %i.ve = icmp eq i64 %sext.i, 4294967296
  br i1 %i.ve, label %yy_get_previous_state.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.eu
  %.07.i.i = phi ptr [ %i.wb, %bb.eu ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.056.i.i = phi i32 [ %i.wa, %bb.eu ], [ %.056.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.vf = sext i32 %.056.i.i to i64
  %i.vg = getelementptr inbounds [84 x i8], ptr @yy_nxt, i64 %i.vf
  %i.vh = load i8, ptr %.07.i.i, align 1, !tbaa !24 ; 2 uses
  %.not.i110.i = icmp eq i8 %i.vh, 0
  br i1 %.not.i110.i, label %.lr.ph.i.i.1, label %bb.es

bb.es:                                            ; preds = %.lr.ph.i.i
  %i.vi = zext i8 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !24
  %i.vl = zext i8 %i.vk to i64
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.es, %.lr.ph.i.i
  %i.vm = phi i64 [ %i.vl, %bb.es ], [ 1, %.lr.ph.i.i ]
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.vg, i64 %i.vm
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !36
  %i.vp = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.vq = sext i16 %i.vo to i64
  %i.vr = getelementptr inbounds [84 x i8], ptr @yy_nxt, i64 %i.vq
end_hunk_0
begin_hunk_1_@zconf_initscan:bb.a
  store ptr %i.k, ptr @cur_filename, align 8, !tbaa !30
  store i32 1, ptr @yylineno, align 4, !tbaa !19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #18

declare ptr @file_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local void @zconf_nextfile(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4097 x i8], align 16             ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #25 ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #30
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  %i.c = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %xmalloc.exit
  %i.d = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %xmalloc.exit, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %xmalloc.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !50
  %i.i = load i32, ptr @yylineno, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !52
  %i.k = load ptr, ptr @cur_filename, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !53
  %i.m = load i32, ptr @cur_lineno, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.m, ptr %i.n, align 8, !tbaa !56
  %i.o = load ptr, ptr @current_buf, align 8, !tbaa !48
  store ptr %i.o, ptr %i.b, align 8, !tbaa !54
  store ptr %i.b, ptr @current_buf, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.p = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp ne ptr %0, null
  %or.cond.i = and i1 %i.r, %i.q
  br i1 %or.cond.i, label %bb.e, label %zconf_fopen.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %0, align 1, !tbaa !24
  %.not.i26 = icmp eq i8 %i.s, 47
  br i1 %.not.i26, label %zconf_fopen.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @getenv(ptr noundef nonnull @.str.5) #31 ; 2 uses
  %.not12.i = icmp eq ptr %i.t, null
  br i1 %.not12.i, label %zconf_fopen.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4097, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.t, ptr noundef nonnull %0) #31 ; 0 uses
  %i.v = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4)
  br label %zconf_fopen.exit

zconf_fopen.exit.thread:                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  store ptr null, ptr @yyin, align 8, !tbaa !17
  br label %bb.h

zconf_fopen.exit:                                 ; preds = %bb.d, %bb.g
  %.0.i = phi ptr [ %i.v, %bb.g ], [ %i.p, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  store ptr %.0.i, ptr @yyin, align 8, !tbaa !17
  %.not22 = icmp eq ptr %.0.i, null
  br i1 %.not22, label %bb.h, label %bb.i

bb.h:                                             ; preds = %zconf_fopen.exit.thread, %zconf_fopen.exit
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.x = load ptr, ptr @cur_filename, align 8, !tbaa !30
  %i.y = load i32, ptr @cur_lineno, align 4, !tbaa !19
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.8, ptr noundef %i.x, i32 noundef %i.y, ptr noundef %0) #29 ; 0 uses
  tail call void @exit(i32 noundef 1) #30
  unreachable

bb.i:                                             ; preds = %zconf_fopen.exit
  %i.aa = tail call ptr @yy_create_buffer(ptr noundef nonnull %.0.i, i32 noundef 16384)
  tail call void @yy_switch_to_buffer(ptr noundef nonnull %i.aa)
  %.01829 = load ptr, ptr @current_buf, align 8, !tbaa !48 ; 2 uses
  %.not2330 = icmp eq ptr %.01829, null
  br i1 %.not2330, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.01832 = phi ptr [ %.018, %.lr.ph ], [ %.01829, %bb.i ] ; 2 uses
  %.031 = phi i1 [ %spec.select, %.lr.ph ], [ false, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.01832, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) %0) #32
  %.not25 = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %.not25, i1 true, i1 %.031 ; 2 uses
  %.018 = load ptr, ptr %.01832, align 8, !tbaa !48 ; 2 uses
  %.not23 = icmp eq ptr %.018, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %spec.select, label %bb.j, label %.critedge

bb.j:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.9, ptr noundef nonnull %0) #29 ; 0 uses
  %.11933 = load ptr, ptr @current_buf, align 8, !tbaa !48 ; 2 uses
  %.not2434 = icmp eq ptr %.11933, null
  br i1 %.not2434, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.j, %.lr.ph37
  %.11935 = phi ptr [ %.119, %.lr.ph37 ], [ %.11933, %bb.j ] ; 3 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.11935, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %.11935, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !56
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.10, ptr noundef %i.ai, i32 noundef %i.ak) #29 ; 0 uses
  %.119 = load ptr, ptr %.11935, align 8, !tbaa !48 ; 2 uses
  %.not24 = icmp eq ptr %.119, null
  br i1 %.not24, label %._crit_edge38, label %.lr.ph37, !llvm.loop !58

._crit_edge38:                                    ; preds = %.lr.ph37, %bb.j
  tail call void @exit(i32 noundef 1) #30
  unreachable

.critedge:                                        ; preds = %bb.i, %._crit_edge
  store i32 1, ptr @yylineno, align 4, !tbaa !19
  %i.am = load ptr, ptr @cur_filename, align 8, !tbaa !30
  %i.an = load i32, ptr @cur_lineno, align 4, !tbaa !19
  %i.ao = tail call ptr @file_lookup(ptr noundef %0, ptr noundef %i.am, i32 noundef %i.an) #31
  store ptr %i.ao, ptr @cur_filename, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @yy_get_next_buffer() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9 ; 2 uses
  %i.b = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 7 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = load ptr, ptr @yytext, align 8, !tbaa !30 ; 6 uses
  %i.i = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !30 ; 3 uses
  %i.j = load i32, ptr @yy_n_chars, align 4, !tbaa !19
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = icmp ugt ptr %i.i, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.21) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = icmp eq i32 %i.p, 0
  %i.r = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.h to i64                 ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.t, 1
  %. = select i1 %i.u, i32 1, i32 2
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.v = xor i64 %i.s, -1
  %i.w = add i64 %i.r, %i.v                       ; 6 uses
  %i.x = trunc i64 %i.w to i32                    ; 5 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.e
  %i.z = and i64 %i.w, 2147483647                 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.z, 4
  %i.aa = sub i64 %i.s, %i.g
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp samesign ult i64 %i.z, 32
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.w, 28
  %n.vec = and i64 %i.w, 2147483616               ; 6 uses
  %i.ac = trunc nuw nsw i64 %n.vec to i32
  %i.ad = getelementptr i8, ptr %i.h, i64 %n.vec
  %i.ae = getelementptr i8, ptr %i.f, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24
  %wide.load101 = load <16 x i8>, ptr %i.af, align 1, !tbaa !24
  %i.ag = getelementptr i8, ptr %next.gep100, i64 16
  store <16 x i8> %wide.load, ptr %next.gep100, align 1, !tbaa !24
  store <16 x i8> %wide.load101, ptr %i.ag, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %i.w, 2147483644            ; 5 uses
  %i.ai = trunc nuw nsw i64 %n.vec104 to i32
  %i.aj = getelementptr i8, ptr %i.h, i64 %n.vec104
  %i.ak = getelementptr i8, ptr %i.f, i64 %n.vec104
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index105 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next109, %vec.epilog.vector.body ] ; 3 uses
  %next.gep106 = getelementptr i8, ptr %i.h, i64 %index105
  %next.gep107 = getelementptr i8, ptr %i.f, i64 %index105
  %wide.load108 = load <4 x i8>, ptr %next.gep106, align 1, !tbaa !24
  store <4 x i8> %wide.load108, ptr %next.gep107, align 1, !tbaa !24
  %index.next109 = add nuw i64 %index105, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next109, %n.vec104
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n110 = icmp eq i64 %i.z, %n.vec104
  br i1 %cmp.n110, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03359.ph = phi i32 [ 0, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.03458.ph = phi ptr [ %i.h, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.03557.ph = phi ptr [ %i.f, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03359 = phi i32 [ %i.ap, %.lr.ph ], [ %.03359.ph, %.lr.ph.preheader ]
  %.03458 = phi ptr [ %i.am, %.lr.ph ], [ %.03458.ph, %.lr.ph.preheader ] ; 2 uses
  %.03557 = phi ptr [ %i.ao, %.lr.ph ], [ %.03557.ph, %.lr.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03458, i64 1
  %i.an = load i8, ptr %.03458, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.03557, i64 1
  store i8 %i.an, ptr %.03557, align 1, !tbaa !24
  %i.ap = add nuw nsw i32 %.03359, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.x
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !64

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.aq = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.e ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !27
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %.thread50, label %bb.f

.thread50:                                        ; preds = %._crit_edge
  store i32 0, ptr @yy_n_chars, align 4, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  store i32 0, ptr %i.au, align 4, !tbaa !20
  br label %bb.k

bb.f:                                             ; preds = %._crit_edge
  %i.av = xor i32 %i.x, -1                        ; 2 uses
  %.pn.in60 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.pn61 = load i32, ptr %.pn.in60, align 8, !tbaa !34 ; 2 uses
  %.062 = add i32 %.pn61, %i.av                   ; 2 uses
  %i.aw = icmp slt i32 %.062, 1
  br i1 %i.aw, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.f, %bb.h
  %i.ax = phi i32 [ %.pn, %bb.h ], [ %.pn61, %bb.f ] ; 4 uses
  %i.ay = phi ptr [ %i.br, %bb.h ], [ %i.aq, %bb.f ] ; 3 uses
  %i.az = phi ptr [ %i.bq, %bb.h ], [ %i.i, %bb.f ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !35
  %.not43 = icmp eq i32 %i.bg, 0
  br i1 %.not43, label %.thread, label %bb.g

.thread:                                          ; preds = %.lr.ph64
  store ptr null, ptr %i.ba, align 8, !tbaa !23
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bi = icmp slt i32 %i.ax, 1
  %i.bj = shl nuw nsw i32 %i.ax, 1
  %.nonneg = sub i32 0, %i.ax
  %i.bk = lshr i32 %.nonneg, 3
  %i.bl = sub nsw i32 %i.ax, %i.bk
  %storemerge44 = select i1 %i.bi, i32 %i.bl, i32 %i.bj ; 2 uses
  store i32 %storemerge44, ptr %i.bh, align 8, !tbaa !34
  %i.bm = add nsw i32 %storemerge44, 2
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call noalias noundef ptr @realloc(ptr noundef %i.bb, i64 noundef %i.bn) #27 ; 3 uses
  store ptr %i.bo, ptr %i.ba, align 8, !tbaa !23
  %.not45 = icmp eq ptr %i.bo, null
  br i1 %.not45, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.g, %.thread
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.22) #26
  unreachable

bb.h:                                             ; preds = %bb.g
  %sext46 = shl i64 %i.be, 32
  %i.bp = ashr exact i64 %sext46, 32
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp ; 2 uses
  store ptr %i.bq, ptr @yy_c_buf_p, align 8, !tbaa !30
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %.pn.in = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.pn = load i32, ptr %.pn.in, align 8, !tbaa !34 ; 2 uses
  %.0 = add i32 %.pn, %i.av                       ; 2 uses
  %i.bs = icmp slt i32 %.0, 1
  br i1 %i.bs, label %.lr.ph64, label %._crit_edge65, !llvm.loop !65

._crit_edge65:                                    ; preds = %bb.h, %bb.f
  %.0.lcssa = phi i32 [ %.062, %bb.f ], [ %.0, %bb.h ]
  %i.bt = tail call i32 @llvm.umin.i32(i32 %.0.lcssa, i32 8192)
  %i.bu = tail call ptr @__errno_location() #28   ; 3 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !19
  %i.bv = load ptr, ptr @yyin, align 8, !tbaa !17
  %i.bw = tail call i32 @fileno(ptr noundef %i.bv) #31
  %i.bx = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %i.by = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !23
  %sext = shl i64 %i.w, 32
  %i.cd = ashr exact i64 %sext, 32                ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd
  %i.cf = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.cg = tail call i64 @read(i32 noundef %i.bw, ptr noundef %i.ce, i64 noundef %i.cf) #31
  %i.ch = trunc i64 %i.cg to i32                  ; 3 uses
  store i32 %i.ch, ptr @yy_n_chars, align 4, !tbaa !19
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %._crit_edge65, %bb.j
  %i.cj = load i32, ptr %i.bu, align 4, !tbaa !19
  %.not = icmp eq i32 %i.cj, 4
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph67
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.23) #26
  unreachable

bb.j:                                             ; preds = %.lr.ph67
  store i32 0, ptr %i.bu, align 4, !tbaa !19
  %i.ck = load ptr, ptr @yyin, align 8, !tbaa !17
  tail call void @clearerr(ptr noundef %i.ck) #31
  %i.cl = load ptr, ptr @yyin, align 8, !tbaa !17
  %i.cm = tail call i32 @fileno(ptr noundef %i.cl) #31
  %i.cn = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %i.co = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !23
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.cd
  %i.cu = tail call i64 @read(i32 noundef %i.cm, ptr noundef %i.ct, i64 noundef %i.cf) #31
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  store i32 %i.cv, ptr @yy_n_chars, align 4, !tbaa !19
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph67, label %._crit_edge68, !llvm.loop !66

._crit_edge68:                                    ; preds = %bb.j, %._crit_edge65
  %.pr = phi i32 [ %i.ch, %._crit_edge65 ], [ %i.cv, %bb.j ] ; 3 uses
  %i.cx = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9 ; 3 uses
  %i.cy = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !15 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  store i32 %.pr, ptr %i.db, align 4, !tbaa !20
  %i.dc = icmp eq i32 %.pr, 0
  br i1 %i.dc, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread50, %._crit_edge68
  %i.dd = phi ptr [ %i.aq, %.thread50 ], [ %i.da, %._crit_edge68 ] ; 2 uses
  %i.de = phi i64 [ %i.b, %.thread50 ], [ %i.cy, %._crit_edge68 ]
  %i.df = phi ptr [ %i.a, %.thread50 ], [ %i.cx, %._crit_edge68 ]
  %i.dg = icmp eq i32 %i.x, 0
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dh = load ptr, ptr @yyin, align 8, !tbaa !17
  tail call void @yyrestart(ptr noundef %i.dh)
  %.pre75 = load i32, ptr @yy_n_chars, align 4, !tbaa !19
  %.pre76 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9 ; 2 uses
  %.pre77 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !13 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre76, i64 %.pre77
  %.pre78 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  store i32 2, ptr %i.di, align 8, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge68, %bb.l, %bb.m
  %i.dj = phi ptr [ %.pre78, %bb.l ], [ %i.dd, %bb.m ], [ %i.da, %._crit_edge68 ] ; 3 uses
  %i.dk = phi i64 [ %.pre77, %bb.l ], [ %i.de, %bb.m ], [ %i.cy, %._crit_edge68 ]
  %i.dl = phi ptr [ %.pre76, %bb.l ], [ %i.df, %bb.m ], [ %i.cx, %._crit_edge68 ]
  %i.dm = phi i32 [ %.pre75, %bb.l ], [ 0, %bb.m ], [ %.pr, %._crit_edge68 ] ; 2 uses
  %.032 = phi i32 [ 1, %bb.l ], [ 2, %bb.m ], [ 0, %._crit_edge68 ]
  %i.dn = add nsw i32 %i.dm, %i.x                 ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !34
  %i.dr = icmp sgt i32 %i.dn, %i.dq
  br i1 %i.dr, label %bb.o, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.n
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !23
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ds = ashr i32 %i.dm, 1
  %i.dt = add nsw i32 %i.dn, %i.ds                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !23
  %i.dw = sext i32 %i.dt to i64
  %i.dx = tail call noalias noundef ptr @realloc(ptr noundef %i.dv, i64 noundef %i.dw) #27 ; 3 uses
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !15 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !23
  %.not47 = icmp eq ptr %i.dx, null
  br i1 %.not47, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.24) #26
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ea = add nsw i32 %i.dt, -2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !34
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge80, %bb.q
  %i.ec = phi ptr [ %i.dx, %bb.q ], [ %.pre82, %._crit_edge80 ]
  store i32 %i.dn, ptr @yy_n_chars, align 4, !tbaa !19
  %i.ed = sext i32 %i.dn to i64                   ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 %i.ed
  store i8 0, ptr %i.ee, align 1, !tbaa !24
  %i.ef = load ptr, ptr %i.do, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !23
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ed
  %i.ej = getelementptr i8, ptr %i.ei, i64 1
  store i8 0, ptr %i.ej, align 1, !tbaa !24
  %i.ek = load ptr, ptr %i.do, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !23
  store ptr %i.em, ptr @yytext, align 8, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.r
  %.036 = phi i32 [ %., %bb.d ], [ %.032, %bb.r ]
  ret i32 %.036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @expand_one_token(ptr noundef) local_unnamed_addr #19

declare ptr @expand_dollar(ptr noundef) local_unnamed_addr #19

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @clearerr(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { noreturn }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { cold nounwind }
attributes #30 = { cold noreturn nounwind }
attributes #31 = { nounwind }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 _ZTS15yy_buffer_state", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS15yy_buffer_state", !12, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !6, i64 28}
!21 = !{!"yy_buffer_state", !18, i64 0, !22, i64 8, !22, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!7, !7, i64 0}
!25 = !{!21, !22, i64 16}
!26 = !{!21, !6, i64 40}
!27 = !{!21, !6, i64 56}
!28 = !{!21, !18, i64 0}
!29 = !{!21, !6, i64 52}
!30 = !{!22, !22, i64 0}
!31 = !{!21, !6, i64 44}
!32 = !{!21, !6, i64 48}
!33 = !{!21, !6, i64 36}
!34 = !{!21, !6, i64 24}
!35 = !{!21, !6, i64 32}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !7, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !39}
!46 = distinct !{!46, !39}
!47 = distinct !{!47, !39}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTS6buffer", !12, i64 0}
!50 = !{!51, !16, i64 8}
!51 = !{!"buffer", !49, i64 0, !16, i64 8, !6, i64 16, !22, i64 24, !6, i64 32}
!52 = !{!51, !6, i64 16}
!53 = !{!51, !22, i64 24}
!54 = !{!51, !49, i64 0}
!55 = distinct !{!55, !39}
!56 = !{!51, !6, i64 32}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39, !60, !61}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!"branch_weights", i32 4, i32 28}
!63 = distinct !{!63, !39, !60, !61}
!64 = distinct !{!64, !39, !60}
!65 = distinct !{!65, !39}
!66 = distinct !{!66, !39}
end_hunk_1
