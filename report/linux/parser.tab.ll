Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/parser.tab?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
begin_hunk_0_@yyparse:bb.a
  %.not273 = icmp sgt i64 %i.ae, %i.n
  br i1 %.not273, label %.thread378, label %.loopexit

.thread378:                                       ; preds = %bb.p, %bb.i
  %.2243 = phi i64 [ %.0241, %bb.i ], [ %spec.store.select, %bb.p ]
  %.3238 = phi ptr [ %.0235, %bb.i ], [ %i.t, %bb.p ] ; 6 uses
  %.3230 = phi ptr [ %.1228, %bb.i ], [ %i.y, %bb.p ] ; 6 uses
  %.3226 = phi ptr [ %.0223, %bb.i ], [ %i.w, %bb.p ]
  %.3 = phi ptr [ %.1221, %bb.i ], [ %i.aa, %bb.p ] ; 69 uses
  %i.af = icmp eq i32 %.1214, 6
  br i1 %i.af, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.thread378
  %i.ag = sext i32 %.1214 to i64                  ; 2 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !15 ; 3 uses
  %i.aj = sext i16 %i.ai to i32
  %i.ak = icmp eq i16 %i.ai, -63
  br i1 %i.ak, label %bb.al, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = load i32, ptr @yychar, align 4, !tbaa !9 ; 2 uses
  %i.am = icmp eq i32 %i.al, -2
  br i1 %i.am, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.an = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not274 = icmp eq i32 %i.an, 0
  br i1 %.not274, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite275 = call i64 @fwrite(ptr nonnull @.str.3, i64 16, i64 1, ptr %i.ao) #16 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ap = call i32 @yylex() #15                   ; 2 uses
  store i32 %i.ap, ptr @yychar, align 4, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.aq = phi i32 [ %i.ap, %bb.u ], [ %i.al, %bb.r ] ; 4 uses
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr @yychar, align 4, !tbaa !9
  %i.as = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not278 = icmp eq i32 %i.as, 0
  br i1 %.not278, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite279 = call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %i.at) #16 ; 0 uses
  br label %bb.ae

bb.y:                                             ; preds = %bb.v
  %i.au = icmp eq i32 %i.aq, 256
  br i1 %i.au, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 257, ptr @yychar, align 4, !tbaa !9
  br label %.preheader

bb.aa:                                            ; preds = %bb.y
  %i.av = icmp samesign ult i32 %i.aq, 305
  br i1 %i.av, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aw = zext nneg i32 %i.aq to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = sext i8 %i.ay to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ba = phi i32 [ %i.az, %bb.ab ], [ 2, %bb.aa ] ; 4 uses
  %i.bb = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not276 = icmp eq i32 %i.bb, 0
  br i1 %.not276, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #17 ; 0 uses
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !12 ; 2 uses
  %i.bf = icmp slt i32 %i.ba, 50
  %i.bg = select i1 %i.bf, ptr @.str.63, ptr @.str.64
  %i.bh = sext i32 %i.ba to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !17
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.bg, ptr noundef %i.bj) #17 ; 0 uses
  %fputc.i = call i32 @fputc(i32 41, ptr %i.be)   ; 0 uses
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = call i32 @fputc(i32 10, ptr %i.bl)     ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.w, %bb.x
  %.0217 = phi i32 [ 0, %bb.x ], [ 0, %bb.w ], [ %i.ba, %bb.ad ], [ %i.ba, %bb.ac ] ; 3 uses
  %i.bm = add nsw i32 %.0217, %i.aj               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.bm, 181
  br i1 %or.cond3, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !15
  %i.bq = sext i16 %i.bp to i32
  %.not280 = icmp eq i32 %.0217, %i.bq
  br i1 %.not280, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.bn
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !15 ; 2 uses
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = icmp slt i16 %i.bs, 1
  br i1 %i.bu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bv = sub nsw i32 0, %i.bt
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1245, i32 1)
  %i.bw = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not282 = icmp eq i32 %i.bw, 0
  br i1 %.not282, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.by = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #17 ; 0 uses
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !12
  call fastcc void @yy_symbol_print(ptr noundef %i.bz, i32 noundef %.0217)
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc284 = call i32 @fputc(i32 10, ptr %i.ca)  ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  %i.cc = load i64, ptr @yylval, align 8, !tbaa !13
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !13
  store i32 -2, ptr @yychar, align 4, !tbaa !9
  br label %bb.d

bb.al:                                            ; preds = %bb.ae, %bb.af, %bb.q
  %i.cd = getelementptr inbounds i8, ptr @yydefact, i64 %i.ag
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13  ; 2 uses
  %i.cf = sext i8 %i.ce to i32
  %i.cg = icmp eq i8 %i.ce, 0
  br i1 %i.cg, label %bb.fd, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ah
  %.0219 = phi i32 [ %i.cf, %bb.al ], [ %i.bv, %bb.ah ] ; 4 uses
  %i.ch = sext i32 %.0219 to i64                  ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr @yyr2, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = sext i8 %i.cj to i64                    ; 2 uses
  %i.cl = sub nsw i64 1, %i.ck
  %i.cm = getelementptr inbounds [8 x i8], ptr %.3, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !13 ; 12 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 55 uses
  %i.cp = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not285 = icmp eq i32 %i.cp, 0
  br i1 %.not285, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call fastcc void @yy_reduce_print(ptr noundef %.3230, i32 noundef %.0219)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  switch i32 %.0219, label %xstrdup.exit [
    i32 4, label %bb.ap
    i32 14, label %bb.aq
    i32 15, label %bb.ar
    i32 20, label %bb.as
    i32 21, label %bb.at
    i32 22, label %bb.av
    i32 23, label %bb.bd
    i32 24, label %bb.bf
    i32 29, label %bb.bk
    i32 30, label %bb.bm
    i32 31, label %bb.bo
    i32 32, label %bb.bq
    i32 33, label %bb.bu
    i32 34, label %bb.bw
    i32 35, label %bb.by
    i32 36, label %bb.ca
    i32 37, label %bb.cd
    i32 38, label %bb.cf
    i32 39, label %bb.ci
    i32 45, label %bb.cl
    i32 46, label %bb.cn
    i32 47, label %bb.cp
    i32 48, label %bb.cq
    i32 49, label %bb.cr
    i32 50, label %bb.cs
    i32 51, label %bb.ct
    i32 52, label %bb.cu
    i32 53, label %bb.cv
    i32 54, label %bb.cw
    i32 55, label %bb.cx
    i32 56, label %bb.da
    i32 59, label %bb.dd
    i32 60, label %bb.df
    i32 61, label %bb.dg
    i32 66, label %bb.dj
    i32 67, label %bb.dm
    i32 71, label %bb.do
    i32 72, label %bb.dr
    i32 73, label %bb.dw
    i32 74, label %bb.dy
    i32 76, label %bb.dz
    i32 77, label %bb.ea
    i32 78, label %bb.eb
    i32 79, label %bb.ec
    i32 80, label %bb.ed
    i32 81, label %bb.ee
    i32 82, label %bb.ef
    i32 83, label %bb.eg
    i32 84, label %bb.eh
    i32 85, label %bb.ei
    i32 86, label %bb.ej
    i32 87, label %bb.ek
    i32 88, label %bb.el
    i32 89, label %bb.em
    i32 90, label %bb.en
    i32 91, label %bb.eo
    i32 92, label %bb.ep
    i32 93, label %bb.eq
    i32 95, label %bb.er
    i32 96, label %bb.es
    i32 97, label %bb.et
    i32 98, label %bb.eu
    i32 99, label %bb.ev
    i32 100, label %bb.ew
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.cq = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !13
  %i.cs = call ptr @menu_add_prompt(i32 noundef 3, ptr noundef %i.cr, ptr noundef null) #15 ; 0 uses
  br label %xstrdup.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ct = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !13
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.9, ptr noundef %i.cu)
  br label %xstrdup.exit

bb.ar:                                            ; preds = %bb.ao
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.10)
  br label %xstrdup.exit

bb.as:                                            ; preds = %bb.ao
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.10)
  br label %xstrdup.exit

bb.at:                                            ; preds = %bb.ao
  %i.cv = getelementptr inbounds i8, ptr %.3, i64 -8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !13
  call void @menu_add_entry(ptr noundef %i.cw, i32 noundef 4) #15
  %i.cx = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.cy = and i32 %i.cx, 2
  %.not318 = icmp eq i32 %i.cy, 0
  br i1 %.not318, label %xstrdup.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cz = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.da = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %i.cz, i32 noundef %i.da, ptr noundef %i.dd) ; 0 uses
  br label %xstrdup.exit

bb.av:                                            ; preds = %bb.ao
  %i.df = load ptr, ptr @current_choice, align 8, !tbaa !31
  %.not314 = icmp eq ptr %i.df, null
  br i1 %.not314, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dg = load ptr, ptr @current_entry, align 8, !tbaa !31 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !34
  %.not315 = icmp eq ptr %i.di, null
  br i1 %.not315, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !35
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !36
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.12, ptr noundef %i.dl, i32 noundef %i.dn) #17 ; 0 uses
  %i.dp = load i32, ptr @yynerrs, align 4, !tbaa !9
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr @yynerrs, align 4, !tbaa !9
  %.pre417 = load ptr, ptr @current_entry, align 8, !tbaa !31
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.dr = phi ptr [ %.pre417, %bb.ax ], [ %i.dg, %bb.aw ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !38
  %.not316 = icmp eq i32 %i.dv, 1
  br i1 %.not316, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !35
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 120
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !36
  %i.eb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.13, ptr noundef %i.dy, i32 noundef %i.ea) #17 ; 0 uses
  %i.ec = load i32, ptr @yynerrs, align 4, !tbaa !9
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr @yynerrs, align 4, !tbaa !9
  %.pre418 = load ptr, ptr @current_entry, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre418, i64 32
  %.pre419 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ee = phi ptr [ %.pre419, %bb.az ], [ %i.dt, %bb.ay ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 136 ; 3 uses
  %i.eg = load ptr, ptr @current_choice, align 8, !tbaa !31 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 64 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51 ; 2 uses
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !51
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !52
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 144
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !51
  store ptr %i.ef, ptr %i.ej, align 8, !tbaa !52
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.av
  %i.el = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.em = and i32 %i.el, 2
  %.not317 = icmp eq i32 %i.em, 0
  br i1 %.not317, label %xstrdup.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.eo = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.en, i32 noundef %i.eo) ; 0 uses
  br label %xstrdup.exit

bb.bd:                                            ; preds = %bb.ao
  %i.eq = getelementptr inbounds i8, ptr %.3, i64 -8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !13
  call void @menu_add_entry(ptr noundef %i.er, i32 noundef 3) #15
  %i.es = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.et = and i32 %i.es, 2
  %.not313 = icmp eq i32 %i.et, 0
  br i1 %.not313, label %xstrdup.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eu = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.ev = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !29
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %i.eu, i32 noundef %i.ev, ptr noundef %i.ey) ; 0 uses
  br label %xstrdup.exit

bb.bf:                                            ; preds = %bb.ao
  %i.fa = load ptr, ptr @current_entry, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !34 ; 2 uses
  %.not311 = icmp eq ptr %i.fc, null
  br i1 %.not311, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 3, ptr %i.fd, align 8, !tbaa !40
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.16)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fe = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.ff = and i32 %i.fe, 2
  %.not312 = icmp eq i32 %i.ff, 0
  br i1 %.not312, label %xstrdup.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fg = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.fh = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.fi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.fg, i32 noundef %i.fh) ; 0 uses
  br label %xstrdup.exit

bb.bk:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds i8, ptr %.3, i64 -16 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !13
  call void @menu_set_type(i32 noundef %i.fk) #15
  %i.fl = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.fm = and i32 %i.fl, 2
  %.not310 = icmp eq i32 %i.fm, 0
  br i1 %.not310, label %xstrdup.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fn = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.fo = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.fp = load i32, ptr %i.fj, align 8, !tbaa !13
  %i.fq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %i.fn, i32 noundef %i.fo, i32 noundef %i.fp) ; 0 uses
  br label %xstrdup.exit

bb.bm:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !13
  %i.ft = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !13
  %i.fv = call ptr @menu_add_prompt(i32 noundef 1, ptr noundef %i.fs, ptr noundef %i.fu) #15 ; 0 uses
  %i.fw = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.fx = and i32 %i.fw, 2
  %.not309 = icmp eq i32 %i.fx, 0
  br i1 %.not309, label %xstrdup.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fy = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.fz = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ga = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %i.fy, i32 noundef %i.fz) ; 0 uses
  br label %xstrdup.exit

bb.bo:                                            ; preds = %bb.ao
  %i.gb = load ptr, ptr @current_entry, align 8, !tbaa !31
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 152 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !41
  %i.gg = or i32 %i.gf, 256
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !41
  %i.gh = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.gi = and i32 %i.gh, 2
  %.not308 = icmp eq i32 %i.gi, 0
  br i1 %.not308, label %xstrdup.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gj = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.gk = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.gl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef %i.gj, i32 noundef %i.gk) ; 0 uses
  br label %xstrdup.exit

bb.bq:                                            ; preds = %bb.ao
  %i.gm = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !13
  %i.go = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !13
  call void @menu_add_expr(i32 noundef 4, ptr noundef %i.gn, ptr noundef %i.gp) #15
  %i.gq = getelementptr inbounds i8, ptr %.3, i64 -24 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !13 ; 2 uses
  %.not306 = icmp eq i32 %i.gr, 0
  br i1 %.not306, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @menu_set_type(i32 noundef %i.gr) #15
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.gs = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.gt = and i32 %i.gs, 2
  %.not307 = icmp eq i32 %i.gt, 0
  br i1 %.not307, label %xstrdup.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gu = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.gv = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.gw = load i32, ptr %i.gq, align 8, !tbaa !13
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %i.gu, i32 noundef %i.gv, i32 noundef %i.gw) ; 0 uses
  br label %xstrdup.exit

bb.bu:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !13
  %i.ha = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !13
  call void @menu_add_symbol(i32 noundef 5, ptr noundef %i.gz, ptr noundef %i.hb) #15
  %i.hc = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.hd = and i32 %i.hc, 2
  %.not305 = icmp eq i32 %i.hd, 0
  br i1 %.not305, label %xstrdup.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.he = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.hf = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.hg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %i.he, i32 noundef %i.hf) ; 0 uses
  br label %xstrdup.exit

bb.bw:                                            ; preds = %bb.ao
  %i.hh = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !13
  %i.hj = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !13
  call void @menu_add_symbol(i32 noundef 6, ptr noundef %i.hi, ptr noundef %i.hk) #15
  %i.hl = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.hm = and i32 %i.hl, 2
  %.not304 = icmp eq i32 %i.hm, 0
  br i1 %.not304, label %xstrdup.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hn = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.ho = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.hp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.hn, i32 noundef %i.ho) ; 0 uses
  br label %xstrdup.exit

bb.by:                                            ; preds = %bb.ao
  %i.hq = getelementptr inbounds i8, ptr %.3, i64 -24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !13
  %i.hs = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !13
  %i.hu = call ptr @expr_alloc_comp(i32 noundef 11, ptr noundef %i.hr, ptr noundef %i.ht) #15
  %i.hv = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !13
  call void @menu_add_expr(i32 noundef 7, ptr noundef %i.hu, ptr noundef %i.hw) #15
  %i.hx = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.hy = and i32 %i.hx, 2
  %.not303 = icmp eq i32 %i.hy, 0
  br i1 %.not303, label %xstrdup.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hz = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.ia = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ib = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %i.hz, i32 noundef %i.ia) ; 0 uses
  br label %xstrdup.exit

bb.ca:                                            ; preds = %bb.ao
  %i.ic = load ptr, ptr @modules_sym, align 8, !tbaa !42 ; 2 uses
  %.not302 = icmp eq ptr %i.ic, null
  br i1 %.not302, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.id = load ptr, ptr @current_entry, align 8, !tbaa !31
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !37
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !29
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !29
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.24, ptr noundef %i.ih, ptr noundef %i.ij)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ik = load ptr, ptr @current_entry, align 8, !tbaa !31
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !37
  store ptr %i.im, ptr @modules_sym, align 8, !tbaa !42
  br label %xstrdup.exit

bb.cd:                                            ; preds = %bb.ao
  %i.in = call ptr @sym_lookup(ptr noundef null, i32 noundef 0) #15
  call void @menu_add_entry(ptr noundef %i.in, i32 noundef 0) #15
  call void @menu_set_type(i32 noundef 1) #15
  %i.io = load ptr, ptr @current_entry, align 8, !tbaa !31 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 56 ; 3 uses
  store ptr %i.ip, ptr %i.ip, align 8, !tbaa !52
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !51
  %i.ir = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.is = and i32 %i.ir, 2
  %.not301 = icmp eq i32 %i.is, 0
  br i1 %.not301, label %xstrdup.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.it = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.iu = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.iv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %i.it, i32 noundef %i.iu) ; 0 uses
  br label %xstrdup.exit

bb.cf:                                            ; preds = %bb.ao
  %i.iw = load ptr, ptr @current_entry, align 8, !tbaa !31 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !34
  %.not300 = icmp eq ptr %i.iy, null
  br i1 %.not300, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.iz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 112
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !35
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 120
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !36
  %i.je = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iz, ptr noundef nonnull @.str.26, ptr noundef %i.jb, i32 noundef %i.jd) #17 ; 0 uses
  %i.jf = load i32, ptr @yynerrs, align 4, !tbaa !9
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jg, ptr @yynerrs, align 4, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jh = call ptr @menu_add_menu() #15
  %i.ji = load ptr, ptr @current_entry, align 8, !tbaa !31
  store ptr %i.ji, ptr @current_choice, align 8, !tbaa !31
  br label %xstrdup.exit

bb.ci:                                            ; preds = %bb.ao
  store ptr null, ptr @current_choice, align 8, !tbaa !31
  %i.jj = load ptr, ptr %.3, align 8, !tbaa !13
  %1 = call fastcc zeroext i1 @zconf_endtoken(ptr noundef %i.jj, ptr noundef nonnull @.str.27)
  br i1 %1, label %bb.cj, label %xstrdup.exit

bb.cj:                                            ; preds = %bb.ci
  call void @menu_end_menu() #15
  %i.jk = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.jl = and i32 %i.jk, 2
  %.not299 = icmp eq i32 %i.jl, 0
  br i1 %.not299, label %xstrdup.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jm = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.jn = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.jo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef %i.jm, i32 noundef %i.jn) ; 0 uses
  br label %xstrdup.exit

bb.cl:                                            ; preds = %bb.ao
  %i.jp = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !13
  %i.jr = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !13
  %i.jt = call ptr @menu_add_prompt(i32 noundef 1, ptr noundef %i.jq, ptr noundef %i.js) #15 ; 0 uses
  %i.ju = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.jv = and i32 %i.ju, 2
  %.not298 = icmp eq i32 %i.jv, 0
  br i1 %.not298, label %xstrdup.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jw = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.jx = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.jy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %i.jw, i32 noundef %i.jx) ; 0 uses
  br label %xstrdup.exit

bb.cn:                                            ; preds = %bb.ao
  %i.jz = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !13
  %i.kb = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !13
  call void @menu_add_symbol(i32 noundef 4, ptr noundef %i.ka, ptr noundef %i.kc) #15
  %i.kd = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.ke = and i32 %i.kd, 2
  %.not297 = icmp eq i32 %i.ke, 0
  br i1 %.not297, label %xstrdup.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kf = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.kg = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.kh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %i.kf, i32 noundef %i.kg) ; 0 uses
  br label %xstrdup.exit

bb.cp:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.mask, 1
  %i.ki = inttoptr i64 %.sroa.0.0.insert.insert to ptr
  br label %xstrdup.exit

bb.cq:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask333 = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert334 = or disjoint i64 %.sroa.0.0.insert.mask333, 2
  %i.kj = inttoptr i64 %.sroa.0.0.insert.insert334 to ptr
  br label %xstrdup.exit

bb.cr:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask336 = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert337 = or disjoint i64 %.sroa.0.0.insert.mask336, 3
  %i.kk = inttoptr i64 %.sroa.0.0.insert.insert337 to ptr
  br label %xstrdup.exit

bb.cs:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask339 = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert340 = or disjoint i64 %.sroa.0.0.insert.mask339, 4
  %i.kl = inttoptr i64 %.sroa.0.0.insert.insert340 to ptr
  br label %xstrdup.exit

bb.ct:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask342 = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert343 = or disjoint i64 %.sroa.0.0.insert.mask342, 5
  %i.km = inttoptr i64 %.sroa.0.0.insert.insert343 to ptr
  br label %xstrdup.exit

bb.cu:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask345 = and i64 %i.cn, -4294967296
  %i.kn = inttoptr i64 %.sroa.0.0.insert.mask345 to ptr
  br label %xstrdup.exit

bb.cv:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask348 = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert349 = or disjoint i64 %.sroa.0.0.insert.mask348, 1
  %i.ko = inttoptr i64 %.sroa.0.0.insert.insert349 to ptr
  br label %xstrdup.exit

bb.cw:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask351 = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert352 = or disjoint i64 %.sroa.0.0.insert.mask351, 2
  %i.kp = inttoptr i64 %.sroa.0.0.insert.insert352 to ptr
  br label %xstrdup.exit

bb.cx:                                            ; preds = %bb.ao
  %i.kq = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.kr = and i32 %i.kq, 2
  %.not296 = icmp eq i32 %i.kr, 0
  br i1 %.not296, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ks = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.kt = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ku = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef %i.ks, i32 noundef %i.kt) ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  call void @menu_add_entry(ptr noundef null, i32 noundef 2) #15
  %i.kv = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !13
  call void @menu_add_dep(ptr noundef %i.kw, ptr noundef null) #15
  %i.kx = call ptr @menu_add_menu() #15
  br label %xstrdup.exit

bb.da:                                            ; preds = %bb.ao
  %i.ky = load ptr, ptr %.3, align 8, !tbaa !13
  %2 = call fastcc zeroext i1 @zconf_endtoken(ptr noundef %i.ky, ptr noundef nonnull @.str.31)
  br i1 %2, label %bb.db, label %xstrdup.exit

bb.db:                                            ; preds = %bb.da
  call void @menu_end_menu() #15
  %i.kz = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.la = and i32 %i.kz, 2
  %.not295 = icmp eq i32 %i.la, 0
  br i1 %.not295, label %xstrdup.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lb = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.lc = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ld = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %i.lb, i32 noundef %i.lc) ; 0 uses
  br label %xstrdup.exit

bb.dd:                                            ; preds = %bb.ao
  call void @menu_add_entry(ptr noundef null, i32 noundef 3) #15
  %i.le = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !13
  %i.lg = call ptr @menu_add_prompt(i32 noundef 3, ptr noundef %i.lf, ptr noundef null) #15 ; 0 uses
  %i.lh = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.li = and i32 %i.lh, 2
  %.not294 = icmp eq i32 %i.li, 0
  br i1 %.not294, label %xstrdup.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lj = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.lk = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ll = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef %i.lj, i32 noundef %i.lk) ; 0 uses
  br label %xstrdup.exit

bb.df:                                            ; preds = %bb.ao
  %i.lm = call ptr @menu_add_menu() #15
  br label %xstrdup.exit

bb.dg:                                            ; preds = %bb.ao
  %i.ln = load ptr, ptr %.3, align 8, !tbaa !13
  %3 = call fastcc zeroext i1 @zconf_endtoken(ptr noundef %i.ln, ptr noundef nonnull @.str.34)
  br i1 %3, label %bb.dh, label %xstrdup.exit

bb.dh:                                            ; preds = %bb.dg
  call void @menu_end_menu() #15
  %i.lo = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.lp = and i32 %i.lo, 2
  %.not293 = icmp eq i32 %i.lp, 0
  br i1 %.not293, label %xstrdup.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.lq = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.lr = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ls = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %i.lq, i32 noundef %i.lr) ; 0 uses
  br label %xstrdup.exit

bb.dj:                                            ; preds = %bb.ao
  %i.lt = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.lu = and i32 %i.lt, 2
  %.not292 = icmp eq i32 %i.lu, 0
  br i1 %.not292, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lv = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.lw = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.lx = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !13
  %i.lz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %i.lv, i32 noundef %i.lw, ptr noundef %i.ly) ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.ma = getelementptr inbounds i8, ptr %.3, i64 -8 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !13
  call void @zconf_nextfile(ptr noundef %i.mb) #15
  %i.mc = load ptr, ptr %i.ma, align 8, !tbaa !13
  call void @free(ptr noundef %i.mc) #15
  br label %xstrdup.exit

bb.dm:                                            ; preds = %bb.ao
  call void @menu_add_entry(ptr noundef null, i32 noundef 1) #15
  %i.md = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !13
  %i.mf = call ptr @menu_add_prompt(i32 noundef 2, ptr noundef %i.me, ptr noundef null) #15 ; 0 uses
  %i.mg = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.mh = and i32 %i.mg, 2
  %.not291 = icmp eq i32 %i.mh, 0
  br i1 %.not291, label %xstrdup.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mi = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.mj = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.mk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef %i.mi, i32 noundef %i.mj) ; 0 uses
  br label %xstrdup.exit

bb.do:                                            ; preds = %bb.ao
  %i.ml = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.mm = and i32 %i.ml, 2
  %.not290 = icmp eq i32 %i.mm, 0
  br i1 %.not290, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mn = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.mo = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.mp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %i.mn, i32 noundef %i.mo) ; 0 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  call void @zconf_starthelp() #15
  br label %xstrdup.exit

bb.dr:                                            ; preds = %bb.ao
  %i.mq = load ptr, ptr @current_entry, align 8, !tbaa !31 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 104
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !43 ; 2 uses
  %.not287 = icmp eq ptr %i.ms, null
  br i1 %.not287, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @free(ptr noundef nonnull %i.ms) #15
  %i.mt = load ptr, ptr @current_entry, align 8, !tbaa !31
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !37
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !29 ; 2 uses
  %.not288 = icmp eq ptr %i.mx, null
  %..str.40 = select i1 %.not288, ptr @.str.40, ptr %i.mx
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.39, ptr noundef nonnull %..str.40)
  %.pre416.pre = load ptr, ptr @current_entry, align 8, !tbaa !31
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pre416 = phi ptr [ %.pre416.pre, %bb.ds ], [ %i.mq, %bb.dr ] ; 2 uses
  %i.my = load ptr, ptr %.3, align 8, !tbaa !13   ; 3 uses
  %i.mz = call i64 @strspn(ptr noundef %i.my, ptr noundef nonnull @.str.41) #19
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !13
  %i.nc = icmp eq i8 %i.nb, 0
  br i1 %i.nc, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.nd = getelementptr inbounds nuw i8, ptr %.pre416, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !37
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !29 ; 2 uses
  %.not289 = icmp eq ptr %i.ng, null
  %..str.404 = select i1 %.not289, ptr @.str.40, ptr %i.ng
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.42, ptr noundef nonnull %..str.404)
  %.pre = load ptr, ptr %.3, align 8, !tbaa !13
  %.pre415 = load ptr, ptr @current_entry, align 8, !tbaa !31
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.nh = phi ptr [ %.pre415, %bb.du ], [ %.pre416, %bb.dt ]
  %i.ni = phi ptr [ %.pre, %bb.du ], [ %i.my, %bb.dt ]
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 104
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !43
  br label %xstrdup.exit

bb.dw:                                            ; preds = %bb.ao
  %i.nk = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !13
  %i.nm = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !13
  call void @menu_add_dep(ptr noundef %i.nl, ptr noundef %i.nn) #15
  %i.no = load i32, ptr @cdebug, align 4, !tbaa !9
  %i.np = and i32 %i.no, 2
  %.not286 = icmp eq i32 %i.np, 0
  br i1 %.not286, label %xstrdup.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nq = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.nr = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.ns = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %i.nq, i32 noundef %i.nr) ; 0 uses
  br label %xstrdup.exit

bb.dy:                                            ; preds = %bb.ao
  %i.nt = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !13
  call void @menu_add_visibility(ptr noundef %i.nu) #15
  br label %xstrdup.exit

bb.dz:                                            ; preds = %bb.ao
  %i.nv = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !13
  %i.nx = load ptr, ptr %.3, align 8, !tbaa !13
  %i.ny = call ptr @menu_add_prompt(i32 noundef 1, ptr noundef %i.nw, ptr noundef %i.nx) #15 ; 0 uses
  br label %xstrdup.exit

bb.ea:                                            ; preds = %bb.ao
  br label %xstrdup.exit

bb.eb:                                            ; preds = %bb.ao
  br label %xstrdup.exit

bb.ec:                                            ; preds = %bb.ao
  br label %xstrdup.exit

bb.ed:                                            ; preds = %bb.ao
  br label %xstrdup.exit

bb.ee:                                            ; preds = %bb.ao
  %i.nz = load ptr, ptr %.3, align 8, !tbaa !13
  br label %xstrdup.exit

bb.ef:                                            ; preds = %bb.ao
  %i.oa = load ptr, ptr %.3, align 8, !tbaa !13
  %i.ob = call ptr @expr_alloc_symbol(ptr noundef %i.oa) #15
  br label %xstrdup.exit

bb.eg:                                            ; preds = %bb.ao
  %i.oc = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !13
  %i.oe = load ptr, ptr %.3, align 8, !tbaa !13
  %i.of = call ptr @expr_alloc_comp(i32 noundef 6, ptr noundef %i.od, ptr noundef %i.oe) #15
  br label %xstrdup.exit

bb.eh:                                            ; preds = %bb.ao
  %i.og = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !13
  %i.oi = load ptr, ptr %.3, align 8, !tbaa !13
  %i.oj = call ptr @expr_alloc_comp(i32 noundef 7, ptr noundef %i.oh, ptr noundef %i.oi) #15
  br label %xstrdup.exit

bb.ei:                                            ; preds = %bb.ao
  %i.ok = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !13
  %i.om = load ptr, ptr %.3, align 8, !tbaa !13
  %i.on = call ptr @expr_alloc_comp(i32 noundef 8, ptr noundef %i.ol, ptr noundef %i.om) #15
  br label %xstrdup.exit

bb.ej:                                            ; preds = %bb.ao
  %i.oo = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !13
  %i.oq = load ptr, ptr %.3, align 8, !tbaa !13
  %i.or = call ptr @expr_alloc_comp(i32 noundef 9, ptr noundef %i.op, ptr noundef %i.oq) #15
  br label %xstrdup.exit

bb.ek:                                            ; preds = %bb.ao
  %i.os = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !13
  %i.ou = load ptr, ptr %.3, align 8, !tbaa !13
  %i.ov = call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef %i.ot, ptr noundef %i.ou) #15
  br label %xstrdup.exit

bb.el:                                            ; preds = %bb.ao
  %i.ow = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !13
  %i.oy = load ptr, ptr %.3, align 8, !tbaa !13
  %i.oz = call ptr @expr_alloc_comp(i32 noundef 5, ptr noundef %i.ox, ptr noundef %i.oy) #15
  br label %xstrdup.exit

bb.em:                                            ; preds = %bb.ao
  %i.pa = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !13
  br label %xstrdup.exit

bb.en:                                            ; preds = %bb.ao
  %i.pc = load ptr, ptr %.3, align 8, !tbaa !13
  %i.pd = call ptr @expr_alloc_one(i32 noundef 3, ptr noundef %i.pc) #15
  br label %xstrdup.exit

bb.eo:                                            ; preds = %bb.ao
  %i.pe = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !13
  %i.pg = load ptr, ptr %.3, align 8, !tbaa !13
  %i.ph = call ptr @expr_alloc_two(i32 noundef 1, ptr noundef %i.pf, ptr noundef %i.pg) #15
  br label %xstrdup.exit

bb.ep:                                            ; preds = %bb.ao
  %i.pi = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !13
  %i.pk = load ptr, ptr %.3, align 8, !tbaa !13
  %i.pl = call ptr @expr_alloc_two(i32 noundef 2, ptr noundef %i.pj, ptr noundef %i.pk) #15
  br label %xstrdup.exit

bb.eq:                                            ; preds = %bb.ao
  %i.pm = load ptr, ptr %.3, align 8, !tbaa !13
  %i.pn = call ptr @sym_lookup(ptr noundef %i.pm, i32 noundef 0) #15
  %i.po = load ptr, ptr %.3, align 8, !tbaa !13
  call void @free(ptr noundef %i.po) #15
  br label %xstrdup.exit

bb.er:                                            ; preds = %bb.ao
  %i.pp = load ptr, ptr %.3, align 8, !tbaa !13
  %i.pq = call ptr @sym_lookup(ptr noundef %i.pp, i32 noundef 1) #15
  %i.pr = load ptr, ptr %.3, align 8, !tbaa !13
  call void @free(ptr noundef %i.pr) #15
  br label %xstrdup.exit

bb.es:                                            ; preds = %bb.ao
  %i.ps = getelementptr inbounds i8, ptr %.3, i64 -24 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !13
  %i.pu = getelementptr inbounds i8, ptr %.3, i64 -8 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !13
  %i.pw = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !13
  call void @variable_add(ptr noundef %i.pt, ptr noundef %i.pv, i32 noundef %i.px) #15
  %i.py = load ptr, ptr %i.ps, align 8, !tbaa !13
  call void @free(ptr noundef %i.py) #15
  %i.pz = load ptr, ptr %i.pu, align 8, !tbaa !13
  call void @free(ptr noundef %i.pz) #15
  br label %xstrdup.exit

bb.et:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask354 = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert355 = or disjoint i64 %.sroa.0.0.insert.mask354, 1
  %i.qa = inttoptr i64 %.sroa.0.0.insert.insert355 to ptr
  br label %xstrdup.exit

bb.eu:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask357 = and i64 %i.cn, -4294967296
  %i.qb = inttoptr i64 %.sroa.0.0.insert.mask357 to ptr
  br label %xstrdup.exit

bb.ev:                                            ; preds = %bb.ao
  %.sroa.0.0.insert.mask360 = and i64 %i.cn, -4294967296
  %.sroa.0.0.insert.insert361 = or disjoint i64 %.sroa.0.0.insert.mask360, 2
  %i.qc = inttoptr i64 %.sroa.0.0.insert.insert361 to ptr
  br label %xstrdup.exit

bb.ew:                                            ; preds = %bb.ao
  %i.qd = call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.44) #15 ; 2 uses
  %.not.i.a = icmp eq ptr %i.qd, null
  br i1 %.not.i.a, label %bb.ex, label %xstrdup.exit

bb.ex:                                            ; preds = %bb.ew
  call void @exit(i32 noundef 1) #20
  unreachable

xstrdup.exit:                                     ; preds = %bb.ew, %bb.cd, %bb.ce, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.cc, %bb.ch, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cz, %bb.df, %bb.dl, %bb.dq, %bb.dv, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.au, %bb.at, %bb.bc, %bb.bb, %bb.be, %bb.bd, %bb.bj, %bb.bi, %bb.bl, %bb.bk, %bb.bn, %bb.bm, %bb.bp, %bb.bo, %bb.bt, %bb.bs, %bb.bv, %bb.bu, %bb.bx, %bb.bw, %bb.bz, %bb.by, %bb.cj, %bb.ck, %bb.ci, %bb.cm, %bb.cl, %bb.co, %bb.cn, %bb.db, %bb.dc, %bb.da, %bb.de, %bb.dd, %bb.dh, %bb.di, %bb.dg, %bb.dn, %bb.dm, %bb.dx, %bb.dw, %bb.ao
  %.sroa.0.0 = phi ptr [ %i.co, %bb.ao ], [ %i.co, %bb.ap ], [ %i.co, %bb.aq ], [ %i.co, %bb.ar ], [ %i.co, %bb.as ], [ %i.co, %bb.at ], [ %i.co, %bb.au ], [ %i.co, %bb.bb ], [ %i.co, %bb.bc ], [ %i.co, %bb.bd ], [ %i.co, %bb.be ], [ %i.co, %bb.bi ], [ %i.co, %bb.bj ], [ %i.co, %bb.bk ], [ %i.co, %bb.bl ], [ %i.co, %bb.bm ], [ %i.co, %bb.bn ], [ %i.co, %bb.bo ], [ %i.co, %bb.bp ], [ %i.co, %bb.bs ], [ %i.co, %bb.bt ], [ %i.co, %bb.bu ], [ %i.co, %bb.bv ], [ %i.co, %bb.bw ], [ %i.co, %bb.bx ], [ %i.co, %bb.by ], [ %i.co, %bb.bz ], [ %i.co, %bb.cc ], [ %i.co, %bb.cd ], [ %i.co, %bb.ce ], [ %i.jh, %bb.ch ], [ %i.co, %bb.cj ], [ %i.co, %bb.ck ], [ %i.co, %bb.ci ], [ %i.co, %bb.cl ], [ %i.co, %bb.cm ], [ %i.co, %bb.cn ], [ %i.co, %bb.co ], [ %i.ki, %bb.cp ], [ %i.kj, %bb.cq ], [ %i.kk, %bb.cr ], [ %i.kl, %bb.cs ], [ %i.km, %bb.ct ], [ %i.kn, %bb.cu ], [ %i.ko, %bb.cv ], [ %i.kp, %bb.cw ], [ %i.kx, %bb.cz ], [ %i.co, %bb.db ], [ %i.co, %bb.dc ], [ %i.co, %bb.da ], [ %i.co, %bb.dd ], [ %i.co, %bb.de ], [ %i.lm, %bb.df ], [ %i.co, %bb.dh ], [ %i.co, %bb.di ], [ %i.co, %bb.dg ], [ %i.co, %bb.dl ], [ %i.co, %bb.dm ], [ %i.co, %bb.dn ], [ %i.co, %bb.dq ], [ %i.co, %bb.dv ], [ %i.co, %bb.dw ], [ %i.co, %bb.dx ], [ %i.co, %bb.dy ], [ %i.co, %bb.dz ], [ @.str.34, %bb.ea ], [ @.str.27, %bb.eb ], [ @.str.31, %bb.ec ], [ null, %bb.ed ], [ %i.nz, %bb.ee ], [ %i.ob, %bb.ef ], [ %i.of, %bb.eg ], [ %i.oj, %bb.eh ], [ %i.on, %bb.ei ], [ %i.or, %bb.ej ], [ %i.ov, %bb.ek ], [ %i.oz, %bb.el ], [ %i.pb, %bb.em ], [ %i.pd, %bb.en ], [ %i.ph, %bb.eo ], [ %i.pl, %bb.ep ], [ %i.pn, %bb.eq ], [ %i.pq, %bb.er ], [ %i.co, %bb.es ], [ %i.qa, %bb.et ], [ %i.qb, %bb.eu ], [ %i.qc, %bb.ev ], [ %i.qd, %bb.ew ]
  %i.qe = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not319 = icmp eq i32 %i.qe, 0
  br i1 %.not319, label %xstrdup.exit._crit_edge, label %bb.ey

xstrdup.exit._crit_edge:                          ; preds = %xstrdup.exit
  %.phi.trans.insert420 = getelementptr inbounds i8, ptr @yyr1, i64 %i.ch
  %.pre421 = load i8, ptr %.phi.trans.insert420, align 1, !tbaa !13
  %.pre426 = sext i8 %.pre421 to i64
  br label %bb.ez

bb.ey:                                            ; preds = %xstrdup.exit
  %i.qf = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.qg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qf, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.45) #17 ; 0 uses
  %i.qh = load ptr, ptr @stderr, align 8, !tbaa !12 ; 2 uses
  %i.qi = getelementptr inbounds i8, ptr @yyr1, i64 %i.ch
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !13
  %i.qk = icmp eq i32 %.0219, 0
  %i.ql = select i1 %i.qk, ptr @.str.63, ptr @.str.64
  %i.qm = sext i8 %i.qj to i64                    ; 2 uses
  %i.qn = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.qm
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !17
  %i.qp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qh, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.ql, ptr noundef %i.qo) #17 ; 0 uses
  %fputc.i331 = call i32 @fputc(i32 41, ptr %i.qh) ; 0 uses
  %i.qq = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc321 = call i32 @fputc(i32 10, ptr %i.qq)  ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %xstrdup.exit._crit_edge, %bb.ey
  %.pre-phi = phi i64 [ %.pre426, %xstrdup.exit._crit_edge ], [ %i.qm, %bb.ey ]
  %i.qr = sub nsw i64 0, %i.ck                    ; 2 uses
  %i.qs = getelementptr inbounds [8 x i8], ptr %.3, i64 %i.qr
  %i.qt = getelementptr inbounds i8, ptr %.3230, i64 %i.qr ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 3 uses
  %i.qv = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.qv, ptr %i.qu, align 8, !tbaa !13
  %i.qw = add nsw i64 %.pre-phi, -50              ; 2 uses
  %i.qx = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.qw
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !15
  %i.qz = sext i16 %i.qy to i32
  %i.ra = load i8, ptr %i.qt, align 1, !tbaa !13
  %i.rb = zext i8 %i.ra to i32                    ; 2 uses
  %i.rc = add nsw i32 %i.rb, %i.qz                ; 2 uses
  %or.cond6 = icmp ult i32 %i.rc, 182
  br i1 %or.cond6, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.rd = zext nneg i32 %i.rc to i64              ; 2 uses
  %i.re = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.rd
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !15
  %i.rg = sext i16 %i.rf to i32
  %i.rh = icmp eq i32 %i.rg, %i.rb
  br i1 %i.rh, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.rd
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !15
  %i.rk = sext i16 %i.rj to i32
  br label %bb.d

bb.fc:                                            ; preds = %bb.fa, %bb.ez
  %i.rl = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.qw
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !13
  %i.rn = zext i8 %i.rm to i32
  br label %bb.d

bb.fd:                                            ; preds = %bb.al
  %i.ro = load i32, ptr @yychar, align 4, !tbaa !9 ; 5 uses
  %i.rp = icmp eq i32 %i.ro, -2
  br i1 %i.rp, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %or.cond8 = icmp ult i32 %i.ro, 305
  br i1 %or.cond8, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.rq = zext nneg i32 %i.ro to i64
  %i.rr = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !13
  %i.rt = sext i8 %i.rs to i32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fd
  %i.ru = phi i32 [ -2, %bb.fd ], [ %i.rt, %bb.ff ], [ 2, %bb.fe ]
  switch i32 %.1245, label %.preheader [
    i32 0, label %bb.fh
    i32 3, label %bb.fi
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.rv = load i32, ptr @yynerrs, align 4, !tbaa !9
  %i.rw = add nsw i32 %i.rv, 1
  store i32 %i.rw, ptr @yynerrs, align 4, !tbaa !9
  %i.rx = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ry = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.rz = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.sa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rx, ptr noundef nonnull @.str.171, ptr noundef %i.ry, i32 noundef %i.rz, ptr noundef nonnull @.str.46) #17 ; 0 uses
  br label %.preheader

bb.fi:                                            ; preds = %bb.fg
  %i.sb = icmp slt i32 %i.ro, 1
  br i1 %i.sb, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.sc = icmp eq i32 %i.ro, 0
  br i1 %i.sc, label %.loopexit, label %.preheader

bb.fk:                                            ; preds = %bb.fi
  call fastcc void @yydestruct(ptr noundef nonnull @.str.47, i32 noundef %i.ru, ptr noundef nonnull @yylval)
  store i32 -2, ptr @yychar, align 4, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %bb.fh, %bb.fg, %bb.fj, %bb.fk, %bb.z
  br label %bb.fl

bb.fl:                                            ; preds = %.preheader, %bb.fr
  %i.sd = phi i16 [ %.pre424, %bb.fr ], [ %i.ai, %.preheader ] ; 2 uses
  %.4231 = phi ptr [ %i.st, %bb.fr ], [ %.3230, %.preheader ] ; 5 uses
  %.4 = phi ptr [ %i.ss, %bb.fr ], [ %.3, %.preheader ] ; 4 uses
  %.2 = phi i32 [ %i.sv, %bb.fr ], [ %.1214, %.preheader ]
  %i.se = sext i32 %.2 to i64
  %i.sf = icmp sgt i16 %i.sd, -2
  br i1 %i.sf, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.sg = sext i16 %i.sd to i64
  %i.sh = add nsw i64 %i.sg, 1                    ; 2 uses
  %i.si = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.sh
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !15
  %i.sk = icmp eq i16 %i.sj, 1
  br i1 %i.sk, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.sh
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !15 ; 3 uses
  %i.sn = icmp sgt i16 %i.sm, 0
  br i1 %i.sn, label %bb.fs, label %bb.fo

bb.fo:                                            ; preds = %bb.fm, %bb.fn, %bb.fl
  %i.so = icmp eq ptr %.4231, %.3238
  br i1 %i.so, label %.loopexit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.sp = getelementptr inbounds i8, ptr @yystos, i64 %i.se
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !13
  %i.sr = sext i8 %i.sq to i32
  call fastcc void @yydestruct(ptr noundef nonnull @.str.48, i32 noundef %i.sr, ptr noundef nonnull %.4)
  %i.ss = getelementptr inbounds i8, ptr %.4, i64 -8
  %i.st = getelementptr inbounds i8, ptr %.4231, i64 -1 ; 3 uses
  %i.su = load i8, ptr %i.st, align 1, !tbaa !13  ; 2 uses
  %i.sv = zext i8 %i.su to i32
  %i.sw = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not326 = icmp eq i32 %i.sw, 0
  br i1 %.not326, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @yy_stack_print(ptr noundef %.3238, ptr noundef %i.st)
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.phi.trans.insert422 = zext i8 %i.su to i64
  %.phi.trans.insert423 = getelementptr inbounds nuw [2 x i8], ptr @yypact, i64 %.phi.trans.insert422
  %.pre424 = load i16, ptr %.phi.trans.insert423, align 2, !tbaa !15
  br label %bb.fl

bb.fs:                                            ; preds = %bb.fn
  %i.sx = zext nneg i16 %i.sm to i32              ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.4, i64 8 ; 3 uses
  %i.sz = load i64, ptr @yylval, align 8, !tbaa !13
  store i64 %i.sz, ptr %i.sy, align 8, !tbaa !13
  %i.ta = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not323 = icmp eq i32 %i.ta, 0
  br i1 %.not323, label %bb.d, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.tb = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.tc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #17 ; 0 uses
  %i.td = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.te = zext nneg i16 %i.sm to i64
  %i.tf = getelementptr inbounds nuw i8, ptr @yystos, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !13
  %i.th = sext i8 %i.tg to i32
  call fastcc void @yy_symbol_print(ptr noundef %i.td, i32 noundef %i.th)
  %i.ti = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc325 = call i32 @fputc(i32 10, ptr %i.ti)  ; 0 uses
  br label %bb.d

bb.fu:                                            ; preds = %bb.j, %bb.k
  %i.tj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.tk = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.tl = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.tm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tj, ptr noundef nonnull @.str.171, ptr noundef %i.tk, i32 noundef %i.tl, ptr noundef nonnull @.str.49) #17 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.fj, %.thread378, %bb.fo, %bb.fu
  %.5240 = phi ptr [ %.0235, %bb.fu ], [ %.3238, %bb.fo ], [ %i.t, %bb.p ], [ %.3238, %bb.fj ], [ %.3238, %.thread378 ] ; 5 uses
  %.6233 = phi ptr [ %.1228, %bb.fu ], [ %.4231, %bb.fo ], [ %i.y, %bb.p ], [ %.3230, %bb.fj ], [ %.3230, %.thread378 ] ; 3 uses
  %.6 = phi ptr [ %.1221, %bb.fu ], [ %.4, %bb.fo ], [ %i.aa, %bb.p ], [ %.3, %bb.fj ], [ %.3, %.thread378 ]
  %.0218 = phi i32 [ 2, %bb.fu ], [ 1, %bb.fo ], [ 1, %bb.p ], [ 1, %bb.fj ], [ 0, %.thread378 ]
  %i.tn = load i32, ptr @yychar, align 4, !tbaa !9 ; 3 uses
  %.not327 = icmp eq i32 %i.tn, -2
end_hunk_0
begin_hunk_1_@yyparse:bb.a
bb.fw:                                            ; preds = %bb.fv
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !13
  %i.tr = sext i8 %i.tq to i32
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fv, %bb.fw
  %i.ts = phi i32 [ %i.tr, %bb.fw ], [ 2, %bb.fv ]
  call fastcc void @yydestruct(ptr noundef nonnull @.str.50, i32 noundef %i.ts, ptr noundef nonnull @yylval)
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %.loopexit
  %i.tt = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not328 = icmp eq i32 %i.tt, 0
  br i1 %.not328, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call fastcc void @yy_stack_print(ptr noundef %.5240, ptr noundef %.6233)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.not329399 = icmp eq ptr %.6233, %.5240
  br i1 %.not329399, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ga, %.lr.ph
  %.7401 = phi ptr [ %i.tz, %.lr.ph ], [ %.6, %bb.ga ] ; 2 uses
  %.7234400 = phi ptr [ %i.ua, %.lr.ph ], [ %.6233, %bb.ga ] ; 2 uses
  %i.tu = load i8, ptr %.7234400, align 1, !tbaa !13
  %i.tv = zext i8 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr @yystos, i64 %i.tv
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !13
  %i.ty = sext i8 %i.tx to i32
  call fastcc void @yydestruct(ptr noundef nonnull @.str.51, i32 noundef %i.ty, ptr noundef nonnull %.7401)
  %i.tz = getelementptr inbounds i8, ptr %.7401, i64 -8
  %i.ua = getelementptr inbounds i8, ptr %.7234400, i64 -1 ; 2 uses
  %.not329 = icmp eq ptr %i.ua, %.5240
  br i1 %.not329, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph, %bb.ga
  %.not330 = icmp eq ptr %.5240, %i.a
  br i1 %.not330, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %.5240) #15
  br label %bb.gc

bb.gc:                                            ; preds = %._crit_edge, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @yy_stack_print(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef nonnull readnone captures(address) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.60, i64 9, i64 1, ptr %i.a) #16 ; 0 uses
  %.not5 = icmp ugt ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.06, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i32
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.61, i32 noundef %i.c) #17 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06, i64 1 ; 2 uses
  %.not = icmp ugt ptr %i.f, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.g) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @yylex() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @yy_symbol_print(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -128, 128) %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 50
  %i.b = select i1 %i.a, ptr @.str.63, ptr @.str.64
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.b, ptr noundef %i.e) #15 ; 0 uses
  %fputc = tail call i32 @fputc(i32 41, ptr %0)   ; 0 uses
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @yy_reduce_print(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -128, 32769) %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr @yyrline, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2, !tbaa !15
  %i.d = sext i16 %i.c to i32
  %i.e = getelementptr inbounds i8, ptr @yyr2, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13    ; 3 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.h = add nsw i32 %1, -1
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.159, i32 noundef %i.h, i32 noundef %i.d) #17 ; 0 uses
  %i.j = icmp sgt i8 %i.f, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = zext nneg i8 %i.f to i64
  %wide.trip.count = zext nneg i8 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.160, i32 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !12 ; 2 uses
  %i.p = sub nsw i64 %indvars.iv.next, %i.k
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @yystos, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13    ; 2 uses
  %i.v = icmp slt i8 %i.u, 50
  %i.w = select i1 %i.v, ptr @.str.63, ptr @.str.64
  %i.x = sext i8 %i.u to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.w, ptr noundef %i.z) #17 ; 0 uses
  %fputc.i = tail call i32 @fputc(i32 41, ptr %i.o) ; 0 uses
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ab) ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare ptr @menu_add_prompt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nofree nounwind uwtable
define internal void @zconf_error(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #3 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = load i32, ptr @yynerrs, align 4, !tbaa !9
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @yynerrs, align 4, !tbaa !9
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.d = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %i.e = load i32, ptr @cur_lineno, align 4, !tbaa !9
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.170, ptr noundef %i.d, i32 noundef %i.e) #17 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.h = call i32 @vfprintf(ptr noundef %i.g, ptr noundef %0, ptr noundef nonnull %1) #17 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = call i32 @fputc(i32 10, ptr %i.i)      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

declare void @menu_add_entry(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare void @menu_set_type(i32 noundef) local_unnamed_addr #6

declare void @menu_add_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @menu_add_symbol(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_comp(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sym_lookup(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @menu_add_menu() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef zeroext i1 @zconf_endtoken(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  tail call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.167, ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %.sink.split

5:                                                ; preds = %2
  %6 = load ptr, ptr @current_menu, align 8, !tbaa !31
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 112
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = load ptr, ptr @cur_filename, align 8, !tbaa !17
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %9) #19
  %.not8 = icmp eq i32 %10, 0
  br i1 %.not8, label %21, label %11

11:                                               ; preds = %5
  tail call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.168, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %12 = load ptr, ptr @stderr, align 8, !tbaa !12
  %13 = load ptr, ptr @current_menu, align 8, !tbaa !31 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 112
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 120
  %17 = load i32, ptr %16, align 8, !tbaa !36
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.169, ptr noundef %15, i32 noundef %17, ptr noundef nonnull %1) #17 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %4, %11
  %19 = load i32, ptr @yynerrs, align 4, !tbaa !9
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @yynerrs, align 4, !tbaa !9
  br label %21

21:                                               ; preds = %.sink.split, %5
  %.0 = phi i1 [ true, %5 ], [ false, %.sink.split ]
  ret i1 %.0
}

declare void @menu_end_menu() local_unnamed_addr #6

declare void @menu_add_dep(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @zconf_nextfile(ptr noundef) local_unnamed_addr #6

declare void @zconf_starthelp() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare void @menu_add_visibility(ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_symbol(ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_one(i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_two(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @variable_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @yydestruct(ptr noundef %0, i32 noundef range(i32 -128, 128) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @yydebug, align 4, !tbaa !9
  %.not13 = icmp eq i32 %i.a, 0
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, ptr @.str.161, ptr %0
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.5, ptr noundef nonnull %spec.store.select) #17 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !12 ; 2 uses
  %i.e = icmp slt i32 %1, 50
  %i.f = select i1 %i.e, ptr @.str.63, ptr @.str.64
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.f, ptr noundef %i.i) #17 ; 0 uses
  %fputc.i = tail call i32 @fputc(i32 41, ptr %i.d) ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  switch i32 %1, label %bb.g [
    i32 62, label %bb.d
    i32 69, label %bb.e
    i32 74, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.m = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !36
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.162, ptr noundef %i.o, i32 noundef %i.q) #17 ; 0 uses
  %i.s = load ptr, ptr @current_menu, align 8, !tbaa !31
  %i.t = load ptr, ptr %2, align 8, !tbaa !13
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %.sink.split, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !36
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.162, ptr noundef %i.y, i32 noundef %i.aa) #17 ; 0 uses
  %i.ac = load ptr, ptr @current_menu, align 8, !tbaa !31
  %i.ad = load ptr, ptr %2, align 8, !tbaa !13
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %.sink.split, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ag = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !36
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.162, ptr noundef %i.ai, i32 noundef %i.ak) #17 ; 0 uses
  %i.am = load ptr, ptr @current_menu, align 8, !tbaa !31
  %i.an = load ptr, ptr %2, align 8, !tbaa !13
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d
  tail call void @menu_end_menu() #15
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @conf_parse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.gstr, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @str_new(ptr dead_on_unwind nonnull writable sret(%struct.gstr) align 8 %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @autoconf_cmd, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull @autoconf_cmd, ptr noundef nonnull @.str.52) #15
  call void @zconf_initscan(ptr noundef %0) #15
  call void @_menu_init() #15
  %i.a = call ptr @getenv(ptr noundef nonnull @.str.53) #15
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr @yydebug, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = call i32 @yyparse()                      ; 0 uses
  call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull @autoconf_cmd, ptr noundef nonnull @.str.54) #15
  call void @env_write_dep(ptr noundef nonnull @autoconf_cmd) #15
  call void @variable_all_del() #15
  %i.c = load i32, ptr @yynerrs, align 4, !tbaa !9
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @exit(i32 noundef 1) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @modules_sym, align 8, !tbaa !42
  %.not19 = icmp eq ptr %i.d, null
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @symbol_no, ptr @modules_sym, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.e = call zeroext i1 @menu_has_prompt(ptr noundef nonnull @rootmenu) #15
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @rootmenu, ptr @current_entry, align 8, !tbaa !31
  %i.f = call ptr @menu_add_prompt(i32 noundef 3, ptr noundef nonnull @.str.55, ptr noundef null) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @menu_finalize() #15
  %i.g = call ptr @menu_next(ptr noundef nonnull @rootmenu, ptr noundef nonnull @rootmenu) #15 ; 2 uses
  %.not2040 = icmp eq ptr %i.g, null
  br i1 %.not2040, label %._crit_edge, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.i, %transitional_check_sanity.exit.thread.thread
  %.01541 = phi ptr [ %i.by, %transitional_check_sanity.exit.thread.thread ], [ %i.g, %bb.i ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01541, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %transitional_check_sanity.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph45
  %i.j = call ptr @sym_check_deps(ptr noundef nonnull %i.i) #15
  %.not23 = icmp eq ptr %i.j, null
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = load i32, ptr @yynerrs, align 4, !tbaa !9
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr @yynerrs, align 4, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pr = load ptr, ptr %i.h, align 8, !tbaa !37   ; 5 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %transitional_check_sanity.exit.thread.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %.pr, i64 152
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41
  %i.o = and i32 %i.n, 256
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %transitional_check_sanity.exit.thread.thread55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %.01541, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 3 uses
  %.not19.i = icmp eq ptr %i.q, null
  br i1 %.not19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !47
  %i.t = icmp eq i32 %i.s, 10
  br i1 %i.t, label %expr_is_yes.exit.i, label %expr_is_yes.exit.thread.i

expr_is_yes.exit.i:                               ; preds = %bb.o
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
end_hunk_1
