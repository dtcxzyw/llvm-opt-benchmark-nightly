Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/init?download=true
inline.NumInlined: 92
inline.NumDeleted: 54
begin_hunk_0_@_Z32pj_init_ctx_with_allow_init_epsgP6pj_ctxiPPci:bb.a
  br i1 %.not396, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ae = tail call noundef ptr @_Z11free_paramsP6pj_ctxP8ARG_listi(ptr noundef nonnull %.0349, ptr noundef %i.t, i32 noundef %i.ad) ; 0 uses
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.af = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef %i.t, ptr noundef nonnull @.str.8) ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.0349, i32 noundef 1, ptr noundef nonnull @.str.9)
  %i.ah = tail call noundef ptr @_Z11free_paramsP6pj_ctxP8ARG_listi(ptr noundef nonnull %.0349, ptr noundef %i.t, i32 noundef 1026) ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #12
  %i.ak = icmp ult i64 %i.aj, 6
  br i1 %i.ak, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.0349, i32 noundef 1, ptr noundef nonnull @.str.10)
  %i.al = tail call noundef ptr @_Z11free_paramsP6pj_ctxP8ARG_listi(ptr noundef nonnull %.0349, ptr noundef %i.t, i32 noundef 1027) ; 0 uses
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.an = tail call fastcc noundef ptr @_ZL18locate_constructorPKc(ptr noundef %i.am) ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.0349, i32 noundef 1, ptr noundef nonnull @.str.11)
  %i.ap = tail call noundef ptr @_Z11free_paramsP6pj_ctxP8ARG_listi(ptr noundef nonnull %.0349, ptr noundef %i.t, i32 noundef 1027) ; 0 uses
  br label %.thread

bb.ac:                                            ; preds = %bb.aa
  tail call fastcc void @_ZL36append_default_ellipsoid_to_paralistP8ARG_list(ptr noundef %i.t)
  %i.aq = tail call noundef ptr %i.an(ptr noundef null) ; 76 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.as = tail call noundef ptr @_Z11free_paramsP6pj_ctxP8ARG_listi(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, i32 noundef 4096) ; 0 uses
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  store ptr %.0349, ptr %i.aq, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.t, ptr %i.at, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 352
  store i32 0, ptr %i.au, align 8, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 356
  store i32 0, ptr %i.av, align 4, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 632 ; 2 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 624 ; 2 uses
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 636 ; 2 uses
  store i32 7695973, ptr %i.ay, align 4
  br i1 %i.q, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.az = tail call noundef i32 @_Z12pj_datum_setP6pj_ctxP8ARG_listP8PJconsts(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull %i.aq)
  %.not397 = icmp eq i32 %i.az, 0
  br i1 %.not397, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ba = tail call i32 @proj_errno(ptr noundef nonnull %i.aq)
  %i.bb = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef %i.ba)
  br label %.thread

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.bc = tail call noundef i32 @_Z12pj_ellipsoidP8PJconsts(ptr noundef nonnull %i.aq)
  %.not398 = icmp eq i32 %i.bc, 0
  br i1 %.not398, label %._crit_edge503, label %bb.ai

._crit_edge503:                                   ; preds = %bb.ah
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !92
  %.phi.trans.insert504 = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  %.pre505 = load double, ptr %.phi.trans.insert504, align 8, !tbaa !93
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 360
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !94
  %.not399 = icmp eq i32 %i.be, 0
  br i1 %.not399, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.0349, i32 noundef 1, ptr noundef nonnull @.str.13)
  %i.bf = tail call i32 @proj_errno(ptr noundef nonnull %i.aq)
  %i.bg = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef %i.bf)
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 168 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !92
  %i.bj = fcmp oeq double %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bk = tail call i32 @proj_errno_reset(ptr noundef nonnull %i.aq) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  store double f0x3F6B775A84F3E128, ptr %i.bl, align 8, !tbaa !95
  store double f0x415854A640000000, ptr %i.bh, align 8, !tbaa !92
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  store double f0x3F7B6B90F1FE94F0, ptr %i.bm, align 8, !tbaa !93
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge503, %bb.am
  %i.bn = phi double [ %.pre505, %._crit_edge503 ], [ f0x3F7B6B90F1FE94F0, %bb.am ] ; 2 uses
  %i.bo = phi double [ %.pre, %._crit_edge503 ], [ f0x415854A640000000, %bb.am ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 168 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  store double %i.bo, ptr %i.bq, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 216 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 328
  store double %i.bn, ptr %i.bs, align 8, !tbaa !97
  %i.bt = tail call noundef i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef nonnull %i.aq, double noundef %i.bo, double noundef %i.bn)
  %.not400 = icmp eq i32 %i.bt, 0
  br i1 %.not400, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bu = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  br label %.thread

bb.ap:                                            ; preds = %bb.an
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 528 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !98
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.aq, label %thread-pre-split

bb.aq:                                            ; preds = %bb.ap
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 536
  %i.bz = load double, ptr %i.by, align 8, !tbaa !99
  %i.ca = fcmp oeq double %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.ar, label %thread-pre-split

bb.ar:                                            ; preds = %bb.aq
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 544
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !99
  %i.cd = fcmp oeq double %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.as, label %thread-pre-split

bb.as:                                            ; preds = %bb.ar
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 552
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !99
  %i.cg = fcmp oeq double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.at, label %thread-pre-split

bb.at:                                            ; preds = %bb.as
  %i.ch = load double, ptr %i.bp, align 8, !tbaa !92
  %i.ci = fcmp oeq double %i.ch, f0x415854A640000000
  br i1 %i.ci, label %bb.au, label %thread-pre-split

bb.au:                                            ; preds = %bb.at
  %i.cj = load double, ptr %i.br, align 8, !tbaa !93 ; 2 uses
  %i.ck = fadd double %i.cj, f0xBF7B6B90F1FC1881
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fcmp olt double %i.cl, 5.000000e-11
  br i1 %i.cm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 4, ptr %i.bv, align 8, !tbaa !98
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.av
  %.pr = load double, ptr %i.br, align 8, !tbaa !93
  br label %bb.aw

bb.aw:                                            ; preds = %thread-pre-split, %bb.au
  %i.cn = phi double [ %.pr, %thread-pre-split ], [ %i.cj, %bb.au ]
  %i.co = fcmp une double %i.cn, 0.000000e+00
  br i1 %i.co, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cp = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.14)
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ct = phi i32 [ 0, %bb.aw ], [ %i.cs, %bb.ax ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 348
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !100
  %i.cv = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.15)
  %.sroa.052.0.extract.trunc = trunc i64 %i.cv to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 344
  %i.cx = getelementptr inbounds nuw i8, ptr %.0349, i64 76
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !101, !range !38, !noundef !39
  %i.cz = trunc nuw i8 %i.cy to i1
  %spec.store.select = select i1 %i.cz, i32 1, i32 %.sroa.052.0.extract.trunc
  store i32 %spec.store.select, ptr %i.cw, align 8, !tbaa !102
  %i.da = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.16)
  %.sroa.050.0.extract.trunc = trunc i64 %i.da to i32 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.aq, i64 592
  store i32 %.sroa.050.0.extract.trunc, ptr %i.db, align 8, !tbaa !103
  %.not401 = icmp eq i32 %.sroa.050.0.extract.trunc, 0
  br i1 %.not401, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dc = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.17) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.dd = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.18)
  %.sroa.047.0.extract.trunc = trunc i64 %i.dd to i32 ; 2 uses
  store i32 %.sroa.047.0.extract.trunc, ptr %i.aw, align 8, !tbaa !90
  %.not402 = icmp eq i32 %.sroa.047.0.extract.trunc, 0
  br i1 %.not402, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.de = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.19) ; 2 uses
  %i.df = bitcast i64 %i.de to double
  store i64 %i.de, ptr %i.ax, align 8, !tbaa !91
  %i.dg = tail call double @llvm.fabs.f64(double %i.df)
  %i.dh = fcmp olt double %i.dg, f0x404F6A7A2955385E
  br i1 %i.dh, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.20)
  %i.di = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  br label %.thread

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.dj = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.21)
  %.not403 = icmp eq i64 %i.dj, 0
  br i1 %.not403, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dk = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.21)
  %i.dl = inttoptr i64 %i.dk to ptr               ; 5 uses
  %i.dm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dl) #12
  %.not404 = icmp eq i64 %i.dm, 3
  br i1 %.not404, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.23)
  %i.dn = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  br label %.thread

bb.bg:                                            ; preds = %bb.be
  %i.do = load i8, ptr %i.dl, align 1, !tbaa !8
  %i.dp = sext i8 %i.do to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.22, i32 %i.dp, i64 7)
  %i.dq = icmp eq ptr %memchr, null
  br i1 %i.dq, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = sext i8 %i.ds to i32
  %memchr405 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.22, i32 %i.dt, i64 7)
  %i.du = icmp eq ptr %memchr405, null
  br i1 %i.du, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8
  %i.dx = sext i8 %i.dw to i32
  %memchr406 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.22, i32 %i.dx, i64 7)
  %i.dy = icmp eq ptr %memchr406, null
  br i1 %i.dy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.23)
  %i.dz = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  br label %.thread

bb.bk:                                            ; preds = %bb.bi
  %i.ea = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) %i.dl) #13 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bd
  %i.eb = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.24)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aq, i64 440
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !104
  %i.ed = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.25) ; 2 uses
  %i.ee = bitcast i64 %i.ed to double
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 448
  store i64 %i.ed, ptr %i.ef, align 8, !tbaa !105
  %i.eg = tail call double @llvm.fabs.f64(double %i.ee)
  %i.eh = fcmp ogt double %i.eg, f0x3FF921FB54442D18
  br i1 %i.eh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.26)
  %i.ei = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  br label %.thread

bb.bn:                                            ; preds = %bb.bl
  %i.ej = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.27)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aq, i64 456
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !106
  %i.el = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.28)
  %i.em = getelementptr inbounds nuw i8, ptr %i.aq, i64 464
  store i64 %i.el, ptr %i.em, align 8, !tbaa !107
  %i.en = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.29)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aq, i64 472
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !108
  %i.ep = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.30)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aq, i64 480
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !109
  %i.er = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.31)
  %i.es = and i64 %i.er, 4294967295
  %.not407 = icmp eq i64 %i.es, 0
  br i1 %.not407, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.et = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.33)
  %i.eu = and i64 %i.et, 4294967295
  %.not408 = icmp eq i64 %i.eu, 0
  br i1 %.not408, label %.thread528, label %bb.bp

.thread528:                                       ; preds = %bb.bo
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aq, i64 488
  store double 1.000000e+00, ptr %i.ev, align 8, !tbaa !110
  br label %bb.br

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.str.34.sink = phi ptr [ @.str.32, %bb.bn ], [ @.str.34, %bb.bo ]
  %i.ew = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull %.str.34.sink) ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 488
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !110
  %i.ey = bitcast i64 %i.ew to double
  %i.ez = fcmp ugt double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.35)
  %i.fa = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  br label %.thread

bb.br:                                            ; preds = %.thread528, %bb.bp
  %i.fb = tail call noundef ptr @_Z20pj_list_linear_unitsv() ; 6 uses
  %i.fc = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.36) ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr
  %.not409 = icmp eq i64 %i.fc, 0
  br i1 %.not409, label %.thread432, label %.preheader461

.preheader461:                                    ; preds = %bb.br
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !112 ; 2 uses
  %.not410472 = icmp eq ptr %i.fe, null
  br i1 %.not410472, label %.critedge428, label %.lr.ph474

bb.bs:                                            ; preds = %.lr.ph474
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %indvars.iv.next495
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !112 ; 2 uses
  %.not410 = icmp eq ptr %i.fg, null
  br i1 %.not410, label %.critedge428, label %.lr.ph474, !llvm.loop !60

.lr.ph474:                                        ; preds = %.preheader461, %bb.bs
  %indvars.iv494 = phi i64 [ %indvars.iv.next495, %bb.bs ], [ 0, %.preheader461 ] ; 2 uses
  %i.fh = phi ptr [ %i.fg, %bb.bs ], [ %i.fe, %.preheader461 ]
  %i.fi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fd, ptr noundef nonnull dereferenceable(1) %i.fh) #12
  %.not411 = icmp eq i32 %i.fi, 0
  br i1 %.not411, label %bb.bt, label %bb.bs

.critedge428:                                     ; preds = %bb.bs, %.preheader461
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.37)
  %i.fj = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  br label %.thread

bb.bt:                                            ; preds = %.lr.ph474
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %indvars.iv494
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !113 ; 2 uses
  %.not412 = icmp eq ptr %i.fm, null
  br i1 %.not412, label %.thread432, label %.critedge10

.thread432:                                       ; preds = %bb.br, %bb.bt
  %i.fn = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.38) ; 2 uses
  %i.fo = inttoptr i64 %i.fn to ptr
  %.not413 = icmp eq i64 %i.fn, 0
  br i1 %.not413, label %bb.bx, label %.critedge10

.critedge10:                                      ; preds = %bb.bt, %.thread432
  %.1351 = phi ptr [ %i.fo, %.thread432 ], [ %i.fm, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %.1351, ptr %i.a, align 8, !tbaa !41
  %i.fp = call noundef double @_Z9pj_strtodPKcPPc(ptr noundef %.1351, ptr noundef nonnull %i.a) ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aq, i64 496 ; 3 uses
  store double %i.fp, ptr %i.fq, align 8, !tbaa !114
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !8
  %i.ft = icmp eq i8 %i.fs, 47
  br i1 %i.ft, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.critedge10
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.fv = call noundef double @_Z9pj_strtodPKcPPc(ptr noundef nonnull %i.fu, ptr noundef null) ; 2 uses
  %i.fw = fcmp une double %i.fv, 0.000000e+00
  br i1 %i.fw, label %.thread435, label %.thread438

.thread435:                                       ; preds = %bb.bu
  %i.fx = load double, ptr %i.fq, align 8, !tbaa !114
  %i.fy = fdiv double %i.fx, %i.fv                ; 2 uses
  store double %i.fy, ptr %i.fq, align 8, !tbaa !114
  br label %bb.bv

bb.bv:                                            ; preds = %.thread435, %.critedge10
  %i.fz = phi double [ %i.fy, %.thread435 ], [ %i.fp, %.critedge10 ] ; 2 uses
  %i.ga = fcmp ugt double %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.bw, label %.thread438

.thread438:                                       ; preds = %bb.bv, %bb.bu
  %.str.40.sink = phi ptr [ @.str.39, %bb.bu ], [ @.str.40, %bb.bv ]
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull %.str.40.sink)
  %i.gb = call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread

bb.bw:                                            ; preds = %bb.bv
  %i.gc = fdiv double 1.000000e+00, %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %i.aq, i64 504
  store double %i.gc, ptr %i.gd, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.by

bb.bx:                                            ; preds = %.thread432
  %i.ge = getelementptr inbounds nuw i8, ptr %i.aq, i64 496
  store <2 x double> splat (double 1.000000e+00), ptr %i.ge, align 8, !tbaa !99
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.gf = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.41) ; 2 uses
  %i.gg = inttoptr i64 %i.gf to ptr
  %.not414 = icmp eq i64 %i.gf, 0
  br i1 %.not414, label %.thread441, label %.preheader

.preheader:                                       ; preds = %bb.by
  %i.gh = load ptr, ptr %i.fb, align 8, !tbaa !112 ; 2 uses
  %.not415475 = icmp eq ptr %i.gh, null
  br i1 %.not415475, label %.critedge429, label %.lr.ph477

bb.bz:                                            ; preds = %.lr.ph477
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %indvars.iv.next498
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !112 ; 2 uses
  %.not415 = icmp eq ptr %i.gj, null
  br i1 %.not415, label %.critedge429, label %.lr.ph477, !llvm.loop !61

.lr.ph477:                                        ; preds = %.preheader, %bb.bz
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %bb.bz ], [ 0, %.preheader ] ; 2 uses
  %i.gk = phi ptr [ %i.gj, %bb.bz ], [ %i.gh, %.preheader ]
  %i.gl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gg, ptr noundef nonnull dereferenceable(1) %i.gk) #12
  %.not416 = icmp eq i32 %i.gl, 0
  br i1 %.not416, label %bb.ca, label %bb.bz

.critedge429:                                     ; preds = %bb.bz, %.preheader
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.42)
  %i.gm = call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  br label %.thread

bb.ca:                                            ; preds = %.lr.ph477
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %indvars.iv497
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !113 ; 2 uses
  %.not417 = icmp eq ptr %i.gp, null
  br i1 %.not417, label %.thread441, label %.critedge14

.thread441:                                       ; preds = %bb.by, %bb.ca
  %i.gq = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.43) ; 2 uses
  %i.gr = inttoptr i64 %i.gq to ptr
  %.not418 = icmp eq i64 %i.gq, 0
  br i1 %.not418, label %bb.ce, label %.critedge14

.critedge14:                                      ; preds = %bb.ca, %.thread441
  %.3353 = phi ptr [ %i.gr, %.thread441 ], [ %i.gp, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr %.3353, ptr %i.b, align 8, !tbaa !41
  %i.gs = call noundef double @_Z9pj_strtodPKcPPc(ptr noundef %.3353, ptr noundef nonnull %i.b) ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.aq, i64 512 ; 3 uses
  store double %i.gs, ptr %i.gt, align 8, !tbaa !116
  %i.gu = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !8
  %i.gw = icmp eq i8 %i.gv, 47
  br i1 %i.gw, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.critedge14
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gy = call noundef double @_Z9pj_strtodPKcPPc(ptr noundef nonnull %i.gx, ptr noundef null) ; 2 uses
  %i.gz = fcmp une double %i.gy, 0.000000e+00
  br i1 %i.gz, label %.thread444, label %.thread447

.thread444:                                       ; preds = %bb.cb
  %i.ha = load double, ptr %i.gt, align 8, !tbaa !116
  %i.hb = fdiv double %i.ha, %i.gy                ; 2 uses
  store double %i.hb, ptr %i.gt, align 8, !tbaa !116
  br label %bb.cc

bb.cc:                                            ; preds = %.thread444, %.critedge14
  %i.hc = phi double [ %i.hb, %.thread444 ], [ %i.gs, %.critedge14 ] ; 2 uses
  %i.hd = fcmp ugt double %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.cd, label %.thread447

.thread447:                                       ; preds = %bb.cc, %bb.cb
  %.str.45.sink = phi ptr [ @.str.44, %bb.cb ], [ @.str.45, %bb.cc ]
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull %.str.45.sink)
  %i.he = call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.thread

bb.cd:                                            ; preds = %bb.cc
  %i.hf = fdiv double 1.000000e+00, %i.hc
  %i.hg = getelementptr inbounds nuw i8, ptr %i.aq, i64 520
  store double %i.hf, ptr %i.hg, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.cf

bb.ce:                                            ; preds = %.thread441
  %i.hh = getelementptr inbounds nuw i8, ptr %i.aq, i64 496
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  %i.hj = load <2 x double>, ptr %i.hh, align 8, !tbaa !99
  store <2 x double> %i.hj, ptr %i.hi, align 8, !tbaa !99
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.hk = call ptr @proj_list_prime_meridians()   ; 3 uses
  %i.hl = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.46) ; 2 uses
  %i.hm = inttoptr i64 %i.hl to ptr               ; 4 uses
  %.not419 = icmp eq i64 %i.hl, 0
  br i1 %.not419, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !41
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !119 ; 2 uses
  %.not420478 = icmp eq ptr %i.hn, null
  br i1 %.not420478, label %.thread450, label %.lr.ph481

bb.ch:                                            ; preds = %.lr.ph481
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv.next501
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !119 ; 2 uses
  %.not420 = icmp eq ptr %i.hp, null
  br i1 %.not420, label %.thread450, label %.lr.ph481, !llvm.loop !62

.lr.ph481:                                        ; preds = %bb.cg, %bb.ch
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %bb.ch ], [ 0, %bb.cg ] ; 2 uses
  %i.hq = phi ptr [ %i.hp, %bb.ch ], [ %i.hn, %bb.cg ]
  %i.hr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hm, ptr noundef nonnull dereferenceable(1) %i.hq) #12
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.ci, label %bb.ch

bb.ci:                                            ; preds = %.lr.ph481
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv500
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !120 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %.thread450, label %select.unfold

.thread450:                                       ; preds = %bb.ch, %bb.cg, %bb.ci
  %i.hx = call noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef nonnull %.0349, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.c)
  %i.hy = fcmp une double %i.hx, 0.000000e+00
  br i1 %i.hy, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.thread450
  %i.hz = load i8, ptr %i.hm, align 1, !tbaa !8
  %i.ia = icmp eq i8 %i.hz, 48
  br i1 %i.ia, label %bb.ck, label %.thread458

bb.ck:                                            ; preds = %bb.cj, %.thread450
  %i.ib = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !8
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %select.unfold, label %.thread458

.thread458:                                       ; preds = %bb.cj, %bb.ck
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.47)
  %i.ie = call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 1027)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread

select.unfold:                                    ; preds = %bb.ck, %bb.ci
  %.1 = phi ptr [ %i.hv, %bb.ci ], [ %i.hm, %bb.ck ]
  %i.if = call noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef nonnull %.0349, ptr noundef nonnull %.1, ptr noundef null)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aq, i64 616
  store double %i.if, ptr %i.ig, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cf
  %i.ih = getelementptr inbounds nuw i8, ptr %i.aq, i64 616
  store double 0.000000e+00, ptr %i.ih, align 8, !tbaa !121
  br label %bb.cm

bb.cm:                                            ; preds = %select.unfold, %bb.cl
  %i.ii = call noalias dereferenceable_or_null(408) ptr @calloc(i64 noundef 1, i64 noundef 408) #14 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !122
  %i.ik = icmp eq ptr %i.ii, null
  br i1 %i.ik, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.il = call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %i.aq, i32 noundef 4096)
  br label %.thread

bb.co:                                            ; preds = %bb.cm
  %i.im = load double, ptr %i.bp, align 8, !tbaa !92
  %i.in = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  %i.io = load double, ptr %i.in, align 8, !tbaa !95
  call void @geod_init(ptr noundef nonnull %i.ii, double noundef %i.im, double noundef %i.io)
  %i.ip = call i32 @proj_errno_reset(ptr noundef nonnull %i.aq)
  %i.iq = call noundef ptr %i.an(ptr noundef nonnull %i.aq) ; 4 uses
  %i.ir = call i32 @proj_errno(ptr noundef %i.iq)
  %.not422 = icmp eq i32 %i.ir, 0
  br i1 %.not422, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.is = call ptr @proj_destroy(ptr noundef %i.iq) ; 0 uses
  br label %.thread

bb.cq:                                            ; preds = %bb.co
  %i.it = call i32 @proj_errno_restore(ptr noundef %i.iq, i32 noundef %i.ip) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.bj, %bb.bf, %.thread458, %.thread447, %.thread438, %bb.cq, %bb.cp, %bb.cn, %.critedge429, %.critedge428, %bb.bq, %bb.bm, %bb.bc, %bb.ao, %bb.aj, %bb.ag, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.d
  %.11 = phi ptr [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.r ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ %i.bb, %bb.ag ], [ %i.bg, %bb.aj ], [ %i.bu, %bb.ao ], [ %i.ei, %bb.bm ], [ %i.fa, %bb.bq ], [ %i.il, %bb.cn ], [ null, %bb.cp ], [ %i.iq, %bb.cq ], [ %i.ie, %.thread458 ], [ %i.he, %.thread447 ], [ %i.gm, %.critedge429 ], [ %i.gb, %.thread438 ], [ %i.fj, %.critedge428 ], [ null, %bb.p ], [ %i.di, %bb.bc ], [ null, %bb.t ], [ %i.dz, %bb.bj ], [ %i.dn, %bb.bf ]
  ret ptr %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_Z18pj_get_default_ctxv() local_unnamed_addr #2

declare void @_Z6pj_logP6pj_ctxiPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z10pj_mkparamPKc(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z11free_paramsP6pj_ctxP8ARG_listi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL18locate_constructorPKc(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @proj_list_operations()    ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %cond12 = icmp eq ptr %i.b, null
  br i1 %cond12, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %cond = icmp eq ptr %i.d, null
  br i1 %cond, label %.loopexit, label %.lr.ph, !llvm.loop !123

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.e) #12
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %.critedge
  %.08 = phi ptr [ %i.i, %.critedge ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL36append_default_ellipsoid_to_paralistP8ARG_list(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.60)
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #12
  %i.f = icmp ult i64 %i.e, 6
  br i1 %i.f, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.61, ptr noundef nonnull dereferenceable(1) %i.g) #12
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.62)
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.63)
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.64)
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.m = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.65)
  %.not24 = icmp eq ptr %i.m, null
  br i1 %.not24, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.66)
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.o = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.67)
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.p = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.68)
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.q = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.69)
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.l, %.preheader
  %.0 = phi ptr [ %i.r, %.preheader ], [ %0, %bb.l ] ; 2 uses
  %i.r = load ptr, ptr %.0, align 8, !tbaa !43    ; 2 uses
  %.not29 = icmp eq ptr %i.r, null
  br i1 %.not29, label %bb.m, label %.preheader, !llvm.loop !127

bb.m:                                             ; preds = %.preheader
  %i.s = tail call noundef ptr @_Z10pj_mkparamPKc(ptr noundef nonnull @.str.70)
  store ptr %i.s, ptr %.0, align 8, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

declare noundef i32 @_Z12pj_datum_setP6pj_ctxP8ARG_listP8PJconsts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @proj_errno(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z12pj_ellipsoidP8PJconsts(ptr noundef) local_unnamed_addr #2

declare i32 @proj_errno_reset(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_Z20pj_list_linear_unitsv() local_unnamed_addr #2

declare noundef double @_Z9pj_strtodPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_list_prime_meridians() local_unnamed_addr #2

declare noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @geod_init(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @proj_errno_restore(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare noundef ptr @_Z19pj_search_initcachePKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare noundef i32 @_Z12pj_find_fileP6pj_ctxPKcPcm(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

declare ptr @proj_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_as_proj_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @_Z19pj_insert_initcachePKcPK8ARG_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5osgeo4proj11FileManager18open_resource_fileEP6pj_ctxPKcPcm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5osgeo4proj4File9read_lineB5cxx11EmRbS2_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(73), i64 noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef ptr @_Z8pj_chompPc(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z9pj_shrinkPc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_Z13pj_mkparam_wsPKcPS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_list_operations() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !4, i64 16}
!14 = !{!"bool", !4, i64 0}
!15 = !{!"p1 _ZTS14projCppContext", !9, i64 0}
!16 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !19, i64 0}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"p2 omnipotent char", !21, i64 0}
!23 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!24 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !23, i64 0}
!25 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!26 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!27 = !{!"_ZTSSt18_Rb_tree_node_base", !25, i64 0, !26, i64 8, !26, i64 16, !26, i64 24}
!28 = !{!"_ZTSSt15_Rb_tree_header", !27, i64 0, !12, i64 32}
!29 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !24, i64 0, !28, i64 8}
!30 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !29, i64 0}
!31 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE", !30, i64 0}
!32 = !{!"_ZTS26projFileApiCallbackAndData", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80}
!33 = !{!"_ZTS27projNetworkCallbacksAndData", !14, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!34 = !{!"long long", !4, i64 0}
!35 = !{!"_ZTS18projGridChunkCache", !14, i64 0, !13, i64 8, !34, i64 40, !5, i64 48}
!36 = !{!"_ZTS9TMercAlgo", !4, i64 0}
!37 = !{!"_ZTS6pj_ctx", !13, i64 0, !5, i64 32, !5, i64 36, !14, i64 40, !14, i64 41, !9, i64 48, !9, i64 56, !15, i64 64, !5, i64 72, !14, i64 76, !5, i64 80, !13, i64 88, !20, i64 120, !22, i64 144, !9, i64 152, !9, i64 160, !31, i64 168, !14, i64 216, !32, i64 224, !13, i64 312, !13, i64 344, !14, i64 376, !13, i64 384, !33, i64 416, !13, i64 464, !14, i64 496, !35, i64 504, !36, i64 560, !5, i64 564, !5, i64 568}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!10, !10, i64 0}
!42 = !{!"p1 _ZTS8ARG_list", !9, i64 0}
!43 = !{!42, !42, i64 0}
!44 = distinct !{!44, !40}
!45 = distinct !{null, null, null, null}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = !{!37, !5, i64 80}
!49 = !{!37, !5, i64 72}
!50 = !{!"p1 _ZTSN5osgeo4proj4FileE", !9, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!11, !10, i64 0}
!53 = !{!13, !12, i64 8}
!54 = !{!14, !14, i64 0}
!55 = !{!13, !10, i64 0}
!56 = !{!"vtable pointer", !3, i64 0}
!57 = !{!56, !56, i64 0}
!58 = distinct !{!58, !40}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = !{!37, !5, i64 32}
!64 = !{!"p1 _ZTS6pj_ctx", !9, i64 0}
!65 = !{!"p1 _ZTS8PJconsts", !9, i64 0}
!66 = !{!"p1 _ZTS13geod_geodesic", !9, i64 0}
!67 = !{!"double", !4, i64 0}
!68 = !{!"_ZTS11pj_io_units", !4, i64 0}
!69 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !9, i64 0}
!70 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!71 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0}
!72 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0, !71, i64 8}
!73 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !72, i64 0}
!74 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !9, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !77, i64 0}
!79 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!80 = !{!"p1 _ZTS16PJCoordOperation", !9, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !83, i64 0}
!85 = !{!"_ZTS8PJconsts", !64, i64 0, !10, i64 8, !10, i64 16, !42, i64 24, !10, i64 32, !65, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !66, i64 80, !9, i64 88, !5, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !67, i64 168, !67, i64 176, !67, i64 184, !67, i64 192, !67, i64 200, !67, i64 208, !67, i64 216, !67, i64 224, !67, i64 232, !67, i64 240, !67, i64 248, !67, i64 256, !67, i64 264, !67, i64 272, !67, i64 280, !67, i64 288, !67, i64 296, !67, i64 304, !67, i64 312, !67, i64 320, !67, i64 328, !67, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !68, i64 380, !68, i64 384, !65, i64 392, !65, i64 400, !65, i64 408, !65, i64 416, !65, i64 424, !65, i64 432, !67, i64 440, !67, i64 448, !67, i64 456, !67, i64 464, !67, i64 472, !67, i64 480, !67, i64 488, !67, i64 496, !67, i64 504, !67, i64 512, !67, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !9, i64 600, !9, i64 608, !67, i64 616, !67, i64 624, !5, i64 632, !4, i64 636, !73, i64 640, !14, i64 656, !67, i64 664, !14, i64 672, !13, i64 680, !13, i64 712, !13, i64 744, !14, i64 776, !78, i64 784, !79, i64 808, !84, i64 816, !5, i64 840, !14, i64 844, !14, i64 845, !14, i64 846, !65, i64 848}
!86 = !{!85, !64, i64 0}
!87 = !{!85, !42, i64 24}
!88 = !{!85, !5, i64 352}
!89 = !{!85, !5, i64 356}
!90 = !{!85, !5, i64 632}
!91 = !{!85, !67, i64 624}
!92 = !{!85, !67, i64 168}
!93 = !{!85, !67, i64 216}
!94 = !{!85, !5, i64 360}
!95 = !{!85, !67, i64 272}
!96 = !{!85, !67, i64 336}
!97 = !{!85, !67, i64 328}
!98 = !{!85, !5, i64 528}
!99 = !{!67, !67, i64 0}
!100 = !{!85, !5, i64 348}
!101 = !{!37, !14, i64 76}
!102 = !{!85, !5, i64 344}
!103 = !{!85, !5, i64 592}
!104 = !{!85, !67, i64 440}
!105 = !{!85, !67, i64 448}
!106 = !{!85, !67, i64 456}
!107 = !{!85, !67, i64 464}
!108 = !{!85, !67, i64 472}
!109 = !{!85, !67, i64 480}
!110 = !{!85, !67, i64 488}
!111 = !{!"_ZTS8PJ_UNITS", !10, i64 0, !10, i64 8, !10, i64 16, !67, i64 24}
!112 = !{!111, !10, i64 0}
!113 = !{!111, !10, i64 8}
!114 = !{!85, !67, i64 496}
!115 = !{!85, !67, i64 504}
!116 = !{!85, !67, i64 512}
!117 = !{!85, !67, i64 520}
!118 = !{!"_ZTS18PJ_PRIME_MERIDIANS", !10, i64 0, !10, i64 8}
!119 = !{!118, !10, i64 0}
!120 = !{!118, !10, i64 8}
!121 = !{!85, !67, i64 616}
!122 = !{!85, !66, i64 80}
!123 = distinct !{!123, !40}
!124 = !{!"_ZTS7PJ_LIST", !10, i64 0, !9, i64 8, !22, i64 16}
!125 = !{!124, !10, i64 0}
!126 = !{!124, !9, i64 8}
!127 = distinct !{!127, !40}
end_hunk_0
