begin_hunk_0_@mca_coll_han_init_dynamic_rules:bb.a
  br label %bb.x

.thread:                                          ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.dh

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bn = call ptr @mca_coll_base_colltype_to_str(i32 noundef %i.bc) #9
  %i.bo = call noalias ptr @strdup(ptr noundef %i.bn) #9
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.0201 = phi i32 [ %i.bc, %bb.x ], [ %i.ay, %bb.r ] ; 8 uses
  %i.bp = call zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef %.0201) #9
  br i1 %i.bp, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.br = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.bq) #9
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.bt = load i32, ptr @fileline, align 4, !tbaa !26
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.bs, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.q, i32 noundef %.0201, i32 noundef %i.bt) #9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %i.bu = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.d) #9
  %i.bv = icmp slt i32 %i.bu, 0
  %i.bw = load i64, ptr %i.d, align 8             ; 4 uses
  %i.bx = icmp slt i64 %i.bw, 0
  %or.cond12 = select i1 %i.bv, i1 true, i1 %i.bx
  br i1 %or.cond12, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.bz = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.by) #9
  br i1 %i.bz, label %bb.ad, label %bb.dh

bb.ad:                                            ; preds = %bb.ac
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.cb = load i32, ptr @fileline, align 4, !tbaa !26
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !27
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ca, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.q, i32 noundef %i.cb, i64 noundef %i.cc) #9
  br label %bb.dh

bb.ae:                                            ; preds = %bb.ab
  %i.cd = trunc i64 %i.bw to i32
  store i32 %i.cd, ptr %i.ao, align 4, !tbaa !30
  store i32 %.0201, ptr %i.an, align 8, !tbaa !35
  %i.ce = icmp eq i64 %i.bw, 0
  br i1 %i.ce, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.cg = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.cf) #9
  br i1 %i.cg, label %bb.ag, label %bb.cu

bb.ag:                                            ; preds = %bb.af
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.ci = load i32, ptr @fileline, align 4, !tbaa !26
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !27
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ch, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.q, i32 noundef %i.ci, i64 noundef %i.cj) #9
  br label %bb.cu

bb.ah:                                            ; preds = %bb.ae
  %i.ck = mul i64 %i.bw, 24
  %i.cl = call noalias ptr @malloc(i64 noundef %i.ck) #10 ; 3 uses
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !33
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ai, label %.lr.ph354

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ao, align 4, !tbaa !30
  br label %bb.dc

.lr.ph354:                                        ; preds = %bb.ah, %.loopexit262
  %indvars.iv405 = phi i64 [ %indvars.iv.next406, %.loopexit262 ], [ 0, %bb.ah ] ; 2 uses
  %.1190353 = phi i32 [ %.6.ph, %.loopexit262 ], [ %.0189357, %bb.ah ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv405 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  store i32 0, ptr %i.co, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !39
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 3 uses
  %i.cq = trunc nuw i64 %indvars.iv.next406 to i32
  store i32 %i.cq, ptr %i.ao, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store ptr null, ptr %i.j, align 8, !tbaa !8
  %i.cr = call i32 @ompi_coll_base_file_getnext_string(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.j) #9
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph354
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.cu = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ct) #9
  br i1 %i.cu, label %bb.ak, label %.thread253

bb.ak:                                            ; preds = %bb.aj
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.cw = load i32, ptr @fileline, align 4, !tbaa !26
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.cv, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.q, i32 noundef %i.cw) #9
  br label %.thread253

bb.al:                                            ; preds = %.lr.ph354
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.cy = call i32 @mca_coll_han_topo_lvl_name_to_id(ptr noundef %i.cx) #9 ; 2 uses
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = icmp slt i32 %i.cy, 0
  br i1 %i.da, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.dc = call i64 @__isoc23_strtol(ptr noundef %i.db, ptr noundef nonnull %i.k, i32 noundef 10) #9
  %sext = shl i64 %i.dc, 32
  %i.dd = ashr exact i64 %sext, 32                ; 2 uses
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.df = load i8, ptr %i.de, align 1, !tbaa !34
  %i.dg = icmp eq i8 %i.df, 0
  %i.dh = icmp ult i64 %i.dd, 3
  %or.cond16.not = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond16.not, label %.thread240, label %bb.an

.thread240:                                       ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.dj = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.di) #9
  br i1 %i.dj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.dl = load i32, ptr @fileline, align 4, !tbaa !26
  %i.dm = load ptr, ptr %i.j, align 8, !tbaa !8
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.dk, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.q, i32 noundef %i.dl, ptr noundef %i.dm) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !8
  call void @free(ptr noundef %i.dn) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %.thread253

bb.aq:                                            ; preds = %.thread240, %bb.al
  %.0197 = phi i64 [ %i.dd, %.thread240 ], [ %i.cz, %bb.al ] ; 2 uses
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !8
  call void @free(ptr noundef %i.do) #9
  store i64 -1, ptr %i.e, align 8, !tbaa !27
  %i.dp = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.e) #9
  %i.dq = icmp slt i32 %i.dp, 0
  %i.dr = load i64, ptr %i.e, align 8             ; 4 uses
  %i.ds = icmp slt i64 %i.dr, 0
  %or.cond18 = select i1 %i.dq, i1 true, i1 %i.ds
  br i1 %or.cond18, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.du = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.dt) #9
  br i1 %i.du, label %bb.as, label %.thread253

bb.as:                                            ; preds = %bb.ar
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.dw = load i32, ptr @fileline, align 4, !tbaa !26
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !27
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.dv, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.q, i32 noundef %i.dw, i64 noundef %i.dx) #9
  br label %.thread253

bb.at:                                            ; preds = %bb.aq
  store i32 %.0201, ptr %i.cn, align 8, !tbaa !40
  %i.dy = trunc nuw nsw i64 %.0197 to i32         ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !41
  %i.ea = trunc i64 %i.dr to i32
  store i32 %i.ea, ptr %i.co, align 8, !tbaa !36
  %i.eb = icmp eq i64 %i.dr, 0
  br i1 %i.eb, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.ed = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ec) #9
  br i1 %i.ed, label %bb.av, label %.loopexit262

bb.av:                                            ; preds = %bb.au
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.ef = load i32, ptr @fileline, align 4, !tbaa !26
  %i.eg = load i64, ptr %i.e, align 8, !tbaa !27
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ee, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.q, i32 noundef %i.ef, i64 noundef %i.eg) #9
  br label %.loopexit262

bb.aw:                                            ; preds = %bb.at
  %i.eh = mul i64 %i.dr, 24
  %i.ei = call noalias ptr @malloc(i64 noundef %i.eh) #10 ; 3 uses
  store ptr %i.ei, ptr %i.cp, align 8, !tbaa !39
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %0, label %.lr.ph350

.lr.ph350:                                        ; preds = %bb.aw
  %.not233 = icmp eq i64 %.0197, 0
  br label %bb.ax

0:                                                ; preds = %bb.aw
  store i32 0, ptr %i.co, align 8, !tbaa !36
  br label %bb.cs

bb.ax:                                            ; preds = %.lr.ph350, %.loopexit
  %indvars.iv402 = phi i64 [ 0, %.lr.ph350 ], [ %indvars.iv.next403, %.loopexit ] ; 3 uses
  %.2191349 = phi i32 [ %.1190353, %.lr.ph350 ], [ %.5194, %.loopexit ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %indvars.iv402 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 4 uses
  store i32 0, ptr %i.el, align 4, !tbaa !42
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  store ptr null, ptr %i.em, align 8, !tbaa !45
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 3 uses
  %i.en = trunc nuw i64 %indvars.iv.next403 to i32
  store i32 %i.en, ptr %i.co, align 8, !tbaa !36
  %i.eo = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.f) #9
  %i.ep = icmp slt i32 %i.eo, 0
  %i.eq = load i64, ptr %i.f, align 8             ; 2 uses
  %i.er = icmp slt i64 %i.eq, 1
  %or.cond20 = select i1 %i.ep, i1 true, i1 %i.er
  br i1 %or.cond20, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.es = icmp eq i64 %indvars.iv402, 0
  %i.et = icmp samesign ugt i64 %i.eq, 1
  %or.cond22 = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond22, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.ev = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.eu) #9
  br i1 %i.ev, label %bb.ba, label %.thread253

bb.ba:                                            ; preds = %bb.az
  %i.ew = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.ex = load i64, ptr %i.f, align 8, !tbaa !27
  %i.ey = load i32, ptr @fileline, align 4, !tbaa !26
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ew, ptr noundef nonnull @.str.13, i64 noundef %i.ex, i32 noundef %i.ey, i32 noundef 1, i32 noundef 1) #9
  br label %.thread253

bb.bb:                                            ; preds = %bb.ay
  %i.ez = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.g) #9
  %i.fa = icmp slt i32 %i.ez, 0
  %i.fb = load i64, ptr %i.g, align 8             ; 4 uses
  %i.fc = icmp slt i64 %i.fb, 0
  %or.cond24 = select i1 %i.fa, i1 true, i1 %i.fc
  br i1 %or.cond24, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.fe = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.fd) #9
  br i1 %i.fe, label %bb.bd, label %.thread253

bb.bd:                                            ; preds = %bb.bc
  %i.ff = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.fg = load i32, ptr @fileline, align 4, !tbaa !26
  %i.fh = load i64, ptr %i.g, align 8, !tbaa !27
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ff, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.q, i32 noundef %i.fg, i64 noundef %i.fh) #9
  br label %.thread253

bb.be:                                            ; preds = %bb.bb
  store i32 %.0201, ptr %i.ek, align 8, !tbaa !46
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.dy, ptr %i.fi, align 4, !tbaa !47
  %i.fj = load i64, ptr %i.f, align 8, !tbaa !27
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %i.fk, ptr %i.fl, align 8, !tbaa !48
  %i.fm = trunc i64 %i.fb to i32
  store i32 %i.fm, ptr %i.el, align 4, !tbaa !42
  %i.fn = icmp eq i64 %i.fb, 0
  br i1 %i.fn, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.fp = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.fo) #9
  br i1 %i.fp, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.fr = load i32, ptr @fileline, align 4, !tbaa !26
  %i.fs = load i64, ptr %i.g, align 8, !tbaa !27
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.fq, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.q, i32 noundef %i.fr, i64 noundef %i.fs) #9
  br label %.loopexit

bb.bh:                                            ; preds = %bb.be
  %i.ft = shl i64 %i.fb, 5
  %i.fu = call noalias ptr @malloc(i64 noundef %i.ft) #10 ; 3 uses
  store ptr %i.fu, ptr %i.em, align 8, !tbaa !45
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %1, label %.lr.ph

1:                                                ; preds = %bb.bh
  store i32 0, ptr %i.el, align 4, !tbaa !42
  br label %bb.cs

.lr.ph:                                           ; preds = %bb.bh, %bb.cr
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cr ], [ 0, %bb.bh ] ; 3 uses
  %.3192347 = phi i32 [ %i.im, %bb.cr ], [ %.2191349, %bb.bh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store ptr null, ptr %i.l, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fw = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.fw, ptr %i.el, align 4, !tbaa !42
  %i.fx = call i32 @ompi_coll_base_file_getnext_size_t(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.h) #9
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph
  %i.fz = icmp eq i64 %indvars.iv, 0
  %i.ga = load i64, ptr %i.h, align 8
  %i.gb = icmp ugt i64 %i.ga, 1
  %or.cond26 = select i1 %i.fz, i1 %i.gb, i1 false
  br i1 %or.cond26, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.lr.ph, %bb.bi
  %i.gc = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.gd = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.gc) #9
  br i1 %i.gd, label %bb.bk, label %.thread248

bb.bk:                                            ; preds = %bb.bj
  %i.ge = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.gf = load i32, ptr @fileline, align 4, !tbaa !26
  %i.gg = load i64, ptr %i.h, align 8, !tbaa !27
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ge, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.q, i32 noundef %i.gf, i64 noundef %i.gg) #9
  br label %.thread248

bb.bl:                                            ; preds = %bb.bi
  %i.gh = call i32 @ompi_coll_base_file_getnext_string(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.l) #9
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.gj = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.gk = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.gj) #9
  br i1 %i.gk, label %bb.bn, label %.thread248

bb.bn:                                            ; preds = %bb.bm
  %i.gl = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.gm = load i32, ptr @fileline, align 4, !tbaa !26
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.gl, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.q, i32 noundef %i.gm) #9
  br label %.thread248

bb.bo:                                            ; preds = %bb.bl
  %i.gn = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.go = call i32 @mca_coll_han_component_name_to_id(ptr noundef %i.gn) #9 ; 3 uses
  %i.gp = icmp ugt i32 %i.go, 6
  br i1 %i.gp, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.gq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.gr = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.gq) #9
  br i1 %i.gr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gs = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.gt = load i32, ptr @fileline, align 4, !tbaa !26
  %i.gu = load ptr, ptr %i.l, align 8, !tbaa !8
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.gs, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.q, i32 noundef %i.gt, ptr noundef %i.gu, i32 noundef 0, i32 noundef 7) #9
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gv = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @free(ptr noundef %i.gv) #9
  br label %.thread248

bb.bs:                                            ; preds = %bb.bo
  %i.gw = icmp eq i32 %i.go, 6
  br i1 %i.gw, label %bb.bt, label %bb.cg

bb.bt:                                            ; preds = %bb.bs
  %i.gx = call i32 @ompi_coll_base_file_peek_next_char_is(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, i32 noundef 64) #9
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.bu, label %bb.cg

bb.bu:                                            ; preds = %bb.bt
  %i.gz = call i32 @ompi_coll_base_file_getnext_string(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.c) #9
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.hb = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.hc = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.hb) #9
  br i1 %i.hc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.he = load i32, ptr @fileline, align 4, !tbaa !26
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.hd, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.q, i32 noundef %i.he) #9
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.hf = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @free(ptr noundef %i.hf) #9
  br label %.thread248

bb.by:                                            ; preds = %bb.bu
  %i.hg = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.hh = call i32 @mca_coll_han_algorithm_name_to_id(i32 noundef %.0201, ptr noundef %i.hg) #9 ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.hk = call i64 @__isoc23_strtol(ptr noundef %i.hj, ptr noundef nonnull %i.m, i32 noundef 10) #9
  %i.hl = trunc i64 %i.hk to i32                  ; 2 uses
  %i.hm = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !34
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !8
  call void @free(ptr noundef %i.ho) #9
  store ptr null, ptr %i.c, align 8, !tbaa !8
  %.not231 = icmp eq i8 %i.hn, 0
  br i1 %.not231, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hp = call i32 @mca_coll_han_algorithm_id_is_valid(i32 noundef %.0201, i32 noundef %i.hl) #9
  %.not232 = icmp eq i32 %i.hp, 0
  br i1 %.not232, label %bb.cb, label %.thread242

.thread242:                                       ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.hq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.hr = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.hq) #9
  br i1 %i.hr, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.hs = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.ht = load i32, ptr @fileline, align 4, !tbaa !26
  %i.hu = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.hv = load ptr, ptr %i.b, align 8, !tbaa !8
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.hs, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.q, i32 noundef %i.ht, ptr noundef %i.hu, ptr noundef %i.hv) #9
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.hw = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @free(ptr noundef %i.hw) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  br label %.thread248

bb.ce:                                            ; preds = %.thread242, %bb.by
  %.0199 = phi i32 [ %i.hl, %.thread242 ], [ %i.hh, %bb.by ] ; 3 uses
  %i.hx = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.hy = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.hx) #9
  br i1 %i.hy, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.ia = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ib = load i64, ptr %i.h, align 8, !tbaa !27
  %i.ic = load ptr, ptr %i.c, align 8, !tbaa !8
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.hz, ptr noundef nonnull @.str.21, ptr noundef %i.ia, i64 noundef %i.ib, ptr noundef %i.ic, i32 noundef %.0199) #9
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf, %bb.bt, %bb.bs
  %.1200 = phi i32 [ %.0199, %bb.cf ], [ %.0199, %bb.ce ], [ 0, %bb.bt ], [ 0, %bb.bs ]
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.fu, i64 %indvars.iv ; 6 uses
  store i32 %.0201, ptr %i.id, align 8, !tbaa !49
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i32 %i.dy, ptr %i.ie, align 4, !tbaa !51
  %i.if = load i64, ptr %i.f, align 8, !tbaa !27
  %i.ig = trunc i64 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !52
  %i.ii = load i64, ptr %i.h, align 8, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !53
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  store i32 %i.go, ptr %i.ik, align 8, !tbaa !54
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 28
  store i32 %.1200, ptr %i.il, align 4, !tbaa !55
  %i.im = add nsw i32 %.3192347, 1                ; 2 uses
  %i.in = call i32 @ompi_coll_base_file_peek_next_char_is(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, i32 noundef 91) #9
  %i.io = icmp eq i32 %i.in, 1
  br i1 %i.io, label %bb.ch, label %bb.cr

bb.ch:                                            ; preds = %bb.cg
  %i.ip = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.iq = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ip) #9
  br i1 %i.iq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ir, ptr noundef nonnull @.str.22) #9
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  br i1 %.not233, label %.preheader, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.is = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.it = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.is) #9
  br i1 %i.it, label %bb.cl, label %.preheader

bb.cl:                                            ; preds = %bb.ck
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.iv = load i32, ptr @fileline, align 4, !tbaa !26
  %i.iw = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ix = load ptr, ptr %i.l, align 8, !tbaa !8
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.iu, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.q, i32 noundef %i.iv, ptr noundef %i.iw, ptr noundef %i.ix) #9
  br label %.preheader

.preheader:                                       ; preds = %bb.ck, %bb.cl, %bb.cj
  br label %bb.cm

bb.cm:                                            ; preds = %.preheader, %bb.cn
  %i.iy = call i32 @ompi_coll_base_file_peek_next_char_is(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, i32 noundef 93) #9
  %.not235 = icmp eq i32 %i.iy, 0
  br i1 %.not235, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.iz = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.n) #9
  %.not234 = icmp eq i32 %i.iz, 0
  br i1 %.not234, label %bb.cm, label %bb.co, !llvm.loop !56

bb.co:                                            ; preds = %bb.cn
  %i.ja = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.jb = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ja) #9
  br i1 %i.jb, label %bb.cp, label %.thread245

bb.cp:                                            ; preds = %bb.co
  %i.jc = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.jd = load i32, ptr @fileline, align 4, !tbaa !26
  %i.je = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.jf = load ptr, ptr %i.l, align 8, !tbaa !8
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.jc, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.q, i32 noundef %i.jd, ptr noundef %i.je, ptr noundef %i.jf) #9
  br label %.thread245

.thread245:                                       ; preds = %bb.co, %bb.cp
  %i.jg = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @free(ptr noundef %i.jg) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  br label %.thread248

bb.cq:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  br label %bb.cr

.thread248:                                       ; preds = %bb.cd, %bb.bj, %bb.br, %bb.bx, %.thread245, %bb.bk, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  br label %.thread253

bb.cr:                                            ; preds = %bb.cg, %bb.cq
  %i.jh = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @free(ptr noundef %i.jh) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  %i.ji = load i64, ptr %i.g, align 8, !tbaa !27
  %i.jj = icmp sgt i64 %i.ji, %indvars.iv.next
  br i1 %i.jj, label %.lr.ph, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %bb.cr, %bb.bf, %bb.bg
  %.5194 = phi i32 [ %.2191349, %bb.bg ], [ %.2191349, %bb.bf ], [ %i.im, %bb.cr ] ; 2 uses
  %i.jk = load i64, ptr %i.e, align 8, !tbaa !27
  %i.jl = icmp sgt i64 %i.jk, %indvars.iv.next403
  br i1 %i.jl, label %bb.ax, label %.loopexit262, !llvm.loop !59

.thread253:                                       ; preds = %bb.ap, %bb.aj, %bb.ar, %bb.az, %.thread248, %bb.bc, %bb.ak, %bb.as, %bb.ba, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.dh

bb.cs:                                            ; preds = %1, %0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.dc

.loopexit262:                                     ; preds = %.loopexit, %bb.av, %bb.au
  %.6.ph = phi i32 [ %.1190353, %bb.au ], [ %.1190353, %bb.av ], [ %.5194, %.loopexit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  %i.jm = load i64, ptr %i.d, align 8, !tbaa !27
  %i.jn = icmp sgt i64 %i.jm, %indvars.iv.next406
  br i1 %i.jn, label %.lr.ph354, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.loopexit262
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not228 = icmp eq ptr %i.jo, null
  br i1 %.not228, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.jo) #9
  store ptr null, ptr %i.b, align 8, !tbaa !8
  br label %bb.cu

bb.cu:                                            ; preds = %._crit_edge, %bb.ct, %bb.af, %bb.ag
  %.7 = phi i32 [ %.0189357, %bb.ag ], [ %.0189357, %bb.af ], [ %.6.ph, %bb.ct ], [ %.6.ph, %._crit_edge ] ; 2 uses
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !27
  %i.jq = icmp sgt i64 %i.jp, %indvars.iv.next409
  br i1 %i.jq, label %.lr.ph358, label %._crit_edge359, !llvm.loop !61

._crit_edge359:                                   ; preds = %bb.cu
  %i.jr = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.a) #9
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %._crit_edge359
  %i.jt = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.ju = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.jt) #9
  br i1 %i.ju, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.jv = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.jw = load i32, ptr @fileline, align 4, !tbaa !26
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.jv, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.q, i32 noundef %i.jw) #9
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge359, %bb.cw, %bb.cv
  %i.jx = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.jy = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.jx) #9
  br i1 %i.jy, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jz = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.jz, ptr noundef nonnull @.str.26, i32 noundef %.7, ptr noundef nonnull %i.q) #9
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ka = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 649), align 1, !tbaa !62, !range !21, !noundef !22
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @mca_coll_han_dump_dynamic_rules()
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.kc = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  call fastcc void @check_dynamic_rules()
  %i.kd = load ptr, ptr %i.c, align 8, !tbaa !8
  call void @free(ptr noundef %i.kd) #9
  br label %bb.dm

bb.dc:                                            ; preds = %bb.cs, %bb.o, %bb.ai
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.kf = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.ke) #9
  br i1 %i.kf, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.kg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.kg, ptr noundef nonnull @.str.27) #9
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.kh = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not236 = icmp eq ptr %i.kh, null
  br i1 %.not236, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @free(ptr noundef nonnull %i.kh) #9
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.ki = load ptr, ptr %i.c, align 8, !tbaa !8
  call void @free(ptr noundef %i.ki) #9
  %i.kj = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  call void @mca_coll_han_free_dynamic_rules()
  br label %bb.dm

bb.dh:                                            ; preds = %.thread253, %.thread, %bb.m, %bb.q, %bb.p, %bb.ad, %bb.ac
  %i.kk = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  %i.kl = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.kk) #9
  br i1 %i.kl, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.km = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !24
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.km, ptr noundef nonnull @.str.28) #9
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.kn = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not237 = icmp eq ptr %i.kn, null
  br i1 %.not237, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @free(ptr noundef nonnull %i.kn) #9
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.ko = load ptr, ptr %i.c, align 8, !tbaa !8
  call void @free(ptr noundef %i.ko) #9
  %i.kp = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  call void @mca_coll_han_free_dynamic_rules()
  br label %bb.dm

bb.dm:                                            ; preds = %bb.a, %bb.dl, %bb.dg, %bb.db, %bb.i, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.dl ], [ -1, %bb.dg ], [ 0, %bb.a ], [ 0, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @opal_output_check_verbosity(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i32 @ompi_coll_base_file_getnext_long(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @ompi_coll_base_file_getnext_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_coll_base_name_to_colltype(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare ptr @mca_coll_base_colltype_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef) local_unnamed_addr #2

declare i32 @mca_coll_han_topo_lvl_name_to_id(ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_base_file_getnext_size_t(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_coll_han_component_name_to_id(ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_base_file_peek_next_char_is(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mca_coll_han_algorithm_name_to_id(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_coll_han_algorithm_id_is_valid(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @mca_coll_han_dump_dynamic_rules() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 664), align 8, !tbaa !25 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 672), align 8, !tbaa !29
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %bb.a
  %wide.trip.count80 = zext nneg i32 %i.a to i64
  br label %.lr.ph64

._crit_edge65:                                    ; preds = %._crit_edge59, %bb.a
  ret void

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge59
  %indvars.iv77 = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next78, %._crit_edge59 ] ; 2 uses
  %.04562 = phi i32 [ 0, %.lr.ph64.preheader ], [ %.1.lcssa, %._crit_edge59 ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv77 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35   ; 2 uses
end_hunk_0
