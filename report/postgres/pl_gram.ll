Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pl_gram?download=true
inline.NumInlined: 116
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@plpgsql_yyparse:bb.a
  br label %bb.ol

bb.mt:                                            ; preds = %bb.w
  store i32 0, ptr %4, align 8
  br label %bb.ol

bb.mu:                                            ; preds = %bb.w
  %i.axh = load ptr, ptr %.31130, align 8
  %i.axi = load i32, ptr %i.axh, align 4
  %.not1215 = icmp eq i32 %i.axi, 0
  br i1 %.not1215, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %i.axj = call i32 @plpgsql_peek(ptr noundef %1) #10
  %i.axk = icmp eq i32 %i.axj, 91
  br i1 %i.axk, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %i.axl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.axm = call i32 @errcode(i32 noundef 67141764) #10 ; 0 uses
  %i.axn = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.71) #10 ; 0 uses
  %i.axo = load i32, ptr %.31145, align 4
  %i.axp = call i32 @plpgsql_scanner_errposition(i32 noundef %i.axo, ptr noundef %1) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2296, ptr noundef nonnull @__func__.plpgsql_yyparse) #10
  unreachable

bb.mx:                                            ; preds = %bb.mv
  %i.axq = load ptr, ptr %.31130, align 8         ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 32
  %i.axs = load ptr, ptr %i.axr, align 8
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  %i.axu = load i32, ptr %i.axt, align 8
  %.not1216 = icmp eq i32 %i.axu, 1790
  br i1 %.not1216, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.axv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.axw = call i32 @errcode(i32 noundef 67141764) #10 ; 0 uses
  %i.axx = load ptr, ptr %.31130, align 8
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 8
  %i.axz = load ptr, ptr %i.axy, align 8
  %i.aya = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.72, ptr noundef %i.axz) #10 ; 0 uses
  %i.ayb = load i32, ptr %.31145, align 4
  %i.ayc = call i32 @plpgsql_scanner_errposition(i32 noundef %i.ayb, ptr noundef %1) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2303, ptr noundef nonnull @__func__.plpgsql_yyparse) #10
  unreachable

bb.mz:                                            ; preds = %bb.mx
  store ptr %i.axq, ptr %4, align 8
  br label %bb.ol

bb.na:                                            ; preds = %bb.w
  %i.ayd = load i32, ptr %.31145, align 4
  call fastcc void @word_is_not_variable(ptr noundef %.31130, i32 noundef %i.ayd, ptr noundef %1)
  unreachable

bb.nb:                                            ; preds = %bb.w
  %i.aye = load i32, ptr %.31145, align 4
  call fastcc void @cword_is_not_variable(ptr noundef %.31130, i32 noundef %i.aye, ptr noundef %1)
  unreachable

bb.nc:                                            ; preds = %bb.w
  store ptr null, ptr %4, align 8
  br label %bb.ol

bb.nd:                                            ; preds = %bb.w
  %i.ayf = load i32, ptr %.31145, align 4
  %i.ayg = call i32 @plpgsql_location_to_lineno(i32 noundef %i.ayf, ptr noundef %1) #10 ; 2 uses
  %i.ayh = call ptr @palloc(i64 noundef 16) #10   ; 3 uses
  %i.ayi = load ptr, ptr @plpgsql_curr_compile, align 8 ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 557
  store i8 1, ptr %i.ayj, align 1
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayi, i64 56
  %i.ayl = load i32, ptr %i.ayk, align 8
  %i.aym = call ptr @plpgsql_build_datatype(i32 noundef 25, i32 noundef -1, i32 noundef %i.ayl, ptr noundef null) #10
  %i.ayn = call ptr @plpgsql_build_variable(ptr noundef nonnull @.str.60, i32 noundef %i.ayg, ptr noundef %i.aym, i1 noundef zeroext true) #10 ; 2 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 20
  store i8 1, ptr %i.ayo, align 4
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayn, i64 4
  %i.ayq = load i32, ptr %i.ayp, align 4
  store i32 %i.ayq, ptr %i.ayh, align 8
  %i.ayr = load ptr, ptr @plpgsql_curr_compile, align 8
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 56
  %i.ayt = load i32, ptr %i.ays, align 8
  %i.ayu = call ptr @plpgsql_build_datatype(i32 noundef 25, i32 noundef -1, i32 noundef %i.ayt, ptr noundef null) #10
  %i.ayv = call ptr @plpgsql_build_variable(ptr noundef nonnull @.str.73, i32 noundef %i.ayg, ptr noundef %i.ayu, i1 noundef zeroext true) #10 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 20
  store i8 1, ptr %i.ayw, align 4
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 4
  %i.ayy = load i32, ptr %i.ayx, align 4
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayh, i64 4
  store i32 %i.ayy, ptr %i.ayz, align 4
  store ptr %i.ayh, ptr %4, align 8
  br label %bb.ol

bb.ne:                                            ; preds = %bb.w
  %i.aza = getelementptr inbounds i8, ptr %.31130, i64 -32
  %i.azb = load ptr, ptr %i.aza, align 8          ; 2 uses
  %i.azc = load ptr, ptr %.31130, align 8
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azb, i64 8
  store ptr %i.azc, ptr %i.azd, align 8
  store ptr %i.azb, ptr %4, align 8
  br label %bb.ol

bb.nf:                                            ; preds = %bb.w
  %i.aze = getelementptr inbounds i8, ptr %.31130, i64 -32
  %i.azf = load ptr, ptr %i.aze, align 8
  %i.azg = load ptr, ptr %.31130, align 8
  %i.azh = call ptr @lappend(ptr noundef %i.azf, ptr noundef %i.azg) #10
  store ptr %i.azh, ptr %4, align 8
  br label %bb.ol

bb.ng:                                            ; preds = %bb.w
  %i.azi = load ptr, ptr %.31130, align 8
  %i.azj = call ptr @list_make1_impl(i32 noundef 1, ptr %i.azi) #10
  store ptr %i.azj, ptr %4, align 8
  br label %bb.ol

bb.nh:                                            ; preds = %bb.w
  %i.azk = call ptr @palloc0(i64 noundef 24) #10  ; 4 uses
  %i.azl = getelementptr inbounds i8, ptr %.31145, i64 -12
  %i.azm = load i32, ptr %i.azl, align 4
  %i.azn = call i32 @plpgsql_location_to_lineno(i32 noundef %i.azm, ptr noundef %1) #10
  store i32 %i.azn, ptr %i.azk, align 8
  %i.azo = getelementptr inbounds i8, ptr %.31130, i64 -64
  %i.azp = load ptr, ptr %i.azo, align 8
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azk, i64 8
  store ptr %i.azp, ptr %i.azq, align 8
  %i.azr = load ptr, ptr %.31130, align 8
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azk, i64 16
  store ptr %i.azr, ptr %i.azs, align 8
  store ptr %i.azk, ptr %4, align 8
  br label %bb.ol

bb.ni:                                            ; preds = %bb.w
  %i.azt = getelementptr inbounds i8, ptr %.31130, i64 -64 ; 2 uses
  %i.azu = load ptr, ptr %i.azt, align 8
  br label %bb.nj

bb.nj:                                            ; preds = %bb.nj, %bb.ni
  %.0 = phi ptr [ %i.azu, %bb.ni ], [ %i.azw, %bb.nj ] ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.azw = load ptr, ptr %i.azv, align 8          ; 2 uses
  %.not1214 = icmp eq ptr %i.azw, null
  br i1 %.not1214, label %bb.nk, label %bb.nj, !llvm.loop !10

bb.nk:                                            ; preds = %bb.nj
  %i.azx = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.azy = load ptr, ptr %.31130, align 8
  store ptr %i.azy, ptr %i.azx, align 8
  %i.azz = load ptr, ptr %i.azt, align 8
  store ptr %i.azz, ptr %4, align 8
  br label %bb.ol

bb.nl:                                            ; preds = %bb.w
  %i.baa = load ptr, ptr %.31130, align 8
  store ptr %i.baa, ptr %4, align 8
  br label %bb.ol

bb.nm:                                            ; preds = %bb.w
  %i.bab = load ptr, ptr %.31130, align 8         ; 2 uses
  %i.bac = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bab, ptr noundef nonnull dereferenceable(9) @.str.60) #11
  %.not1210 = icmp eq i32 %i.bac, 0
  br i1 %.not1210, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.bad = call ptr @plpgsql_parse_err_condition(ptr noundef nonnull %i.bab) #10
  store ptr %i.bad, ptr %4, align 8
  br label %bb.ol

bb.no:                                            ; preds = %bb.nm
  %i.bae = call i32 @plpgsql_yylex(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %1) #10
  %.not1211 = icmp eq i32 %i.bae, 261
  br i1 %.not1211, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  call void @plpgsql_yyerror(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.58) #13
  unreachable

bb.nq:                                            ; preds = %bb.no
  %i.baf = load ptr, ptr %2, align 8              ; 5 uses
  %i.bag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.baf) #11
  %.not1212 = icmp eq i64 %i.bag, 5
  br i1 %.not1212, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  call void @plpgsql_yyerror(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.61) #13
  unreachable

bb.ns:                                            ; preds = %bb.nq
  %i.bah = call i64 @strspn(ptr noundef nonnull %i.baf, ptr noundef nonnull @.str.62) #11
  %.not1213 = icmp eq i64 %i.bah, 5
  br i1 %.not1213, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  call void @plpgsql_yyerror(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.61) #13
  unreachable

bb.nu:                                            ; preds = %bb.ns
  %i.bai = call ptr @palloc(i64 noundef 24) #10   ; 4 uses
  %i.baj = load <4 x i8>, ptr %i.baf, align 1
  %i.bak = add <4 x i8> %i.baj, splat (i8 16)
  %i.bal = and <4 x i8> %i.bak, splat (i8 63)
  %5 = zext nneg <4 x i8> %i.bal to <4 x i32>
  %6 = shl nuw nsw <4 x i32> %5, <i32 0, i32 6, i32 12, i32 18>
  %7 = getelementptr inbounds nuw i8, ptr %i.baf, i64 4
  %8 = load i8, ptr %7, align 1
  %9 = add i8 %8, 16
  %10 = and i8 %9, 63
  %i.bam = zext nneg i8 %10 to i32
  %i.ban = shl nuw nsw i32 %i.bam, 24
  %11 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %6)
  %i.bao = or disjoint i32 %11, %i.ban
  store i32 %i.bao, ptr %i.bai, align 8
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bai, i64 8
  store ptr %i.baf, ptr %i.bap, align 8
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bai, i64 16
  store ptr null, ptr %i.baq, align 8
  store ptr %i.bai, ptr %4, align 8
  br label %bb.ol

bb.nv:                                            ; preds = %bb.w
  %i.bar = call fastcc ptr @read_sql_construct(i32 noundef 59, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %1)
  store ptr %i.bar, ptr %4, align 8
  br label %bb.ol

bb.nw:                                            ; preds = %bb.w
  %i.bas = call fastcc ptr @read_sql_construct(i32 noundef 376, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.74, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %1)
  store ptr %i.bas, ptr %4, align 8
  br label %bb.ol

bb.nx:                                            ; preds = %bb.w
  %i.bat = call fastcc ptr @read_sql_construct(i32 noundef 336, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %1)
  store ptr %i.bat, ptr %4, align 8
  br label %bb.ol

bb.ny:                                            ; preds = %bb.w
  call void @plpgsql_ns_push(ptr noundef null, i32 noundef 0) #10
  store ptr null, ptr %4, align 8
  br label %bb.ol

bb.nz:                                            ; preds = %bb.w
  %i.bau = getelementptr inbounds i8, ptr %.31130, i64 -32 ; 2 uses
  %i.bav = load ptr, ptr %i.bau, align 8
  call void @plpgsql_ns_push(ptr noundef %i.bav, i32 noundef 0) #10
  %i.baw = load ptr, ptr %i.bau, align 8
  store ptr %i.baw, ptr %4, align 8
  br label %bb.ol

bb.oa:                                            ; preds = %bb.w
  call void @plpgsql_ns_push(ptr noundef null, i32 noundef 1) #10
  store ptr null, ptr %4, align 8
  br label %bb.ol

bb.ob:                                            ; preds = %bb.w
  %i.bax = getelementptr inbounds i8, ptr %.31130, i64 -32 ; 2 uses
  %i.bay = load ptr, ptr %i.bax, align 8
  call void @plpgsql_ns_push(ptr noundef %i.bay, i32 noundef 1) #10
  %i.baz = load ptr, ptr %i.bax, align 8
  store ptr %i.baz, ptr %4, align 8
  br label %bb.ol

bb.oc:                                            ; preds = %bb.w
  store ptr null, ptr %4, align 8
  br label %bb.ol

bb.od:                                            ; preds = %bb.w
  %i.bba = load ptr, ptr %.31130, align 8
  store ptr %i.bba, ptr %4, align 8
  br label %bb.ol

bb.oe:                                            ; preds = %bb.w
  store ptr null, ptr %4, align 8
  br label %bb.ol

bb.of:                                            ; preds = %bb.w
  %i.bbb = load ptr, ptr %.31130, align 8
  store ptr %i.bbb, ptr %4, align 8
  br label %bb.ol

bb.og:                                            ; preds = %bb.w
  %i.bbc = load ptr, ptr %.31130, align 8
  store ptr %i.bbc, ptr %4, align 8
  br label %bb.ol

bb.oh:                                            ; preds = %bb.w
  %i.bbd = load ptr, ptr %.31130, align 8
  %i.bbe = call ptr @pstrdup(ptr noundef %i.bbd) #10
  store ptr %i.bbe, ptr %4, align 8
  br label %bb.ol

bb.oi:                                            ; preds = %bb.w
  %i.bbf = getelementptr inbounds nuw i8, ptr %.31130, i64 8
  %i.bbg = load ptr, ptr %i.bbf, align 8          ; 2 uses
  %i.bbh = icmp eq ptr %i.bbg, null
  br i1 %i.bbh, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  call void @plpgsql_yyerror(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.58) #13
  unreachable

bb.ok:                                            ; preds = %bb.oi
  store ptr %i.bbg, ptr %4, align 8
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ci, %bb.cj, %bb.cb, %bb.cc, %bb.ji, %tok_is_keyword.exit1338, %bb.jk, %bb.ij, %bb.ih, %bb.ii, %bb.es, %bb.ex, %bb.fb, %bb.fg, %bb.fk, %bb.fp, %bb.ft, %bb.fr, %bb.fm, %bb.fi, %bb.fd, %bb.ez, %bb.eu, %bb.ch, %bb.ca, %bb.at, %mark_expr_as_assignment_source.exit, %bb.w, %bb.nn, %bb.nu, %bb.ig, %bb.go, %bb.gp, %bb.cx, %bb.cy, %bb.cg, %bb.bz, %bb.z, %bb.aa, %bb.ok, %bb.oh, %bb.og, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nl, %bb.nk, %bb.nh, %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.mz, %bb.mt, %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mf, %bb.lp, %bb.lh, %bb.le, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.ku, %bb.jc, %bb.jb, %bb.ja, %bb.ir, %bb.iq, %bb.ip, %bb.id, %bb.gs, %bb.gr, %bb.gq, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fx, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %.critedge1271, %mark_expr_as_assignment_source.exit1287, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.bv, %bb.bq, %bb.bn, %bb.bk, %bb.bj, %bb.bi, %.critedge, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ax, %bb.aw, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.y, %bb.x
  %.6 = phi i32 [ %.5, %bb.w ], [ %.5, %bb.x ], [ %.5, %bb.y ], [ %.5, %bb.z ], [ %.5, %bb.aa ], [ %.5, %bb.ac ], [ %.5, %bb.ad ], [ %.5, %bb.ae ], [ %.5, %bb.af ], [ %.5, %bb.ag ], [ %.5, %bb.ah ], [ %.5, %bb.ai ], [ %.5, %bb.aj ], [ %.5, %bb.ak ], [ %.5, %bb.al ], [ %.5, %bb.ok ], [ %.5, %bb.oh ], [ %.5, %bb.aw ], [ %.5, %bb.ax ], [ %.5, %bb.ba ], [ %.5, %bb.bb ], [ %.5, %bb.bc ], [ %.5, %bb.bd ], [ %.5, %bb.be ], [ %.5, %bb.bf ], [ %.5, %.critedge ], [ %.5, %bb.bi ], [ %.5, %bb.bj ], [ %.5, %bb.bk ], [ %.5, %bb.bn ], [ %.5, %bb.bq ], [ %.5, %bb.bv ], [ %.5, %bb.at ], [ %.5, %bb.bz ], [ %.5, %bb.ca ], [ %.5, %bb.cg ], [ %.5, %bb.ck ], [ %.5, %bb.cl ], [ -2, %bb.cm ], [ %.5, %bb.cn ], [ %.5, %bb.co ], [ %.5, %bb.cp ], [ %.5, %bb.cq ], [ %.5, %bb.cr ], [ %.5, %bb.cs ], [ %.5, %bb.ct ], [ %.5, %bb.cu ], [ %.5, %bb.cv ], [ %.5, %bb.cx ], [ %.5, %bb.cy ], [ %.5, %bb.cz ], [ %.5, %bb.da ], [ %.5, %bb.db ], [ %.5, %bb.dc ], [ %.5, %bb.dd ], [ %.5, %bb.de ], [ %.5, %bb.df ], [ %.5, %bb.dg ], [ %.5, %bb.dh ], [ %.5, %bb.di ], [ %.5, %bb.dj ], [ %.5, %bb.dk ], [ %.5, %bb.dl ], [ %.5, %bb.dm ], [ %.5, %bb.dn ], [ %.5, %bb.do ], [ %.5, %bb.dp ], [ %.5, %bb.dq ], [ %.5, %bb.dr ], [ %.5, %bb.ds ], [ %.5, %bb.dt ], [ %.5, %bb.du ], [ %.5, %bb.dv ], [ %.5, %bb.dw ], [ %.5, %bb.dx ], [ %.5, %bb.dy ], [ %.5, %bb.dz ], [ %.5, %mark_expr_as_assignment_source.exit1287 ], [ %.5, %.critedge1271 ], [ %.5, %bb.ei ], [ %.5, %bb.ej ], [ %.5, %bb.ek ], [ %.5, %bb.el ], [ %.5, %bb.em ], [ %.5, %bb.en ], [ %.5, %bb.ch ], [ %.5, %bb.fx ], [ %.5, %bb.ex ], [ %.5, %bb.ii ], [ %.5, %bb.ga ], [ %.5, %bb.gb ], [ %.5, %bb.gc ], [ %.5, %bb.gd ], [ %.5, %bb.ge ], [ %.5, %bb.gf ], [ %.5, %bb.gi ], [ %.5, %bb.gj ], [ %.5, %bb.gk ], [ %.5, %bb.gl ], [ %.5, %bb.gm ], [ %.5, %bb.go ], [ %.5, %bb.gp ], [ %.5, %bb.gq ], [ %.5, %bb.gr ], [ %.5, %bb.gs ], [ %.5, %bb.id ], [ %.5, %bb.ig ], [ %.5, %bb.es ], [ %.5, %bb.ih ], [ %.5, %bb.jk ], [ %.5, %bb.ip ], [ %.5, %bb.iq ], [ %.5, %bb.ir ], [ %.5, %bb.ja ], [ %.5, %bb.jb ], [ %.5, %bb.jc ], [ %.5, %bb.ij ], [ %.5, %bb.ku ], [ %.5, %bb.kx ], [ %.5, %bb.ky ], [ %.5, %bb.kz ], [ %.5, %bb.la ], [ %.5, %bb.lb ], [ %.5, %bb.le ], [ %.5, %bb.lh ], [ %.5, %bb.lp ], [ %.5, %bb.mf ], [ %.5, %bb.mk ], [ %.5, %bb.ml ], [ %.5, %bb.mm ], [ %.5, %bb.mn ], [ %.5, %bb.mo ], [ %.5, %bb.mp ], [ %.5, %bb.mq ], [ %.5, %bb.mr ], [ %.5, %bb.ms ], [ %.5, %bb.mt ], [ %.5, %bb.mz ], [ %.5, %tok_is_keyword.exit1338 ], [ %.5, %bb.ji ], [ %.5, %bb.nc ], [ %.5, %bb.nd ], [ %.5, %bb.ne ], [ %.5, %bb.nf ], [ %.5, %bb.ng ], [ %.5, %bb.nh ], [ %.5, %bb.nk ], [ %.5, %bb.nl ], [ %.5, %bb.nn ], [ %.5, %bb.nu ], [ %.5, %bb.nv ], [ %.5, %bb.nw ], [ %.5, %bb.nx ], [ %.5, %bb.ny ], [ %.5, %bb.nz ], [ %.5, %bb.oa ], [ %.5, %bb.ob ], [ %.5, %bb.oc ], [ %.5, %bb.od ], [ %.5, %bb.oe ], [ %.5, %bb.of ], [ %.5, %bb.og ], [ %.5, %mark_expr_as_assignment_source.exit ], [ %.5, %bb.fk ], [ %.5, %bb.fb ], [ %.5, %bb.cb ], [ %.5, %bb.fg ], [ %.5, %bb.eu ], [ %.5, %bb.ez ], [ %.5, %bb.fd ], [ %.5, %bb.fi ], [ %.5, %bb.fm ], [ %.5, %bb.fr ], [ %.5, %bb.ft ], [ %.5, %bb.fp ], [ %.5, %bb.cc ], [ %.5, %bb.cj ], [ %.5, %bb.ci ]
  %i.bbi = getelementptr inbounds [32 x i8], ptr %.31130, i64 %i.cj
  %i.bbj = getelementptr inbounds [2 x i8], ptr %.31118, i64 %i.cj ; 2 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbi, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bbk, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  store i32 %.01153, ptr %i.cl, align 4
  %i.bbl = getelementptr inbounds nuw i8, ptr @yyr1, i64 %i.cd
  %i.bbm = load i8, ptr %i.bbl, align 1
  %i.bbn = zext i8 %i.bbm to i64
  %i.bbo = add nsw i64 %i.bbn, -137               ; 2 uses
  %i.bbp = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.bbo
  %i.bbq = load i16, ptr %i.bbp, align 2
  %i.bbr = sext i16 %i.bbq to i32
  %i.bbs = load i16, ptr %i.bbj, align 2          ; 2 uses
  %i.bbt = sext i16 %i.bbs to i32
  %i.bbu = add nsw i32 %i.bbt, %i.bbr             ; 2 uses
  %or.cond23 = icmp ult i32 %i.bbu, 1306
  br i1 %or.cond23, label %bb.om, label %bb.oo

bb.om:                                            ; preds = %bb.ol
  %i.bbv = zext nneg i32 %i.bbu to i64            ; 2 uses
  %i.bbw = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.bbv
  %i.bbx = load i16, ptr %i.bbw, align 2
  %i.bby = icmp eq i16 %i.bbx, %i.bbs
  br i1 %i.bby, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.bbz = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.bbv
  br label %bb.op

bb.oo:                                            ; preds = %bb.om, %bb.ol
  %i.bca = getelementptr inbounds [2 x i8], ptr @yydefgoto, i64 %i.bbo
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %.in.in = phi ptr [ %i.bbz, %bb.on ], [ %i.bca, %bb.oo ]
  %.in = load i16, ptr %.in.in, align 2
  %i.bcb = sext i16 %.in to i32
  br label %bb.b

bb.oq:                                            ; preds = %bb.v
  %.not1262 = icmp eq i32 %.11104, 0
  br i1 %.not1262, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  call void @plpgsql_yyerror(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.58) #13
  unreachable

bb.os:                                            ; preds = %bb.oq
  %i.bcc = load i32, ptr %i.a, align 4            ; 3 uses
  %i.bcd = icmp eq i32 %.11104, 3
  br i1 %i.bcd, label %bb.ot, label %bb.ov

bb.ot:                                            ; preds = %bb.os
  %i.bce = icmp slt i32 %.4, 1
  br i1 %i.bce, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %i.bcf = icmp eq i32 %.4, 0
  br i1 %i.bcf, label %.thread1526, label %bb.ov

bb.ov:                                            ; preds = %bb.ot, %bb.os, %bb.ou, %bb.n
  %.sroa.2.0 = phi i32 [ %i.bcc, %bb.ou ], [ %i.bg, %bb.n ], [ %i.bcc, %bb.os ], [ %i.bcc, %bb.ot ]
  %.7 = phi i32 [ %.4, %bb.ou ], [ 257, %bb.n ], [ %.4, %bb.os ], [ -2, %bb.ot ]
  br label %bb.ow

bb.ow:                                            ; preds = %bb.pa, %bb.ov
  %i.bcg = phi i16 [ %i.az, %bb.ov ], [ %.pre1978, %bb.pa ] ; 2 uses
  %.sroa.2.1 = phi i32 [ %.sroa.2.0, %bb.ov ], [ %i.bcr, %bb.pa ]
  %.41146 = phi ptr [ %.31145, %bb.ov ], [ %i.bcu, %bb.pa ] ; 3 uses
  %.41131 = phi ptr [ %.31130, %bb.ov ], [ %i.bcs, %bb.pa ] ; 2 uses
  %.41119 = phi ptr [ %.31118, %bb.ov ], [ %i.bct, %bb.pa ] ; 3 uses
  %i.bch = icmp sgt i16 %i.bcg, -2
  br i1 %i.bch, label %bb.ox, label %bb.oz

bb.ox:                                            ; preds = %bb.ow
  %i.bci = sext i16 %i.bcg to i64
  %i.bcj = add nsw i64 %i.bci, 1                  ; 2 uses
  %i.bck = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.bcj
  %i.bcl = load i16, ptr %i.bck, align 2
  %i.bcm = icmp eq i16 %i.bcl, 1
  br i1 %i.bcm, label %bb.oy, label %bb.oz

bb.oy:                                            ; preds = %bb.ox
  %i.bcn = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.bcj
  %i.bco = load i16, ptr %i.bcn, align 2          ; 2 uses
  %i.bcp = icmp sgt i16 %i.bco, 0
  br i1 %i.bcp, label %bb.pb, label %bb.oz

bb.oz:                                            ; preds = %bb.ox, %bb.oy, %bb.ow
  %i.bcq = icmp eq ptr %.41119, %.31112
  br i1 %i.bcq, label %.thread1526, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bcr = load i32, ptr %.41146, align 4
  %i.bcs = getelementptr inbounds i8, ptr %.41131, i64 -32
  %i.bct = getelementptr inbounds i8, ptr %.41119, i64 -2 ; 2 uses
  %i.bcu = getelementptr inbounds i8, ptr %.41146, i64 -4
  %i.bcv = load i16, ptr %i.bct, align 2
  %.phi.trans.insert = sext i16 %i.bcv to i64
  %.phi.trans.insert1977 = getelementptr inbounds [2 x i8], ptr @yypact, i64 %.phi.trans.insert
  %.pre1978 = load i16, ptr %.phi.trans.insert1977, align 2
  br label %bb.ow

bb.pb:                                            ; preds = %bb.oy
  %i.bcw = zext nneg i16 %i.bco to i32
  %i.bcx = getelementptr inbounds nuw i8, ptr %.41131, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@read_fetch_direction:bb.a
bb.t:                                             ; preds = %bb.a, %bb.s
  store i32 3, ptr %i.h, align 4
  %i.ao = tail call fastcc ptr @read_sql_construct(i32 noundef 324, i32 noundef 329, i32 noundef 0, ptr noundef nonnull @.str.102, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2)
  store ptr %i.ao, ptr %i.j, align 8
  store i8 0, ptr %i.a, align 1
  br label %tok_is_keyword.exit.thread

tok_is_keyword.exit95:                            ; preds = %bb.c, %bb.a, %bb.s, %bb.r
  %i.ap = tail call fastcc zeroext i1 @tok_is_keyword(i32 noundef %i.l, ptr noundef %0, i32 noundef 282, ptr noundef nonnull @.str.104)
  br i1 %i.ap, label %bb.u, label %bb.v

bb.u:                                             ; preds = %tok_is_keyword.exit95
  store i64 9223372036854775807, ptr %i.i, align 8
  store i8 1, ptr %i.k, align 1
  br label %tok_is_keyword.exit.thread

bb.v:                                             ; preds = %tok_is_keyword.exit95
  %i.aq = tail call fastcc zeroext i1 @tok_is_keyword(i32 noundef %i.l, ptr noundef %0, i32 noundef 323, ptr noundef nonnull @.str.105)
  br i1 %i.aq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call fastcc void @complete_direction(ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %tok_is_keyword.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.ar = tail call fastcc zeroext i1 @tok_is_keyword(i32 noundef %i.l, ptr noundef %0, i32 noundef 286, ptr noundef nonnull @.str.106)
  br i1 %i.ar, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.h, align 4
  call fastcc void @complete_direction(ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %tok_is_keyword.exit.thread

bb.z:                                             ; preds = %bb.x
  switch i32 %i.l, label %bb.ac [
    i32 329, label %bb.aa
    i32 324, label %bb.aa
    i32 277, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  store i8 0, ptr %i.a, align 1
  br label %tok_is_keyword.exit.thread

bb.ab:                                            ; preds = %bb.z
  tail call void @plpgsql_push_back_token(i32 noundef 277, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #10
  store i8 0, ptr %i.a, align 1
  br label %tok_is_keyword.exit.thread

bb.ac:                                            ; preds = %bb.z
  tail call void @plpgsql_push_back_token(i32 noundef %i.l, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #10
  %i.as = tail call fastcc ptr @read_sql_construct(i32 noundef 324, i32 noundef 329, i32 noundef 0, ptr noundef nonnull @.str.102, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2)
  store ptr %i.as, ptr %i.j, align 8
  store i8 1, ptr %i.k, align 1
  store i8 0, ptr %i.a, align 1
  br label %tok_is_keyword.exit.thread

tok_is_keyword.exit.thread:                       ; preds = %bb.a, %bb.e, %bb.h, %bb.n, %bb.t, %bb.w, %bb.aa, %bb.ac, %bb.ab, %bb.y, %bb.u, %bb.q, %bb.k
  %i.at = load i8, ptr %i.a, align 1, !range !3, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %tok_is_keyword.exit.thread
  %i.av = tail call i32 @plpgsql_yylex(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #10
  switch i32 %i.av, label %bb.ae [
    i32 329, label %bb.af
    i32 324, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  tail call void @plpgsql_yyerror(ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull @.str.107) #13
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.ad, %tok_is_keyword.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %i.b
}

declare ptr @plpgsql_parse_err_condition(ptr noundef) local_unnamed_addr #2

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare i32 @plpgsql_token_length(ptr noundef) local_unnamed_addr #2

declare void @plpgsql_append_source_text(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @plpgsql_parse_wordtype(ptr noundef) local_unnamed_addr #2

declare ptr @plpgsql_parse_wordrowtype(ptr noundef) local_unnamed_addr #2

declare ptr @plpgsql_parse_cwordtype(ptr noundef) local_unnamed_addr #2

declare ptr @plpgsql_parse_cwordrowtype(ptr noundef) local_unnamed_addr #2

declare ptr @plpgsql_build_datatype_arrayof(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @plpgsql_sql_error_callback(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %0, align 8
  %i.d = tail call i32 @plpgsql_scanner_errposition(i32 noundef %i.c, ptr noundef %i.b) #10 ; 0 uses
  %i.e = tail call i32 @geterrposition() #10      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @getinternalerrposition() #10 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.e, -1
  %i.j = add nuw i32 %i.i, %i.g
  %i.k = tail call i32 @internalerrposition(i32 noundef %i.j) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.l = tail call i32 @errposition(i32 noundef 0) #10 ; 0 uses
  ret void
}

declare ptr @typeStringToTypeName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @typenameTypeIdAndMod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @geterrposition() local_unnamed_addr #2

declare i32 @getinternalerrposition() local_unnamed_addr #2

declare i32 @internalerrposition(i32 noundef) local_unnamed_addr #2

declare i32 @errposition(i32 noundef) local_unnamed_addr #2

declare void @appendStringInfoSpaces(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @scanner_isspace(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @complete_direction(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @plpgsql_yylex(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4) #10 ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 0, label %bb.b
    i32 329, label %bb.e
    i32 324, label %bb.e
    i32 282, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @plpgsql_yyerror(ptr noundef nonnull %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @.str.49) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 9223372036854775807, ptr %i.b, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  tail call void @plpgsql_push_back_token(i32 noundef %i.a, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4) #10
  %i.c = tail call fastcc ptr @read_sql_construct(i32 noundef 324, i32 noundef 329, i32 noundef 0, ptr noundef nonnull @.str.102, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.d, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink.ph = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 1, ptr %i.e, align 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.a
  %.sink = phi i8 [ 0, %bb.a ], [ 0, %bb.a ], [ %.sink.ph, %.sink.split ]
  store i8 %.sink, ptr %1, align 1
  ret void
}

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare ptr @raw_parser(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @plpgsql_peek2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @quote_identifier(ptr noundef) local_unnamed_addr #2

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !22}
!21 = distinct !{!21, !5}
!22 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
