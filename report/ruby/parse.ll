inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@tokadd_string:bb.a

._crit_edge.i.i:                                  ; preds = %bb.bw
  %.pre.i23.i = load ptr, ptr %i.l, align 8, !tbaa !500
  br label %tokspace.exit.i

.preheader.i.i:                                   ; preds = %bb.bw, %.preheader.i.i
  %i.hm = phi i32 [ %i.hn, %.preheader.i.i ], [ %i.hl, %bb.bw ]
  %i.hn = shl i32 %i.hm, 1                        ; 4 uses
  %i.ho = icmp slt i32 %i.hn, %i.hk
  br i1 %i.ho, label %.preheader.i.i, label %bb.bx, !llvm.loop !620

bb.bx:                                            ; preds = %.preheader.i.i
  store i32 %i.hn, ptr %i.n, align 4, !tbaa !509
  %i.hp = load ptr, ptr %i.l, align 8, !tbaa !500
  %i.hq = sext i32 %i.hn to i64
  %i.hr = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.hp, i64 noundef %i.hq, i64 noundef 1) #38 ; 2 uses
  store ptr %i.hr, ptr %i.l, align 8, !tbaa !500
  %.pre13.i.i = load i32, ptr %i.m, align 8, !tbaa !570
  %.pre46.i = load i64, ptr %i.a, align 8, !tbaa !11
  br label %tokspace.exit.i

tokspace.exit.i:                                  ; preds = %bb.bx, %._crit_edge.i.i
  %i.hs = phi i64 [ %i.hd, %._crit_edge.i.i ], [ %.pre46.i, %bb.bx ]
  %i.ht = phi i32 [ %i.hk, %._crit_edge.i.i ], [ %.pre13.i.i, %bb.bx ]
  %i.hu = phi ptr [ %.pre.i23.i, %._crit_edge.i.i ], [ %i.hr, %bb.bx ]
  %i.hv = shl i64 %i.hs, 32
  %sext21.i = add i64 %i.hv, 4294967296           ; 2 uses
  %.not.i24.i = icmp eq i64 %sext21.i, 0
  br i1 %.not.i24.i, label %bb.cg, label %bb.by

bb.by:                                            ; preds = %tokspace.exit.i
  %i.hw = ashr exact i64 %sext21.i, 32            ; 2 uses
  %i.hx = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.hy = sub nsw i64 0, %i.hw
  %i.hz = getelementptr i8, ptr %i.hx, i64 %i.hy
  %i.ia = sub i32 %i.ht, %i.hi
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %i.hu, i64 %i.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ic, ptr noundef nonnull readonly align 1 %i.hz, i64 noundef range(i64 1, 0) %i.hw, i1 noundef false) #31
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bs
  %i.id = call fastcc i32 @tok_hex(ptr noundef nonnull %0, ptr noundef %i.a) ; 0 uses
  %i.ie = load i64, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %tokadd_escape.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ig = trunc i64 %i.ie to i32
  %i.ih = add i32 %i.ig, 2                        ; 2 uses
  %i.ii = load i32, ptr %i.m, align 8, !tbaa !570
  %i.ij = add i32 %i.ii, %i.ih                    ; 4 uses
  store i32 %i.ij, ptr %i.m, align 8, !tbaa !570
  %i.ik = load i32, ptr %i.n, align 4, !tbaa !509 ; 2 uses
  %.not.i25.i = icmp slt i32 %i.ij, %i.ik
  br i1 %.not.i25.i, label %._crit_edge.i28.i, label %.preheader.i26.i

._crit_edge.i28.i:                                ; preds = %bb.ca
  %.pre.i30.i = load ptr, ptr %i.l, align 8, !tbaa !500
  br label %tokspace.exit31.i

.preheader.i26.i:                                 ; preds = %bb.ca, %.preheader.i26.i
  %i.il = phi i32 [ %i.im, %.preheader.i26.i ], [ %i.ik, %bb.ca ]
  %i.im = shl i32 %i.il, 1                        ; 4 uses
  %i.in = icmp slt i32 %i.im, %i.ij
  br i1 %i.in, label %.preheader.i26.i, label %bb.cb, !llvm.loop !620

bb.cb:                                            ; preds = %.preheader.i26.i
  store i32 %i.im, ptr %i.n, align 4, !tbaa !509
  %i.io = load ptr, ptr %i.l, align 8, !tbaa !500
  %i.ip = sext i32 %i.im to i64
  %i.iq = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.io, i64 noundef %i.ip, i64 noundef 1) #38 ; 2 uses
  store ptr %i.iq, ptr %i.l, align 8, !tbaa !500
  %.pre13.i27.i = load i32, ptr %i.m, align 8, !tbaa !570
  %.pre.i215 = load i64, ptr %i.a, align 8, !tbaa !11
  br label %tokspace.exit31.i

tokspace.exit31.i:                                ; preds = %bb.cb, %._crit_edge.i28.i
  %i.ir = phi i64 [ %i.ie, %._crit_edge.i28.i ], [ %.pre.i215, %bb.cb ]
  %i.is = phi i32 [ %i.ij, %._crit_edge.i28.i ], [ %.pre13.i27.i, %bb.cb ]
  %i.it = phi ptr [ %.pre.i30.i, %._crit_edge.i28.i ], [ %i.iq, %bb.cb ]
  %i.iu = shl i64 %i.ir, 32
  %sext.i = add i64 %i.iu, 8589934592             ; 2 uses
  %.not.i32.i = icmp eq i64 %sext.i, 0
  br i1 %.not.i32.i, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %tokspace.exit31.i
  %i.iv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.iw = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.ix = sub nsw i64 0, %i.iv
  %i.iy = getelementptr i8, ptr %i.iw, i64 %i.ix
  %i.iz = sub i32 %i.is, %i.ih
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr i8, ptr %i.it, i64 %i.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.jb, ptr noundef nonnull readonly align 1 %i.iy, i64 noundef range(i64 1, 0) %i.iv, i1 noundef false) #31
  br label %bb.cg

nextc0.exit.thread42.i:                           ; preds = %bb.bv, %.critedge.i.i
  %i.jc = getelementptr i8, ptr %0, i64 216
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !176
  %i.je = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.gq to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.jd, i64 noundef %i.jh)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ji = load i32, ptr %i.u, align 4, !tbaa !29  ; 4 uses
  %i.jj = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.jk = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = trunc i64 %i.jn to i32
  %i.jp = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = sub i64 %i.jq, %i.jm
  %i.js = trunc i64 %i.jr to i32
  store i32 %i.ji, ptr %9, align 4, !tbaa !51
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.jo, ptr %i.jt, align 4, !tbaa !54
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.ji, ptr %i.ju, align 4, !tbaa !55
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.js, ptr %i.jv, align 4, !tbaa !56
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %9, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.804)
  %i.jw = load i32, ptr %i.u, align 4, !tbaa !29
  %i.jx = icmp eq i32 %i.ji, %i.jw
  br i1 %i.jx, label %bb.cd, label %parser_yyerror0.exit.i

bb.cd:                                            ; preds = %nextc0.exit.thread42.i
  %i.jy = load ptr, ptr %i.y, align 8, !tbaa !189
  %i.jz = load i64, ptr %i.z, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.jz, ptr noundef nonnull readonly %9, i32 noundef %i.ji, ptr noundef %i.jy)
  br label %parser_yyerror0.exit.i

parser_yyerror0.exit.i:                           ; preds = %bb.cd, %nextc0.exit.thread42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !188
  store ptr %i.ka, ptr %i.t, align 8, !tbaa !49
  br label %tokadd_escape.exit

nextc0.exit.thread.i:                             ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.kb = load ptr, ptr %i.l, align 8, !tbaa !500
  %i.kc = load i32, ptr %i.m, align 8, !tbaa !570 ; 2 uses
  %i.kd = add i32 %i.kc, 1
  store i32 %i.kd, ptr %i.m, align 8, !tbaa !570
  %i.ke = sext i32 %i.kc to i64
  %i.kf = getelementptr i8, ptr %i.kb, i64 %i.ke
  store i8 92, ptr %i.kf, align 1, !tbaa !15
  %i.kg = load i32, ptr %i.m, align 8, !tbaa !570 ; 2 uses
  %i.kh = load i32, ptr %i.n, align 4, !tbaa !509 ; 2 uses
  %.not.i35.i = icmp slt i32 %i.kg, %i.kh
  %.pre47.i = load ptr, ptr %i.l, align 8, !tbaa !500 ; 2 uses
  br i1 %.not.i35.i, label %tokadd.exit.i, label %bb.ce

bb.ce:                                            ; preds = %nextc0.exit.thread.i
  %i.ki = shl i32 %i.kh, 1                        ; 2 uses
  store i32 %i.ki, ptr %i.n, align 4, !tbaa !509
  %i.kj = sext i32 %i.ki to i64
  %i.kk = call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre47.i, i64 noundef %i.kj, i64 noundef 1) #38 ; 2 uses
  store ptr %i.kk, ptr %i.l, align 8, !tbaa !500
  %.pre48.i = load i32, ptr %i.m, align 8, !tbaa !570
  br label %tokadd.exit.i

tokadd.exit.i:                                    ; preds = %bb.ce, %nextc0.exit.thread.i
  %i.kl = phi i32 [ %i.kg, %nextc0.exit.thread.i ], [ %.pre48.i, %bb.ce ] ; 2 uses
  %i.km = phi ptr [ %.pre47.i, %nextc0.exit.thread.i ], [ %i.kk, %bb.ce ]
  %i.kn = add i32 %i.kl, 1
  store i32 %i.kn, ptr %i.m, align 8, !tbaa !570
  %i.ko = sext i32 %i.kl to i64
  %i.kp = getelementptr i8, ptr %i.km, i64 %i.ko
  store i8 %i.gx, ptr %i.kp, align 1, !tbaa !15
  %i.kq = load i32, ptr %i.m, align 8, !tbaa !570
  %i.kr = load i32, ptr %i.n, align 4, !tbaa !509 ; 2 uses
  %.not.i36.i = icmp slt i32 %i.kq, %i.kr
  br i1 %.not.i36.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %tokadd.exit.i
  %i.ks = shl i32 %i.kr, 1                        ; 2 uses
  store i32 %i.ks, ptr %i.n, align 4, !tbaa !509
  %i.kt = load ptr, ptr %i.l, align 8, !tbaa !500
  %i.ku = sext i32 %i.ks to i64
  %i.kv = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.kt, i64 noundef %i.ku, i64 noundef 1) #38
  store ptr %i.kv, ptr %i.l, align 8, !tbaa !500
  br label %bb.cg

tokadd_escape.exit:                               ; preds = %bb.bz, %parser_yyerror0.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %nextc0.exit201.thread231

bb.cg:                                            ; preds = %bb.cc, %bb.by, %nextc0.exit.thread40.i, %bb.bs, %tokspace.exit.i, %tokspace.exit31.i, %tokadd.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.kw = load ptr, ptr %6, align 8, !tbaa !564   ; 3 uses
  %.not175 = icmp eq ptr %i.kw, null
  br i1 %.not175, label %.backedge.backedge, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kx = load ptr, ptr %5, align 8, !tbaa !564   ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  %i.kz = trunc nuw i8 %.0139 to i1
  %or.cond9 = or i1 %i.ky, %i.kz
  br i1 %or.cond9, label %.backedge.backedge, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.la = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.lb = getelementptr i8, ptr %i.la, i64 2
  %i.lc = getelementptr i8, ptr %i.kw, i64 8
  %.val189 = load ptr, ptr %i.lc, align 8, !tbaa !559
  %i.ld = getelementptr i8, ptr %i.kx, i64 8
  %.val190 = load ptr, ptr %i.ld, align 8, !tbaa !559
  call fastcc void @parser_mixed_escape(ptr noundef nonnull %0, ptr noundef %i.lb, ptr %.val189, ptr %.val190)
  br label %.backedge.backedge

bb.cj:                                            ; preds = %.thread233
  br i1 %i.i, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.le = load i32, ptr %i.d, align 8
  %i.lf = and i32 %i.le, -9
  store i32 %i.lf, ptr %i.d, align 8
  store ptr %i.co, ptr %i.b, align 8, !tbaa !188
  %i.lg = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.lh = icmp ugt ptr %i.co, %i.lg
  br i1 %i.lh, label %bb.cl, label %pushback.exit216

bb.cl:                                            ; preds = %bb.ck
  %i.li = load i8, ptr %i.co, align 1, !tbaa !15
  %i.lj = icmp eq i8 %i.li, 10
  br i1 %i.lj, label %bb.cm, label %pushback.exit216

bb.cm:                                            ; preds = %bb.cl
  %i.lk = getelementptr i8, ptr %i.co, i64 -1     ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !15
  %i.lm = icmp eq i8 %i.ll, 13
  br i1 %i.lm, label %bb.cn, label %pushback.exit216

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.lk, ptr %i.b, align 8, !tbaa !188
  br label %pushback.exit216

pushback.exit216:                                 ; preds = %bb.ck, %bb.cl, %bb.cm, %bb.cn
  br i1 %.not163, label %tokadd.exit218, label %bb.co

bb.co:                                            ; preds = %pushback.exit216
  %i.ln = load ptr, ptr %i.l, align 8, !tbaa !500
  %i.lo = load i32, ptr %i.m, align 8, !tbaa !570 ; 2 uses
  %i.lp = add i32 %i.lo, 1
  store i32 %i.lp, ptr %i.m, align 8, !tbaa !570
  %i.lq = sext i32 %i.lo to i64
  %i.lr = getelementptr i8, ptr %i.ln, i64 %i.lq
  store i8 92, ptr %i.lr, align 1, !tbaa !15
  %i.ls = load i32, ptr %i.m, align 8, !tbaa !570
  %i.lt = load i32, ptr %i.n, align 4, !tbaa !509 ; 2 uses
  %.not.i217 = icmp slt i32 %i.ls, %i.lt
  br i1 %.not.i217, label %tokadd.exit218, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lu = shl i32 %i.lt, 1                        ; 2 uses
  store i32 %i.lu, ptr %i.n, align 4, !tbaa !509
  %i.lv = load ptr, ptr %i.l, align 8, !tbaa !500
  %i.lw = sext i32 %i.lu to i64
  %i.lx = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.lv, i64 noundef %i.lw, i64 noundef 1) #38
  store ptr %i.lx, ptr %i.l, align 8, !tbaa !500
  br label %tokadd.exit218

tokadd.exit218:                                   ; preds = %bb.cp, %bb.co, %pushback.exit216
  %i.ly = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.lz = getelementptr i8, ptr %i.ly, i64 -1
  %i.ma = call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.lz)
  br label %pushback.exit192

bb.cq:                                            ; preds = %bb.cj
  %.not172.old = icmp eq i32 %2, %i.cr            ; 2 uses
  br i1 %.not164, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not172.old, label %pushback.exit192, label %switch.early.test

switch.early.test:                                ; preds = %bb.cr
  switch i8 %i.cq, label %bb.ct [
    i8 32, label %pushback.exit192
    i8 13, label %pushback.exit192
    i8 12, label %pushback.exit192
    i8 11, label %pushback.exit192
    i8 10, label %pushback.exit192
    i8 9, label %pushback.exit192
  ]

bb.cs:                                            ; preds = %bb.cq
  %i.mb = icmp eq i32 %3, %i.cr
  %or.cond185 = and i1 %.not158, %i.mb
  %or.cond243 = or i1 %.not172.old, %or.cond185
  br i1 %or.cond243, label %pushback.exit192, label %bb.cu

bb.ct:                                            ; preds = %switch.early.test
  %.old = icmp eq i32 %3, %i.cr
  %or.cond185.old = and i1 %.not158, %.old
  br i1 %or.cond185.old, label %pushback.exit192, label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 92)
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cr)
  br label %.backedge.backedge

.thread:                                          ; preds = %bb.z, %bb.af
  %i.mc = getelementptr i8, ptr %i.at, i64 -1
  %.val191.val = load i8, ptr %i.mc, align 1, !tbaa !15
  %i.md = icmp slt i8 %.val191.val, 0
  br i1 %i.md, label %tokadd.exit208, label %bb.db

tokadd.exit208:                                   ; preds = %bb.bd, %bb.bc, %.thread, %bb.bb
  %.0138 = phi i32 [ %.011.i.ph, %.thread ], [ %i.cr, %bb.bb ], [ %i.cr, %bb.bc ], [ %i.cr, %bb.bd ]
  %i.me = load ptr, ptr %6, align 8, !tbaa !564   ; 3 uses
  %.not167 = icmp eq ptr %i.me, null
  %i.mf = load ptr, ptr %5, align 8, !tbaa !564   ; 3 uses
  br i1 %.not167, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %tokadd.exit208
  store ptr %i.mf, ptr %6, align 8, !tbaa !564
  br label %bb.da

bb.cw:                                            ; preds = %tokadd.exit208
  %.not168 = icmp eq ptr %i.me, %i.mf
  br i1 %.not168, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mg = trunc nuw i8 %.0139 to i1
  br i1 %i.mg, label %.backedge.backedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mh = getelementptr i8, ptr %i.me, i64 8
  %.val187 = load ptr, ptr %i.mh, align 8, !tbaa !559
  %i.mi = getelementptr i8, ptr %i.mf, i64 8
  %.val188 = load ptr, ptr %i.mi, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.mj = load i32, ptr %i.u, align 4, !tbaa !29  ; 4 uses
  store i32 %i.mj, ptr %8, align 4, !tbaa !520
  %i.mk = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.ml = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = ptrtoint ptr %i.ml to i64               ; 2 uses
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = trunc i64 %i.mo to i32
  store i32 %i.mp, ptr %i.v, align 4, !tbaa !521
  store i32 %i.mj, ptr %i.w, align 4, !tbaa !520
  %i.mq = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = sub i64 %i.mr, %i.mn
  %i.mt = trunc i64 %i.ms to i32
  store i32 %i.mt, ptr %i.x, align 4, !tbaa !521
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.807, ptr noundef %.val187, ptr noundef %.val188)
  %i.mu = load i32, ptr %i.u, align 4, !tbaa !29
  %i.mv = icmp eq i32 %i.mj, %i.mu
  br i1 %i.mv, label %bb.cz, label %parser_mixed_error.exit

bb.cz:                                            ; preds = %bb.cy
  %i.mw = load ptr, ptr %i.y, align 8, !tbaa !189
  %i.mx = load i64, ptr %i.z, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.mx, ptr noundef nonnull readonly %8, i32 noundef %i.mj, ptr noundef %i.mw)
  br label %parser_mixed_error.exit

parser_mixed_error.exit:                          ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.backedge.backedge

bb.da:                                            ; preds = %bb.cw, %bb.cv
  %i.my = call fastcc i32 @tokadd_mbchar(ptr noundef %0, i32 noundef %.0138)
  %i.mz = icmp eq i32 %i.my, -1
  br i1 %i.mz, label %nextc0.exit201.thread231, label %.backedge.backedge

bb.db:                                            ; preds = %.thread
  br i1 %.not164, label %pushback.exit192, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %trunc264 = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc264, label %pushback.exit192 [
    i8 32, label %bb.dd
    i8 13, label %bb.dd
    i8 12, label %bb.dd
    i8 11, label %bb.dd
    i8 10, label %bb.dd
    i8 9, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc, %bb.dc, %bb.dc, %bb.dc, %bb.dc
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  br label %nextc0.exit

pushback.exit192:                                 ; preds = %bb.dc, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.cr, %bb.ct, %bb.x, %bb.cs, %tokadd.exit218, %bb.db, %bb.p
  %.1 = phi i32 [ %3, %bb.p ], [ %2, %bb.x ], [ %i.ma, %tokadd.exit218 ], [ %i.cr, %switch.early.test ], [ %3, %bb.ct ], [ %i.cr, %bb.cs ], [ %.011.i.ph, %bb.db ], [ %.011.i.ph, %bb.dc ], [ %2, %bb.cr ], [ %i.cr, %switch.early.test ], [ %i.cr, %switch.early.test ], [ %i.cr, %switch.early.test ], [ %i.cr, %switch.early.test ], [ %i.cr, %switch.early.test ] ; 4 uses
  %i.na = and i32 %.1, 128
  %.not179 = icmp eq i32 %i.na, 0
  br i1 %.not179, label %pushback.exit192.thread239, label %bb.de

bb.de:                                            ; preds = %pushback.exit192
  %i.nb = load ptr, ptr %6, align 8, !tbaa !564   ; 3 uses
  %.not180 = icmp eq ptr %i.nb, null
  %i.nc = load ptr, ptr %5, align 8, !tbaa !564   ; 3 uses
  br i1 %.not180, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
end_hunk_0
