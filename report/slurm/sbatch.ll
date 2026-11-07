Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/sbatch?download=true
inline.NumInlined: 12
inline.NumDeleted: 11
begin_hunk_0_@main:bb.a
bb.by:                                            ; preds = %bb.bx, %.lr.ph.i158
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 672), align 8
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next.i, %i.fu
  br i1 %i.fv, label %.lr.ph.i158, label %_set_spank_env.exit, !llvm.loop !13

_set_spank_env.exit:                              ; preds = %bb.by, %bb.bw
  call void @set_submit_dir_env(ptr noundef null, i1 noundef zeroext false) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.fw = call ptr @getenv(ptr noundef nonnull @.str.36) #14
  %.not.i159 = icmp eq ptr %i.fw, null
  br i1 %.not.i159, label %bb.bz, label %_set_umask_env.exit

bb.bz:                                            ; preds = %_set_spank_env.exit
  %i.fx = load i32, ptr getelementptr inbounds nuw (i8, ptr @sbopt, i64 56), align 8 ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  br i1 %i.fy, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fz = call i32 @umask(i32 noundef 0) #14      ; 2 uses
  %i.ga = call i32 @umask(i32 noundef %i.fz) #14  ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.0.i = phi i32 [ %i.fz, %bb.ca ], [ %i.fx, %bb.bz ] ; 3 uses
  %i.gb = lshr i32 %.0.i, 6
  %i.gc = and i32 %i.gb, 7
  %i.gd = lshr i32 %.0.i, 3
  %i.ge = and i32 %i.gd, 7
  %i.gf = and i32 %.0.i, 7
  %i.gg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %i.gc, i32 noundef %i.ge, i32 noundef %i.gf) #14 ; 0 uses
  %i.gh = call i32 (ptr, ptr, ptr, ...) @setenvf(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.c) #14
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.38) #14 ; 0 uses
  br label %_set_umask_env.exit

bb.cd:                                            ; preds = %bb.cb
  %i.gk = call i32 @get_log_level() #14
  %i.gl = icmp sgt i32 %i.gk, 4
  br i1 %i.gl, label %bb.ce, label %_set_umask_env.exit

bb.ce:                                            ; preds = %bb.cd
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.c) #14
  br label %_set_umask_env.exit

_set_umask_env.exit:                              ; preds = %_set_spank_env.exit, %bb.cc, %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.gm = icmp eq ptr %.0214, null
  %i.gn = icmp ne ptr %.089212, null
  %or.cond3 = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %or.cond3, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_set_umask_env.exit
  %i.go = call ptr @list_create(ptr noundef null) #14 ; 2 uses
  call void @list_append(ptr noundef %i.go, ptr noundef nonnull %.0214) #14
  %i.gp = call ptr @list_create(ptr noundef null) #14 ; 2 uses
  call void @list_append(ptr noundef %i.gp, ptr noundef %.0105206) #14
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_set_umask_env.exit
  %.190 = phi ptr [ %.089212, %_set_umask_env.exit ], [ %i.go, %bb.cf ] ; 4 uses
  %.1 = phi ptr [ %.088213, %_set_umask_env.exit ], [ %i.gp, %bb.cf ] ; 7 uses
  %i.gq = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 64, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 216, ptr noundef nonnull @__func__.main) #14 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gq, ptr noundef nonnull align 8 dereferenceable(64) @het_job_env, i64 64, i1 false)
  %i.gr = call ptr @slurm_opt_create_job_desc(ptr noundef nonnull @opt, i1 noundef zeroext true) #14 ; 23 uses
  %.not.i160 = icmp eq ptr %i.gr, null
  br i1 %.not.i160, label %_fill_job_desc_from_opts.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 264), align 8
  %.not33.i = icmp eq ptr %i.gs, null
  br i1 %.not33.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.gt = call ptr @xstrdup(ptr noundef nonnull @.str.23) #14
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 448
  store ptr %i.gt, ptr %i.gu, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.gv = load ptr, ptr @sbopt, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  store ptr %i.gv, ptr %i.gw, align 8
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sbopt, i64 8), align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 80
  store ptr %i.gx, ptr %i.gy, align 8
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 504), align 8
  %i.ha = call ptr @xstrdup(ptr noundef %i.gz) #14
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 144
  store ptr %i.ha, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 152 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.hc) #14
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 512), align 8
  %i.he = call ptr @xstrdup(ptr noundef %i.hd) #14
  store ptr %i.he, ptr %i.hc, align 8
  %i.hf = load i16, ptr getelementptr inbounds nuw (i8, ptr @sbopt, i64 62), align 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 764
  store i16 %i.hf, ptr %i.hg, align 4
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @sbopt, i64 48), align 8 ; 2 uses
  %.not34.i = icmp eq i32 %i.hh, -2
  br i1 %.not34.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hi = trunc i32 %i.hh to i16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gr, i64 568
  store i16 %i.hi, ptr %i.hj, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gr, i64 248 ; 13 uses
  store ptr null, ptr %i.hk, align 8
  %i.hl = load i64, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 168), align 8
  %i.hm = and i64 %i.hl, 16777216
  %.not35.i = icmp eq i64 %i.hm, 0
  br i1 %.not35.i, label %bb.cm, label %bb.df

bb.cm:                                            ; preds = %bb.cl
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sbopt, i64 16), align 8 ; 2 uses
  %.not36.i = icmp eq ptr %i.hn, null
  br i1 %.not36.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ho = call ptr @env_array_from_file(ptr noundef nonnull %i.hn) #14 ; 2 uses
  store ptr %i.ho, ptr %i.hk, align 8
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @exit(i32 noundef 1) #16
  unreachable

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 800), align 8 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8
  %i.hs = call i32 @regcomp(ptr noundef nonnull %3, ptr noundef nonnull @.str.24, i32 noundef 1) #14
  %.not40.i = icmp eq i32 %i.hs, 0
  br i1 %.not40.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.25) #15
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.ht = load ptr, ptr @environ, align 8
  call void @env_array_merge(ptr noundef nonnull %i.b, ptr noundef %i.ht) #14
  %i.hu = load ptr, ptr %i.b, align 8
  %i.hv = call ptr @env_array_exclude(ptr noundef %i.hu, ptr noundef nonnull %3) #14
  store ptr %i.hv, ptr %i.hk, align 8
  call void @regfree(ptr noundef nonnull %3) #14
  %i.hw = load ptr, ptr %i.b, align 8
  call void @env_array_free(ptr noundef %i.hw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.da

bb.ct:                                            ; preds = %bb.cp
  %i.hx = call i32 @xstrcasecmp(ptr noundef nonnull %i.hq, ptr noundef nonnull @.str.26) #14
  %.not37.i = icmp eq i32 %i.hx, 0
  br i1 %.not37.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.hy = load ptr, ptr @environ, align 8
  call void @env_array_merge(ptr noundef nonnull %i.hk, ptr noundef %i.hy) #14
  br label %bb.da

bb.cv:                                            ; preds = %bb.ct
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 800), align 8
  %i.ia = call i32 @xstrcasecmp(ptr noundef %i.hz, ptr noundef nonnull @.str.27) #14
  %.not38.i = icmp eq i32 %i.ia, 0
  br i1 %.not38.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ib = call ptr @env_array_create() #14
  store ptr %i.ib, ptr %i.hk, align 8
  %i.ic = load ptr, ptr @environ, align 8
  call void @env_array_merge_slurm_spank(ptr noundef nonnull %i.hk, ptr noundef %i.ic) #14
  br label %bb.da

bb.cx:                                            ; preds = %bb.cv
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 800), align 8
  %i.ie = call i32 @xstrcasecmp(ptr noundef %i.id, ptr noundef nonnull @.str.28) #14
  %.not39.i = icmp eq i32 %i.ie, 0
  br i1 %.not39.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.if = call ptr @env_array_create() #14
  store ptr %i.if, ptr %i.hk, align 8
  %i.ig = load ptr, ptr @environ, align 8
  call void @env_array_merge_slurm_spank(ptr noundef nonnull %i.hk, ptr noundef %i.ig) #14
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 616), align 8
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  call void @env_merge_filter(ptr noundef nonnull @opt, ptr noundef nonnull %i.gr) #14
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 616), align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cw, %bb.cu, %bb.cs
  %i.ih = load i8, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 616), align 8, !range !21, !noundef !22
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ij = call i32 @env_array_overwrite(ptr noundef nonnull %i.hk, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #14 ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ik = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 252), align 4
  %i.il = and i32 %i.ik, 65535
  %i.im = icmp eq i32 %i.il, 3
  br i1 %i.im, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.in = getelementptr inbounds nuw i8, ptr %i.gr, i64 560
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = call i32 (ptr, ptr, ptr, ...) @env_array_overwrite_fmt(ptr noundef nonnull %i.hk, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.15, ptr noundef %i.io) #14 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.iq = load ptr, ptr %i.hk, align 8
  %i.ir = call i32 @envcount(ptr noundef %i.iq) #14
  %i.is = getelementptr inbounds nuw i8, ptr %i.gr, i64 292
  store i32 %i.ir, ptr %i.is, align 4
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 64), align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gr, i64 52
  store i32 %i.it, ptr %i.iu, align 4
  %i.iv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 72), align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  store ptr %i.iv, ptr %i.iw, align 8
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 808), align 8
  %i.iy = call ptr @xstrdup(ptr noundef %i.ix) #14
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gr, i64 872
  store ptr %i.iy, ptr %i.iz, align 8
  %i.ja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 816), align 8
  %i.jb = call ptr @xstrdup(ptr noundef %i.ja) #14
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gr, i64 880
  store ptr %i.jb, ptr %i.jc, align 8
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 824), align 8
  %i.je = call ptr @xstrdup(ptr noundef %i.jd) #14
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gr, i64 888
  store ptr %i.je, ptr %i.jf, align 8
  br label %bb.df

_fill_job_desc_from_opts.exit:                    ; preds = %bb.cg
  %i.jg = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.jg) #15
  unreachable

bb.df:                                            ; preds = %bb.de, %bb.cl
  %.not150 = icmp eq ptr %.0103207, null
  %spec.select153 = select i1 %.not150, ptr %i.gr, ptr %.0103207 ; 2 uses
  %i.jh = icmp eq i32 %.098210, 0
  %or.cond5 = and i1 %i.jh, %.192
  %i.ji = getelementptr inbounds nuw i8, ptr %spec.select153, i64 248
  %..098210 = select i1 %or.cond5, i32 -1, i32 %.098210
  call void @set_env_from_opts(ptr noundef nonnull @opt, ptr noundef nonnull %i.ji, i32 noundef %..098210) #14
  %.not151 = icmp eq ptr %.1, null                ; 4 uses
  br i1 %.not151, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.jj = load ptr, ptr %i.h, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gr, i64 592
  store ptr %i.jj, ptr %i.jk, align 8
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  call void @list_append(ptr noundef %.190, ptr noundef nonnull %i.gq) #14
  call void @list_append(ptr noundef nonnull %.1, ptr noundef nonnull %i.gr) #14
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %i.jl = add nuw nsw i32 %.098210, 1
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %.192, label %bb.dj, label %bb.at, !llvm.loop !14

bb.dj:                                            ; preds = %bb.di
  %.not129 = icmp eq ptr %.190, null
  br i1 %.not129, label %.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jm = call ptr @list_iterator_create(ptr noundef %.1) #14 ; 3 uses
  %i.jn = call ptr @list_iterator_create(ptr noundef nonnull %.190) #14 ; 4 uses
  %i.jo = call ptr @list_next(ptr noundef %i.jm) #14 ; 4 uses
  %.not130 = icmp eq ptr %i.jo, null
  br i1 %.not130, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 248 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 292
  %i.jr = call ptr @list_next(ptr noundef %i.jn) #14 ; 2 uses
  %.not131217 = icmp eq ptr %i.jr, null
  br i1 %.not131217, label %._crit_edge, label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph, %.lr.ph219
  %i.js = phi ptr [ %i.jw, %.lr.ph219 ], [ %i.jr, %.lr.ph ]
  %.096215218 = phi i32 [ %i.jt, %.lr.ph219 ], [ 0, %.lr.ph ] ; 2 uses
  %i.jt = add nuw nsw i32 %.096215218, 1
  call void @set_envs(ptr noundef nonnull %i.jp, ptr noundef nonnull %i.js, i32 noundef %.096215218) #14
  %i.ju = load ptr, ptr %i.jp, align 8
  %i.jv = call i32 @envcount(ptr noundef %i.ju) #14
  store i32 %i.jv, ptr %i.jq, align 4
  %i.jw = call ptr @list_next(ptr noundef %i.jn) #14 ; 2 uses
  %.not131 = icmp eq ptr %i.jw, null
  br i1 %.not131, label %._crit_edge, label %.lr.ph219

.thread:                                          ; preds = %bb.dj
  call void @set_envs(ptr noundef nonnull %i.hk, ptr noundef nonnull @het_job_env, i32 noundef -1) #14
  %i.jx = load ptr, ptr %i.hk, align 8
  %i.jy = call i32 @envcount(ptr noundef %i.jx) #14
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gr, i64 292
  store i32 %i.jy, ptr %i.jz, align 4
  br label %bb.dl

._crit_edge:                                      ; preds = %.lr.ph219, %.lr.ph
  call void @list_iterator_destroy(ptr noundef %i.jn) #14
  call void @list_iterator_destroy(ptr noundef %i.jm) #14
  br label %bb.dl

.critedge:                                        ; preds = %bb.dk
  call void @list_iterator_destroy(ptr noundef %i.jn) #14
  call void @list_iterator_destroy(ptr noundef %i.jm) #14
  %i.ka = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.9) #14 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.dl:                                            ; preds = %._crit_edge, %.thread
  %.1106173 = phi ptr [ %i.gr, %.thread ], [ %i.jo, %._crit_edge ] ; 3 uses
  %i.kb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 96), align 8 ; 3 uses
  %.not133 = icmp eq ptr %i.kb, null
  br i1 %.not133, label %bb.dr, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  br i1 %.not151, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.kc = call i32 @slurmdb_get_first_het_job_cluster(ptr noundef nonnull %.1, ptr noundef nonnull %i.kb, ptr noundef nonnull @working_cluster_rec) #14
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.kd = call i32 @slurmdb_get_first_avail_cluster(ptr noundef nonnull %.1106173, ptr noundef nonnull %i.kb, ptr noundef nonnull @working_cluster_rec) #14
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.094 = phi i32 [ %i.kc, %bb.dn ], [ %i.kd, %bb.do ]
  %.not135 = icmp eq i32 %.094, 0
  br i1 %.not135, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 96), align 8
  call void @print_db_notok(ptr noundef %i.ke, i1 noundef zeroext false) #14
  %i.kf = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.kf) #15
  unreachable

bb.dr:                                            ; preds = %bb.dp, %bb.dl
  %i.kg = load i8, ptr getelementptr inbounds nuw (i8, ptr @sbopt, i64 52), align 4, !range !21, !noundef !22
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.ds, label %.preheader

bb.ds:                                            ; preds = %bb.dr
  br i1 %.not151, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ki = call i32 @slurm_het_job_will_run(ptr noundef nonnull %.1) #14
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.kj = call i32 @slurm_job_will_run(ptr noundef nonnull %.1106173) #14
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.195 = phi i32 [ %i.ki, %bb.dt ], [ %i.kj, %bb.du ]
  %.not143 = icmp eq i32 %.195, 0
  br i1 %.not143, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @slurm_perror(ptr noundef nonnull @.str.10) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.dx:                                            ; preds = %bb.dv
  call void @exit(i32 noundef 0) #15
  unreachable

.preheader:                                       ; preds = %bb.dr, %bb.em
  %.093 = phi i32 [ %i.la, %bb.em ], [ 0, %bb.dr ] ; 3 uses
  br i1 %.not151, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.preheader
  %i.kk = call i32 @slurm_submit_batch_het_job(ptr noundef nonnull %.1, ptr noundef nonnull %i.g) #14
  br label %bb.ea

bb.dz:                                            ; preds = %.preheader
  %i.kl = call i32 @slurm_submit_batch_job(ptr noundef nonnull %.1106173, ptr noundef nonnull %i.g) #14
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.2 = phi i32 [ %i.kk, %bb.dy ], [ %i.kl, %bb.dz ] ; 2 uses
  %i.km = icmp sgt i32 %.2, -1
  br i1 %i.km, label %bb.en, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
end_hunk_0
