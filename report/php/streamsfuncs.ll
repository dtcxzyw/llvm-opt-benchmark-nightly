Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/streamsfuncs?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@zif_stream_socket_client:bb.a

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.j
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !12
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !16
  br label %bb.k

zend_parse_arg_long_ex.exit:                      ; preds = %bb.j
  %i.af = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.e, i32 noundef 5) #11
  br i1 %i.af, label %bb.k, label %bb.m, !prof !17

bb.k:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %.not = icmp eq i32 %i.h, 6
  br i1 %.not, label %bb.l, label %.critedge, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !12
  switch i8 %i.ai, label %bb.m [
    i8 9, label %.critedge
    i8 1, label %.critedge.fold.split
  ], !prof !41

bb.m:                                             ; preds = %bb.l, %bb.b, %zend_parse_arg_long_ex.exit, %zend_parse_arg_str_ex.exit, %zend_parse_arg_double.exit
  %.0169.ph = phi i32 [ 9, %bb.l ], [ 9, %zend_parse_arg_double.exit ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_long_ex.exit ], [ 1, %bb.b ]
  %.0167.ph = phi i32 [ 15, %bb.l ], [ 21, %zend_parse_arg_double.exit ], [ 4, %zend_parse_arg_str_ex.exit ], [ 0, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ]
  %.0165.ph = phi ptr [ %i.ag, %bb.l ], [ %i.u, %zend_parse_arg_double.exit ], [ %i.j, %zend_parse_arg_str_ex.exit ], [ %i.aa, %zend_parse_arg_long_ex.exit ], [ null, %bb.b ]
  %.0162.ph = phi i32 [ 6, %bb.l ], [ 4, %zend_parse_arg_double.exit ], [ 1, %zend_parse_arg_str_ex.exit ], [ 5, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ]
  call void @zend_wrong_parameter_error(i32 noundef %.0169.ph, i32 noundef %.0162.ph, ptr noundef null, i32 noundef %.0167.ph, ptr noundef %.0165.ph) #11
  br label %bb.be

.critedge.thread:                                 ; preds = %bb.d, %bb.e, %bb.f
  %.1227.ph = phi ptr [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ null, %bb.d ]
  %.1225.ph = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 2, ptr %i.aj, align 8, !tbaa !12
  br label %bb.n

.critedge.fold.split:                             ; preds = %bb.l
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.fold.split, %bb.i, %bb.k
  %.1222 = phi ptr [ null, %bb.k ], [ null, %bb.i ], [ %i.ag, %bb.l ], [ null, %.critedge.fold.split ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 2, ptr %i.ak, align 8, !tbaa !12
  br i1 %.3231, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.thread, %.critedge
  %i.al = phi ptr [ %i.aj, %.critedge.thread ], [ %i.ak, %.critedge ]
  %.1222273 = phi ptr [ null, %.critedge.thread ], [ %.1222, %.critedge ]
  %.1225270 = phi ptr [ %.1225.ph, %.critedge.thread ], [ %i.s, %.critedge ]
  %.1227267 = phi ptr [ %.1227.ph, %.critedge.thread ], [ %i.q, %.critedge ]
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 24), align 8, !tbaa !49
  %i.an = sitofp i64 %i.am to double
  store double %i.an, ptr %i.b, align 8, !tbaa !40
  br label %bb.q

bb.o:                                             ; preds = %.critedge
  %i.ao = load double, ptr %i.b, align 8, !tbaa !40
  %i.ap = call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fcmp ueq double %i.ap, +inf
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 4, ptr noundef nonnull @.str.2) #11
  br label %bb.be

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ar = phi ptr [ %i.ak, %bb.o ], [ %i.al, %bb.n ] ; 2 uses
  %.1222272 = phi ptr [ %.1222, %bb.o ], [ %.1222273, %bb.n ] ; 2 uses
  %.1225269 = phi ptr [ %i.s, %bb.o ], [ %.1225270, %bb.n ] ; 4 uses
  %.1227266 = phi ptr [ %i.q, %bb.o ], [ %.1227267, %bb.n ] ; 3 uses
  %.not184 = icmp eq ptr %.1222272, null
  br i1 %.not184, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = call i32 @php_le_stream_context() #11
  %i.at = call ptr @zend_fetch_resource_ex(ptr noundef nonnull %.1222272, ptr noundef nonnull @.str.3, i32 noundef %i.as) #11
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.au = load i64, ptr %i.e, align 8, !tbaa !16
  %i.av = and i64 %i.au, 16
  %.not185 = icmp eq i64 %i.av, 0
  br i1 %.not185, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !50 ; 2 uses
  %.not186 = icmp eq ptr %i.aw, null
  br i1 %.not186, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ax = call ptr @php_stream_context_alloc() #11 ; 2 uses
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !50
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u, %bb.r
  %i.ay = phi ptr [ %i.at, %bb.r ], [ null, %bb.s ], [ %i.ax, %bb.u ], [ %i.aw, %bb.t ]
  %i.az = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ba = and i64 %i.az, 1
  %.not187 = icmp eq i64 %i.ba, 0
  br i1 %.not187, label %zend_string_release_ex.exit211, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !53
  %i.bf = call ptr @php_stream_escape_persistent_key(ptr noundef nonnull %i.bc, i64 noundef %i.be) #11 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.c, i64 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.bg) #11 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !12
  %i.bk = and i32 %i.bj, 64
  %.not.i210 = icmp eq i32 %i.bk, 0
  br i1 %.not.i210, label %bb.x, label %zend_string_release_ex.exit211

bb.x:                                             ; preds = %bb.w
  %i.bl = load i32, ptr %i.bf, align 4, !tbaa !54 ; 2 uses
  %i.bm = icmp ne i32 %i.bl, 0
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bf, align 4, !tbaa !54
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.y, label %zend_string_release_ex.exit211

bb.y:                                             ; preds = %bb.x
  call void @_efree(ptr noundef nonnull %i.bf) #11
  br label %zend_string_release_ex.exit211

zend_string_release_ex.exit211:                   ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.bp = load double, ptr %i.b, align 8, !tbaa !40 ; 3 uses
  %i.bq = fcmp olt double %i.bp, 0.000000e+00
  %i.br = fcmp oge double %i.bp, f0x42B0C6F7A0B5ED8D
  %or.cond = or i1 %i.bq, %i.br
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %zend_string_release_ex.exit211
  %i.bs = fmul double %i.bp, 1.000000e+06
  %i.bt = fptoui double %i.bs to i64              ; 2 uses
  %i.bu = udiv i64 %i.bt, 1000000
  store i64 %i.bu, ptr %2, align 8, !tbaa !56
  %i.bv = urem i64 %i.bt, 1000000
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !57
  br label %bb.aa

bb.aa:                                            ; preds = %zend_string_release_ex.exit211, %bb.z
  %.0166 = phi ptr [ %2, %bb.z ], [ null, %zend_string_release_ex.exit211 ]
  %.not188 = icmp eq ptr %.1227266, null          ; 2 uses
  br i1 %.not188, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = load ptr, ptr %.1227266, align 8, !tbaa !12 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !12
  %.not189 = icmp eq ptr %i.bz, null
  br i1 %.not189, label %bb.ad, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.ca = call i32 @zend_try_assign_typed_ref_long(ptr noundef nonnull %i.bx, i64 noundef 0) #11 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.cb) #11
  store i64 0, ptr %i.cb, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i32 4, ptr %i.cc, align 8, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.not190 = icmp eq ptr %.1225269, null
  br i1 %.not190, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = load ptr, ptr %.1225269, align 8, !tbaa !12 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !12
  %.not191 = icmp eq ptr %i.cf, null
  br i1 %.not191, label %bb.ah, label %bb.ag, !prof !14

bb.ag:                                            ; preds = %bb.af
  %i.cg = call i32 @zend_try_assign_typed_ref_empty_string(ptr noundef nonnull %i.cd) #11 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.ch) #11
  %i.ci = load ptr, ptr @zend_empty_string, align 8, !tbaa !35
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i32 6, ptr %i.cj, align 8, !tbaa !12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ae
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !53
  %i.co = load i64, ptr %i.e, align 8, !tbaa !16
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %3 = lshr i32 %i.cp, 1
  %4 = and i32 %3, 2
  %i.cq = shl i32 %i.cp, 3
  %i.cr = and i32 %i.cq, 16
  %i.cs = or disjoint i32 %4, %i.cr
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cu = call ptr @_php_stream_xport_create(ptr noundef nonnull %i.cl, i64 noundef %i.cn, i32 noundef 8, i32 noundef %i.cs, ptr noundef %i.ct, ptr noundef %.0166, ptr noundef %i.ay, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #11 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null                 ; 2 uses
  br i1 %i.cv, label %bb.aj, label %zend_string_release_ex.exit209

bb.aj:                                            ; preds = %bb.ai
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cx = call ptr @php_addslashes(ptr noundef %i.cw) #11 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !35  ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dc = select i1 %i.da, ptr @.str.6, ptr %i.db
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.dc) #11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !12
  %i.df = and i32 %i.de, 64
  %.not.i208 = icmp eq i32 %i.df, 0
  br i1 %.not.i208, label %bb.ak, label %zend_string_release_ex.exit209

bb.ak:                                            ; preds = %bb.aj
  %i.dg = load i32, ptr %i.cx, align 4, !tbaa !54 ; 2 uses
  %i.dh = icmp ne i32 %i.dg, 0
  call void @llvm.assume(i1 %i.dh)
  %i.di = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.di, ptr %i.cx, align 4, !tbaa !54
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.al, label %zend_string_release_ex.exit209

bb.al:                                            ; preds = %bb.ak
  call void @_efree(ptr noundef nonnull %i.cx) #11
  br label %zend_string_release_ex.exit209

zend_string_release_ex.exit209:                   ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %.not194 = icmp eq ptr %i.dk, null
  br i1 %.not194, label %bb.an, label %bb.am

bb.am:                                            ; preds = %zend_string_release_ex.exit209
  call void @_efree(ptr noundef nonnull %i.dk) #11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %zend_string_release_ex.exit209
  br i1 %i.cv, label %bb.ao, label %bb.ba

bb.ao:                                            ; preds = %bb.an
  br i1 %.not188, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dl = load ptr, ptr %.1227266, align 8, !tbaa !12 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !12
  %.not197 = icmp eq ptr %i.dn, null
  br i1 %.not197, label %bb.ar, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %bb.ap
  %i.do = load i32, ptr %i.d, align 4, !tbaa !19
  %i.dp = sext i32 %i.do to i64
  %i.dq = call i32 @zend_try_assign_typed_ref_long(ptr noundef nonnull %i.dl, i64 noundef %i.dp) #11 ; 0 uses
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.dr) #11
  %i.ds = load i32, ptr %i.d, align 4, !tbaa !19
  %i.dt = sext i32 %i.ds to i64
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 4, ptr %i.du, align 8, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ao
  %i.dv = icmp ne ptr %.1225269, null
  %i.dw = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.dx = icmp ne ptr %i.dw, null                 ; 2 uses
  %or.cond7 = select i1 %i.dv, i1 %i.dx, i1 false
  br i1 %or.cond7, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dy = load ptr, ptr %.1225269, align 8, !tbaa !12 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !12
  %.not198 = icmp eq ptr %i.ea, null
  br i1 %.not198, label %bb.av, label %bb.au, !prof !14

bb.au:                                            ; preds = %bb.at
  %i.eb = call i32 @zend_try_assign_typed_ref_str(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dw) #11 ; 0 uses
  br label %zend_string_release_ex.exit207

bb.av:                                            ; preds = %bb.at
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.ec) #11
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !35  ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !12
  %i.eg = and i32 %i.ef, 64
  %.not199 = icmp eq i32 %i.eg, 0
  %i.eh = select i1 %.not199, i32 262, i32 6
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !12
  br label %zend_string_release_ex.exit207

bb.aw:                                            ; preds = %bb.as
  br i1 %i.dx, label %bb.ax, label %zend_string_release_ex.exit207

bb.ax:                                            ; preds = %bb.aw
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !12
  %i.el = and i32 %i.ek, 64
  %.not.i206 = icmp eq i32 %i.el, 0
  br i1 %.not.i206, label %bb.ay, label %zend_string_release_ex.exit207

bb.ay:                                            ; preds = %bb.ax
  %i.em = load i32, ptr %i.dw, align 4, !tbaa !54 ; 2 uses
  %i.en = icmp ne i32 %i.em, 0
  call void @llvm.assume(i1 %i.en)
  %i.eo = add i32 %i.em, -1                       ; 2 uses
  store i32 %i.eo, ptr %i.dw, align 4, !tbaa !54
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.az, label %zend_string_release_ex.exit207

bb.az:                                            ; preds = %bb.ay
  call void @_efree(ptr noundef nonnull %i.dw) #11
  br label %zend_string_release_ex.exit207

zend_string_release_ex.exit207:                   ; preds = %bb.az, %bb.ay, %bb.ax, %bb.au, %bb.av, %bb.aw
  store i32 2, ptr %i.ar, align 8, !tbaa !12
  br label %bb.be

bb.ba:                                            ; preds = %bb.an
  %i.eq = load ptr, ptr %i.f, align 8, !tbaa !35  ; 5 uses
  %.not195 = icmp eq ptr %i.eq, null
  br i1 %.not195, label %zend_string_release_ex.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !12
  %i.et = and i32 %i.es, 64
  %.not.i = icmp eq i32 %i.et, 0
  br i1 %.not.i, label %bb.bc, label %zend_string_release_ex.exit

bb.bc:                                            ; preds = %bb.bb
  %i.eu = load i32, ptr %i.eq, align 4, !tbaa !54 ; 2 uses
  %i.ev = icmp ne i32 %i.eu, 0
  call void @llvm.assume(i1 %i.ev)
  %i.ew = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ew, ptr %i.eq, align 4, !tbaa !54
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bd, label %zend_string_release_ex.exit

bb.bd:                                            ; preds = %bb.bc
  call void @_efree(ptr noundef nonnull %i.eq) #11
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cu, i64 120
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !32
  store ptr %i.ez, ptr %1, align 8, !tbaa !12
  store i32 265, ptr %i.ar, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cu, i64 96 ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 8
  %i.fc = or i16 %i.fb, 16
  store i16 %i.fc, ptr %i.fa, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.m, %zend_string_release_ex.exit207, %zend_string_release_ex.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @zend_argument_value_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @zend_fetch_resource_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @php_le_stream_context() local_unnamed_addr #2

declare ptr @php_stream_context_alloc() local_unnamed_addr #2

declare ptr @php_stream_escape_persistent_key(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @zend_spprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @zend_try_assign_typed_ref_long(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @zval_ptr_safe_dtor(ptr noundef) local_unnamed_addr #2

declare i32 @zend_try_assign_typed_ref_empty_string(ptr noundef) local_unnamed_addr #2

declare ptr @_php_stream_xport_create(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @php_addslashes(ptr noundef) local_unnamed_addr #2
end_hunk_0
