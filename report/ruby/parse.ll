inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@ruby_yyparse:bb.a
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 196        ; 7 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !29   ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  store i32 %i.i, ptr %2, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 %i.i, ptr %i.s, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i32 %i.q, ptr %i.t, align 4, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = getelementptr i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 328        ; 132 uses
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.aa = getelementptr i8, ptr %0, i64 104       ; 36 uses
  %i.ab = getelementptr i8, ptr %0, i64 312       ; 18 uses
  %i.ac = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ae = getelementptr i8, ptr %0, i64 168       ; 8 uses
  %i.af = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 108
  %i.ah = getelementptr i8, ptr %0, i64 216       ; 3 uses
  %i.ai = getelementptr i8, ptr %0, i64 120       ; 14 uses
  %i.aj = getelementptr i8, ptr %0, i64 128       ; 30 uses
  %i.ak = getelementptr i8, ptr %0, i64 16        ; 9 uses
  %i.al = getelementptr i8, ptr %0, i64 116       ; 3 uses
  %i.am = getelementptr i8, ptr %0, i64 148       ; 7 uses
  %i.an = getelementptr i8, ptr %0, i64 152
  %i.ao = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ap = getelementptr i8, ptr %0, i64 184       ; 24 uses
  %i.aq = getelementptr i8, ptr %0, i64 176       ; 8 uses
  %i.ar = getelementptr i8, ptr %0, i64 320       ; 8 uses
  %i.as = getelementptr i8, ptr %0, i64 240       ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ay = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 200       ; 4 uses
  %i.ba = getelementptr i8, ptr %0, i64 224       ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bg = getelementptr i8, ptr %0, i64 232       ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bp = getelementptr i8, ptr %0, i64 336       ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 344       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bs = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 368       ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.akc, %bb.akd, %bb.ajd, %bb.al
  %.03602 = phi ptr [ %.13603, %bb.al ], [ %.13603, %bb.ajd ], [ %.43606, %bb.akd ], [ %.43606, %bb.akc ]
  %.02947 = phi ptr [ %i.fo, %bb.al ], [ %i.eyj, %bb.ajd ], [ %i.fat, %bb.akd ], [ %i.fat, %bb.akc ]
  %.02934 = phi ptr [ %i.fm, %bb.al ], [ %i.eyh, %bb.ajd ], [ %i.far, %bb.akd ], [ %i.far, %bb.akc ]
  %.02920 = phi ptr [ %.32923, %bb.al ], [ %i.eyf, %bb.ajd ], [ %.42924, %bb.akd ], [ %.42924, %bb.akc ]
  %.02903 = phi i32 [ %spec.select, %bb.al ], [ %.32906, %bb.ajd ], [ 3, %bb.akd ], [ 3, %bb.akc ]
  %.02900 = phi i32 [ %i.ex, %bb.al ], [ %i.eyx, %bb.ajd ], [ %i.faq, %bb.akd ], [ %i.faq, %bb.akc ]
  %.02891 = phi i32 [ -2, %bb.al ], [ %.5, %bb.ajd ], [ %.7, %bb.akd ], [ %.7, %bb.akc ]
  %i.bu = getelementptr i8, ptr %.02920, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.13603 = phi ptr [ %i.b, %bb.c ], [ %.03602, %bb.d ] ; 17 uses
  %.12948 = phi ptr [ %4, %bb.c ], [ %.02947, %bb.d ] ; 3 uses
  %.02943 = phi ptr [ %4, %bb.c ], [ %.32946, %bb.d ] ; 2 uses
  %.12935 = phi ptr [ %3, %bb.c ], [ %.02934, %bb.d ] ; 3 uses
  %.02929 = phi ptr [ %3, %bb.c ], [ %.32932, %bb.d ] ; 2 uses
  %.12921 = phi ptr [ %i.a, %bb.c ], [ %i.bu, %bb.d ] ; 8 uses
  %.02912 = phi ptr [ %i.a, %bb.c ], [ %.32915, %bb.d ] ; 10 uses
  %.02907 = phi i64 [ 200, %bb.c ], [ %.22909, %bb.d ] ; 4 uses
  %.12904 = phi i32 [ 0, %bb.c ], [ %.02903, %bb.d ] ; 649 uses
  %.12901 = phi i32 [ 0, %bb.c ], [ %.02900, %bb.d ] ; 5 uses
  %.1 = phi i32 [ -2, %bb.c ], [ %.02891, %bb.d ] ; 7 uses
  %i.bv = load i32, ptr %i.e, align 8
  %i.bw = and i32 %i.bv, 32
  %.not3025 = icmp eq i32 %i.bw, 0
  br i1 %.not3025, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %.12901)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bx = trunc nsw i32 %.12901 to i16
  store i16 %i.bx, ptr %.12921, align 2, !tbaa !58
  %i.by = load i32, ptr %i.e, align 8
  %i.bz = and i32 %i.by, 32
  %.not3026 = icmp eq i32 %i.bz, 0
  br i1 %.not3026, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.82)
  %.not7.i = icmp ugt ptr %.02912, %.12921
  br i1 %.not7.i, label %yy_stack_print.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.08.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %.02912, %bb.h ] ; 2 uses
  %i.ca = load i16, ptr %.08.i, align 2, !tbaa !58
  %i.cb = sext i16 %i.ca to i32
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, i32 noundef %i.cb)
  %i.cc = getelementptr i8, ptr %.08.i, i64 2     ; 2 uses
  %.not.i = icmp ugt ptr %i.cc, %.12921
  br i1 %.not.i, label %yy_stack_print.exit, label %.lr.ph.i, !llvm.loop !60

yy_stack_print.exit:                              ; preds = %.lr.ph.i, %bb.h
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  br label %bb.i

bb.i:                                             ; preds = %yy_stack_print.exit, %bb.g
  %i.cd = getelementptr [2 x i8], ptr %.02912, i64 %.02907
  %i.ce = getelementptr i8, ptr %i.cd, i64 -2
  %.not3027 = icmp ugt ptr %i.ce, %.12921
  br i1 %.not3027, label %.thread3626, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = ptrtoint ptr %.12921 to i64
  %i.cg = ptrtoint ptr %.02912 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 1
  %i.cj = add nsw i64 %i.ci, 1                    ; 6 uses
  %i.ck = icmp sgt i64 %.02907, 9999
  br i1 %i.ck, label %.thread3617, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = shl i64 %.02907, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.cl, i64 10000) ; 6 uses
  %i.cm = mul i64 %spec.store.select, 26
  %i.cn = add i64 %i.cm, 30
  %i.co = call noalias ptr @malloc(i64 noundef %i.cn) #34 ; 7 uses
  %.not3028.not = icmp eq ptr %i.co, null
  br i1 %.not3028.not, label %.thread3617, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = shl i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 2 %.02912, i64 %i.cp, i1 false)
  %i.cq = shl i64 %spec.store.select, 1
  %i.cr = add i64 %i.cq, 15
  %i.cs = sdiv i64 %i.cr, 16
  %i.ct = getelementptr [16 x i8], ptr %i.co, i64 %i.cs ; 4 uses
  %i.cu = shl i64 %i.cj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ct, ptr align 8 %.02929, i64 %i.cu, i1 false)
  %i.cv = shl i64 %spec.store.select, 3
  %i.cw = or disjoint i64 %i.cv, 15
  %i.cx = sdiv i64 %i.cw, 16
  %i.cy = getelementptr [16 x i8], ptr %i.ct, i64 %i.cx ; 3 uses
  %i.cz = shl i64 %i.cj, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cy, ptr align 4 %.02943, i64 %i.cz, i1 false)
  %.not3029 = icmp eq ptr %.02912, %i.a
  br i1 %.not3029, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %.02912) #31
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.da = getelementptr [2 x i8], ptr %i.co, i64 %i.cj
  %i.db = getelementptr i8, ptr %i.da, i64 -2     ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.ct, i64 %i.cj
  %i.dd = getelementptr i8, ptr %i.dc, i64 -8     ; 2 uses
  %i.de = getelementptr [16 x i8], ptr %i.cy, i64 %i.cj
  %i.df = getelementptr i8, ptr %i.de, i64 -16    ; 2 uses
  %i.dg = load i32, ptr %i.e, align 8
  %i.dh = and i32 %i.dg, 32
  %.not3030 = icmp eq i32 %i.dh, 0
  br i1 %.not3030, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i64 noundef %spec.store.select)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.di = getelementptr [2 x i8], ptr %i.co, i64 %spec.store.select
  %i.dj = getelementptr i8, ptr %i.di, i64 -2
  %.not3031 = icmp ugt ptr %i.dj, %i.db
  br i1 %.not3031, label %.thread3626, label %parser_yyerror.exit3582

.thread3626:                                      ; preds = %bb.p, %bb.i
  %.32950 = phi ptr [ %.12948, %bb.i ], [ %i.df, %bb.p ] ; 381 uses
  %.32946 = phi ptr [ %.02943, %bb.i ], [ %i.cy, %bb.p ]
  %.32937 = phi ptr [ %.12935, %bb.i ], [ %i.dd, %bb.p ] ; 913 uses
  %.32932 = phi ptr [ %.02929, %bb.i ], [ %i.ct, %bb.p ]
  %.32923 = phi ptr [ %.12921, %bb.i ], [ %i.db, %bb.p ] ; 9 uses
  %.32915 = phi ptr [ %.02912, %bb.i ], [ %i.co, %bb.p ] ; 8 uses
  %.22909 = phi i64 [ %.02907, %bb.i ], [ %spec.store.select, %bb.p ]
  %i.dk = icmp eq i32 %.12901, 143
  br i1 %i.dk, label %parser_yyerror.exit3582, label %bb.q

bb.q:                                             ; preds = %.thread3626
  %i.dl = sext i32 %.12901 to i64                 ; 2 uses
  %i.dm = getelementptr [2 x i8], ptr @yypact, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !58 ; 3 uses
  %i.do = sext i16 %i.dn to i32
  %i.dp = icmp eq i16 %i.dn, -1154
  br i1 %i.dp, label %bb.am, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = icmp eq i32 %.1, -2
  br i1 %i.dq, label %bb.s, label %yylex.exit

bb.s:                                             ; preds = %bb.r
  %i.dr = load i32, ptr %i.e, align 8
  %i.ds = and i32 %i.dr, 32
  %.not3032 = icmp eq i32 %i.ds, 0
  br i1 %.not3032, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %1, ptr %0, align 8, !tbaa !62
  store ptr null, ptr %1, align 8, !tbaa !15
  store ptr %2, ptr %i.u, align 8, !tbaa !63
  %i.dt = call fastcc i32 @parser_yylex(ptr noundef nonnull %0) ; 5 uses
  %i.du = load ptr, ptr %i.v, align 8, !tbaa !64
  %.not.i3220 = icmp eq ptr %i.du, null
  br i1 %.not.i3220, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @parser_dispatch_delayed_token(ptr noundef nonnull %0, i32 noundef %i.dt, i32 noundef 11228)
  br label %yylex.exit

bb.w:                                             ; preds = %bb.u
  %.not12.i = icmp eq i32 %i.dt, 0
  br i1 %.not12.i, label %yylex.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef %i.dt, i32 noundef 11230)
  br label %yylex.exit

yylex.exit:                                       ; preds = %bb.x, %bb.v, %bb.r
  %.2 = phi i32 [ %.1, %bb.r ], [ %i.dt, %bb.v ], [ %i.dt, %bb.x ] ; 6 uses
  %i.dv = icmp slt i32 %.2, 1
  br i1 %i.dv, label %yylex.exit.thread, label %bb.y

yylex.exit.thread:                                ; preds = %bb.w, %yylex.exit
  %i.dw = load i32, ptr %i.e, align 8
  %i.dx = and i32 %i.dw, 32
  %.not3034 = icmp eq i32 %i.dx, 0
  br i1 %.not3034, label %bb.ae, label %.sink.split

bb.y:                                             ; preds = %yylex.exit
  %i.dy = icmp eq i32 %.2, 256
  br i1 %i.dy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.2.16.copyload = load i64, ptr %2, align 8
  br label %bb.aju

bb.aa:                                            ; preds = %bb.y
  %i.dz = icmp samesign ult i32 %.2, 362
  br i1 %i.dz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = zext nneg i32 %.2 to i64
  %i.eb = getelementptr i8, ptr @yytranslate, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %i.ed = zext i8 %i.ec to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ee = phi i32 [ %i.ed, %bb.ab ], [ 2, %bb.aa ] ; 5 uses
  %i.ef = load i32, ptr %i.e, align 8
  %i.eg = and i32 %i.ef, 32
  %.not3033 = icmp eq i32 %i.eg, 0
  br i1 %.not3033, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %i.eh = icmp samesign ult i32 %i.ee, 162
  %i.ei = select i1 %i.eh, ptr @.str.85, ptr @.str.86
  %i.ej = zext nneg i32 %i.ee to i64
  %i.ek = getelementptr [8 x i8], ptr @yytname, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !65
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.ei, ptr noundef %i.el)
  %i.em = load i32, ptr %2, align 8, !tbaa !51
  %i.en = load i32, ptr %i.r, align 4, !tbaa !54
  %i.eo = load i32, ptr %i.s, align 8, !tbaa !55
  %i.ep = load i32, ptr %i.t, align 4, !tbaa !56
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.87, i32 noundef %i.em, i32 noundef %i.en, i32 noundef %i.eo, i32 noundef %i.ep)
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.88)
  call fastcc void @yy_symbol_value_print(i32 noundef range(i32 -32768, 32768) %i.ee, ptr noundef nonnull %1, ptr noundef nonnull %0)
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.89)
  br label %.sink.split

.sink.split:                                      ; preds = %yylex.exit.thread, %bb.ad
  %.str.7.sink = phi ptr [ @.str.7, %bb.ad ], [ @.str.4, %yylex.exit.thread ]
  %.02958.ph = phi i32 [ %i.ee, %bb.ad ], [ 0, %yylex.exit.thread ]
  %.3.ph = phi i32 [ %.2, %bb.ad ], [ 0, %yylex.exit.thread ]
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink)
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %yylex.exit.thread
  %.02958 = phi i32 [ %i.ee, %bb.ac ], [ 0, %yylex.exit.thread ], [ %.02958.ph, %.sink.split ] ; 5 uses
  %.3 = phi i32 [ %.2, %bb.ac ], [ 0, %yylex.exit.thread ], [ %.3.ph, %.sink.split ] ; 4 uses
  %i.eq = add nsw i32 %.02958, %i.do              ; 2 uses
  %or.cond4 = icmp ugt i32 %i.eq, 16092
  br i1 %or.cond4, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = getelementptr [2 x i8], ptr @yycheck, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !58
  %i.eu = sext i16 %i.et to i32
  %.not3035 = icmp eq i32 %.02958, %i.eu
  br i1 %.not3035, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr [2 x i8], ptr @yytable, i64 %i.er
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !58 ; 3 uses
  %i.ex = sext i16 %i.ew to i32                   ; 2 uses
  %i.ey = icmp slt i16 %i.ew, 1
  br i1 %i.ey, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ez = icmp eq i16 %i.ew, -816
  br i1 %i.ez, label %.thread3655, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = sub nsw i32 0, %i.ex
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.12904, i32 1)
  %i.fb = load i32, ptr %i.e, align 8
  %i.fc = and i32 %i.fb, 32
  %.not3037 = icmp eq i32 %i.fc, 0
  br i1 %.not3037, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8)
  %i.fd = icmp samesign ult i32 %.02958, 162
  %i.fe = select i1 %i.fd, ptr @.str.85, ptr @.str.86
  %i.ff = zext nneg i32 %.02958 to i64
  %i.fg = getelementptr [8 x i8], ptr @yytname, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !65
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.fe, ptr noundef %i.fh)
  %i.fi = load i32, ptr %2, align 8, !tbaa !51
  %i.fj = load i32, ptr %i.r, align 4, !tbaa !54
  %i.fk = load i32, ptr %i.s, align 8, !tbaa !55
  %i.fl = load i32, ptr %i.t, align 4, !tbaa !56
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.87, i32 noundef %i.fi, i32 noundef %i.fj, i32 noundef %i.fk, i32 noundef %i.fl)
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.88)
  call fastcc void @yy_symbol_value_print(i32 noundef range(i32 -32768, 32768) %.02958, ptr noundef nonnull %1, ptr noundef nonnull %0)
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.89)
  call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fm = getelementptr i8, ptr %.32937, i64 8    ; 2 uses
  %i.fn = load i64, ptr %1, align 8, !tbaa !15
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !15
  %i.fo = getelementptr i8, ptr %.32950, i64 16   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  br label %bb.d

bb.am:                                            ; preds = %bb.ae, %bb.af, %bb.q
  %.4 = phi i32 [ %.1, %bb.q ], [ %.3, %bb.ae ], [ %.3, %bb.af ] ; 3 uses
  %i.fp = getelementptr [2 x i8], ptr @yydefact, i64 %i.dl
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !58 ; 2 uses
  %i.fr = sext i16 %i.fq to i32
  %i.fs = icmp eq i16 %i.fq, 0
  br i1 %i.fs, label %bb.aje, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %.02956 = phi i32 [ %i.fr, %bb.am ], [ %i.fa, %bb.ai ] ; 4 uses
  %.5 = phi i32 [ %.4, %bb.am ], [ %.3, %bb.ai ]  ; 3 uses
  %i.ft = sext i32 %.02956 to i64                 ; 4 uses
  %i.fu = getelementptr i8, ptr @yyr2, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !15  ; 4 uses
  %i.fw = sext i8 %i.fv to i64                    ; 3 uses
  %i.fx = sub nsw i64 1, %i.fw
  %i.fy = getelementptr [8 x i8], ptr %.32937, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !15
  store i64 %i.fz, ptr %5, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a

nextc0.exit.i.i:                                  ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb, %.critedge.i.i.i
  %i.aby = load i32, ptr %i.e, align 8
  %i.abz = and i32 %i.aby, 32
  %.not.i25.i.i = icmp eq i32 %i.abz, 0
  br i1 %.not.i25.i.i, label %parser_string_term.exit.i, label %bb.gf

bb.gf:                                            ; preds = %nextc0.exit.i.i
  %i.aca = getelementptr i8, ptr %0, i64 104
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !67
  %i.acc = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.acb, i32 noundef 2064, i32 noundef 8617) ; 0 uses
  br label %parser_string_term.exit.i

bb.gg:                                            ; preds = %bb.fy, %bb.fw, %bb.fv, %bb.fu
  %i.acd = load i32, ptr %i.e, align 8
  %i.ace = and i32 %i.acd, 32
  %.not.i27.i.i = icmp eq i32 %i.ace, 0
  br i1 %.not.i27.i.i, label %parser_string_term.exit.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.acf = getelementptr i8, ptr %0, i64 104
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !67
  %i.ach = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.acg, i32 noundef 2, i32 noundef 8620) ; 0 uses
  br label %parser_string_term.exit.i

parser_string_term.exit.i:                        ; preds = %bb.gh, %bb.gg, %bb.gf, %nextc0.exit.i.i, %bb.ft, %regx_options.exit.i.i
  %.sink.i.i914 = phi i32 [ 2064, %bb.gf ], [ 2, %bb.ft ], [ 2, %regx_options.exit.i.i ], [ 2064, %nextc0.exit.i.i ], [ 2, %bb.gg ], [ 2, %bb.gh ]
  %.0.i.i915 = phi i32 [ 350, %bb.gf ], [ 322, %bb.ft ], [ 322, %regx_options.exit.i.i ], [ 350, %nextc0.exit.i.i ], [ 345, %bb.gg ], [ 345, %bb.gh ]
  %i.aci = getelementptr i8, ptr %0, i64 104
  store i32 %.sink.i.i914, ptr %i.aci, align 8, !tbaa !67
  br label %parse_string.exit

bb.gi:                                            ; preds = %bb.es, %bb.er
  %.not89.i = icmp eq i32 %.184.i, 0
  br i1 %.not89.i, label %bb.go, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  switch i32 %.182.i, label %bb.gk [
    i32 -1, label %pushback.exit121.i
    i32 32, label %pushback.exit121.i
    i32 13, label %pushback.exit121.i
    i32 12, label %pushback.exit121.i
    i32 11, label %pushback.exit121.i
    i32 10, label %pushback.exit121.i
    i32 9, label %pushback.exit121.i
  ]

bb.gk:                                            ; preds = %bb.gj
  %i.acj = load i32, ptr %i.e, align 8
  %i.ack = and i32 %i.acj, -9
  store i32 %i.ack, ptr %i.e, align 8
  %i.acl = load ptr, ptr %i.i, align 8, !tbaa !188 ; 2 uses
  %i.acm = getelementptr i8, ptr %i.acl, i64 -1   ; 3 uses
  store ptr %i.acm, ptr %i.i, align 8, !tbaa !188
  %i.acn = getelementptr i8, ptr %0, i64 72
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !50
  %i.acp = icmp ugt ptr %i.acm, %i.aco
  br i1 %i.acp, label %bb.gl, label %pushback.exit121.i

bb.gl:                                            ; preds = %bb.gk
  %i.acq = load i8, ptr %i.acm, align 1, !tbaa !15
  %i.acr = icmp eq i8 %i.acq, 10
  br i1 %i.acr, label %bb.gm, label %pushback.exit121.i

bb.gm:                                            ; preds = %bb.gl
  %i.acs = getelementptr i8, ptr %i.acl, i64 -2   ; 2 uses
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !15
  %i.acu = icmp eq i8 %i.act, 13
  br i1 %i.acu, label %bb.gn, label %pushback.exit121.i

bb.gn:                                            ; preds = %bb.gm
  store ptr %i.acs, ptr %i.i, align 8, !tbaa !188
  br label %pushback.exit121.i

pushback.exit121.i:                               ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gj, %bb.gj, %bb.gj, %bb.gj, %bb.gj, %bb.gj
  %i.acv = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.acw = load ptr, ptr %i.i, align 8, !tbaa !188
  tail call fastcc void @parser_add_delayed_token(ptr noundef nonnull %0, ptr noundef %i.acv, ptr noundef %i.acw, i32 noundef 8662)
  br label %parse_string.exit

bb.go:                                            ; preds = %bb.gi
  %i.acx = getelementptr i8, ptr %0, i64 136      ; 6 uses
  store i32 0, ptr %i.acx, align 8, !tbaa !570
  %i.acy = getelementptr i8, ptr %0, i64 160      ; 7 uses
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !500 ; 2 uses
  %.not.i122.i = icmp eq ptr %i.acz, null
  br i1 %.not.i122.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ada = getelementptr i8, ptr %0, i64 140
  store i32 60, ptr %i.ada, align 4, !tbaa !509
  %i.adb = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.adb, ptr %i.acy, align 8, !tbaa !500
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.adc = phi ptr [ %i.adb, %bb.gp ], [ %i.acz, %bb.go ] ; 2 uses
  %i.add = getelementptr i8, ptr %0, i64 140      ; 4 uses
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !509
  %i.adf = icmp sgt i32 %i.ade, 4096
  br i1 %i.adf, label %bb.gr, label %newtok.exit.i894

bb.gr:                                            ; preds = %bb.gq
  store i32 60, ptr %i.add, align 4, !tbaa !509
  %i.adg = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.adc, i64 noundef 60, i64 noundef 1) #38 ; 2 uses
  store ptr %i.adg, ptr %i.acy, align 8, !tbaa !500
  br label %newtok.exit.i894

newtok.exit.i894:                                 ; preds = %bb.gr, %bb.gq
  %i.adh = phi ptr [ %i.adc, %bb.gq ], [ %i.adg, %bb.gr ]
  %i.adi = and i32 %i.tv, 2
  %i.adj = icmp ne i32 %i.adi, 0
  %i.adk = icmp eq i32 %.182.i, 35
  %or.cond.i = and i1 %i.adj, %i.adk
  br i1 %or.cond.i, label %bb.gs, label %nextc0.exit134.i

bb.gs:                                            ; preds = %newtok.exit.i894
  %i.adl = load ptr, ptr %i.i, align 8, !tbaa !188 ; 4 uses
  %i.adm = getelementptr i8, ptr %i.adl, i64 1    ; 4 uses
  %i.adn = load ptr, ptr %i.vc, align 8, !tbaa !426 ; 3 uses
  %.not.i123.i = icmp ult ptr %i.adm, %i.adn
  br i1 %.not.i123.i, label %bb.gt, label %select.unfold.i

bb.gt:                                            ; preds = %bb.gs
  %i.ado = load i8, ptr %i.adl, align 1, !tbaa !15
  switch i8 %i.ado, label %select.unfold.i [
    i8 36, label %bb.gu
    i8 64, label %bb.gy
    i8 123, label %bb.hb
  ]

bb.gu:                                            ; preds = %bb.gt
  %i.adp = load i8, ptr %i.adm, align 1, !tbaa !15 ; 2 uses
  %i.adq = sext i8 %i.adp to i32                  ; 7 uses
  %i.adr = icmp eq i8 %i.adp, 45
  br i1 %i.adr, label %bb.gv, label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  %i.ads = getelementptr i8, ptr %i.adl, i64 2    ; 2 uses
  %.not34.i.i911 = icmp ult ptr %i.ads, %i.adn
  br i1 %.not34.i.i911, label %bb.gw, label %select.unfold.i

bb.gw:                                            ; preds = %bb.gv
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !15
  %i.adu = sext i8 %i.adt to i32
  br label %bb.hc

bb.gx:                                            ; preds = %bb.gu
  %i.adv = add nsw i32 %i.adq, -127
  %or.cond.i.i.i904 = icmp ult i32 %i.adv, -94
  br i1 %or.cond.i.i.i904, label %is_global_name_punct.exit.thread.i.i908, label %is_global_name_punct.exit.i.i905

is_global_name_punct.exit.i.i905:                 ; preds = %bb.gx
  %i.adw = add nsw i32 %i.adq, -32
  %i.adx = lshr i32 %i.adw, 5
  %i.ady = zext nneg i32 %i.adx to i64
  %i.adz = getelementptr [4 x i8], ptr @ruby_global_name_punct_bits, i64 %i.ady
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !7
  %i.aeb = and i32 %i.adq, 31
  %i.aec = shl nuw i32 1, %i.aeb
  %i.aed = and i32 %i.aea, %i.aec
  %.not32.i.i906 = icmp eq i32 %i.aed, 0
  %i.aee = add nsw i32 %i.adq, -58
  %i.aef = icmp ult i32 %i.aee, -10
  %or.cond39.i.i907 = select i1 %.not32.i.i906, i1 %i.aef, i1 false
  br i1 %or.cond39.i.i907, label %bb.hc, label %parse_string.exit

is_global_name_punct.exit.thread.i.i908:          ; preds = %bb.gx
  %.old.i.i909 = add nsw i32 %i.adq, -58
  %.old38.i.i910 = icmp ult i32 %.old.i.i909, -10
  br i1 %.old38.i.i910, label %bb.hc, label %parse_string.exit

bb.gy:                                            ; preds = %bb.gt
  %i.aeg = load i8, ptr %i.adm, align 1, !tbaa !15 ; 2 uses
  %i.aeh = sext i8 %i.aeg to i32
  %i.aei = icmp eq i8 %i.aeg, 64
  br i1 %i.aei, label %bb.gz, label %bb.hc

bb.gz:                                            ; preds = %bb.gy
  %i.aej = getelementptr i8, ptr %i.adl, i64 2    ; 2 uses
  %.not31.i.i903 = icmp ult ptr %i.aej, %i.adn
  br i1 %.not31.i.i903, label %bb.ha, label %select.unfold.i

bb.ha:                                            ; preds = %bb.gz
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !15
  %i.ael = sext i8 %i.aek to i32
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gt
  store ptr %i.adm, ptr %i.i, align 8, !tbaa !188
  %i.aem = load i32, ptr %i.e, align 8
  %i.aen = or i32 %i.aem, 4
  store i32 %i.aen, ptr %i.e, align 8
  %i.aeo = getelementptr i8, ptr %0, i64 104
  %i.aep = load i32, ptr %i.aeo, align 8, !tbaa !67
  %i.aeq = load ptr, ptr %0, align 8, !tbaa !62
  store i32 %i.aep, ptr %i.aeq, align 8, !tbaa !15
  br label %parse_string.exit

bb.hc:                                            ; preds = %bb.ha, %bb.gy, %is_global_name_punct.exit.thread.i.i908, %is_global_name_punct.exit.i.i905, %bb.gw
  %.0.i124.i = phi i32 [ %i.adu, %bb.gw ], [ %i.adq, %is_global_name_punct.exit.thread.i.i908 ], [ %i.ael, %bb.ha ], [ %i.aeh, %bb.gy ], [ %i.adq, %is_global_name_punct.exit.i.i905 ] ; 3 uses
  %i.aer = icmp ugt i32 %.0.i124.i, 127
  %i.aes = icmp eq i32 %.0.i124.i, 95
  %or.cond.i.i901 = or i1 %i.aer, %i.aes
  br i1 %or.cond.i.i901, label %parse_string.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aet = and i32 %.0.i124.i, 95
  %i.aeu = add nsw i32 %i.aet, -91
  %narrow.i.i.i902 = icmp ult i32 %i.aeu, -26
  br i1 %narrow.i.i.i902, label %select.unfold.i, label %parse_string.exit

select.unfold.i:                                  ; preds = %bb.hd, %bb.gz, %bb.gv, %bb.gt, %bb.gs
  %i.aev = load i32, ptr %i.acx, align 8, !tbaa !570 ; 2 uses
  %i.aew = add i32 %i.aev, 1
  store i32 %i.aew, ptr %i.acx, align 8, !tbaa !570
  %i.aex = sext i32 %i.aev to i64
  %i.aey = getelementptr i8, ptr %i.adh, i64 %i.aex
  store i8 35, ptr %i.aey, align 1, !tbaa !15
  %i.aez = load i32, ptr %i.acx, align 8, !tbaa !570
  %i.afa = load i32, ptr %i.add, align 4, !tbaa !509 ; 2 uses
  %.not.i125.i = icmp slt i32 %i.aez, %i.afa
  br i1 %.not.i125.i, label %tokadd.exit.i900, label %bb.he

bb.he:                                            ; preds = %select.unfold.i
  %i.afb = shl i32 %i.afa, 1                      ; 2 uses
  store i32 %i.afb, ptr %i.add, align 4, !tbaa !509
  %i.afc = load ptr, ptr %i.acy, align 8, !tbaa !500
  %i.afd = sext i32 %i.afb to i64
  %i.afe = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.afc, i64 noundef %i.afd, i64 noundef 1) #38
  store ptr %i.afe, ptr %i.acy, align 8, !tbaa !500
  br label %tokadd.exit.i900

tokadd.exit.i900:                                 ; preds = %bb.he, %select.unfold.i
  %i.aff = load ptr, ptr %i.i, align 8, !tbaa !188 ; 2 uses
  %i.afg = load ptr, ptr %i.vc, align 8, !tbaa !426
  %.not.i126.i = icmp ult ptr %i.aff, %i.afg
  br i1 %.not.i126.i, label %bb.hf, label %.critedge.i127.i, !prof !527

bb.hf:                                            ; preds = %tokadd.exit.i900
  %i.afh = load i32, ptr %i.e, align 8
  %i.afi = and i32 %i.afh, 8
  %.not13.i133.i = icmp eq i32 %i.afi, 0
  br i1 %.not13.i133.i, label %bb.hg, label %.critedge.i127.i, !prof !527

bb.hg:                                            ; preds = %bb.hf
  %i.afj = getelementptr i8, ptr %0, i64 64
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !528
  %i.afl = icmp ugt ptr %i.afk, inttoptr (i64 1 to ptr)
  br i1 %i.afl, label %.critedge.i127.i, label %bb.hh, !prof !205

.critedge.i127.i:                                 ; preds = %bb.hg, %bb.hf, %tokadd.exit.i900
  %i.afm = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i128.i = icmp eq i32 %i.afm, 0
  br i1 %.not14.i128.i, label %.critedge._crit_edge.i130.i, label %pushback.exit135.i

.critedge._crit_edge.i130.i:                      ; preds = %.critedge.i127.i
  %.pre.i131.i = load ptr, ptr %i.i, align 8, !tbaa !188
  br label %bb.hh

bb.hh:                                            ; preds = %.critedge._crit_edge.i130.i, %bb.hg
  %i.afn = phi ptr [ %.pre.i131.i, %.critedge._crit_edge.i130.i ], [ %i.aff, %bb.hg ] ; 3 uses
  %i.afo = getelementptr i8, ptr %i.afn, i64 1    ; 6 uses
  store ptr %i.afo, ptr %i.i, align 8, !tbaa !188
  %i.afp = load i8, ptr %i.afn, align 1, !tbaa !15
  %i.afq = icmp eq i8 %i.afp, 13
  br i1 %i.afq, label %bb.hi, label %nextc0.exit134.thread.i, !prof !205

bb.hi:                                            ; preds = %bb.hh
  %i.afr = load ptr, ptr %i.vc, align 8, !tbaa !426
  %.not.i.i132.i = icmp ult ptr %i.afo, %i.afr
  br i1 %.not.i.i132.i, label %bb.hj, label %nextc0.exit134.thread.i

bb.hj:                                            ; preds = %bb.hi
  %i.afs = load i8, ptr %i.afo, align 1, !tbaa !15
  %i.aft = icmp eq i8 %i.afs, 10
  %i.afu = getelementptr i8, ptr %i.afn, i64 2
  %spec.select.i = select i1 %i.aft, ptr %i.afu, ptr %i.afo
  br label %nextc0.exit134.thread.i

nextc0.exit134.i:                                 ; preds = %newtok.exit.i894
  %i.afv = icmp eq i32 %.182.i, -1
  br i1 %i.afv, label %pushback.exit135.i, label %nextc0.exit134.nextc0.exit134.thread_crit_edge.i

nextc0.exit134.nextc0.exit134.thread_crit_edge.i: ; preds = %nextc0.exit134.i
  %.pre.i895 = load ptr, ptr %i.i, align 8, !tbaa !188
  br label %nextc0.exit134.thread.i

nextc0.exit134.thread.i:                          ; preds = %nextc0.exit134.nextc0.exit134.thread_crit_edge.i, %bb.hj, %bb.hi, %bb.hh
  %i.afw = phi ptr [ %.pre.i895, %nextc0.exit134.nextc0.exit134.thread_crit_edge.i ], [ %spec.select.i, %bb.hj ], [ %i.afo, %bb.hh ], [ %i.afo, %bb.hi ] ; 2 uses
  %i.afx = load i32, ptr %i.e, align 8
  %i.afy = and i32 %i.afx, -9
  store i32 %i.afy, ptr %i.e, align 8
  %i.afz = getelementptr i8, ptr %i.afw, i64 -1   ; 3 uses
  store ptr %i.afz, ptr %i.i, align 8, !tbaa !188
  %i.aga = getelementptr i8, ptr %0, i64 72
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !50
  %i.agc = icmp ugt ptr %i.afz, %i.agb
  br i1 %i.agc, label %bb.hk, label %pushback.exit135.i

bb.hk:                                            ; preds = %nextc0.exit134.thread.i
  %i.agd = load i8, ptr %i.afz, align 1, !tbaa !15
  %i.age = icmp eq i8 %i.agd, 10
  br i1 %i.age, label %bb.hl, label %pushback.exit135.i

bb.hl:                                            ; preds = %bb.hk
  %i.agf = getelementptr i8, ptr %i.afw, i64 -2   ; 2 uses
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !15
  %i.agh = icmp eq i8 %i.agg, 13
  br i1 %i.agh, label %bb.hm, label %pushback.exit135.i

bb.hm:                                            ; preds = %bb.hl
  store ptr %i.agf, ptr %i.i, align 8, !tbaa !188
  br label %pushback.exit135.i

pushback.exit135.i:                               ; preds = %bb.hm, %bb.hl, %bb.hk, %nextc0.exit134.thread.i, %nextc0.exit134.i, %.critedge.i127.i
  %i.agi = call fastcc i32 @tokadd_string(ptr noundef nonnull %0, i32 noundef %i.tv, i32 noundef %i.tx, i32 noundef %i.tz, ptr noundef %i.l, ptr noundef %i.a, ptr noundef %i.b)
  %i.agj = icmp eq i32 %i.agi, -1
  br i1 %i.agj, label %bb.hn, label %bb.hr

bb.hn:                                            ; preds = %pushback.exit135.i
  %i.agk = load i32, ptr %i.e, align 8
  %i.agl = and i32 %i.agk, 8
  %.not91.i = icmp eq i32 %i.agl, 0
  br i1 %.not91.i, label %bb.hr, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.agm = load ptr, ptr %i.i, align 8, !tbaa !188
  store ptr %i.agm, ptr %i.k, align 8, !tbaa !49
  br i1 %.not85.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.808)
  %i.agn = load ptr, ptr %i.g, align 8, !tbaa !178
  tail call void @ruby_xfree(ptr noundef %i.agn) #31
  store ptr null, ptr %i.g, align 8, !tbaa !178
  br label %parse_string.exit

bb.hq:                                            ; preds = %bb.ho
  %i.ago = and i32 %i.tv, 4
  %.not92.i = icmp eq i32 %i.ago, 0
  %.str.810..str.809.i = select i1 %.not92.i, ptr @.str.810, ptr @.str.809
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef %.str.810..str.809.i)
  %i.agp = load i32, ptr %i.tu, align 8, !tbaa !571
  %i.agq = or i32 %i.agp, 32768
  store i32 %i.agq, ptr %i.tu, align 8, !tbaa !571
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hn, %pushback.exit135.i
  %i.agr = load ptr, ptr %i.acy, align 8, !tbaa !500
  %i.ags = load i32, ptr %i.acx, align 8, !tbaa !570
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr i8, ptr %i.agr, i64 %i.agt
  store i8 0, ptr %i.agu, align 1, !tbaa !15
  %i.agv = load ptr, ptr %i.acy, align 8, !tbaa !500
  %i.agw = load i32, ptr %i.acx, align 8, !tbaa !570
  %i.agx = sext i32 %i.agw to i64
  %i.agy = load ptr, ptr %i.a, align 8, !tbaa !564 ; 2 uses
  %i.agz = load ptr, ptr %i.ua, align 8, !tbaa !176
  %i.aha = tail call fastcc ptr @parser_str_new(ptr noundef %i.agv, i64 noundef %i.agx, ptr noundef %i.agy, i32 noundef %i.tv, ptr noundef %i.agz)
  %i.ahb = getelementptr i8, ptr %0, i64 196
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !29 ; 3 uses
  %i.ahd = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.ahe = getelementptr i8, ptr %0, i64 72
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !50
  %i.ahg = ptrtoint ptr %i.ahd to i64
  %i.ahh = ptrtoint ptr %i.ahf to i64             ; 2 uses
  %i.ahi = sub i64 %i.ahg, %i.ahh
  %i.ahj = trunc i64 %i.ahi to i32
  %i.ahk = load ptr, ptr %i.i, align 8, !tbaa !188
  %i.ahl = ptrtoint ptr %i.ahk to i64
  %i.ahm = sub i64 %i.ahl, %i.ahh
  %i.ahn = trunc i64 %i.ahm to i32
  %i.aho = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i896 = load ptr, ptr %i.aho, align 8, !tbaa !129
  %i.ahp = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i.i896, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ahp, i32 noundef range(i32 0, 115) 63) #31
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 8
  store i32 %i.ahc, ptr %i.ahq, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx.i897 = getelementptr i8, ptr %i.ahp, i64 12
  store i32 %i.ahj, ptr %.sroa.5.0..sroa_idx.i897, align 4, !tbaa !7
  %.sroa.6.0..sroa_idx.i898 = getelementptr i8, ptr %i.ahp, i64 16
  store i32 %i.ahc, ptr %.sroa.6.0..sroa_idx.i898, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx.i899 = getelementptr i8, ptr %i.ahp, i64 20
  store i32 %i.ahn, ptr %.sroa.7.0..sroa_idx.i899, align 4, !tbaa !7
  %i.ahr = sext i32 %i.ahc to i64
  %i.ahs = load i64, ptr %i.ahp, align 8, !tbaa !69
  %i.aht = and i64 %i.ahs, 32767
  %i.ahu = shl nsw i64 %i.ahr, 15
  %i.ahv = or disjoint i64 %i.aht, %i.ahu
  store i64 %i.ahv, ptr %i.ahp, align 8, !tbaa !69
  %i.ahw = getelementptr i8, ptr %0, i64 296      ; 2 uses
  %i.ahx = load i32, ptr %i.ahw, align 8, !tbaa !217 ; 2 uses
  %i.ahy = add i32 %i.ahx, 1
  store i32 %i.ahy, ptr %i.ahw, align 8, !tbaa !217
  %i.ahz = getelementptr i8, ptr %i.ahp, i64 24
  store i32 %i.ahx, ptr %i.ahz, align 8, !tbaa !218
  %i.aia = getelementptr i8, ptr %i.ahp, i64 32
  store ptr %i.aha, ptr %i.aia, align 8, !tbaa !444
  %i.aib = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %i.ahp, ptr %i.aib, align 8, !tbaa !15
  tail call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.agy, i64 noundef 0)
  br label %parse_string.exit

parse_string.exit:                                ; preds = %parser_set_lex_state.exit.i886, %pushback.exit.i912, %parser_string_term.exit.i, %pushback.exit121.i, %is_global_name_punct.exit.i.i905, %is_global_name_punct.exit.thread.i.i908, %bb.hb, %bb.hc, %bb.hd, %bb.hp, %bb.hr
  %.1.i887 = phi i32 [ %i.vb, %parser_set_lex_state.exit.i886 ], [ 32, %pushback.exit121.i ], [ 345, %bb.hp ], [ 321, %bb.hr ], [ %.0.i.i915, %parser_string_term.exit.i ], [ 32, %pushback.exit.i912 ], [ 347, %bb.hb ], [ 348, %bb.hd ], [ 348, %is_global_name_punct.exit.i.i905 ], [ 348, %is_global_name_punct.exit.thread.i.i908 ], [ 348, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
end_hunk_1
