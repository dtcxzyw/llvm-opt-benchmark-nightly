begin_hunk_0_@prte_rmaps_rf_map:bb.a
  %i.ce = and i32 %i.cd, 255
  %i.cf = icmp ne i32 22, %i.ce
  br i1 %i.cf, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.ch = icmp sge i32 %i.cg, 0
  br i1 %i.ch, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.cj = icmp slt i32 %i.ci, 64
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.cl = sext i32 %i.ck to i64
  %17 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.cl
  %18 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %17, i32 0, i32 2
  %i.cm = load i32, ptr %18, align 4
  %i.cn = icmp sge i32 %i.cm, 5
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.cp = load ptr, ptr %i.b, align 8
  %19 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.cp, i32 0, i32 4
  %i.cq = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 0
  %i.cr = call ptr @prte_util_print_jobids(ptr noundef %i.cq)
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.co, ptr noundef @.str.2, ptr noundef %i.cr)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  store i32 -46, ptr %i.a, align 4
  br label %bb.ka

bb.t:                                             ; preds = %bb.n
  %i.cs = load ptr, ptr %i.c, align 8
  %20 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.cs, i32 0, i32 13
  %i.ct = load i8, ptr %20, align 1
  %i.cu = icmp ne i8 %i.ct, 0
  br i1 %i.cu, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.cw = icmp sge i32 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.cy = icmp slt i32 %i.cx, 64
  br i1 %i.cy, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.da = sext i32 %i.cz to i64
  %21 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.da
  %22 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %21, i32 0, i32 2
  %i.db = load i32, ptr %22, align 4
  %i.dc = icmp sge i32 %i.db, 5
  br i1 %i.dc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.de = load ptr, ptr %i.b, align 8
  %23 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.de, i32 0, i32 4
  %i.df = getelementptr inbounds nuw [256 x i8], ptr %23, i64 0, i64 0
  %i.dg = call ptr @prte_util_print_jobids(ptr noundef %i.df)
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.dd, ptr noundef @.str.3, ptr noundef %i.dg)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  store i32 -46, ptr %i.a, align 4
  br label %bb.ka

bb.z:                                             ; preds = %bb.t
  %i.dh = load ptr, ptr %i.b, align 8
  %24 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.dh, i32 0, i32 26
  %i.di = call zeroext i1 @prte_get_attribute(ptr noundef %24, i16 noundef zeroext 283, ptr noundef %i.u, i16 noundef zeroext 3)
  br i1 %i.di, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = load ptr, ptr %i.u, align 8
  %i.dk = icmp eq ptr null, %i.dj
  br i1 %i.dk, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.dm = icmp sge i32 %i.dl, 0
  br i1 %i.dm, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.do = icmp slt i32 %i.dn, 64
  br i1 %i.do, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.dq = sext i32 %i.dp to i64
  %25 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.dq
  %26 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %25, i32 0, i32 2
  %i.dr = load i32, ptr %26, align 4
  %i.ds = icmp sge i32 %i.dr, 5
  br i1 %i.ds, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.du = load ptr, ptr %i.b, align 8
  %27 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.du, i32 0, i32 4
  %i.dv = getelementptr inbounds nuw [256 x i8], ptr %27, i64 0, i64 0
  %i.dw = call ptr @prte_util_print_jobids(ptr noundef %i.dv)
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.dt, ptr noundef @.str.4, ptr noundef %i.dw)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  store i32 -5, ptr %i.a, align 4
  br label %bb.ka

bb.ag:                                            ; preds = %bb.aa
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.dy = icmp sge i32 %i.dx, 0
  br i1 %i.dy, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.ea = icmp slt i32 %i.dz, 64
  br i1 %i.ea, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.ec = sext i32 %i.eb to i64
  %28 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.ec
  %29 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %28, i32 0, i32 2
  %i.ed = load i32, ptr %29, align 4
  %i.ee = icmp sge i32 %i.ed, 5
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.eg = load ptr, ptr %i.b, align 8
  %30 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.eg, i32 0, i32 4
  %i.eh = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 0
  %i.ei = call ptr @prte_util_print_jobids(ptr noundef %i.eh)
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ef, ptr noundef @.str.5, ptr noundef %i.ei)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.ej = load ptr, ptr %i.b, align 8
  %31 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.ej, i32 0, i32 14
  %i.ek = load ptr, ptr %31, align 8
  %32 = getelementptr inbounds nuw %struct.prte_job_map_t, ptr %i.ek, i32 0, i32 2
  %i.el = load ptr, ptr %32, align 8
  %i.em = icmp ne ptr null, %i.el
  br i1 %i.em, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.en = load ptr, ptr %i.b, align 8
  %33 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.en, i32 0, i32 14
  %i.eo = load ptr, ptr %33, align 8
  %34 = getelementptr inbounds nuw %struct.prte_job_map_t, ptr %i.eo, i32 0, i32 2
  %i.ep = load ptr, ptr %34, align 8
  call void @free(ptr noundef %i.ep) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.eq = load ptr, ptr %i.r, align 8
  %35 = getelementptr inbounds nuw %struct.pmix_mca_base_component_2_1_0_t, ptr %i.eq, i32 0, i32 11
  %i.er = getelementptr inbounds nuw [64 x i8], ptr %35, i64 0, i64 0
  %i.es = call noalias ptr @strdup(ptr noundef %i.er) #18
  %i.et = load ptr, ptr %i.b, align 8
  %36 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.et, i32 0, i32 14
  %i.eu = load ptr, ptr %36, align 8
  %37 = getelementptr inbounds nuw %struct.prte_job_map_t, ptr %i.eu, i32 0, i32 2
  store ptr %i.es, ptr %37, align 8
  %i.ev = load ptr, ptr %i.c, align 8
  %38 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.ev, i32 0, i32 11
  store i16 22, ptr %38, align 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i32, ptr @pmix_class_init_epoch, align 4
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8
  %i.ey = icmp ne i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @pmix_class_initialize(ptr noundef @pmix_list_t_class)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %39 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %2, i32 0, i32 1
  store ptr @pmix_list_t_class, ptr %39, align 8
  %40 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %2, i32 0, i32 2
  store i32 1, ptr %40, align 8
  call void @pmix_obj_construct_tma(ptr noundef %2, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef %2)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.as
  br label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = load ptr, ptr %i.b, align 8
  %41 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.ez, i32 0, i32 8
  %i.fa = load ptr, ptr %41, align 8
  %42 = call ptr @pmix_pointer_array_get_item(ptr noundef %i.fa, i32 noundef 0)
  store ptr %42, ptr %i.d, align 8
  %i.fb = load ptr, ptr %i.d, align 8
  %i.fc = icmp eq ptr null, %i.fb
  br i1 %i.fc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.aw:                                            ; preds = %bb.au
  %i.fd = load ptr, ptr %i.d, align 8
  %43 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.fd, i32 0, i32 4
  %i.fe = load i32, ptr %43, align 8
  %i.ff = icmp eq i32 0, %i.fe
  br i1 %i.ff, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fg = load ptr, ptr %i.b, align 8
  %44 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.fg, i32 0, i32 9
  %i.fh = load i32, ptr %44, align 8
  %i.fi = icmp ult i32 1, %i.fh
  br i1 %i.fi, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fj = load ptr, ptr %i.b, align 8
  %45 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.fj, i32 0, i32 9
  %i.fk = load i32, ptr %45, align 8
  %i.fl = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 1, i32 noundef %i.fk, ptr noundef null) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.az:                                            ; preds = %bb.ax, %bb.aw
  store i32 0, ptr %i.k, align 4
  %i.fm = load ptr, ptr %i.b, align 8
  %46 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.fm, i32 0, i32 12
  store i32 0, ptr %46, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fn = load i32, ptr @pmix_class_init_epoch, align 4
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 32), align 8
  %i.fp = icmp ne i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @pmix_class_initialize(ptr noundef @pmix_pointer_array_t_class)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  store ptr @pmix_pointer_array_t_class, ptr getelementptr inbounds nuw (i8, ptr @rankmap, i64 40), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @rankmap, i64 48), align 8
  call void @pmix_obj_construct_tma(ptr noundef @rankmap, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef @rankmap)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fq = call i32 @pmix_pointer_array_init(ptr noundef @rankmap, i32 noundef 64, i32 noundef 2147483647, i32 noundef 64)
  store i32 %i.fq, ptr %i.p, align 4
  %i.fr = load i32, ptr %i.p, align 4
  %i.fs = icmp ne i32 0, %i.fr
  br i1 %i.fs, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @pmix_obj_run_destructors(ptr noundef @rankmap)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 -1, ptr %i.a, align 4
  br label %bb.ka

bb.bl:                                            ; preds = %bb.bh
  %i.ft = load ptr, ptr %i.u, align 8
  %47 = call i32 @prte_rmaps_rank_file_parse(ptr noundef %i.ft) ; 2 uses
  store i32 %47, ptr %i.p, align 4
  %i.fu = icmp ne i32 0, %47
  br i1 %i.fu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.bn:                                            ; preds = %bb.bl
  store i32 0, ptr %i.e, align 4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.hz, %bb.bn
  %i.fv = load i32, ptr %i.e, align 4
  %i.fw = load ptr, ptr %i.b, align 8
  %48 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.fw, i32 0, i32 8
  %i.fx = load ptr, ptr %48, align 8
  %49 = getelementptr inbounds nuw %struct.pmix_pointer_array_t, ptr %i.fx, i32 0, i32 3
  %i.fy = load i32, ptr %49, align 8
  %i.fz = icmp slt i32 %i.fv, %i.fy
  br i1 %i.fz, label %bb.bp, label %bb.ia

bb.bp:                                            ; preds = %bb.bo
  %i.ga = load ptr, ptr %i.b, align 8
  %50 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.ga, i32 0, i32 8
  %i.gb = load ptr, ptr %50, align 8
  %i.gc = load i32, ptr %i.e, align 4
  %51 = call ptr @pmix_pointer_array_get_item(ptr noundef %i.gb, i32 noundef %i.gc)
  store ptr %51, ptr %i.d, align 8
  %i.gd = load ptr, ptr %i.d, align 8
  %i.ge = icmp eq ptr null, %i.gd
  br i1 %i.ge, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  br label %bb.hz

bb.br:                                            ; preds = %bb.bp
  %i.gf = load ptr, ptr %i.b, align 8
  %i.gg = load ptr, ptr %i.d, align 8
  %i.gh = load ptr, ptr %i.c, align 8
  %52 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.gh, i32 0, i32 11
  %i.gi = load i16, ptr %52, align 2
  %i.gj = load i8, ptr %i.t, align 1
  %i.gk = icmp ne i8 %i.gj, 0
  %i.gl = call i32 @prte_rmaps_base_get_target_nodes(ptr noundef %2, ptr noundef %i.l, ptr noundef %i.gf, ptr noundef %i.gg, i16 noundef zeroext %i.gi, i1 noundef zeroext %i.gk, i1 noundef zeroext false, i1 noundef zeroext true)
  store i32 %i.gl, ptr %i.p, align 4
  %i.gm = load i32, ptr %i.p, align 4
  %i.gn = icmp ne i32 0, %i.gm
  br i1 %i.gn, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.go = load i32, ptr %i.p, align 4
  %i.gp = icmp ne i32 -43, %i.go
  br i1 %i.gp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.gq = load i32, ptr %i.p, align 4
  %i.gr = call ptr @prte_strerror(i32 noundef %i.gq)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.gr, ptr noundef @.str.9, i32 noundef 228)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br label %bb.ji

bb.bx:                                            ; preds = %bb.br
  store i8 0, ptr %i.t, align 1
  %i.gs = load ptr, ptr %i.d, align 8
  %53 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.gs, i32 0, i32 11
  %i.gt = load i8, ptr %53, align 8
  %i.gu = zext i8 %i.gt to i32
  %i.gv = and i32 %i.gu, 4
  %i.gw = icmp ne i32 %i.gv, 0
  br i1 %i.gw, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.gx = load i32, ptr @num_ranks, align 4
  %i.gy = load ptr, ptr %i.d, align 8
  %54 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.gy, i32 0, i32 4
  store i32 %i.gx, ptr %54, align 8
  %i.gz = load ptr, ptr %i.d, align 8
  %55 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.gz, i32 0, i32 4
  %i.ha = load i32, ptr %55, align 8
  %i.hb = icmp eq i32 0, %i.ha
  br i1 %i.hb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.hc = load ptr, ptr %i.u, align 8
  %i.hd = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.hc) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.ca:                                            ; preds = %bb.by
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  store i32 0, ptr %i.f, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ha, %bb.cb
  %i.he = load i32, ptr %i.f, align 4
  %i.hf = load ptr, ptr %i.d, align 8
  %56 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.hf, i32 0, i32 4
  %i.hg = load i32, ptr %56, align 8
  %i.hh = icmp slt i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.cd, label %bb.hb

bb.cd:                                            ; preds = %bb.cc
  %i.hi = load i32, ptr %i.k, align 4
  %i.hj = load i32, ptr %i.f, align 4
  %i.hk = add i32 %i.hi, %i.hj
  store i32 %i.hk, ptr %i.j, align 4
  %i.hl = load i32, ptr %i.j, align 4
  %57 = call ptr @pmix_pointer_array_get_item(ptr noundef @rankmap, i32 noundef %i.hl)
  store ptr %57, ptr %i.m, align 8
  %i.hm = load ptr, ptr %i.m, align 8
  %i.hn = icmp eq ptr null, %i.hm
  br i1 %i.hn, label %bb.ce, label %bb.dd

bb.ce:                                            ; preds = %bb.cd
  %i.ho = load ptr, ptr %i.c, align 8
  %58 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.ho, i32 0, i32 4
  %i.hp = load ptr, ptr %58, align 8
  %i.hq = icmp ne ptr null, %i.hp
  br i1 %i.hq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hr = load ptr, ptr %i.c, align 8
  %59 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.hr, i32 0, i32 4
  %i.hs = load ptr, ptr %59, align 8
  store ptr %i.hs, ptr %i.s, align 8
  br label %bb.ck

bb.cg:                                            ; preds = %bb.ce
  %i.ht = load ptr, ptr @prte_hwloc_default_cpu_list, align 8
  %i.hu = icmp ne ptr null, %i.ht
  br i1 %i.hu, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.hv = load ptr, ptr @prte_hwloc_default_cpu_list, align 8
  store ptr %i.hv, ptr %i.s, align 8
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.hw = load i32, ptr %i.j, align 4
  %i.hx = load ptr, ptr %i.u, align 8
  %i.hy = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.11, i32 noundef 1, i32 noundef %i.hw, ptr noundef %i.hx) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.cj:                                            ; preds = %bb.ch
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cf
  store ptr null, ptr %i.g, align 8
  %60 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %61 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %60, i32 0, i32 1
  %i.hz = load ptr, ptr %61, align 8
  store ptr %i.hz, ptr %i.h, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cp, %bb.ck
  %i.ia = load ptr, ptr %i.h, align 8
  %62 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %i.ib = icmp ne ptr %i.ia, %62
  br i1 %i.ib, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.ic = load ptr, ptr %i.h, align 8
  %63 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ic, i32 0, i32 12
  %i.id = load i32, ptr %63, align 4
  %i.ie = load ptr, ptr %i.h, align 8
  %64 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ie, i32 0, i32 8
  %i.if = load i16, ptr %64, align 8
  %i.ig = zext i16 %i.if to i32
  %i.ih = icmp sle i32 %i.id, %i.ig
  br i1 %i.ih, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.ii = load ptr, ptr %i.h, align 8
  store ptr %i.ii, ptr %i.g, align 8
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.ij = load ptr, ptr %i.h, align 8
  %65 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.ij, i32 0, i32 1
  %i.ik = load ptr, ptr %65, align 8
  store ptr %i.ik, ptr %i.h, align 8
  br label %bb.cl, !llvm.loop !4

bb.cq:                                            ; preds = %bb.co, %bb.cl
  %i.il = load ptr, ptr %i.g, align 8
  %i.im = icmp eq ptr null, %i.il
  br i1 %i.im, label %bb.cr, label %bb.cy

bb.cr:                                            ; preds = %bb.cq
  store i32 -1, ptr %i.f, align 4
  %66 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %67 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %66, i32 0, i32 1
  %i.in = load ptr, ptr %67, align 8
  store ptr %i.in, ptr %i.h, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cw, %bb.cr
  %i.io = load ptr, ptr %i.h, align 8
  %68 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %i.ip = icmp ne ptr %i.io, %68
  br i1 %i.ip, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.iq = load ptr, ptr %i.h, align 8
  %69 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.iq, i32 0, i32 8
  %i.ir = load i16, ptr %69, align 8
  %i.is = zext i16 %i.ir to i32
  %i.it = load i32, ptr %i.f, align 4
  %i.iu = icmp ult i32 %i.is, %i.it
  br i1 %i.iu, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.iv = load ptr, ptr %i.h, align 8
  %70 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.iv, i32 0, i32 8
  %i.iw = load i16, ptr %70, align 8
  %i.ix = zext i16 %i.iw to i32
  store i32 %i.ix, ptr %i.f, align 4
  %i.iy = load ptr, ptr %i.h, align 8
  store ptr %i.iy, ptr %i.g, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.iz = load ptr, ptr %i.h, align 8
  %71 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.iz, i32 0, i32 1
  %i.ja = load ptr, ptr %71, align 8
  store ptr %i.ja, ptr %i.h, align 8
  br label %bb.cs, !llvm.loop !6

bb.cx:                                            ; preds = %bb.cs
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cq
  %i.jb = load ptr, ptr %i.g, align 8
  %i.jc = icmp eq ptr null, %i.jb
  br i1 %i.jc, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  br label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jd = call ptr @prte_strerror(i32 noundef -2)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.jd, ptr noundef @.str.9, i32 noundef 287)
  br label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 -2, ptr %i.p, align 4
  br label %bb.ji

bb.dc:                                            ; preds = %bb.cy
  br label %bb.eg

bb.dd:                                            ; preds = %bb.cd
  %i.je = load ptr, ptr %i.m, align 8
  %72 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.je, i32 0, i32 2
  %i.jf = getelementptr inbounds nuw [64 x i8], ptr %72, i64 0, i64 0
  %i.jg = call i64 @strlen(ptr noundef %i.jf) #17
  %i.jh = icmp ult i64 0, %i.jg
  br i1 %i.jh, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ji = load ptr, ptr %i.m, align 8
  %73 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.ji, i32 0, i32 2
  %i.jj = getelementptr inbounds nuw [64 x i8], ptr %73, i64 0, i64 0
  store ptr %i.jj, ptr %i.s, align 8
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  store ptr null, ptr %i.s, align 8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  store ptr null, ptr %i.g, align 8
  %74 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %75 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %74, i32 0, i32 1
  %i.jk = load ptr, ptr %75, align 8
  store ptr %i.jk, ptr %i.h, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.ee, %bb.dg
  %i.jl = load ptr, ptr %i.h, align 8
  %76 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %i.jm = icmp ne ptr %i.jl, %76
  br i1 %i.jm, label %bb.di, label %bb.ef

bb.di:                                            ; preds = %bb.dh
  %i.jn = load ptr, ptr %i.m, align 8
  %77 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.jn, i32 0, i32 1
  %i.jo = load ptr, ptr %77, align 8
  %i.jp = icmp ne ptr null, %i.jo
  br i1 %i.jp, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.jq = load ptr, ptr %i.h, align 8
  %i.jr = load ptr, ptr %i.m, align 8
  %78 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.jr, i32 0, i32 1
  %i.js = load ptr, ptr %78, align 8
  %i.jt = call zeroext i1 @prte_quickmatch(ptr noundef %i.jq, ptr noundef %i.js)
  br i1 %i.jt, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ju = load ptr, ptr %i.h, align 8
  store ptr %i.ju, ptr %i.g, align 8
  br label %bb.ef

bb.dl:                                            ; preds = %bb.dj, %bb.di
  %i.jv = load ptr, ptr %i.m, align 8
  %79 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.jv, i32 0, i32 1
  %i.jw = load ptr, ptr %79, align 8
  %i.jx = icmp ne ptr null, %i.jw
  br i1 %i.jx, label %bb.dm, label %bb.ec

bb.dm:                                            ; preds = %bb.dl
  %i.jy = load ptr, ptr %i.m, align 8
  %80 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.jy, i32 0, i32 1
  %i.jz = load ptr, ptr %80, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 0
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = sext i8 %i.kb to i32
  %i.kd = icmp eq i32 43, %i.kc
  br i1 %i.kd, label %bb.dn, label %bb.ec

bb.dn:                                            ; preds = %bb.dm
  %i.ke = load ptr, ptr %i.m, align 8
  %81 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.ke, i32 0, i32 1
  %i.kf = load ptr, ptr %81, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = sext i8 %i.kh to i32
  %i.kj = icmp eq i32 110, %i.ki
  br i1 %i.kj, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.kk = load ptr, ptr %i.m, align 8
  %82 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.kk, i32 0, i32 1
  %i.kl = load ptr, ptr %82, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  %i.kn = load i8, ptr %i.km, align 1
  %i.ko = sext i8 %i.kn to i32
  %i.kp = icmp eq i32 78, %i.ko
  br i1 %i.kp, label %bb.dp, label %bb.ec

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.kq = load ptr, ptr %i.m, align 8
  %83 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.kq, i32 0, i32 1
  %i.kr = load ptr, ptr %83, align 8
  %i.ks = call ptr @strtok(ptr noundef %i.kr, ptr noundef @.str.12) #18
  %i.kt = call i32 @atoi(ptr noundef %i.ks) #17
  store i32 %i.kt, ptr %i.n, align 4
  %i.ku = load i32, ptr %i.n, align 4
  %84 = call i64 @pmix_list_get_size(ptr noundef %2)
  %i.kv = trunc i64 %84 to i32
  %i.kw = icmp sge i32 %i.ku, %i.kv
  br i1 %i.kw, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kx = load i32, ptr %i.n, align 4
  %i.ky = icmp sgt i32 0, %i.kx
  br i1 %i.ky, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.kz = load ptr, ptr %i.m, align 8
  %85 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.kz, i32 0, i32 1
  %i.la = load ptr, ptr %85, align 8
  %i.lb = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.13, i32 noundef 1, ptr noundef %i.la) ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lc = call ptr @prte_strerror(i32 noundef -5)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.lc, ptr noundef @.str.9, i32 noundef 314)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i32 -5, ptr %i.a, align 4
  br label %bb.ka

bb.du:                                            ; preds = %bb.dq
  %86 = call ptr @pmix_list_get_first(ptr noundef %2)
  store ptr %86, ptr %i.i, align 8
  store i32 0, ptr %i.o, align 4
  br label %bb.dv

bb.dv:                                            ; preds = %bb.ea, %bb.du
  %i.ld = load i32, ptr %i.o, align 4
  %i.le = load i32, ptr %i.n, align 4
  %i.lf = icmp slt i32 %i.ld, %i.le
  br i1 %i.lf, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.lg = load ptr, ptr %i.i, align 8
  %i.lh = icmp ne ptr %i.lg, null
  br i1 %i.lh, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.li = load ptr, ptr %i.i, align 8
  %87 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.li, i32 0, i32 1
  %i.lj = load ptr, ptr %87, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.lk = phi ptr [ %i.lj, %bb.dx ], [ null, %bb.dy ]
  store ptr %i.lk, ptr %i.i, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ll = load i32, ptr %i.o, align 4
  %i.lm = add nsw i32 %i.ll, 1
  store i32 %i.lm, ptr %i.o, align 4
  br label %bb.dv, !llvm.loop !7

bb.eb:                                            ; preds = %bb.dv
  %i.ln = load ptr, ptr %i.i, align 8
  store ptr %i.ln, ptr %i.g, align 8
  br label %bb.ef

bb.ec:                                            ; preds = %bb.do, %bb.dm, %bb.dl
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.lo = load ptr, ptr %i.h, align 8
  %88 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.lo, i32 0, i32 1
  %i.lp = load ptr, ptr %88, align 8
  store ptr %i.lp, ptr %i.h, align 8
  br label %bb.dh, !llvm.loop !8

bb.ef:                                            ; preds = %bb.eb, %bb.dk, %bb.dh
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.dc
  %i.lq = load ptr, ptr %i.g, align 8
  %i.lr = icmp eq ptr null, %i.lq
  br i1 %i.lr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ls = load ptr, ptr %i.m, align 8
  %89 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.ls, i32 0, i32 1
  %i.lt = load ptr, ptr %89, align 8
  %i.lu = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.14, i32 noundef 1, ptr noundef %i.lt) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.ei:                                            ; preds = %bb.eg
  %i.lv = load ptr, ptr %i.c, align 8
  %90 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.lv, i32 0, i32 7
  %i.lw = load i8, ptr %90, align 1
  %i.lx = icmp ne i8 %i.lw, 0
  br i1 %i.lx, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ly = load ptr, ptr %i.b, align 8
  %i.lz = load ptr, ptr %i.g, align 8
  %i.ma = load ptr, ptr %i.c, align 8
  %i.mb = call i32 @prte_rmaps_base_check_support(ptr noundef %i.ly, ptr noundef %i.lz, ptr noundef %i.ma)
  store i32 %i.mb, ptr %i.p, align 4
  %i.mc = load i32, ptr %i.p, align 4
  %i.md = icmp ne i32 0, %i.mc
  br i1 %i.md, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.me = load i32, ptr %i.p, align 4
  store i32 %i.me, ptr %i.a, align 4
  br label %bb.ka

bb.el:                                            ; preds = %bb.ej
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ei
  %i.mf = load ptr, ptr %i.b, align 8
  %i.mg = load ptr, ptr %i.g, align 8
  %i.mh = load ptr, ptr %i.c, align 8
  call void @prte_rmaps_base_get_cpuset(ptr noundef %i.mf, ptr noundef %i.mg, ptr noundef %i.mh)
  %i.mi = load ptr, ptr %i.b, align 8
  %i.mj = load ptr, ptr %i.d, align 8
  %i.mk = load ptr, ptr %i.g, align 8
  %i.ml = load ptr, ptr %i.c, align 8
  %i.mm = call zeroext i1 @prte_rmaps_base_check_avail(ptr noundef %i.mi, ptr noundef %i.mj, ptr noundef %i.mk, ptr noundef %2, ptr noundef null, ptr noundef %i.ml)
  br i1 %i.mm, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.mn = load ptr, ptr %i.m, align 8
  %91 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.mn, i32 0, i32 1
  %i.mo = load ptr, ptr %91, align 8
  %i.mp = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.14, i32 noundef 1, ptr noundef %i.mo) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.eo:                                            ; preds = %bb.em
  %i.mq = load ptr, ptr %i.b, align 8
  %i.mr = load ptr, ptr %i.d, align 8
  %i.ms = load ptr, ptr %i.g, align 8
  %i.mt = load ptr, ptr %i.c, align 8
  %i.mu = call i32 @prte_rmaps_base_check_oversubscribed(ptr noundef %i.mq, ptr noundef %i.mr, ptr noundef %i.ms, ptr noundef %i.mt)
  store i32 %i.mu, ptr %i.p, align 4
  %i.mv = load i32, ptr %i.p, align 4
  %i.mw = icmp ne i32 0, %i.mv
  br i1 %i.mw, label %bb.ep, label %bb.ey

bb.ep:                                            ; preds = %bb.eo
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.mx = load ptr, ptr %i.q, align 8
  store ptr %i.mx, ptr %i.ab, align 8
  %i.my = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.mz = call i32 @pthread_mutex_lock(ptr noundef %i.my) #18
  %i.na = icmp eq i32 %i.mz, 35
  br i1 %i.na, label %bb.er, label %pmix_obj_update.exit7

bb.er:                                            ; preds = %bb.eq
  %i.nb = call ptr @__errno_location() #19
  store i32 35, ptr %i.nb, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit7:                            ; preds = %bb.eq
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 48 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8
  %i.ne = add nsw i32 %i.nd, -1                   ; 2 uses
  store i32 %i.ne, ptr %i.nc, align 8
  %i.nf = call i32 @pthread_mutex_unlock(ptr noundef %i.my) #18 ; 0 uses
  %i.ng = icmp eq i32 0, %i.ne
  br i1 %i.ng, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %pmix_obj_update.exit7
  %i.nh = load ptr, ptr %i.ab, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.nh)
  %i.ni = load ptr, ptr %i.ab, align 8
  %92 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ni, i32 0, i32 3
  %93 = getelementptr inbounds nuw %struct.pmix_tma, ptr %92, i32 0, i32 5
  %i.nj = load ptr, ptr %93, align 8
  %i.nk = icmp ne ptr null, %i.nj
  br i1 %i.nk, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.nl = load ptr, ptr %i.ab, align 8
  %94 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.nl, i32 0, i32 3
  %i.nm = load ptr, ptr %i.q, align 8
  call void @pmix_tma_free(ptr noundef %94, ptr noundef %i.nm)
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.nn = load ptr, ptr %i.q, align 8
  call void @free(ptr noundef %i.nn) #18
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  store ptr null, ptr %i.q, align 8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %pmix_obj_update.exit7
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  br label %bb.ji

bb.ey:                                            ; preds = %bb.eo
  %i.no = load ptr, ptr %i.b, align 8
  %i.np = load ptr, ptr %i.d, align 8
  %95 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.np, i32 0, i32 2
  %i.nq = load i32, ptr %95, align 8
  %i.nr = load ptr, ptr %i.g, align 8
  %i.ns = load ptr, ptr %i.c, align 8
  %i.nt = call ptr @prte_rmaps_base_setup_proc(ptr noundef %i.no, i32 noundef %i.nq, ptr noundef %i.nr, ptr noundef null, ptr noundef %i.ns)
  store ptr %i.nt, ptr %i.q, align 8
  %i.nu = load ptr, ptr %i.q, align 8
  %i.nv = icmp eq ptr null, %i.nu
  br i1 %i.nv, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nw = call ptr @prte_strerror(i32 noundef -2)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.nw, ptr noundef @.str.9, i32 noundef 351)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i32 -2, ptr %i.p, align 4
  br label %bb.ji

bb.fc:                                            ; preds = %bb.ey
  %i.nx = load i32, ptr %i.j, align 4
  %i.ny = load ptr, ptr %i.q, align 8
  %96 = getelementptr inbounds nuw %struct.prte_proc_t, ptr %i.ny, i32 0, i32 1
  %97 = getelementptr inbounds nuw %struct.pmix_proc, ptr %96, i32 0, i32 1
  store i32 %i.nx, ptr %97, align 8
  %i.nz = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.oa = call i32 @pthread_mutex_lock(ptr noundef %i.nz) #18
  %i.ob = icmp eq i32 %i.oa, 35
  br i1 %i.ob, label %bb.fd, label %pmix_obj_update.exit6

bb.fd:                                            ; preds = %bb.fc
  %i.oc = call ptr @__errno_location() #19
  store i32 35, ptr %i.oc, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit6:                            ; preds = %bb.fc
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 48 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 8
  %i.of = add nsw i32 %i.oe, 1
  store i32 %i.of, ptr %i.od, align 8
  %i.og = call i32 @pthread_mutex_unlock(ptr noundef %i.nz) #18 ; 0 uses
  %i.oh = load ptr, ptr %i.b, align 8
  %98 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.oh, i32 0, i32 13
  %i.oi = load ptr, ptr %98, align 8
  %i.oj = load ptr, ptr %i.q, align 8
  %99 = getelementptr inbounds nuw %struct.prte_proc_t, ptr %i.oj, i32 0, i32 1
  %100 = getelementptr inbounds nuw %struct.pmix_proc, ptr %99, i32 0, i32 1
  %i.ok = load i32, ptr %100, align 8
  %i.ol = load ptr, ptr %i.q, align 8
  %i.om = call i32 @pmix_pointer_array_set_item(ptr noundef %i.oi, i32 noundef %i.ok, ptr noundef %i.ol)
  store i32 %i.om, ptr %i.p, align 4
  %i.on = load i32, ptr %i.p, align 4
  %i.oo = icmp ne i32 0, %i.on
  br i1 %i.oo, label %bb.fe, label %bb.fr

bb.fe:                                            ; preds = %pmix_obj_update.exit6
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.op = load i32, ptr %i.p, align 4
  %i.oq = icmp ne i32 -43, %i.op
  br i1 %i.oq, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.or = load i32, ptr %i.p, align 4
  %i.os = call ptr @prte_strerror(i32 noundef %i.or)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.os, ptr noundef @.str.9, i32 noundef 361)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ot = load ptr, ptr %i.q, align 8
  store ptr %i.ot, ptr %i.ac, align 8
  %i.ou = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ov = call i32 @pthread_mutex_lock(ptr noundef %i.ou) #18
  %i.ow = icmp eq i32 %i.ov, 35
  br i1 %i.ow, label %bb.fk, label %pmix_obj_update.exit5

bb.fk:                                            ; preds = %bb.fj
  %i.ox = call ptr @__errno_location() #19
  store i32 35, ptr %i.ox, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit5:                            ; preds = %bb.fj
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 48 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 8
  %i.pa = add nsw i32 %i.oz, -1                   ; 2 uses
  store i32 %i.pa, ptr %i.oy, align 8
  %i.pb = call i32 @pthread_mutex_unlock(ptr noundef %i.ou) #18 ; 0 uses
  %i.pc = icmp eq i32 0, %i.pa
  br i1 %i.pc, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %pmix_obj_update.exit5
  %i.pd = load ptr, ptr %i.ac, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.pd)
  %i.pe = load ptr, ptr %i.ac, align 8
  %101 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.pe, i32 0, i32 3
  %102 = getelementptr inbounds nuw %struct.pmix_tma, ptr %101, i32 0, i32 5
  %i.pf = load ptr, ptr %102, align 8
  %i.pg = icmp ne ptr null, %i.pf
  br i1 %i.pg, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ph = load ptr, ptr %i.ac, align 8
  %103 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ph, i32 0, i32 3
  %i.pi = load ptr, ptr %i.q, align 8
  call void @pmix_tma_free(ptr noundef %103, ptr noundef %i.pi)
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %i.pj = load ptr, ptr %i.q, align 8
  call void @free(ptr noundef %i.pj) #18
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  store ptr null, ptr %i.q, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %pmix_obj_update.exit5
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  br label %bb.ji

bb.fr:                                            ; preds = %pmix_obj_update.exit6
  %i.pk = load ptr, ptr %i.b, align 8
  %104 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.pk, i32 0, i32 12 ; 2 uses
  %i.pl = load i32, ptr %104, align 4
  %i.pm = add i32 %i.pl, 1
  store i32 %i.pm, ptr %104, align 4
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.pn = load ptr, ptr %i.q, align 8
  store ptr %i.pn, ptr %i.ad, align 8
  %i.po = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.pp = call i32 @pthread_mutex_lock(ptr noundef %i.po) #18
  %i.pq = icmp eq i32 %i.pp, 35
  br i1 %i.pq, label %bb.ft, label %pmix_obj_update.exit4

bb.ft:                                            ; preds = %bb.fs
  %i.pr = call ptr @__errno_location() #19
  store i32 35, ptr %i.pr, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit4:                            ; preds = %bb.fs
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 48 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 8
  %i.pu = add nsw i32 %i.pt, -1                   ; 2 uses
  store i32 %i.pu, ptr %i.ps, align 8
  %i.pv = call i32 @pthread_mutex_unlock(ptr noundef %i.po) #18 ; 0 uses
  %i.pw = icmp eq i32 0, %i.pu
  br i1 %i.pw, label %bb.fu, label %bb.fy

bb.fu:                                            ; preds = %pmix_obj_update.exit4
  %i.px = load ptr, ptr %i.ad, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.px)
  %i.py = load ptr, ptr %i.ad, align 8
  %105 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.py, i32 0, i32 3
  %106 = getelementptr inbounds nuw %struct.pmix_tma, ptr %105, i32 0, i32 5
  %i.pz = load ptr, ptr %106, align 8
  %i.qa = icmp ne ptr null, %i.pz
  br i1 %i.qa, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.qb = load ptr, ptr %i.ad, align 8
  %107 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.qb, i32 0, i32 3
  %i.qc = load ptr, ptr %i.q, align 8
  call void @pmix_tma_free(ptr noundef %107, ptr noundef %i.qc)
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  %i.qd = load ptr, ptr %i.q, align 8
  call void @free(ptr noundef %i.qd) #18
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  store ptr null, ptr %i.q, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %pmix_obj_update.exit4
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.qe = load ptr, ptr %i.s, align 8
  %i.qf = icmp ne ptr null, %i.qe
  br i1 %i.qf, label %bb.ga, label %bb.gz

bb.ga:                                            ; preds = %bb.fz
  %i.qg = load ptr, ptr %i.b, align 8
  %108 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.qg, i32 0, i32 14
  %i.qh = load ptr, ptr %108, align 8
  %109 = getelementptr inbounds nuw %struct.prte_job_map_t, ptr %i.qh, i32 0, i32 5
  %i.qi = load i16, ptr %109, align 4
  %i.qj = zext i16 %i.qi to i32
  %i.qk = and i32 %i.qj, 255
  %i.ql = icmp ne i32 1, %i.qk
  br i1 %i.ql, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qm = load ptr, ptr %i.c, align 8
  %110 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.qm, i32 0, i32 10
  %i.qn = load i8, ptr %110, align 4
  %i.qo = icmp ne i8 %i.qn, 0
  br i1 %i.qo, label %bb.gc, label %bb.gz

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.qp = load ptr, ptr %i.g, align 8
  %111 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.qp, i32 0, i32 16
  %i.qq = load ptr, ptr %111, align 8
  %i.qr = icmp eq ptr null, %i.qq
  br i1 %i.qr, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.qs = load ptr, ptr %i.g, align 8
  %112 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.qs, i32 0, i32 16
  %i.qt = load ptr, ptr %112, align 8
  %113 = getelementptr inbounds nuw %struct.prte_topology_t, ptr %i.qt, i32 0, i32 2
  %i.qu = load ptr, ptr %113, align 8
  %i.qv = icmp eq ptr null, %i.qu
  br i1 %i.qv, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.qw = load ptr, ptr %i.g, align 8
  %114 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.qw, i32 0, i32 2
  %i.qx = load ptr, ptr %114, align 8
  %i.qy = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.15, ptr noundef @.str.16, i32 noundef 1, ptr noundef %i.qx) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.gf:                                            ; preds = %bb.gd
  %i.qz = call noalias ptr @hwloc_bitmap_alloc()
  store ptr %i.qz, ptr %i.w, align 8
  %i.ra = load ptr, ptr %i.s, align 8
  %i.rb = load ptr, ptr %i.g, align 8
  %115 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.rb, i32 0, i32 16
  %i.rc = load ptr, ptr %115, align 8
  %116 = getelementptr inbounds nuw %struct.prte_topology_t, ptr %i.rc, i32 0, i32 2
  %i.rd = load ptr, ptr %116, align 8
  %i.re = load ptr, ptr %i.c, align 8
  %117 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.re, i32 0, i32 1
  %i.rf = load i8, ptr %117, align 2
  %i.rg = icmp ne i8 %i.rf, 0
  %i.rh = load ptr, ptr %i.w, align 8
  %i.ri = call i32 @prte_hwloc_base_cpu_list_parse(ptr noundef %i.ra, ptr noundef %i.rd, i1 noundef zeroext %i.rg, ptr noundef %i.rh)
  store i32 %i.ri, ptr %i.p, align 4
  %i.rj = load i32, ptr %i.p, align 4
  %i.rk = icmp eq i32 -13, %i.rj
  br i1 %i.rk, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.rl = load ptr, ptr %i.g, align 8
  %118 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.rl, i32 0, i32 16
  %i.rm = load ptr, ptr %118, align 8
  %119 = getelementptr inbounds nuw %struct.prte_topology_t, ptr %i.rm, i32 0, i32 2
  %i.rn = load ptr, ptr %119, align 8
  %i.ro = call ptr @hwloc_topology_get_allowed_cpuset(ptr noundef %i.rn) #17
  %i.rp = load ptr, ptr %i.g, align 8
  %120 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.rp, i32 0, i32 16
  %i.rq = load ptr, ptr %120, align 8
  %121 = getelementptr inbounds nuw %struct.prte_topology_t, ptr %i.rq, i32 0, i32 2
  %i.rr = load ptr, ptr %121, align 8
  %i.rs = call ptr @prte_hwloc_base_cset2str(ptr noundef %i.ro, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %i.rr)
  store ptr %i.rs, ptr %i.ae, align 8
  %i.rt = load ptr, ptr @prte_tool_basename, align 8
  %i.ru = load ptr, ptr %i.s, align 8
  %i.rv = load ptr, ptr %i.ae, align 8
  %i.rw = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.17, i32 noundef 1, ptr noundef %i.rt, ptr noundef %i.ru, ptr noundef %i.rv) ; 0 uses
  %i.rx = load ptr, ptr %i.ae, align 8
  call void @free(ptr noundef %i.rx) #18
  store i32 -43, ptr %i.p, align 4
  %i.ry = load ptr, ptr %i.w, align 8
  call void @hwloc_bitmap_free(ptr noundef %i.ry)
  br label %bb.ji

bb.gh:                                            ; preds = %bb.gf
  %i.rz = load i32, ptr %i.p, align 4
  %i.sa = icmp eq i32 -1, %i.rz
  br i1 %i.sa, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.sb = load ptr, ptr %i.u, align 8
  %i.sc = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.sb) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  %i.sd = load ptr, ptr %i.w, align 8
  call void @hwloc_bitmap_free(ptr noundef %i.sd)
  br label %bb.ji

bb.gj:                                            ; preds = %bb.gh
  %i.se = load i32, ptr %i.p, align 4
  %i.sf = icmp ne i32 0, %i.se
  br i1 %i.sf, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %bb.gj
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.sg = load i32, ptr %i.p, align 4
  %i.sh = icmp ne i32 -43, %i.sg
  br i1 %i.sh, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.si = load i32, ptr %i.p, align 4
  %i.sj = call ptr @prte_strerror(i32 noundef %i.si)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.sj, ptr noundef @.str.9, i32 noundef 399)
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  br label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.sk = load ptr, ptr %i.w, align 8
  call void @hwloc_bitmap_free(ptr noundef %i.sk)
  br label %bb.ji

bb.gp:                                            ; preds = %bb.gj
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.sl = load ptr, ptr %i.w, align 8
  %i.sm = call i32 @hwloc_bitmap_list_asprintf(ptr noundef %i.y, ptr noundef %i.sl) ; 0 uses
  %i.sn = load ptr, ptr %i.y, align 8
  %i.so = call noalias ptr @strdup(ptr noundef %i.sn) #18
  %i.sp = load ptr, ptr %i.q, align 8
  %122 = getelementptr inbounds nuw %struct.prte_proc_t, ptr %i.sp, i32 0, i32 14
  store ptr %i.so, ptr %122, align 8
  %i.sq = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.sr = icmp sge i32 %i.sq, 0
  br i1 %i.sr, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  %i.ss = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.st = icmp slt i32 %i.ss, 64
  br i1 %i.st, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.su = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.sv = sext i32 %i.su to i64
  %123 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.sv
  %124 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %123, i32 0, i32 2
  %i.sw = load i32, ptr %124, align 4
  %i.sx = icmp sge i32 %i.sw, 5
  br i1 %i.sx, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.sy = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4
  %i.sz = load ptr, ptr %i.s, align 8
  %i.ta = load ptr, ptr %i.y, align 8
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.sy, ptr noundef @.str.18, ptr noundef %i.sz, ptr noundef %i.ta)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gr
  %i.tb = load ptr, ptr %i.w, align 8
  %i.tc = load ptr, ptr %i.g, align 8
  %125 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.tc, i32 0, i32 6
  %i.td = load ptr, ptr %125, align 8
  %i.te = call i32 @hwloc_bitmap_isincluded(ptr noundef %i.tb, ptr noundef %i.td) #17
  %i.tf = icmp ne i32 %i.te, 0
  br i1 %i.tf, label %bb.gy, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.tg = load ptr, ptr %i.c, align 8
  %126 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.tg, i32 0, i32 10
  %i.th = load i8, ptr %126, align 4
  %i.ti = icmp ne i8 %i.th, 0
  br i1 %i.ti, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.tj = call noalias ptr @hwloc_bitmap_alloc()
  store ptr %i.tj, ptr %i.x, align 8
  %i.tk = load ptr, ptr %i.g, align 8
  %127 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.tk, i32 0, i32 6
  %i.tl = load ptr, ptr %127, align 8
  %i.tm = call i32 @hwloc_bitmap_list_asprintf(ptr noundef %i.z, ptr noundef %i.tl) ; 0 uses
  %i.tn = load ptr, ptr %i.x, align 8
  %i.to = load ptr, ptr %i.w, align 8
  %i.tp = load ptr, ptr %i.g, align 8
  %128 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.tp, i32 0, i32 6
  %i.tq = load ptr, ptr %128, align 8
  %i.tr = call i32 @hwloc_bitmap_andnot(ptr noundef %i.tn, ptr noundef %i.to, ptr noundef %i.tq) ; 0 uses
  %i.ts = load ptr, ptr %i.x, align 8
  %i.tt = call i32 @hwloc_bitmap_list_asprintf(ptr noundef %i.aa, ptr noundef %i.ts) ; 0 uses
  %i.tu = load ptr, ptr %i.q, align 8
  %129 = getelementptr inbounds nuw %struct.prte_proc_t, ptr %i.tu, i32 0, i32 1
  %i.tv = call ptr @prte_util_print_name_args(ptr noundef %129)
  %i.tw = load ptr, ptr %i.g, align 8
  %130 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.tw, i32 0, i32 2
  %i.tx = load ptr, ptr %130, align 8
  %i.ty = load ptr, ptr %i.q, align 8
  %131 = getelementptr inbounds nuw %struct.prte_proc_t, ptr %i.ty, i32 0, i32 14
  %i.tz = load ptr, ptr %131, align 8
  %i.ua = load ptr, ptr %i.z, align 8
  %i.ub = load ptr, ptr %i.aa, align 8
  %i.uc = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.19, i32 noundef 1, ptr noundef %i.tv, ptr noundef %i.tx, ptr noundef %i.tz, ptr noundef %i.ua, ptr noundef %i.ub) ; 0 uses
  %i.ud = load ptr, ptr %i.x, align 8
  call void @hwloc_bitmap_free(ptr noundef %i.ud)
  %i.ue = load ptr, ptr %i.w, align 8
  call void @hwloc_bitmap_free(ptr noundef %i.ue)
  store i32 -2, ptr %i.p, align 4
  br label %bb.ji

bb.gy:                                            ; preds = %bb.gw, %bb.gv
  %i.uf = load ptr, ptr %i.g, align 8
  %132 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.uf, i32 0, i32 6
  %i.ug = load ptr, ptr %132, align 8
  %i.uh = load ptr, ptr %i.g, align 8
  %133 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.uh, i32 0, i32 6
  %i.ui = load ptr, ptr %133, align 8
  %i.uj = load ptr, ptr %i.w, align 8
  %i.uk = call i32 @hwloc_bitmap_andnot(ptr noundef %i.ug, ptr noundef %i.ui, ptr noundef %i.uj) ; 0 uses
  %i.ul = load ptr, ptr %i.y, align 8
  call void @free(ptr noundef %i.ul) #18
  %i.um = load ptr, ptr %i.w, align 8
  call void @hwloc_bitmap_free(ptr noundef %i.um)
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gb, %bb.fz
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.un = load i32, ptr %i.f, align 4
  %i.uo = add nsw i32 %i.un, 1
  store i32 %i.uo, ptr %i.f, align 4
  br label %bb.cc, !llvm.loop !9

bb.hb:                                            ; preds = %bb.cc
  %i.up = load ptr, ptr %i.d, align 8
  %134 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.up, i32 0, i32 4
  %i.uq = load i32, ptr %134, align 8
  %i.ur = load i32, ptr %i.k, align 4
  %i.us = add i32 %i.ur, %i.uq
  store i32 %i.us, ptr %i.k, align 4
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hm, %bb.hc
  %135 = call ptr @pmix_list_remove_first(ptr noundef %2) ; 2 uses
  store ptr %135, ptr %i.af, align 8
  %i.ut = icmp ne ptr null, %135
  br i1 %i.ut, label %bb.he, label %bb.hn

bb.he:                                            ; preds = %bb.hd
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.uu = load ptr, ptr %i.af, align 8
  store ptr %i.uu, ptr %i.ag, align 8
  %i.uv = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.uw = call i32 @pthread_mutex_lock(ptr noundef %i.uv) #18
  %i.ux = icmp eq i32 %i.uw, 35
  br i1 %i.ux, label %bb.hg, label %pmix_obj_update.exit3

bb.hg:                                            ; preds = %bb.hf
  %i.uy = call ptr @__errno_location() #19
  store i32 35, ptr %i.uy, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit3:                            ; preds = %bb.hf
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 48 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 8
  %i.vb = add nsw i32 %i.va, -1                   ; 2 uses
  store i32 %i.vb, ptr %i.uz, align 8
  %i.vc = call i32 @pthread_mutex_unlock(ptr noundef %i.uv) #18 ; 0 uses
  %i.vd = icmp eq i32 0, %i.vb
  br i1 %i.vd, label %bb.hh, label %bb.hl

bb.hh:                                            ; preds = %pmix_obj_update.exit3
  %i.ve = load ptr, ptr %i.ag, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.ve)
  %i.vf = load ptr, ptr %i.ag, align 8
  %136 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.vf, i32 0, i32 3
  %137 = getelementptr inbounds nuw %struct.pmix_tma, ptr %136, i32 0, i32 5
  %i.vg = load ptr, ptr %137, align 8
  %i.vh = icmp ne ptr null, %i.vg
  br i1 %i.vh, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.vi = load ptr, ptr %i.ag, align 8
  %138 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.vi, i32 0, i32 3
  %i.vj = load ptr, ptr %i.af, align 8
  call void @pmix_tma_free(ptr noundef %138, ptr noundef %i.vj)
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hh
  %i.vk = load ptr, ptr %i.af, align 8
  call void @free(ptr noundef %i.vk) #18
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  store ptr null, ptr %i.af, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %pmix_obj_update.exit3
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  br label %bb.hd, !llvm.loop !10

bb.hn:                                            ; preds = %bb.hd
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @pmix_obj_run_destructors(ptr noundef %2)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.vl = load i32, ptr @pmix_class_init_epoch, align 4
  %i.vm = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8
  %i.vn = icmp ne i32 %i.vl, %i.vm
  br i1 %i.vn, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  call void @pmix_class_initialize(ptr noundef @pmix_list_t_class)
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %139 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %2, i32 0, i32 1
  store ptr @pmix_list_t_class, ptr %139, align 8
  %140 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %2, i32 0, i32 2
  store i32 1, ptr %140, align 8
  call void @pmix_obj_construct_tma(ptr noundef %2, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef %2)
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.bq
  %i.vo = load i32, ptr %i.e, align 4
  %i.vp = add nsw i32 %i.vo, 1
  store i32 %i.vp, ptr %i.e, align 4
  br label %bb.bo, !llvm.loop !11

bb.ia:                                            ; preds = %bb.bo
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  br label %bb.ic

bb.ic:                                            ; preds = %bb.il, %bb.ib
  %141 = call ptr @pmix_list_remove_first(ptr noundef %2) ; 2 uses
  store ptr %141, ptr %i.ah, align 8
  %i.vq = icmp ne ptr null, %141
  br i1 %i.vq, label %bb.id, label %bb.im

bb.id:                                            ; preds = %bb.ic
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.vr = load ptr, ptr %i.ah, align 8
  store ptr %i.vr, ptr %i.ai, align 8
  %i.vs = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.vt = call i32 @pthread_mutex_lock(ptr noundef %i.vs) #18
  %i.vu = icmp eq i32 %i.vt, 35
  br i1 %i.vu, label %bb.if, label %pmix_obj_update.exit2

bb.if:                                            ; preds = %bb.ie
  %i.vv = call ptr @__errno_location() #19
  store i32 35, ptr %i.vv, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit2:                            ; preds = %bb.ie
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vs, i64 48 ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 8
  %i.vy = add nsw i32 %i.vx, -1                   ; 2 uses
  store i32 %i.vy, ptr %i.vw, align 8
  %i.vz = call i32 @pthread_mutex_unlock(ptr noundef %i.vs) #18 ; 0 uses
  %i.wa = icmp eq i32 0, %i.vy
  br i1 %i.wa, label %bb.ig, label %bb.ik

bb.ig:                                            ; preds = %pmix_obj_update.exit2
  %i.wb = load ptr, ptr %i.ai, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.wb)
  %i.wc = load ptr, ptr %i.ai, align 8
  %142 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.wc, i32 0, i32 3
  %143 = getelementptr inbounds nuw %struct.pmix_tma, ptr %142, i32 0, i32 5
  %i.wd = load ptr, ptr %143, align 8
  %i.we = icmp ne ptr null, %i.wd
  br i1 %i.we, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.wf = load ptr, ptr %i.ai, align 8
  %144 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.wf, i32 0, i32 3
  %i.wg = load ptr, ptr %i.ah, align 8
  call void @pmix_tma_free(ptr noundef %144, ptr noundef %i.wg)
  br label %bb.ij

bb.ii:                                            ; preds = %bb.ig
  %i.wh = load ptr, ptr %i.ah, align 8
  call void @free(ptr noundef %i.wh) #18
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  store ptr null, ptr %i.ah, align 8
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %pmix_obj_update.exit2
  br label %bb.il

bb.il:                                            ; preds = %bb.ik
  br label %bb.ic, !llvm.loop !12

bb.im:                                            ; preds = %bb.ic
  br label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @pmix_obj_run_destructors(ptr noundef %2)
  br label %bb.io

bb.io:                                            ; preds = %bb.in
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io
  store i32 0, ptr %i.e, align 4
  br label %bb.iq

bb.iq:                                            ; preds = %bb.jc, %bb.ip
  %i.wi = load i32, ptr %i.e, align 4
  %i.wj = load i32, ptr getelementptr inbounds nuw (i8, ptr @rankmap, i64 128), align 8
  %i.wk = icmp slt i32 %i.wi, %i.wj
  br i1 %i.wk, label %bb.ir, label %bb.jd

bb.ir:                                            ; preds = %bb.iq
  %i.wl = load i32, ptr %i.e, align 4
  %145 = call ptr @pmix_pointer_array_get_item(ptr noundef @rankmap, i32 noundef %i.wl) ; 2 uses
  store ptr %145, ptr %i.m, align 8
  %i.wm = icmp ne ptr null, %145
  br i1 %i.wm, label %bb.is, label %bb.jb

bb.is:                                            ; preds = %bb.ir
  br label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.wn = load ptr, ptr %i.m, align 8
  store ptr %i.wn, ptr %i.aj, align 8
  %i.wo = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.wp = call i32 @pthread_mutex_lock(ptr noundef %i.wo) #18
  %i.wq = icmp eq i32 %i.wp, 35
  br i1 %i.wq, label %bb.iu, label %pmix_obj_update.exit1

bb.iu:                                            ; preds = %bb.it
  %i.wr = call ptr @__errno_location() #19
  store i32 35, ptr %i.wr, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit1:                            ; preds = %bb.it
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 48 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 8
  %i.wu = add nsw i32 %i.wt, -1                   ; 2 uses
  store i32 %i.wu, ptr %i.ws, align 8
  %i.wv = call i32 @pthread_mutex_unlock(ptr noundef %i.wo) #18 ; 0 uses
  %i.ww = icmp eq i32 0, %i.wu
  br i1 %i.ww, label %bb.iv, label %bb.iz

bb.iv:                                            ; preds = %pmix_obj_update.exit1
  %i.wx = load ptr, ptr %i.aj, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.wx)
  %i.wy = load ptr, ptr %i.aj, align 8
  %146 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.wy, i32 0, i32 3
  %147 = getelementptr inbounds nuw %struct.pmix_tma, ptr %146, i32 0, i32 5
  %i.wz = load ptr, ptr %147, align 8
  %i.xa = icmp ne ptr null, %i.wz
  br i1 %i.xa, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.xb = load ptr, ptr %i.aj, align 8
  %148 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.xb, i32 0, i32 3
  %i.xc = load ptr, ptr %i.m, align 8
  call void @pmix_tma_free(ptr noundef %148, ptr noundef %i.xc)
  br label %bb.iy

bb.ix:                                            ; preds = %bb.iv
  %i.xd = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.xd) #18
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  store ptr null, ptr %i.m, align 8
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %pmix_obj_update.exit1
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.ir
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.xe = load i32, ptr %i.e, align 4
  %i.xf = add nsw i32 %i.xe, 1
  store i32 %i.xf, ptr %i.e, align 4
  br label %bb.iq, !llvm.loop !13

bb.jd:                                            ; preds = %bb.iq
  br label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @pmix_obj_run_destructors(ptr noundef @rankmap)
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.xg = load ptr, ptr %i.u, align 8
  %i.xh = icmp ne ptr null, %i.xg
  br i1 %i.xh, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.xi = load ptr, ptr %i.u, align 8
  call void @free(ptr noundef %i.xi) #18
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.xj = load ptr, ptr %i.b, align 8
  %i.xk = load ptr, ptr %i.c, align 8
  %i.xl = call i32 @prte_rmaps_base_compute_vpids(ptr noundef %i.xj, ptr noundef %i.xk)
  store i32 %i.xl, ptr %i.p, align 4
  %i.xm = load i32, ptr %i.p, align 4
  store i32 %i.xm, ptr %i.a, align 4
  br label %bb.ka

bb.ji:                                            ; preds = %bb.gx, %bb.go, %bb.gi, %bb.gg, %bb.ge, %bb.fq, %bb.fb, %bb.ex, %bb.en, %bb.eh, %bb.db, %bb.ci, %bb.bz, %bb.bw, %bb.bm, %bb.ay, %bb.av
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jt, %bb.jj
  %149 = call ptr @pmix_list_remove_first(ptr noundef %2) ; 2 uses
  store ptr %149, ptr %i.ak, align 8
  %i.xn = icmp ne ptr null, %149
  br i1 %i.xn, label %bb.jl, label %bb.ju

bb.jl:                                            ; preds = %bb.jk
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.xo = load ptr, ptr %i.ak, align 8
  store ptr %i.xo, ptr %i.al, align 8
  %i.xp = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.xq = call i32 @pthread_mutex_lock(ptr noundef %i.xp) #18
  %i.xr = icmp eq i32 %i.xq, 35
  br i1 %i.xr, label %bb.jn, label %pmix_obj_update.exit

bb.jn:                                            ; preds = %bb.jm
  %i.xs = call ptr @__errno_location() #19
  store i32 35, ptr %i.xs, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.jm
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 48 ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 8
  %i.xv = add nsw i32 %i.xu, -1                   ; 2 uses
  store i32 %i.xv, ptr %i.xt, align 8
  %i.xw = call i32 @pthread_mutex_unlock(ptr noundef %i.xp) #18 ; 0 uses
  %i.xx = icmp eq i32 0, %i.xv
  br i1 %i.xx, label %bb.jo, label %bb.js

bb.jo:                                            ; preds = %pmix_obj_update.exit
  %i.xy = load ptr, ptr %i.al, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.xy)
  %i.xz = load ptr, ptr %i.al, align 8
  %150 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.xz, i32 0, i32 3
  %151 = getelementptr inbounds nuw %struct.pmix_tma, ptr %150, i32 0, i32 5
  %i.ya = load ptr, ptr %151, align 8
  %i.yb = icmp ne ptr null, %i.ya
  br i1 %i.yb, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.yc = load ptr, ptr %i.al, align 8
  %152 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.yc, i32 0, i32 3
  %i.yd = load ptr, ptr %i.ak, align 8
  call void @pmix_tma_free(ptr noundef %152, ptr noundef %i.yd)
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jo
  %i.ye = load ptr, ptr %i.ak, align 8
  call void @free(ptr noundef %i.ye) #18
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  store ptr null, ptr %i.ak, align 8
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %pmix_obj_update.exit
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js
  br label %bb.jk, !llvm.loop !14

bb.ju:                                            ; preds = %bb.jk
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  call void @pmix_obj_run_destructors(ptr noundef %2)
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.yf = load ptr, ptr %i.u, align 8
  %i.yg = icmp ne ptr null, %i.yf
  br i1 %i.yg, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.yh = load ptr, ptr %i.u, align 8
  call void @free(ptr noundef %i.yh) #18
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.yi = load i32, ptr %i.p, align 4
  store i32 %i.yi, ptr %i.a, align 4
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jh, %bb.ek, %bb.dt, %bb.bk, %bb.af, %bb.y, %bb.s, %bb.m, %bb.f
  %i.yj = load i32, ptr %i.a, align 4
  ret i32 %i.yj
}

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @prte_util_print_jobids(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare zeroext i1 @prte_get_attribute(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmix_obj_construct_tma(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr null, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr null, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.e, i32 0, i32 3
  %3 = getelementptr inbounds nuw %struct.pmix_tma, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.f, i32 0, i32 3
  %5 = getelementptr inbounds nuw %struct.pmix_tma, ptr %4, i32 0, i32 1
  store ptr null, ptr %5, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.g, i32 0, i32 3
  %7 = getelementptr inbounds nuw %struct.pmix_tma, ptr %6, i32 0, i32 2
  store ptr null, ptr %7, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.h, i32 0, i32 3
  %9 = getelementptr inbounds nuw %struct.pmix_tma, ptr %8, i32 0, i32 3
  store ptr null, ptr %9, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.i, i32 0, i32 3
  %11 = getelementptr inbounds nuw %struct.pmix_tma, ptr %10, i32 0, i32 4
  store ptr null, ptr %11, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %12 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.j, i32 0, i32 3
  %13 = getelementptr inbounds nuw %struct.pmix_tma, ptr %12, i32 0, i32 5
  store ptr null, ptr %13, align 8
  %i.k = load ptr, ptr %i.a, align 8
  %14 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.k, i32 0, i32 3
  %15 = getelementptr inbounds nuw %struct.pmix_tma, ptr %14, i32 0, i32 6
  store ptr null, ptr %15, align 8
  %i.l = load ptr, ptr %i.a, align 8
  %16 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.l, i32 0, i32 3
  %17 = getelementptr inbounds nuw %struct.pmix_tma, ptr %16, i32 0, i32 7
  store ptr null, ptr %17, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %18 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.m, i32 0, i32 3
  %i.n = load ptr, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %i.n, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmix_obj_run_constructors(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.c, i32 0, i32 1
  %i.d = load ptr, ptr %1, align 8
  %i.e = icmp ne ptr null, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @__assert_fail(ptr noundef @.str.20, ptr noundef @.str.21, i32 noundef 655, ptr noundef @__PRETTY_FUNCTION__.pmix_obj_run_constructors) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.f, i32 0, i32 1
  %i.g = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.pmix_class_t, ptr %i.g, i32 0, i32 6
  %i.h = load ptr, ptr %3, align 8
  store ptr %i.h, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ne ptr null, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.a, align 8
  call void %i.m(ptr noundef %i.n)
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw ptr, ptr %i.o, i32 1
  store ptr %i.p, ptr %i.b, align 8
  br label %bb.e, !llvm.loop !15

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_pointer_array_get_item(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store i32 %1, ptr %i.c, align 4
  %i.e = load i32, ptr %i.c, align 4
  %i.f = icmp sgt i32 0, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_pointer_array_t, ptr %i.g, i32 0, i32 3
  %i.h = load i32, ptr %2, align 8
  %i.i = load i32, ptr %i.c, align 4
  %i.j = icmp sle i32 %i.h, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ true, %bb.a ], [ %i.j, %bb.b ]
  %i.l = xor i1 %i.k, true
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i32
  %i.o = zext nneg i32 %i.n to i64
  %i.p = icmp ne i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.pmix_pointer_array_t, ptr %i.q, i32 0, i32 7
  %i.r = load ptr, ptr %3, align 8
  %i.s = load i32, ptr %i.c, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds ptr, ptr %i.r, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.d, align 8
  %i.w = load ptr, ptr %i.d, align 8
  store ptr %i.w, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr %i.a, align 8
  ret ptr %i.x
}

declare i32 @pmix_show_help(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare i32 @pmix_pointer_array_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmix_obj_run_destructors(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.c, i32 0, i32 1
  %i.d = load ptr, ptr %1, align 8
  %i.e = icmp ne ptr null, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @__assert_fail(ptr noundef @.str.20, ptr noundef @.str.21, i32 noundef 676, ptr noundef @__PRETTY_FUNCTION__.pmix_obj_run_destructors) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.f, i32 0, i32 1
  %i.g = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.pmix_class_t, ptr %i.g, i32 0, i32 7
  %i.h = load ptr, ptr %3, align 8
  store ptr %i.h, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ne ptr null, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.a, align 8
  call void %i.m(ptr noundef %i.n)
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw ptr, ptr %i.o, i32 1
  store ptr %i.p, ptr %i.b, align 8
  br label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prte_rmaps_rank_file_parse(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 33 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 17 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca [64 x i8], align 16               ; 2 uses
  %i.i = alloca ptr, align 8                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca ptr, align 8                      ; 2 uses
  %i.m = alloca ptr, align 8                      ; 9 uses
  %i.n = alloca ptr, align 8                      ; 13 uses
  %i.o = alloca [64 x i8], align 16               ; 2 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %i.q = alloca ptr, align 8                      ; 2 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  store i32 0, ptr %i.d, align 4
  store ptr null, ptr %i.f, align 8
  store i32 -1, ptr %i.j, align 4
  store ptr null, ptr %i.m, align 8
  %1 = call ptr @pmix_obj_new_tma(ptr noundef @pmix_pointer_array_t_class, ptr noundef null)
  store ptr %1, ptr %i.n, align 8
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = call i32 @pmix_pointer_array_init(ptr noundef %i.s, i32 noundef 64, i32 noundef 2147483647, i32 noundef 64)
  store i32 %i.t, ptr %i.d, align 4
  %i.u = load i32, ptr %i.d, align 4
  %i.v = icmp ne i32 0, %i.u
  br i1 %i.v, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.n, align 8
  store ptr %i.w, ptr %i.p, align 8
  %i.x = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.y = call i32 @pthread_mutex_lock(ptr noundef %i.x) #18
  %i.z = icmp eq i32 %i.y, 35
  br i1 %i.z, label %bb.d, label %pmix_obj_update.exit1

bb.d:                                             ; preds = %bb.c
  %i.aa = call ptr @__errno_location() #19
  store i32 35, ptr %i.aa, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit1:                            ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = call i32 @pthread_mutex_unlock(ptr noundef %i.x) #18 ; 0 uses
  %i.af = icmp eq i32 0, %i.ad
  br i1 %i.af, label %bb.e, label %bb.i

bb.e:                                             ; preds = %pmix_obj_update.exit1
  %i.ag = load ptr, ptr %i.p, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.ag)
  %i.ah = load ptr, ptr %i.p, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ah, i32 0, i32 3
  %3 = getelementptr inbounds nuw %struct.pmix_tma, ptr %2, i32 0, i32 5
  %i.ai = load ptr, ptr %3, align 8
  %i.aj = icmp ne ptr null, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.p, align 8
  %4 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ak, i32 0, i32 3
  %i.al = load ptr, ptr %i.n, align 8
  call void @pmix_tma_free(ptr noundef %4, ptr noundef %i.al)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.n, align 8
  call void @free(ptr noundef %i.am) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.n, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %pmix_obj_update.exit1
  br label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %i.a, align 4
  br label %bb.dm

bb.k:                                             ; preds = %bb.a
  %i.an = load ptr, ptr @prte_node_pool, align 8
  %5 = getelementptr inbounds nuw %struct.pmix_pointer_array_t, ptr %i.an, i32 0, i32 7
  %i.ao = load ptr, ptr %5, align 8
  %i.ap = getelementptr inbounds nuw ptr, ptr %i.ao, i64 0
  %i.aq = load ptr, ptr %i.ap, align 8
  store ptr %i.aq, ptr %i.l, align 8
  store i8 0, ptr @prte_rmaps_rank_file_done, align 1
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = call noalias ptr @fopen(ptr noundef %i.ar, ptr noundef @.str.22)
  store ptr %i.as, ptr @prte_rmaps_rank_file_in, align 8
  %i.at = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.au = icmp eq ptr null, %i.at
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr @prte_tool_basename, align 8
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = load ptr, ptr @prte_tool_basename, align 8
  %i.ay = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.23, i32 noundef 1, ptr noundef %i.av, ptr noundef %i.aw, ptr noundef %i.ax) ; 0 uses
  store i32 -13, ptr %i.d, align 4
  br label %bb.db

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.cz, %bb.m
  %i.az = load i8, ptr @prte_rmaps_rank_file_done, align 1
  %i.ba = icmp ne i8 %i.az, 0
  %i.bb = xor i1 %i.ba, true
  br i1 %i.bb, label %bb.o, label %bb.da

bb.o:                                             ; preds = %bb.n
  %i.bc = call i32 @prte_rmaps_rank_file_lex()
  store i32 %i.bc, ptr %i.c, align 4
  %i.bd = load i32, ptr %i.c, align 4
  switch i32 %i.bd, label %bb.cz [
    i32 1, label %bb.p
    i32 2, label %bb.u
    i32 13, label %bb.z
    i32 6, label %bb.ac
    i32 10, label %bb.ak
    i32 3, label %bb.ap
    i32 15, label %bb.cb
  ]

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.b, align 8
  %i.bf = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.be) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load i32, ptr %i.d, align 4
  %i.bh = icmp ne i32 -43, %i.bg
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = load i32, ptr %i.d, align 4
  %i.bj = call ptr @prte_strerror(i32 noundef %i.bi)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.bj, ptr noundef @.str.9, i32 noundef 529)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.db

bb.u:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.b, align 8
  %i.bl = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.24, i32 noundef 1, ptr noundef @.str.25, ptr noundef %i.bk) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = load i32, ptr %i.d, align 4
  %i.bn = icmp ne i32 -43, %i.bm
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = load i32, ptr %i.d, align 4
  %i.bp = call ptr @prte_strerror(i32 noundef %i.bo)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.bp, ptr noundef @.str.9, i32 noundef 535)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.x
  br label %bb.db

bb.z:                                             ; preds = %bb.o
  store i32 -1, ptr %i.j, align 4
  %i.bq = load ptr, ptr %i.f, align 8
  %i.br = icmp ne ptr null, %i.bq
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.bs) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr null, ptr %i.f, align 8
  store ptr null, ptr %i.m, align 8
  br label %bb.cz

bb.ac:                                            ; preds = %bb.o
  %i.bt = call i32 @prte_rmaps_rank_file_lex()
  store i32 %i.bt, ptr %i.c, align 4
  %i.bu = load i32, ptr %i.c, align 4
  %i.bv = icmp eq i32 4, %i.bu
  br i1 %i.bv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bw = load i32, ptr @prte_rmaps_rank_file_value, align 8
  store i32 %i.bw, ptr %i.j, align 4
  %6 = call ptr @pmix_obj_new_tma(ptr noundef @prte_rmaps_rank_file_map_t_class, ptr noundef null)
  store ptr %6, ptr %i.m, align 8
  %i.bx = load i32, ptr %i.j, align 4
  %i.by = load ptr, ptr %i.m, align 8
  %i.bz = call i32 @pmix_pointer_array_set_item(ptr noundef @rankmap, i32 noundef %i.bx, ptr noundef %i.by) ; 0 uses
  %i.ca = load i32, ptr @num_ranks, align 4
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr @num_ranks, align 4
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %i.b, align 8
  %i.cd = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.cc) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = load i32, ptr %i.d, align 4
  %i.cf = icmp ne i32 -43, %i.ce
  br i1 %i.cf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cg = load i32, ptr %i.d, align 4
  %i.ch = call ptr @prte_strerror(i32 noundef %i.cg)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.ch, ptr noundef @.str.9, i32 noundef 555)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br label %bb.db

bb.aj:                                            ; preds = %bb.ad
  br label %bb.cz

bb.ak:                                            ; preds = %bb.o
  %i.ci = load ptr, ptr %i.b, align 8
  %i.cj = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.24, i32 noundef 1, ptr noundef @.str.26, ptr noundef %i.ci) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = load i32, ptr %i.d, align 4
  %i.cl = icmp ne i32 -43, %i.ck
  br i1 %i.cl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cm = load i32, ptr %i.d, align 4
  %i.cn = call ptr @prte_strerror(i32 noundef %i.cm)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.cn, ptr noundef @.str.9, i32 noundef 563)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br label %bb.db

bb.ap:                                            ; preds = %bb.o
  %i.co = load i32, ptr %i.j, align 4
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.cq = load ptr, ptr %i.b, align 8
  %i.cr = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.cq) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cs = load i32, ptr %i.d, align 4
  %i.ct = icmp ne i32 -43, %i.cs
  br i1 %i.ct, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cu = load i32, ptr %i.d, align 4
  %i.cv = call ptr @prte_strerror(i32 noundef %i.cu)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.cv, ptr noundef @.str.9, i32 noundef 569)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br label %bb.au

bb.au:                                            ; preds = %bb.at
  br label %bb.db

bb.av:                                            ; preds = %bb.ap
  %i.cw = call i32 @prte_rmaps_rank_file_lex()
  store i32 %i.cw, ptr %i.c, align 4
  %i.cx = load i32, ptr %i.c, align 4
  switch i32 %i.cx, label %bb.ca [
    i32 12, label %bb.aw
    i32 11, label %bb.aw
    i32 14, label %bb.aw
    i32 5, label %bb.aw
    i32 4, label %bb.aw
    i32 16, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av
  %i.cy = load i32, ptr %i.c, align 4
  %i.cz = icmp eq i32 4, %i.cy
  br i1 %i.cz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.da = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 0, i64 0
  %i.db = load i32, ptr @prte_rmaps_rank_file_value, align 8
  %i.dc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.da, i64 noundef 64, ptr noundef @.str.27, i32 noundef %i.db) #18 ; 0 uses
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 0, i64 0
  store ptr %i.dd, ptr %i.i, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.de = load ptr, ptr @prte_rmaps_rank_file_value, align 8
  store ptr %i.de, ptr %i.i, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.df = load ptr, ptr %i.i, align 8
  %i.dg = call ptr @PMIx_Argv_split(ptr noundef %i.df, i32 noundef 64)
  store ptr %i.dg, ptr %i.g, align 8
  %i.dh = load ptr, ptr %i.g, align 8
  %i.di = call i32 @PMIx_Argv_count(ptr noundef %i.dh)
  store i32 %i.di, ptr %i.e, align 4
  %i.dj = load ptr, ptr %i.f, align 8
  %i.dk = icmp ne ptr null, %i.dj
  br i1 %i.dk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dl = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.dl) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dm = load i32, ptr %i.e, align 4
  %i.dn = icmp eq i32 1, %i.dm
  br i1 %i.dn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.do = load ptr, ptr %i.g, align 8
  %i.dp = getelementptr inbounds nuw ptr, ptr %i.do, i64 0
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call noalias ptr @strdup(ptr noundef %i.dq) #18
  store ptr %i.dr, ptr %i.f, align 8
  br label %bb.bl

bb.bd:                                            ; preds = %bb.bb
  %i.ds = load i32, ptr %i.e, align 4
  %i.dt = icmp eq i32 2, %i.ds
  br i1 %i.dt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.du = load ptr, ptr %i.g, align 8
  %i.dv = getelementptr inbounds nuw ptr, ptr %i.du, i64 1
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call noalias ptr @strdup(ptr noundef %i.dw) #18
  store ptr %i.dx, ptr %i.f, align 8
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.dy = load ptr, ptr %i.b, align 8
  %i.dz = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.dy) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ea = load i32, ptr %i.d, align 4
  %i.eb = icmp ne i32 -43, %i.ea
  br i1 %i.eb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ec = load i32, ptr %i.d, align 4
  %i.ed = call ptr @prte_strerror(i32 noundef %i.ec)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.ed, ptr noundef @.str.9, i32 noundef 598)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ee = load ptr, ptr %i.g, align 8
  call void @PMIx_Argv_free(ptr noundef %i.ee)
  store ptr null, ptr %i.f, align 8
  br label %bb.db

bb.bk:                                            ; preds = %bb.be
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bc
  %i.ef = load ptr, ptr %i.g, align 8
  call void @PMIx_Argv_free(ptr noundef %i.ef)
  %i.eg = load i8, ptr @prte_keep_fqdn_hostnames, align 1
  %i.eh = icmp ne i8 %i.eg, 0
  br i1 %i.eh, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ei = load ptr, ptr %i.f, align 8
  %i.ej = call zeroext i1 @pmix_net_isaddr(ptr noundef %i.ei)
  br i1 %i.ej, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ek = load ptr, ptr %i.f, align 8
  %i.el = call ptr @strchr(ptr noundef %i.ek, i32 noundef 46) #17 ; 2 uses
  store ptr %i.el, ptr %i.q, align 8
  %i.em = icmp ne ptr null, %i.el
  br i1 %i.em, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.en = load ptr, ptr %i.q, align 8
  store i8 0, ptr %i.en, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm, %bb.bl
  %i.eo = load ptr, ptr %i.m, align 8
  %i.ep = icmp eq ptr null, %i.eo
  br i1 %i.ep, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.eq = load ptr, ptr %i.b, align 8
  %i.er = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.eq) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.es = load i32, ptr %i.d, align 4
  %i.et = icmp ne i32 -43, %i.es
  br i1 %i.et, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.eu = load i32, ptr %i.d, align 4
  %i.ev = call ptr @prte_strerror(i32 noundef %i.eu)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.ev, ptr noundef @.str.9, i32 noundef 617)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br label %bb.db

bb.bw:                                            ; preds = %bb.bq
  %i.ew = load ptr, ptr %i.f, align 8
  %i.ex = call zeroext i1 @prte_check_host_is_local(ptr noundef %i.ew)
  br i1 %i.ex, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ey = load ptr, ptr %i.l, align 8
  %7 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ey, i32 0, i32 2
  %i.ez = load ptr, ptr %7, align 8
  %i.fa = call noalias ptr @strdup(ptr noundef %i.ez) #18
  %i.fb = load ptr, ptr %i.m, align 8
  %8 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.fb, i32 0, i32 1
  store ptr %i.fa, ptr %8, align 8
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.fc = load ptr, ptr %i.f, align 8
  %i.fd = call noalias ptr @strdup(ptr noundef %i.fc) #18
  %i.fe = load ptr, ptr %i.m, align 8
  %9 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.fe, i32 0, i32 1
  store ptr %i.fd, ptr %9, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.av
  br label %bb.cz

bb.cb:                                            ; preds = %bb.o
  %i.ff = load ptr, ptr %i.f, align 8
  %i.fg = icmp eq ptr null, %i.ff
  br i1 %i.fg, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fh = load i32, ptr %i.j, align 4
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %10 = call ptr @prte_rmaps_rank_file_parse_string_or_int() ; 2 uses
  store ptr %10, ptr %i.i, align 8
  %i.fj = icmp eq ptr null, %10
  br i1 %i.fj, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.fk = load ptr, ptr %i.b, align 8
  %i.fl = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.fk) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fm = load i32, ptr %i.d, align 4
  %i.fn = icmp ne i32 -43, %i.fm
  br i1 %i.fn, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.fo = load i32, ptr %i.d, align 4
  %i.fp = call ptr @prte_strerror(i32 noundef %i.fo)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.fp, ptr noundef @.str.9, i32 noundef 633)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br label %bb.db

bb.cj:                                            ; preds = %bb.cd
  %i.fq = load ptr, ptr %i.n, align 8
  %i.fr = load i32, ptr %i.j, align 4
  %11 = call ptr @pmix_pointer_array_get_item(ptr noundef %i.fq, i32 noundef %i.fr)
  %i.fs = icmp ne ptr null, %11
  br i1 %i.fs, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ft = load i32, ptr %i.j, align 4
  %i.fu = load ptr, ptr %i.n, align 8
  %i.fv = load i32, ptr %i.j, align 4
  %12 = call ptr @pmix_pointer_array_get_item(ptr noundef %i.fu, i32 noundef %i.fv)
  %i.fw = load ptr, ptr %i.b, align 8
  %i.fx = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.28, i32 noundef 1, i32 noundef %i.ft, ptr noundef %12, ptr noundef %i.fw) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  %i.fy = load ptr, ptr %i.i, align 8
  call void @free(ptr noundef %i.fy) #18
  br label %bb.db

bb.cl:                                            ; preds = %bb.cj
  %i.fz = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 0, i64 0
  %i.ga = load ptr, ptr %i.f, align 8
  %i.gb = load ptr, ptr %i.i, align 8
  %i.gc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.fz, i64 noundef 64, ptr noundef @.str.29, ptr noundef %i.ga, ptr noundef %i.gb) #18 ; 0 uses
  %i.gd = load ptr, ptr %i.n, align 8
  %i.ge = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 0, i64 0
  %i.gf = call i32 @pmix_pointer_array_set_item(ptr noundef %i.gd, i32 noundef 0, ptr noundef %i.ge) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gg = load ptr, ptr %i.m, align 8
  %i.gh = icmp eq ptr null, %i.gg
  br i1 %i.gh, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.gi = load ptr, ptr %i.b, align 8
  %i.gj = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.gi) ; 0 uses
  store i32 -5, ptr %i.d, align 4
  br label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gk = load i32, ptr %i.d, align 4
  %i.gl = icmp ne i32 -43, %i.gk
  br i1 %i.gl, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.gm = load i32, ptr %i.d, align 4
  %i.gn = call ptr @prte_strerror(i32 noundef %i.gm)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.gn, ptr noundef @.str.9, i32 noundef 654)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.go = load ptr, ptr %i.i, align 8
  call void @free(ptr noundef %i.go) #18
  br label %bb.db

bb.cs:                                            ; preds = %bb.cm
  store i32 0, ptr %i.k, align 4
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cx, %bb.cs
  %i.gp = load i32, ptr %i.k, align 4
  %i.gq = icmp slt i32 %i.gp, 64
  br i1 %i.gq, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.gr = load ptr, ptr %i.i, align 8
  %i.gs = load i32, ptr %i.k, align 4
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %i.gr, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = sext i8 %i.gv to i32
  %i.gx = icmp ne i32 0, %i.gw
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.gy = phi i1 [ false, %bb.ct ], [ %i.gx, %bb.cu ]
  br i1 %i.gy, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.gz = load ptr, ptr %i.i, align 8
  %i.ha = load i32, ptr %i.k, align 4
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds i8, ptr %i.gz, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = load ptr, ptr %i.m, align 8
  %13 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.he, i32 0, i32 2
  %i.hf = load i32, ptr %i.k, align 4
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [64 x i8], ptr %13, i64 0, i64 %i.hg
  store i8 %i.hd, ptr %i.hh, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hi = load i32, ptr %i.k, align 4
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.k, align 4
  br label %bb.ct, !llvm.loop !17

bb.cy:                                            ; preds = %bb.cv
  %i.hk = load ptr, ptr %i.i, align 8
  call void @free(ptr noundef %i.hk) #18
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ca, %bb.aj, %bb.ab, %bb.o
  br label %bb.n, !llvm.loop !18

bb.da:                                            ; preds = %bb.n
  %i.hl = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.hm = call i32 @fclose(ptr noundef %i.hl)     ; 0 uses
  %i.hn = call i32 @prte_rmaps_rank_file_lex_destroy() ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cr, %bb.ck, %bb.ci, %bb.bv, %bb.bj, %bb.au, %bb.ao, %bb.ai, %bb.y, %bb.t, %bb.l
  %i.ho = load ptr, ptr %i.f, align 8
  %i.hp = icmp ne ptr null, %i.ho
  br i1 %i.hp, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.hq = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.hq) #18
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  br label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hr = load ptr, ptr %i.n, align 8
  store ptr %i.hr, ptr %i.r, align 8
  %i.hs = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.ht = call i32 @pthread_mutex_lock(ptr noundef %i.hs) #18
  %i.hu = icmp eq i32 %i.ht, 35
  br i1 %i.hu, label %bb.df, label %pmix_obj_update.exit

bb.df:                                            ; preds = %bb.de
  %i.hv = call ptr @__errno_location() #19
  store i32 35, ptr %i.hv, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.de
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 48 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8
  %i.hy = add nsw i32 %i.hx, -1                   ; 2 uses
  store i32 %i.hy, ptr %i.hw, align 8
  %i.hz = call i32 @pthread_mutex_unlock(ptr noundef %i.hs) #18 ; 0 uses
  %i.ia = icmp eq i32 0, %i.hy
  br i1 %i.ia, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %pmix_obj_update.exit
  %i.ib = load ptr, ptr %i.r, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.ib)
  %i.ic = load ptr, ptr %i.r, align 8
  %14 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ic, i32 0, i32 3
  %15 = getelementptr inbounds nuw %struct.pmix_tma, ptr %14, i32 0, i32 5
  %i.id = load ptr, ptr %15, align 8
  %i.ie = icmp ne ptr null, %i.id
  br i1 %i.ie, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.if = load ptr, ptr %i.r, align 8
  %16 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.if, i32 0, i32 3
  %i.ig = load ptr, ptr %i.n, align 8
  call void @pmix_tma_free(ptr noundef %16, ptr noundef %i.ig)
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.ih = load ptr, ptr %i.n, align 8
  call void @free(ptr noundef %i.ih) #18
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  store ptr null, ptr %i.n, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %pmix_obj_update.exit
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ii = load i32, ptr %i.d, align 4
  store i32 %i.ii, ptr %i.a, align 4
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.j
  %i.ij = load i32, ptr %i.a, align 4
  ret i32 %i.ij
}

declare i32 @prte_rmaps_base_get_target_nodes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @prte_strerror(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare zeroext i1 @prte_quickmatch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmix_list_get_size(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.b, i32 0, i32 2
  %i.c = load volatile i64, ptr %1, align 8
  ret i64 %i.c
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_list_get_first(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.c, i32 0, i32 1
  %2 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %1, i32 0, i32 1
  %i.d = load ptr, ptr %2, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  ret ptr %i.e
}

declare i32 @prte_rmaps_base_check_support(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @prte_rmaps_base_get_cpuset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @prte_rmaps_base_check_avail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @prte_rmaps_base_check_oversubscribed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmix_tma_free(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = icmp ne ptr null, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_tma, ptr %i.e, i32 0, i32 5
  %i.f = load ptr, ptr %2, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  call void %i.f(ptr noundef %i.g, ptr noundef %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  call void @free(ptr noundef %i.i) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @prte_rmaps_base_setup_proc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @pmix_pointer_array_set_item(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @hwloc_bitmap_alloc() local_unnamed_addr #1

declare i32 @prte_hwloc_base_cpu_list_parse(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare ptr @prte_hwloc_base_cset2str(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_allowed_cpuset(ptr noundef) local_unnamed_addr #8

declare void @hwloc_bitmap_free(ptr noundef) local_unnamed_addr #1

declare i32 @hwloc_bitmap_list_asprintf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isincluded(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @hwloc_bitmap_andnot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @prte_util_print_name_args(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_list_remove_first(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.d, i32 0, i32 2
  %i.e = load volatile i64, ptr %1, align 8
  %i.f = icmp eq i64 0, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.g, i32 0, i32 2 ; 2 uses
  %i.h = load volatile i64, ptr %2, align 8
  %i.i = add i64 %i.h, -1
  store volatile i64 %i.i, ptr %2, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.j, i32 0, i32 1
  %4 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %3, i32 0, i32 1
  %i.k = load ptr, ptr %4, align 8
  store ptr %i.k, ptr %i.c, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.l, i32 0, i32 2
  %i.m = load volatile ptr, ptr %5, align 8
  %i.n = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.n, i32 0, i32 1
  %i.o = load volatile ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.o, i32 0, i32 2
  store volatile ptr %i.m, ptr %7, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.p, i32 0, i32 1
  %i.q = load volatile ptr, ptr %8, align 8
  %i.r = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.r, i32 0, i32 1
  %10 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %9, i32 0, i32 1
  store ptr %i.q, ptr %10, align 8
  %i.s = load ptr, ptr %i.c, align 8
  store ptr %i.s, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = load ptr, ptr %i.a, align 8
  ret ptr %i.t
}

declare i32 @prte_rmaps_base_compute_vpids(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_obj_new_tma(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  store ptr %0, ptr %i.a, align 8
  store ptr null, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_class_t, ptr %i.d, i32 0, i32 8
  %i.e = load i64, ptr %2, align 8
  %i.f = icmp uge i64 %i.e, 120
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @__assert_fail(ptr noundef @.str.30, ptr noundef @.str.21, i32 noundef 698, ptr noundef @__PRETTY_FUNCTION__.pmix_obj_new_tma) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.pmix_class_t, ptr %i.h, i32 0, i32 8
  %i.i = load i64, ptr %3, align 8
  %4 = call ptr @pmix_tma_malloc(ptr noundef %i.g, i64 noundef %i.i)
  store ptr %4, ptr %i.c, align 8
  %i.j = load i32, ptr @pmix_class_init_epoch, align 4
  %i.k = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.pmix_class_t, ptr %i.k, i32 0, i32 4
  %i.l = load i32, ptr %5, align 8
  %i.m = icmp ne i32 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8
  call void @pmix_class_initialize(ptr noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = icmp ne ptr null, %i.o
  br i1 %i.p, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.q, i32 0, i32 0
  %i.r = call i32 @pthread_mutex_init(ptr noundef %6, ptr noundef null) #18 ; 0 uses
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.t, i32 0, i32 1
  store ptr %i.s, ptr %7, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.u, i32 0, i32 2
  store i32 1, ptr %8, align 8
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = icmp eq ptr null, %i.v
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.x, i32 0, i32 3
  %10 = getelementptr inbounds nuw %struct.pmix_tma, ptr %9, i32 0, i32 0
  store ptr null, ptr %10, align 8
  %i.y = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.y, i32 0, i32 3
  %12 = getelementptr inbounds nuw %struct.pmix_tma, ptr %11, i32 0, i32 1
  store ptr null, ptr %12, align 8
  %i.z = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.z, i32 0, i32 3
  %14 = getelementptr inbounds nuw %struct.pmix_tma, ptr %13, i32 0, i32 2
  store ptr null, ptr %14, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  %15 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.aa, i32 0, i32 3
  %16 = getelementptr inbounds nuw %struct.pmix_tma, ptr %15, i32 0, i32 3
  store ptr null, ptr %16, align 8
  %i.ab = load ptr, ptr %i.c, align 8
  %17 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ab, i32 0, i32 3
  %18 = getelementptr inbounds nuw %struct.pmix_tma, ptr %17, i32 0, i32 5
  store ptr null, ptr %18, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %19 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ac, i32 0, i32 3
  %20 = getelementptr inbounds nuw %struct.pmix_tma, ptr %19, i32 0, i32 6
  store ptr null, ptr %20, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %21 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ad, i32 0, i32 3
  %22 = getelementptr inbounds nuw %struct.pmix_tma, ptr %21, i32 0, i32 7
  store ptr null, ptr %22, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.c, align 8
  %23 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ae, i32 0, i32 3
  %i.af = load ptr, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %i.af, i64 64, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = load ptr, ptr %i.c, align 8
  call void @pmix_obj_run_constructors(ptr noundef %i.ag)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.ah = load ptr, ptr %i.c, align 8
  ret ptr %i.ah
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #11

declare i32 @prte_rmaps_rank_file_lex() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare ptr @PMIx_Argv_split(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PMIx_Argv_count(ptr noundef) local_unnamed_addr #1

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @pmix_net_isaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @prte_check_host_is_local(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @prte_rmaps_rank_file_parse_string_or_int() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca [64 x i8], align 16               ; 2 uses
  %i.d = call i32 @prte_rmaps_rank_file_lex()
  %i.e = icmp ne i32 3, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = call i32 @prte_rmaps_rank_file_lex()
  store i32 %i.f, ptr %i.b, align 4
  %i.g = load i32, ptr %i.b, align 4
  switch i32 %i.g, label %bb.f [
    i32 5, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @prte_rmaps_rank_file_value, align 8
  %i.i = call noalias ptr @strdup(ptr noundef %i.h) #18
  store ptr %i.i, ptr %i.a, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 0, i64 0
  %i.k = load i32, ptr @prte_rmaps_rank_file_value, align 8
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.j, i64 noundef 64, ptr noundef @.str.27, i32 noundef %i.k) #18 ; 0 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 0, i64 0
  %i.n = call noalias ptr @strdup(ptr noundef %i.m) #18
  store ptr %i.n, ptr %i.a, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.o = load ptr, ptr %i.a, align 8
  ret ptr %i.o
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @prte_rmaps_rank_file_lex_destroy() local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_tma_malloc(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  store i64 %1, ptr %i.c, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp ne ptr null, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_tma, ptr %i.f, i32 0, i32 0
  %i.g = load ptr, ptr %2, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load i64, ptr %i.c, align 8
  %i.j = call ptr %i.g(ptr noundef %i.h, i64 noundef %i.i)
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #22
  store ptr %i.l, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %i.a, align 8
  ret ptr %i.m
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #12

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = distinct !{!4, !5}
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
end_hunk_0
