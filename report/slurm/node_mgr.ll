Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/node_mgr?download=true
inline.NumInlined: 54
inline.NumDeleted: 22
begin_hunk_0_@validate_node_specs:bb.a
  %.not2638.i = icmp eq ptr %i.dl, null
  br i1 %.not2638.i, label %_valid_reported_active_features.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %bb.ak
  %.01940.i = phi ptr [ %.2.i, %bb.ak ], [ null, %bb.ag ] ; 3 uses
  %.02139.i = phi ptr [ %i.do, %bb.ak ], [ %i.dl, %bb.ag ] ; 2 uses
  %i.dm = call zeroext i1 @node_features_g_changeable_feature(ptr noundef nonnull %.02139.i) #13
  br i1 %i.dm, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.lr.ph.i
  %.not31.i = icmp eq ptr %.01940.i, null
  br i1 %.not31.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dn = call ptr @list_create(ptr noundef null) #13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.120.i = phi ptr [ %.01940.i, %bb.ah ], [ %i.dn, %bb.ai ] ; 2 uses
  call void @list_append(ptr noundef %.120.i, ptr noundef nonnull %.02139.i) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i
  %.2.i = phi ptr [ %.120.i, %bb.aj ], [ %.01940.i, %.lr.ph.i ] ; 6 uses
  %i.do = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.d) #13 ; 2 uses
  %.not26.i = icmp eq ptr %i.do, null
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %bb.ak
  %.not27.i = icmp eq ptr %.2.i, null
  br i1 %.not27.i, label %_valid_reported_active_features.exit.thread.sink.split, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.dp = call i32 @list_count(ptr noundef nonnull %.2.i) #13
  %.not28.i = icmp eq i32 %i.dp, 0
  br i1 %.not28.i, label %_valid_reported_active_features.exit.thread.sink.split.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = call ptr @xstrdup(ptr noundef nonnull %i.dj) #13 ; 2 uses
  store ptr %i.dq, ptr %i.e, align 8
  %i.dr = call ptr @strtok_r(ptr noundef %i.dq, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.d) #13 ; 2 uses
  %.not2941.i = icmp eq ptr %i.dr, null
  br i1 %.not2941.i, label %.thread34.sink.split.i, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.am, %bb.ao
  %.12242.i = phi ptr [ %i.du, %bb.ao ], [ %i.dr, %bb.am ] ; 2 uses
  %i.ds = call zeroext i1 @node_features_g_changeable_feature(ptr noundef nonnull %.12242.i) #13
  br i1 %i.ds, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph44.i
  %i.dt = call i32 @list_delete_all(ptr noundef nonnull %.2.i, ptr noundef nonnull @slurm_find_char_in_list, ptr noundef nonnull %.12242.i) #13
  %.not30.i = icmp eq i32 %i.dt, 0
  br i1 %.not30.i, label %.critedge596, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph44.i
  %i.du = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.d) #13 ; 2 uses
  %.not29.i = icmp eq ptr %i.du, null
  br i1 %.not29.i, label %.thread34.sink.split.i, label %.lr.ph44.i, !llvm.loop !31

.thread34.sink.split.i:                           ; preds = %bb.ao, %bb.am
  call void @slurm_xfree(ptr noundef nonnull %i.e) #13
  br label %_valid_reported_active_features.exit.thread.sink.split.sink.split

.critedge596:                                     ; preds = %bb.an
  call void @slurm_xfree(ptr noundef nonnull %i.e) #13
  call void @list_destroy(ptr noundef nonnull %.2.i) #13
  call void @slurm_xfree(ptr noundef nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.dv = load ptr, ptr %i.di, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8
  %i.dw = call ptr @xstrdup(ptr noundef %i.dv) #13 ; 2 uses
  store ptr %i.dw, ptr %i.a, align 8
  %i.dx = call ptr @strtok_r(ptr noundef %i.dw, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not5.i = icmp eq ptr %i.dx, null
  br i1 %.not5.i, label %_node_changeable_features.exit, label %.lr.ph.i576

.lr.ph.i576:                                      ; preds = %.critedge596, %bb.aq
  %.06.i = phi ptr [ %i.eb, %bb.aq ], [ %i.dx, %.critedge596 ] ; 2 uses
  %i.dy = call zeroext i1 @node_features_g_changeable_feature(ptr noundef nonnull %.06.i) #13
  br i1 %i.dy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i576
  %i.dz = load ptr, ptr %i.c, align 8
  %.not4.i = icmp eq ptr %i.dz, null
  %i.ea = select i1 %.not4.i, ptr @.str.64, ptr @.str.62
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.ea, ptr noundef nonnull %.06.i) #13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i576
  %i.eb = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not.i577 = icmp eq ptr %i.eb, null
  br i1 %.not.i577, label %_node_changeable_features.exit, label %.lr.ph.i576, !llvm.loop !32

_node_changeable_features.exit:                   ; preds = %bb.aq, %.critedge596
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  %i.ec = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store ptr %i.ec, ptr %i.k, align 8
  %i.ed = call i32 @get_log_level() #13
  %i.ee = icmp sgt i32 %i.ed, 4
  br i1 %i.ee, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_node_changeable_features.exit
  %i.ef = load ptr, ptr %i.u, align 8
  %i.eg = load ptr, ptr %i.dg, align 8
  %i.eh = load ptr, ptr %i.k, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.71, ptr noundef %i.ef, ptr noundef %i.eg, ptr noundef %i.eh) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_node_changeable_features.exit
  %i.ei = load ptr, ptr %i.g, align 8
  %.not465 = icmp eq ptr %i.ei, null
  %i.ej = select i1 %.not465, ptr @.str.64, ptr @.str.73
  %i.ek = load ptr, ptr %i.dg, align 8
  %i.el = load ptr, ptr %i.k, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.ej, ptr noundef %i.ek, ptr noundef %i.el) #13
  call void @slurm_xfree(ptr noundef nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %bb.at

_valid_reported_active_features.exit.thread.sink.split.sink.split: ; preds = %bb.al, %.thread34.sink.split.i
  call void @list_destroy(ptr noundef nonnull %.2.i) #13
  br label %_valid_reported_active_features.exit.thread.sink.split

_valid_reported_active_features.exit.thread.sink.split: ; preds = %_valid_reported_active_features.exit.thread.sink.split.sink.split, %bb.ag, %._crit_edge.i
  call void @slurm_xfree(ptr noundef nonnull %i.f) #13
  br label %_valid_reported_active_features.exit.thread

_valid_reported_active_features.exit.thread:      ; preds = %_valid_reported_active_features.exit.thread.sink.split, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.em = load ptr, ptr %i.dg, align 8
  %i.en = load ptr, ptr %i.i, align 8
  %i.eo = load ptr, ptr %i.h, align 8
  %i.ep = load i32, ptr %i.al, align 8
  %i.eq = call ptr @node_features_g_node_xlate(ptr noundef %i.em, ptr noundef %i.en, ptr noundef %i.eo, i32 noundef %i.ep) #13 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.di) #13
  store ptr %i.eq, ptr %i.di, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = call i32 @update_node_active_features(ptr noundef %i.es, ptr noundef %i.eq, i32 noundef 0) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_valid_reported_active_features.exit.thread, %bb.ae
  %.0421 = phi i32 [ 0, %_valid_reported_active_features.exit.thread ], [ 22, %bb.as ], [ 0, %bb.ae ]
  call void @slurm_xfree(ptr noundef nonnull %i.h) #13
  call void @slurm_xfree(ptr noundef nonnull %i.i) #13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 4 uses
  %i.ev = load i16, ptr %i.eu, align 8
  %i.ew = zext i16 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ey = load i16, ptr %i.ex, align 8
  %i.ez = zext i16 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.ez, %i.ew
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 218 ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = zext i16 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.fa, %i.fd            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.w, i64 280 ; 10 uses
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call i32 @gres_node_config_unpack(ptr noundef %i.fg, ptr noundef %i.fi) #13
  %.not466 = icmp eq i32 %i.fj, 0
  br i1 %.not466, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_xstrcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.74) #13
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.fk = load i16, ptr %i.fb, align 2
  %i.fl = zext i16 %i.fk to i32
  %i.fm = load i16, ptr %i.ex, align 8
  %i.fn = zext i16 %i.fm to i32
  %i.fo = load i16, ptr %i.eu, align 8
  %i.fp = zext i16 %i.fo to i32
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 284), align 4
  %i.fr = trunc i32 %i.fq to i1
  %i.fs = call i32 @gres_node_config_validate(ptr noundef nonnull %i.w, i32 noundef %i.fl, i32 noundef %i.fn, i32 noundef %i.fp, i1 noundef zeroext %i.fr, ptr noundef nonnull %i.g) #13
  %.not467 = icmp eq i32 %i.fs, 0
  %spec.select = select i1 %.not467, i32 %.0421, i32 22
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1422 = phi i32 [ -1, %bb.au ], [ %spec.select, %bb.av ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.w, i64 208 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = load ptr, ptr %i.fh, align 8
  call void @gres_node_state_log(ptr noundef %i.fu, ptr noundef %i.fv) #13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.w, i64 436
  %i.fx = load i16, ptr %i.fw, align 4            ; 3 uses
  %.not468 = icmp eq i16 %i.fx, 0
  br i1 %.not468, label %bb.cb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fy = zext i16 %i.fx to i32                   ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.w, i64 184 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.fz) #13
  %i.ga = getelementptr inbounds nuw i8, ptr %i.w, i64 192 ; 11 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %.not.i579 = icmp eq ptr %i.gb, null
  br i1 %.not.i579, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @slurm_bit_free(ptr noundef nonnull %i.ga) #13
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  store ptr null, ptr %i.ga, align 8
  %i.gc = load i32, ptr @_set_gpu_spec.gpu_plugin_id, align 4
  %i.gd = icmp eq i32 %i.gc, -2
  br i1 %i.gd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ge = call i32 @gres_build_id(ptr noundef nonnull @.str.155) #13
  store i32 %i.ge, ptr @_set_gpu_spec.gpu_plugin_id, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gf = load ptr, ptr %i.ft, align 8
  %i.gg = call ptr @list_find_first(ptr noundef %i.gf, ptr noundef nonnull @gres_find_id, ptr noundef nonnull @_set_gpu_spec.gpu_plugin_id) #13 ; 2 uses
  %.not91.i = icmp eq ptr %i.gg, null
  br i1 %.not91.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gh = load ptr, ptr %i.g, align 8
  %.not92.i = icmp eq ptr %i.gh, null
  %i.gi = select i1 %.not92.i, ptr @.str.64, ptr @.str.73
  %i.gj = load ptr, ptr %i.fh, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.gi, i32 noundef %i.fy, ptr noundef %i.gj) #13
  br label %_set_gpu_spec.exit.thread

bb.bd:                                            ; preds = %bb.bb
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8            ; 7 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64 ; 4 uses
  %i.gn = load i16, ptr %i.gm, align 8            ; 2 uses
  %.not93.i = icmp eq i16 %i.gn, 0
  br i1 %.not93.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 80 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8
  %.not94.i = icmp eq ptr %i.gp, null
  br i1 %.not94.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gq = load ptr, ptr %i.g, align 8
  %.not95.i = icmp eq ptr %i.gq, null
  %i.gr = select i1 %.not95.i, ptr @.str.64, ptr @.str.73
  %i.gs = load ptr, ptr %i.fh, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.gr, i32 noundef %i.fy, ptr noundef %i.gs) #13
  br label %_set_gpu_spec.exit.thread

bb.bg:                                            ; preds = %bb.be
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 88 ; 8 uses
  %i.gu = load ptr, ptr %i.gt, align 8
  %.not96.i = icmp eq ptr %i.gu, null
  br i1 %.not96.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gv = zext i16 %i.gn to i64
  %i.gw = call ptr @slurm_xcalloc(i64 noundef %i.gv, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef 3248, ptr noundef nonnull @__func__._set_gpu_spec) #13
  store ptr %i.gw, ptr %i.gt, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.gx = getelementptr inbounds nuw i8, ptr %i.w, i64 552 ; 4 uses
  %i.gy = load i16, ptr %i.gx, align 8
  %i.gz = zext i16 %i.gy to i64
  %i.ha = call ptr @bit_alloc(i64 noundef %i.gz) #13
  store ptr %i.ha, ptr %i.ga, align 8
  %i.hb = load i16, ptr %i.gm, align 8            ; 2 uses
  %.not107116.not.i = icmp eq i16 %i.hb, 0
  br i1 %.not107116.not.i, label %.loopexit, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.bi
  %2 = zext i16 %i.fx to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 112
  %i.hd = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bu, %.lr.ph119.i
  %i.he = phi i16 [ %i.hb, %.lr.ph119.i ], [ %i.io, %bb.bu ]
  %indvars.iv125.i = phi i64 [ 0, %.lr.ph119.i ], [ %indvars.iv.next126.i, %bb.bu ] ; 10 uses
  %i.hf = load ptr, ptr %i.go, align 8
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv125.i
  %i.hh = load ptr, ptr %i.hg, align 8
  %.not97.i = icmp eq ptr %i.hh, null
  br i1 %.not97.i, label %bb.bu, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hi = load ptr, ptr %i.gt, align 8            ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv125.i ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8
  %.not98.i = icmp eq ptr %i.hk, null
  br i1 %.not98.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @slurm_bit_free(ptr noundef nonnull %i.hj) #13
  %.pre.i = load ptr, ptr %i.gt, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.hl = phi ptr [ %.pre.i, %bb.bl ], [ %i.hi, %bb.bk ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv125.i
  store ptr null, ptr %i.hm, align 8
  %i.hn = load i16, ptr %i.gx, align 8
  %i.ho = zext i16 %i.hn to i64
  %i.hp = call ptr @bit_alloc(i64 noundef %i.ho) #13
  %i.hq = load ptr, ptr %i.gt, align 8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv125.i
  store ptr %i.hp, ptr %i.hr, align 8
  %i.hs = load ptr, ptr %i.hc, align 8
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv125.i
  %i.hu = load i64, ptr %i.ht, align 8
  %3 = mul i64 %i.hu, %2
  %4 = trunc i64 %3 to i32                        ; 2 uses
  %i.hv = load i16, ptr %i.gx, align 8
  %.not120.i = icmp eq i16 %i.hv, 0
  br i1 %.not120.i, label %._crit_edge.i581, label %.lr.ph.i580

.lr.ph.i580:                                      ; preds = %bb.bm, %bb.br
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.br ], [ 0, %bb.bm ] ; 6 uses
  %.077112.i = phi i32 [ %.1.i, %bb.br ], [ 0, %bb.bm ] ; 4 uses
  %i.hw = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not99.i = icmp eq ptr %i.hw, null
  br i1 %.not99.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i580
  %i.hx = call i32 @slurm_bit_test(ptr noundef nonnull %i.hw, i64 noundef %indvars.iv.i) #13
  %.not100.i = icmp eq i32 %i.hx, 0
  br i1 %.not100.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i580
  %i.hy = load ptr, ptr %i.go, align 8
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv125.i
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = call i32 @slurm_bit_test(ptr noundef %i.ia, i64 noundef %indvars.iv.i) #13
  %.not101.i = icmp eq i32 %i.ib, 0
  br i1 %.not101.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ic = load ptr, ptr %i.ga, align 8
  %i.id = call i32 @slurm_bit_test(ptr noundef %i.ic, i64 noundef %indvars.iv.i) #13
  %.not102.i = icmp eq i32 %i.id, 0
  br i1 %.not102.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ie = load ptr, ptr %i.ga, align 8
  call void @bit_set(ptr noundef %i.ie, i64 noundef %indvars.iv.i) #13
  %i.if = load ptr, ptr %i.gt, align 8
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv125.i
  %i.ih = load ptr, ptr %i.ig, align 8
  call void @bit_set(ptr noundef %i.ih, i64 noundef %indvars.iv.i) #13
  %i.ii = add nsw i32 %.077112.i, 1               ; 3 uses
  %.not103.i = icmp ult i32 %i.ii, %4
  br i1 %.not103.i, label %bb.br, label %._crit_edge.i581

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %.1.i = phi i32 [ %.077112.i, %bb.bp ], [ %i.ii, %bb.bq ], [ %.077112.i, %bb.bo ], [ %.077112.i, %bb.bn ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ij = load i16, ptr %i.gx, align 8
  %i.ik = zext i16 %i.ij to i64
  %i.il = icmp samesign ult i64 %indvars.iv.next.i, %i.ik
  br i1 %i.il, label %.lr.ph.i580, label %._crit_edge.i581, !llvm.loop !33

._crit_edge.i581:                                 ; preds = %bb.br, %bb.bq, %bb.bm
  %.2.i582 = phi i32 [ 0, %bb.bm ], [ %.1.i, %bb.br ], [ %i.ii, %bb.bq ] ; 2 uses
  %.not104.i = icmp eq i32 %.2.i582, %4
  br i1 %.not104.i, label %._crit_edge._crit_edge.i, label %bb.bs

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i581
  %.pre128.i = load i16, ptr %i.gm, align 8
  br label %bb.bu

bb.bs:                                            ; preds = %._crit_edge.i581
  %i.im = trunc nuw nsw i64 %indvars.iv125.i to i32
  %i.in = load ptr, ptr %i.ga, align 8
  %.not105.i = icmp eq ptr %i.in, null
  br i1 %.not105.i, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @slurm_bit_free(ptr noundef nonnull %i.ga) #13
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge._crit_edge.i, %bb.bj
  %i.io = phi i16 [ %.pre128.i, %._crit_edge._crit_edge.i ], [ %i.he, %bb.bj ] ; 3 uses
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %i.ip = zext i16 %i.io to i64
  %.not107.i = icmp samesign ult i64 %indvars.iv.next126.i, %i.ip
  br i1 %.not107.i, label %bb.bj, label %.critedge.i, !llvm.loop !34

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  store ptr null, ptr %i.ga, align 8
  %i.iq = load ptr, ptr %i.g, align 8
  %.not106.i = icmp eq ptr %i.iq, null
  %i.ir = select i1 %.not106.i, ptr @.str.64, ptr @.str.73
  %i.is = getelementptr inbounds nuw i8, ptr %i.gl, i64 128
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv125.i
  %i.iv = load ptr, ptr %i.iu, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.ir, i32 noundef %i.fy, ptr noundef %i.iv, i32 noundef %i.im, i32 noundef %.2.i582) #13
  br label %_set_gpu_spec.exit.thread

.critedge.i:                                      ; preds = %bb.bu
  %i.iw = icmp eq i16 %i.io, 0
  %i.ix = load ptr, ptr %i.gl, align 8            ; 2 uses
  %.not108.i = icmp eq ptr %i.ix, null
  %brmerge.i = or i1 %i.iw, %.not108.i
  br i1 %brmerge.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %.critedge.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8            ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 64 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gl, i64 96
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 96
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 88 ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.i.i, %.lr.ph27.i.i
  %indvars.iv32.i.i = phi i64 [ 0, %.lr.ph27.i.i ], [ %indvars.iv.next33.i.i, %.loopexit.i.i ] ; 4 uses
  %i.je = load ptr, ptr %i.gt, align 8
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv32.i.i
  %i.jg = load ptr, ptr %i.jf, align 8
  %.not.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bw
  %i.jh = load i16, ptr %i.ja, align 8
  %.not29.i.i = icmp eq i16 %i.jh, 0
  br i1 %.not29.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.bx:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ji = load i16, ptr %i.ja, align 8
  %i.jj = zext i16 %i.ji to i64
  %i.jk = icmp samesign ult i64 %indvars.iv.next.i.i, %i.jj
  br i1 %i.jk, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !35

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.bx
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bx ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.jl = load ptr, ptr %i.jb, align 8
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv32.i.i
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = load ptr, ptr %i.jc, align 8
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv.i.i
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = call i32 @bit_overlap_any(ptr noundef %i.jn, ptr noundef %i.jq) #13
  %.not23.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not23.i.i, label %bb.bx, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i
  %i.js = load ptr, ptr %i.jd, align 8            ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.i.i ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8
  %.not24.i.i = icmp eq ptr %i.ju, null
  br i1 %.not24.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @slurm_bit_free(ptr noundef nonnull %i.jt) #13
  %.pre.i.i = load ptr, ptr %i.jd, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.jv = phi ptr [ %.pre.i.i, %bb.bz ], [ %i.js, %bb.by ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv.i.i
  store ptr null, ptr %i.jw, align 8
  %i.jx = load ptr, ptr %i.gt, align 8
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv32.i.i
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = call ptr @bit_copy(ptr noundef %i.jz) #13
  %i.kb = load ptr, ptr %i.jd, align 8
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv.i.i
  store ptr %i.ka, ptr %i.kc, align 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bx, %bb.ca, %.preheader.i.i, %bb.bw
  %indvars.iv.next33.i.i = add nuw nsw i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.kd = load i16, ptr %i.gm, align 8
  %i.ke = zext i16 %i.kd to i64
  %i.kf = icmp samesign ult i64 %indvars.iv.next33.i.i, %i.ke
  br i1 %i.kf, label %bb.bw, label %.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %.loopexit.i.i, %.critedge.i, %bb.bi
  %i.kg = load ptr, ptr %i.ga, align 8
  %i.kh = call ptr @bit_fmt_full(ptr noundef %i.kg) #13
  store ptr %i.kh, ptr %i.fz, align 8
  %i.ki = load ptr, ptr %i.ga, align 8
  call void @bit_not(ptr noundef %i.ki) #13
  br label %_set_gpu_spec.exit.thread

bb.cb:                                            ; preds = %bb.aw
  %i.kj = getelementptr inbounds nuw i8, ptr %i.w, i64 192 ; 3 uses
  %i.kk = load ptr, ptr %i.kj, align 8
  %.not469 = icmp eq ptr %i.kk, null
  br i1 %.not469, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @slurm_bit_free(ptr noundef nonnull %i.kj) #13
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store ptr null, ptr %i.kj, align 8
  br label %_set_gpu_spec.exit.thread

_set_gpu_spec.exit.thread:                        ; preds = %bb.bc, %bb.bf, %bb.bv, %.loopexit, %bb.cd
  %.2423 = phi i32 [ %.1422, %bb.cd ], [ %.1422, %.loopexit ], [ 22, %bb.bv ], [ 22, %bb.bf ], [ 22, %bb.bc ] ; 3 uses
  %i.kl = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 284), align 4
  %i.km = and i32 %i.kl, 1
  %.not471 = icmp eq i32 %i.km, 0
  br i1 %.not471, label %bb.ce, label %.thread653

bb.ce:                                            ; preds = %_set_gpu_spec.exit.thread
  %i.kn = getelementptr inbounds nuw i8, ptr %i.aq, i64 112 ; 2 uses
  %i.ko = load i16, ptr %i.kn, align 8
  %i.kp = zext i16 %i.ko to i32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.kr = load i16, ptr %i.kq, align 4
  %i.ks = zext i16 %i.kr to i32
  %i.kt = mul nuw nsw i32 %i.ks, %i.kp
  %i.ku = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.kv = load i16, ptr %i.ku, align 8
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.kt, %i.kw            ; 2 uses
  %i.ky = icmp samesign ult i32 %i.fe, %i.kx
  br i1 %i.ky, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.kz = call i32 @get_log_level() #13
  %i.la = icmp sgt i32 %i.kz, 4
  br i1 %i.la, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.lb = load ptr, ptr %i.u, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.75, ptr noundef %i.lb, i32 noundef %i.fe, i32 noundef %i.kx) #13
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.lc = load ptr, ptr %i.g, align 8
  %.not472 = icmp eq ptr %i.lc, null
  br i1 %.not472, label %.thread650, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_xstrcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.73) #13
  br label %.thread650

bb.cj:                                            ; preds = %bb.ce
  %i.ld = getelementptr inbounds nuw i8, ptr %i.t, i64 10 ; 2 uses
  %i.le = load i16, ptr %i.ld, align 2
  %i.lf = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.lg = load i16, ptr %i.lf, align 8
  %i.lh = icmp ult i16 %i.le, %i.lg
  br i1 %i.lh, label %bb.ck, label %bb.co

.thread650:                                       ; preds = %bb.ch, %bb.ci
  call void @_xstrcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.76) #13
  %i.li = getelementptr inbounds nuw i8, ptr %i.t, i64 10 ; 2 uses
  %i.lj = load i16, ptr %i.li, align 2
  %i.lk = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.ll = load i16, ptr %i.lk, align 8
  %i.lm = icmp ult i16 %i.lj, %i.ll
  br i1 %i.lm, label %bb.ck, label %.thread653

bb.ck:                                            ; preds = %.thread650, %bb.cj
  %i.ln = phi ptr [ %i.lk, %.thread650 ], [ %i.lf, %bb.cj ]
  %i.lo = phi ptr [ %i.li, %.thread650 ], [ %i.ld, %bb.cj ]
  %i.lp = call i32 @get_log_level() #13
  %i.lq = icmp sgt i32 %i.lp, 4
end_hunk_0
