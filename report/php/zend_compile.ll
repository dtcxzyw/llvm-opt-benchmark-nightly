Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_compile?download=true
inline.NumInlined: 808
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@zend_compile_const_expr:bb.a
  br i1 %.not.i9.i, label %bb.aa, label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %bb.v
  %.pre.i.i30 = load i64, ptr %i.bq, align 8, !tbaa !46
  %.pre17.i.i31 = load ptr, ptr @zend_known_strings, align 8, !tbaa !170
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i29, %bb.u
  %i.cb = phi ptr [ %.pre17.i.i31, %._crit_edge.i.i29 ], [ %i.bs, %bb.u ] ; 2 uses
  %i.cc = phi i64 [ %.pre.i.i30, %._crit_edge.i.i29 ], [ %i.br, %bb.u ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 520
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !58 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !46
  %i.ch = icmp eq i64 %i.cc, %i.cg
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ck = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ci, i64 noundef %i.cc, ptr noundef nonnull %i.cj, i64 noundef %i.cc) #30
  %.not15.i.i25 = icmp eq i32 %i.ck, 0
  br i1 %.not15.i.i25, label %bb.aa, label %._crit_edge18.i.i26

._crit_edge18.i.i26:                              ; preds = %bb.x
  %.pre19.i.i27 = load i64, ptr %i.bq, align 8, !tbaa !46
  %.pre20.i.i28 = load ptr, ptr @zend_known_strings, align 8, !tbaa !170
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge18.i.i26, %bb.w
  %i.cl = phi ptr [ %.pre20.i.i28, %._crit_edge18.i.i26 ], [ %i.cb, %bb.w ]
  %i.cm = phi i64 [ %.pre19.i.i27, %._crit_edge18.i.i26 ], [ %i.cc, %bb.w ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 160
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !46
  %i.cr = icmp eq i64 %i.cm, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cu = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.cs, i64 noundef %i.cm, ptr noundef nonnull %i.ct, i64 noundef %i.cm) #30
  %.not16.i.i23 = icmp eq i32 %i.cu, 0
  br i1 %.not16.i.i23, label %zend_get_class_fetch_type.exit.i24, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %.0.i.ph.i = phi i16 [ 1, %bb.v ], [ 2, %bb.x ], [ 0, %bb.z ], [ 0, %bb.y ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !87 ; 2 uses
  %i.cx = and i32 %i.cw, 64
  %.not.i.i22 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i22, label %bb.ab, label %zend_compile_const_expr_class_name.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i32, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %i.cz = icmp ne i32 %i.cy, 0
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = add i32 %i.cy, -1                       ; 2 uses
  store i32 %i.da, ptr %i.bp, align 8, !tbaa !92
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ac, label %zend_compile_const_expr_class_name.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dc = and i32 %i.cw, 128
  %.not5.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not5.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.bp) #30
  br label %zend_compile_const_expr_class_name.exit

bb.ae:                                            ; preds = %bb.ac
  tail call void @_efree(ptr noundef nonnull %i.bp) #30
  br label %zend_compile_const_expr_class_name.exit

zend_get_class_fetch_type.exit.i24:               ; preds = %bb.z
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.81) #29
  unreachable

zend_compile_const_expr_class_name.exit:          ; preds = %bb.aa, %bb.ab, %bb.ad, %bb.ae
  store ptr null, ptr %i.bl, align 8, !tbaa !117
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.0.i.ph.i, ptr %i.dd, align 2, !tbaa !228
  br label %zend_compile_const_expr_new.exit

bb.af:                                            ; preds = %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !117 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.i.i = load i32, ptr %i.di, align 4, !tbaa !87
  store i32 %.0.i.i, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !228
  %i.dl = zext i16 %i.dk to i32
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 296), align 8, !tbaa !230
  %i.dn = call fastcc ptr @zend_resolve_non_class_name(ptr noundef %i.dh, i32 noundef range(i32 0, 65536) %i.dl, ptr noundef nonnull %i.b, i1 noundef zeroext true, ptr noundef %i.dm) ; 6 uses
  %i.do = load i8, ptr %i.b, align 1, !tbaa !60, !range !107, !noundef !108
  %i.dp = trunc nuw i8 %i.do to i1                ; 2 uses
  %i.dq = call fastcc zeroext i1 @zend_try_ct_eval_const(ptr noundef nonnull %3, ptr noundef %i.dn, i1 noundef zeroext %i.dp)
  br i1 %i.dq, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !87
  %i.dt = and i32 %i.ds, 64
  %.not.i.i32 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i32, label %bb.ah, label %zend_string_release_ex.exit.i33

bb.ah:                                            ; preds = %bb.ag
  %i.du = load i32, ptr %i.dn, align 4, !tbaa !92 ; 2 uses
  %i.dv = icmp ne i32 %i.du, 0
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add i32 %i.du, -1                       ; 2 uses
  store i32 %i.dw, ptr %i.dn, align 4, !tbaa !92
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.ai, label %zend_string_release_ex.exit.i33

bb.ai:                                            ; preds = %bb.ah
  call void @_efree(ptr noundef nonnull %i.dn) #30
  br label %zend_string_release_ex.exit.i33

zend_string_release_ex.exit.i33:                  ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @zend_ast_destroy(ptr noundef nonnull %i.c) #30
  %i.dy = call ptr @zend_ast_create_zval(ptr noundef nonnull %3) #30
  br label %zend_compile_const_expr_const.exit

bb.aj:                                            ; preds = %bb.af
  call void @zend_ast_destroy(ptr noundef nonnull %i.c) #30
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 264), align 8
  %i.ea = icmp eq ptr %i.dz, null
  %.not13.i = select i1 %i.dp, i1 true, i1 %i.ea
  %i.eb = select i1 %.not13.i, i16 0, i16 2048
  %i.ec = call ptr @zend_ast_create_constant(ptr noundef %i.dn, i16 noundef zeroext %i.eb) #30
  br label %zend_compile_const_expr_const.exit

zend_compile_const_expr_const.exit:               ; preds = %zend_string_release_ex.exit.i33, %bb.aj
  %storemerge.i = phi ptr [ %i.ec, %bb.aj ], [ %i.dy, %zend_string_release_ex.exit.i33 ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %zend_compile_const_expr_new.exit

bb.ak:                                            ; preds = %bb.c
  tail call void @zend_ast_destroy(ptr noundef nonnull %i.c) #30
  %i.ed = tail call ptr @zend_ast_create_0(i16 noundef zeroext 2) #30
  store ptr %i.ed, ptr %0, align 8, !tbaa !117
  br label %zend_compile_const_expr_new.exit

bb.al:                                            ; preds = %bb.c
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !228
  %i.eg = icmp eq i16 %i.ef, 8
  br i1 %i.eg, label %bb.am, label %zend_compile_const_expr_new.exit

bb.am:                                            ; preds = %bb.al
  %i.eh = load i8, ptr %1, align 1, !tbaa !226, !range !107, !noundef !108
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %zend_compile_const_expr_new.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.71) #29
  unreachable

bb.ao:                                            ; preds = %bb.c
  %i.ej = load i8, ptr %1, align 1, !tbaa !226, !range !107, !noundef !108
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.72) #29
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !117
  tail call fastcc void @zend_compile_const_expr_class_reference(ptr noundef %i.em)
  %i.en = load ptr, ptr %0, align 8, !tbaa !117
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !117
  %i.eq = load i16, ptr %i.ep, align 8, !tbaa !223
  %i.er = icmp eq i16 %i.eq, 3
  br i1 %i.er, label %bb.ar, label %zend_compile_const_expr_new.exit

bb.ar:                                            ; preds = %bb.aq
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.82) #29
  unreachable

bb.as:                                            ; preds = %bb.c
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !116 ; 2 uses
  %.not.i34 = icmp eq i32 %i.et, 0
  br i1 %.not.i34, label %zend_compile_const_expr_new.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.as
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.trip.count.i = zext i32 %i.et to i64      ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %.backedge.backedge, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.i.be, %.backedge.backedge ] ; 3 uses
  %.0103.i = phi i1 [ false, %.lr.ph.i ], [ %.0103.i.be, %.backedge.backedge ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !117
  %i.ex = load i16, ptr %i.ew, align 8, !tbaa !223
  switch i16 %i.ex, label %bb.av [
    i16 258, label %bb.au
    i16 549, label %4
  ]

bb.au:                                            ; preds = %bb.at
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.86) #29
  unreachable

bb.av:                                            ; preds = %bb.at
  br i1 %.0103.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.87) #29
  unreachable

4:                                                ; preds = %bb.at
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.ay, label %.backedge.backedge

.backedge.backedge:                               ; preds = %4, %bb.ax
  %indvars.iv.i.be = phi i64 [ %indvars.iv.next.i, %4 ], [ %indvars.iv.next.i.a, %bb.ax ]
  %.0103.i.be = phi i1 [ true, %4 ], [ false, %bb.ax ]
  br label %bb.at, !llvm.loop !328

bb.ax:                                            ; preds = %bb.av
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %indvars.iv.next.i.a, %wide.trip.count.i
  br i1 %exitcond.not.i.a, label %zend_compile_const_expr_new.exit, label %.backedge.backedge

bb.ay:                                            ; preds = %4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 1, ptr %i.ey, align 2, !tbaa !331
  br label %zend_compile_const_expr_new.exit

bb.az:                                            ; preds = %bb.c
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !232
  %i.fb = and i32 %i.fa, 16
  %.not.i35 = icmp eq i32 %i.fb, 0
  br i1 %.not.i35, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.88) #29, !inline_history !329
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !117
  %.not8.i = icmp eq ptr %i.fd, null
  br i1 %.not8.i, label %zend_compile_const_expr_closure.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.89) #29, !inline_history !329
  unreachable

zend_compile_const_expr_closure.exit:             ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.fe = call fastcc ptr @zend_compile_func_decl_ex(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef null, i32 noundef -1), !inline_history !330
  %i.ff = load ptr, ptr %0, align 8, !tbaa !117
  call void @zend_ast_destroy(ptr noundef %i.ff) #30, !inline_history !329
  %i.fg = call ptr @zend_ast_create_op_array(ptr noundef %i.fe) #30, !inline_history !329
  store ptr %i.fg, ptr %0, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.bt

bb.bd:                                            ; preds = %bb.c, %bb.c
  %i.fh = icmp eq i16 %i.e, 516
  %.0.v.i = select i1 %i.fh, i64 16, i64 24
  %.0.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.v.i ; 2 uses
  %i.fi = load ptr, ptr %.0.i, align 8, !tbaa !117
  %i.fj = load i16, ptr %i.fi, align 8, !tbaa !223
  %.not.i36 = icmp eq i16 %i.fj, 3
  br i1 %.not.i36, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.70) #29
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.fk = tail call ptr @zend_map_ptr_new() #30
  %i.fl = load ptr, ptr %.0.i, align 8, !tbaa !117
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !333
  %i.fn = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 8, !tbaa !223
  %i.fp = icmp eq i16 %i.fo, 516
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !117 ; 6 uses
  br i1 %i.fp, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  %i.fs = load i16, ptr %i.fr, align 8, !tbaa !223
  %.not27.i = icmp eq i16 %i.fs, 64
  br i1 %.not27.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.90) #29
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !87
  %.not28.i = icmp eq i8 %i.fv, 6
  br i1 %.not28.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.91) #29
  unreachable

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !87
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 2 ; 2 uses
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !228
  %i.fz = zext i16 %i.fy to i32
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 288), align 8, !tbaa !233
  %i.gb = call fastcc ptr @zend_resolve_non_class_name(ptr noundef %i.fw, i32 noundef range(i32 0, 65536) %i.fz, ptr noundef nonnull %i.a, i1 noundef zeroext false, ptr noundef %i.ga) ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 17
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !87
  %.not.i.i37 = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i37, label %zval_ptr_dtor_nogc.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ge = load ptr, ptr %i.ft, align 8, !tbaa !87 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !92 ; 2 uses
  %i.gg = icmp ne i32 %i.gf, 0
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = add i32 %i.gf, -1                       ; 2 uses
  store i32 %i.gh, ptr %i.ge, align 4, !tbaa !92
  %.not3.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not3.i.i, label %bb.bm, label %zval_ptr_dtor_nogc.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.gi = load ptr, ptr %i.ft, align 8, !tbaa !87
  tail call void @rc_dtor_func(ptr noundef %i.gi) #30
  br label %zval_ptr_dtor_nogc.exit.i

zval_ptr_dtor_nogc.exit.i:                        ; preds = %bb.bm, %bb.bl, %bb.bk
  store ptr %i.gb, ptr %i.ft, align 8, !tbaa !87
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !87
  %i.gl = and i32 %i.gk, 64
  %.not29.i = icmp eq i32 %i.gl, 0
  %i.gm = select i1 %.not29.i, i32 262, i32 6
  store i32 %i.gm, ptr %i.fu, align 8, !tbaa !87
  %i.gn = load i8, ptr %i.a, align 1, !tbaa !60, !range !107, !noundef !108
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %zval_ptr_dtor_nogc.exit.i
  store i16 0, ptr %i.fx, align 2, !tbaa !228
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %zval_ptr_dtor_nogc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %zend_compile_const_expr_new.exit

bb.bp:                                            ; preds = %bb.bf
  tail call fastcc void @zend_compile_const_expr_class_reference(ptr noundef %i.fr)
  %i.gp = load ptr, ptr %0, align 8, !tbaa !117
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !117 ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 8, !tbaa !223
  %.not25.i = icmp eq i16 %i.gs, 64
  br i1 %.not25.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.92) #29
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !87
  %.not26.i = icmp eq i8 %i.gu, 6
  br i1 %.not26.i, label %zend_compile_const_expr_new.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.93) #29
  unreachable

zend_compile_const_expr_new.exit:                 ; preds = %bb.ax, %bb.br, %bb.bo, %bb.ay, %bb.as, %bb.aq, %bb.al, %bb.am, %bb.ak, %zend_compile_const_expr_const.exit, %zend_compile_const_expr_class_name.exit, %zend_compile_const_expr_class_const.exit, %bb.c
  call void @zend_ast_apply(ptr noundef nonnull %i.c, ptr noundef nonnull @zend_compile_const_expr, ptr noundef %1) #30
  br label %bb.bt

bb.bt:                                            ; preds = %bb.b, %bb.a, %zend_compile_const_expr_new.exit, %zend_compile_const_expr_closure.exit
  ret void
}

declare ptr @zend_ast_copy(ptr noundef) local_unnamed_addr #2

declare void @zend_ast_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @zend_ast_create_zval(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zend_compile_top_stmt(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %zend_verify_namespace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !223
  switch i16 %i.a, label %bb.f [
    i16 132, label %.preheader
    i16 68, label %bb.d
    i16 71, label %bb.e
  ]

.preheader:                                       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !116
  %.not24 = icmp eq i32 %i.c, 0
  br i1 %.not24, label %zend_verify_namespace.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117
  tail call void @zend_compile_top_stmt(ptr noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !116
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.c, label %zend_verify_namespace.exit, !llvm.loop !334

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !234
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  %i.l = tail call fastcc ptr @zend_compile_func_decl_ex(ptr noundef null, ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, i32 noundef -1), !inline_history !8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !235
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !234
  store i32 %i.p, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  tail call fastcc void @zend_compile_class_decl(ptr noundef null, ptr noundef nonnull %0, i1 noundef zeroext true)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !235
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_stmt(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.s = load i16, ptr %0, align 8, !tbaa !223
  switch i16 %i.s, label %bb.h [
    i16 542, label %zend_verify_namespace.exit
    i16 281, label %zend_verify_namespace.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 273), align 1, !tbaa !236, !range !107, !noundef !108
  %i.u = trunc nuw i8 %i.t to i1
  %.not.i = xor i1 %i.u, true
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 272), align 8, !range !107
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.w
  br i1 %or.cond.i, label %zend_verify_namespace.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.213) #29
  unreachable

zend_verify_namespace.exit:                       ; preds = %bb.c, %.preheader, %bb.h, %bb.g, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_compile_class_decl(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  %7 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !237 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i181 = icmp ult i64 %i.p, 520
  br i1 %.not.i181, label %bb.c, label %bb.b, !prof !152

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 520
  store ptr %i.q, ptr %i.j, align 8, !tbaa !101
  br label %zend_arena_alloc.exit

bb.c:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = sub i64 %i.n, %i.r
  %..i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 544) ; 2 uses
  %i.t = tail call noalias ptr @_emalloc(i64 noundef %..i) #32 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  store ptr %i.v, ptr %i.t, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %..i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.j, ptr %i.y, align 8, !tbaa !103
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !237
  br label %zend_arena_alloc.exit

zend_arena_alloc.exit:                            ; preds = %bb.b, %bb.c
  %.0.i182 = phi ptr [ %i.k, %bb.b ], [ %i.u, %bb.c ] ; 43 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 24), align 8, !tbaa !93 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !232 ; 4 uses
  %i.ac = and i32 %i.ab, 4
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %.preheader247, !prof !192

bb.d:                                             ; preds = %zend_arena_alloc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !238 ; 11 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.200) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = and i32 %i.ab, 268435456
  %.not136 = icmp eq i32 %i.ag, 0
  br i1 %.not136, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = and i32 %i.ab, 1
  %.not137 = icmp eq i32 %i.ah, 0
  br i1 %.not137, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = and i32 %i.ab, 2
  %.not138 = icmp eq i32 %i.ai, 0
  %spec.select = select i1 %.not138, ptr @.str.201, ptr @.str.204
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0123 = phi ptr [ %spec.select, %bb.h ], [ @.str.202, %bb.f ], [ @.str.203, %bb.g ] ; 2 uses
  %i.aj = tail call fastcc zeroext i1 @zend_is_reserved_class_name(ptr noundef %i.af)
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull %i.ak, ptr noundef nonnull %.0123) #29
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %zend_string_equals_cstr.exit.i, label %zend_assert_valid_class_name.exit

zend_string_equals_cstr.exit.i:                   ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %lhsc.i = load i8, ptr %i.ao, align 8
  %.not.i.i192 = icmp eq i8 %lhsc.i, 95
  br i1 %.not.i.i192, label %bb.l, label %zend_assert_valid_class_name.exit
end_hunk_0
