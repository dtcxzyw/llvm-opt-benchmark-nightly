Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_reports?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@_run_report:bb.a
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  %i.fh = tail call i64 @parse_time(ptr noundef nonnull %i.fg, i32 noundef 1) #12
  store i64 %i.fh, ptr %i.x, align 8
  br label %.loopexit.i

bb.be:                                            ; preds = %bb.bc
  %i.fi = tail call i32 @xstrncasecmp(ptr noundef %i.fe, ptr noundef nonnull @.str.38, i64 noundef %i.ay) #12
  %.not240.i = icmp eq i32 %i.fi, 0
  br i1 %.not240.i, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.fj = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not241.i = icmp eq ptr %i.fj, null
  br i1 %.not241.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fk = tail call ptr @list_create(ptr noundef nonnull @xfree_ptr) #12 ; 2 uses
  store ptr %i.fk, ptr %i.w, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fl = phi ptr [ %i.fk, %bb.bg ], [ %i.fj, %bb.bf ]
  %i.fm = load ptr, ptr %i.ae, align 8
  %i.fn = sext i32 %i.ag to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  %i.fp = tail call i32 @slurm_addto_id_char_list(ptr noundef %i.fl, ptr noundef nonnull %i.fo, i1 noundef zeroext false) #12
  %.not242.i = icmp eq i32 %i.fp, 0
  br i1 %.not242.i, label %bb.bi, label %.loopexit.i

bb.bi:                                            ; preds = %bb.bh
  store i32 1, ptr @exit_code, align 4
  br label %.loopexit.i

bb.bj:                                            ; preds = %bb.be
  %i.fq = load ptr, ptr %i.ae, align 8
  %i.fr = tail call i32 @xstrncasecmp(ptr noundef %i.fq, ptr noundef nonnull @.str.39, i64 noundef %i.bh) #12
  %.not243.i = icmp eq i32 %i.fr, 0
  br i1 %.not243.i, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.fs = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not244.i = icmp eq ptr %i.fs, null
  br i1 %.not244.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ft = tail call ptr @list_create(ptr noundef nonnull @xfree_ptr) #12 ; 2 uses
  store ptr %i.ft, ptr %i.v, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fu = phi ptr [ %i.ft, %bb.bl ], [ %i.fs, %bb.bk ]
  %i.fv = load ptr, ptr %i.ae, align 8
  %i.fw = sext i32 %i.ag to i64
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 %i.fw
  %i.fy = tail call i32 @slurm_addto_char_list(ptr noundef %i.fu, ptr noundef nonnull %i.fx) #12 ; 0 uses
  br label %.loopexit.i

bb.bn:                                            ; preds = %bb.bj
  store i32 1, ptr @exit_code, align 4
  %i.fz = load ptr, ptr @stderr, align 8
  %i.ga = load ptr, ptr %i.ae, align 8
  %i.gb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.40, ptr noundef %i.ga) #15 ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.backedge.i, %bb.bn, %bb.bm, %bb.bi, %bb.bh, %bb.bd, %bb.bb, %bb.ax, %bb.al, %bb.ah, %bb.ag, %bb.af, %bb.ac, %bb.y, %bb.x, %bb.v, %bb.t, %bb.p, %.critedge246.i, %bb.k, %bb.j, %bb.i, %bb.g
  %.1196.i = phi i32 [ %.0195266.i, %bb.bn ], [ %.0195266.i, %bb.bm ], [ %.0195266.i, %bb.bh ], [ %.0195266.i, %bb.bi ], [ %.0195266.i, %bb.bd ], [ %.0195266.i, %bb.bb ], [ %.0195266.i, %bb.ax ], [ 1, %bb.g ], [ %.0195266.i, %bb.ah ], [ %.0195266.i, %bb.ag ], [ %.0195266.i, %bb.af ], [ %.0195266.i, %bb.ac ], [ %.0195266.i, %bb.y ], [ %.0195266.i, %bb.x ], [ %.0195266.i, %bb.v ], [ %.0195266.i, %bb.t ], [ %.0195266.i, %bb.p ], [ %.0195266.i, %.critedge246.i ], [ %.0195266.i, %bb.k ], [ %.0195266.i, %bb.j ], [ %.0195266.i, %bb.i ], [ %.0195266.i, %bb.al ], [ %.0195266.i, %.backedge.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gc = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.gc, label %.loopexit251.i, label %bb.f, !llvm.loop !11

.loopexit251.i:                                   ; preds = %.loopexit.i, %bb.aw, %bb.e
  %.0195253.i = phi i32 [ %.0195266.i, %bb.aw ], [ %i.n, %bb.e ], [ %.1196.i, %.loopexit.i ]
  %.not235.i = icmp eq i32 %.0195253.i, 0
  br i1 %.not235.i, label %bb.bo, label %_set_cond.exit

bb.bo:                                            ; preds = %.loopexit251.i
  %i.gd = load ptr, ptr %i.o, align 8
  %i.ge = tail call i32 @list_count(ptr noundef %i.gd) #12
  %.not236.i = icmp eq i32 %i.ge, 0
  br i1 %.not236.i, label %bb.bp, label %_set_cond.exit

bb.bp:                                            ; preds = %bb.bo
  %i.gf = load ptr, ptr %i.o, align 8
  %i.gg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 264), align 8
  %i.gh = tail call ptr @xstrdup(ptr noundef %i.gg) #12
  tail call void @list_append(ptr noundef %i.gf, ptr noundef %i.gh) #12
  br label %_set_cond.exit

_set_cond.exit:                                   ; preds = %.loopexit251.i, %bb.bo, %bb.bp
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8
  store i64 %i.gj, ptr %i.b, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 4 uses
  %i.gl = load i64, ptr %i.gk, align 8
  store i64 %i.gl, ptr %i.c, align 8
  %i.gm = call i32 @slurmdb_report_set_start_end_time(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.gn = load i64, ptr %i.b, align 8
  store i64 %i.gn, ptr %i.gi, align 8
  %i.go = load i64, ptr %i.c, align 8
  store i64 %i.go, ptr %i.gk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.b133 = load i1, ptr @individual_grouping, align 1
  br i1 %.b133, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %_set_cond.exit
  %i.gp = call i32 @list_count(ptr noundef %i.l) #12
  %.not = icmp eq i32 %i.gp, 0
  br i1 %.not, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gq = call i32 @slurm_addto_char_list(ptr noundef %i.l, ptr noundef nonnull @.str.2) #12 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %_set_cond.exit
  %i.gr = load ptr, ptr @db_conn, align 8         ; 3 uses
  switch i32 %0, label %default.unreachable277 [
    i32 0, label %bb.bt
    i32 1, label %bb.bw
    i32 2, label %bb.bz
  ]

bb.bt:                                            ; preds = %bb.bs
  %.b135 = load i1, ptr @flat_view, align 1
  %.b137 = load i1, ptr @acct_as_parent, align 1
  %i.gs = call ptr @slurmdb_report_job_sizes_grouped_by_account(ptr noundef %i.gr, ptr noundef nonnull %i.j, ptr noundef %i.l, i1 noundef zeroext %.b135, i1 noundef zeroext %.b137) #12 ; 3 uses
  %.not145 = icmp eq ptr %i.gs, null
  br i1 %.not145, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 1, ptr @exit_code, align 4
  br label %bb.fq

bb.bv:                                            ; preds = %bb.bt
  %i.gt = call i32 @list_count(ptr noundef %i.k) #12
  %.not146 = icmp eq i32 %i.gt, 0
  br i1 %.not146, label %.sink.split, label %bb.cc

bb.bw:                                            ; preds = %bb.bs
  %i.gu = call ptr @slurmdb_report_job_sizes_grouped_by_wckey(ptr noundef %i.gr, ptr noundef nonnull %i.j, ptr noundef %i.l) #12 ; 3 uses
  %.not143 = icmp eq ptr %i.gu, null
  br i1 %.not143, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 1, ptr @exit_code, align 4
  br label %bb.fq

bb.by:                                            ; preds = %bb.bw
  %i.gv = call i32 @list_count(ptr noundef %i.k) #12
  %.not144 = icmp eq i32 %i.gv, 0
  br i1 %.not144, label %.sink.split, label %bb.cc

bb.bz:                                            ; preds = %bb.bs
  %.b134 = load i1, ptr @flat_view, align 1
  %.b136 = load i1, ptr @acct_as_parent, align 1
  %i.gw = call ptr @slurmdb_report_job_sizes_grouped_by_account_then_wckey(ptr noundef %i.gr, ptr noundef nonnull %i.j, ptr noundef %i.l, i1 noundef zeroext %.b134, i1 noundef zeroext %.b136) #12 ; 3 uses
  %.not141 = icmp eq ptr %i.gw, null
  br i1 %.not141, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 1, ptr @exit_code, align 4
  br label %bb.fq

bb.cb:                                            ; preds = %bb.bz
  %i.gx = call i32 @list_count(ptr noundef %i.k) #12
  %.not142 = icmp eq i32 %i.gx, 0
  br i1 %.not142, label %.sink.split, label %bb.cc

default.unreachable277:                           ; preds = %bb.bs
  unreachable

.sink.split:                                      ; preds = %bb.cb, %bb.by, %bb.bv
  %.str.4.sink = phi ptr [ @.str.3, %bb.bv ], [ @.str.4, %bb.by ], [ @.str.6, %bb.cb ]
  %.0105.ph = phi ptr [ %i.gs, %bb.bv ], [ %i.gu, %bb.by ], [ %i.gw, %bb.cb ]
  %.0104.ph = phi ptr [ @.str.1, %bb.bv ], [ @.str.5, %bb.by ], [ @.str.1, %bb.cb ]
  %i.gy = call i32 @slurm_addto_char_list(ptr noundef %i.k, ptr noundef nonnull %.str.4.sink) #12 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.sink.split, %bb.by, %bb.cb, %bb.bv
  %.0105 = phi ptr [ %i.gs, %bb.bv ], [ %i.gw, %bb.cb ], [ %i.gu, %bb.by ], [ %.0105.ph, %.sink.split ] ; 7 uses
  %.0104 = phi ptr [ @.str.1, %bb.bv ], [ @.str.1, %bb.cb ], [ @.str.5, %bb.by ], [ %.0104.ph, %.sink.split ]
  %i.gz = load ptr, ptr @fed_name, align 8
  %.not147 = icmp eq ptr %i.gz, null
  br i1 %.not147, label %_merge_cluster_groups.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ha = call i32 @list_count(ptr noundef nonnull %.0105) #12
  %i.hb = icmp slt i32 %i.ha, 2
  br i1 %i.hb, label %_merge_cluster_groups.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hc = call ptr @list_iterator_create(ptr noundef nonnull %.0105) #12 ; 5 uses
  %i.hd = call ptr @list_next(ptr noundef %i.hc) #12 ; 2 uses
  %.not2733.i = icmp eq ptr %i.hd, null
  br i1 %.not2733.i, label %.outer._crit_edge.i, label %.lr.ph.i170

.lr.ph.i170:                                      ; preds = %bb.ce, %.outer.i
  %i.he = phi ptr [ %i.hs, %.outer.i ], [ %i.hd, %bb.ce ] ; 3 uses
  %.0.ph34.i = phi ptr [ %i.he, %.outer.i ], [ null, %bb.ce ] ; 5 uses
  %.not23.i = icmp eq ptr %.0.ph34.i, null
  br i1 %.not23.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i170
  %5 = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 3 uses
  call void @slurm_xfree(ptr noundef nonnull %5) #12
  %6 = load ptr, ptr @fed_name, align 8           ; 2 uses
  %.not24.i = icmp eq ptr %6, null
  br i1 %.not24.i, label %bb.ch, label %bb.cg

.lr.ph.split.i:                                   ; preds = %.lr.ph.i170
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.ph34.i, i64 16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.ph34.i, i64 24
  br label %bb.cf

bb.cf:                                            ; preds = %_combine_acct_groups.exit.i, %.lr.ph.split.i
  %i.hh = phi ptr [ %i.he, %.lr.ph.split.i ], [ %i.jg, %_combine_acct_groups.exit.i ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = load i32, ptr %i.hf, align 8
  %i.hl = add i32 %i.hk, %i.hj
  store i32 %i.hl, ptr %i.hf, align 8
  %i.hm = load ptr, ptr %i.hg, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void @combine_tres_list(ptr noundef %i.hm, ptr noundef %i.ho) #12
  %i.hp = load ptr, ptr %.0.ph34.i, align 8       ; 3 uses
  %.not25.i = icmp eq ptr %i.hp, null
  %i.hq = load ptr, ptr %i.hh, align 8            ; 5 uses
  br i1 %.not25.i, label %bb.ci, label %bb.cj

bb.cg:                                            ; preds = %.lr.ph.split.us.i
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %5, ptr noundef nonnull @.str.41, ptr noundef nonnull %6) #12
  br label %.outer.i

bb.ch:                                            ; preds = %.lr.ph.split.us.i
  %i.hr = call ptr @xstrdup(ptr noundef nonnull @.str.42) #12
  store ptr %i.hr, ptr %5, align 8
  br label %.outer.i

.outer.i:                                         ; preds = %bb.ch, %bb.cg
  %i.hs = call ptr @list_next(ptr noundef %i.hc) #12 ; 2 uses
  %.not27.i = icmp eq ptr %i.hs, null
  br i1 %.not27.i, label %.outer._crit_edge.i, label %.lr.ph.i170, !llvm.loop !12

bb.ci:                                            ; preds = %bb.cf
  store ptr %i.hq, ptr %.0.ph34.i, align 8
  store ptr null, ptr %i.hh, align 8
  br label %_combine_acct_groups.exit.i

bb.cj:                                            ; preds = %bb.cf
  %.not.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i, label %_combine_acct_groups.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ht = call ptr @list_iterator_create(ptr noundef nonnull %i.hp) #12 ; 3 uses
  %i.hu = call ptr @list_next(ptr noundef %i.ht) #12 ; 2 uses
  %.not2528.i.i = icmp eq ptr %i.hu, null
  br i1 %.not2528.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ck, %.backedge.i.i
  %i.hv = phi ptr [ %i.jc, %.backedge.i.i ], [ %i.hu, %bb.ck ] ; 4 uses
  %i.hw = call ptr @list_find_first(ptr noundef nonnull %i.hq, ptr noundef nonnull @_match_acct_name, ptr noundef nonnull %i.hv) #12 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.hw, null
  br i1 %.not26.i.i, label %.backedge.i.i, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load i32, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8
  %i.ib = add i32 %i.ia, %i.hy
  store i32 %i.ib, ptr %i.hz, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.id = load ptr, ptr %i.ic, align 8            ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.if = load ptr, ptr %i.ie, align 8            ; 4 uses
  %i.ig = icmp ne ptr %i.id, null
  %i.ih = icmp ne ptr %i.if, null
  %or.cond.i.i.i = and i1 %i.ig, %i.ih
  br i1 %or.cond.i.i.i, label %bb.cm, label %_combine_job_groups.exit.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.ii = call ptr @list_iterator_create(ptr noundef nonnull %i.id) #12 ; 3 uses
  %i.ij = call ptr @list_next(ptr noundef %i.ii) #12 ; 2 uses
  %.not25.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not25.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cm, %.backedge.i.i.i
  %i.ik = phi ptr [ %i.iu, %.backedge.i.i.i ], [ %i.ij, %bb.cm ] ; 4 uses
  %i.il = call ptr @list_find_first(ptr noundef nonnull %i.if, ptr noundef nonnull @_match_job_group, ptr noundef nonnull %i.ik) #12 ; 3 uses
  %.not23.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not23.i.i.i, label %.backedge.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i.i
  %i.im = load i32, ptr %i.il, align 8
  %i.in = load i32, ptr %i.ik, align 8
  %i.io = add i32 %i.in, %i.im
  store i32 %i.io, ptr %i.ik, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 24 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8
  call void @combine_tres_list(ptr noundef %i.iq, ptr noundef %i.is) #12
  %i.it = load ptr, ptr %i.ir, align 8            ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not24.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @list_destroy(ptr noundef nonnull %i.it) #12
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  store ptr null, ptr %i.ir, align 8
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.cp, %.lr.ph.i.i.i
  %i.iu = call ptr @list_next(ptr noundef %i.ii) #12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

._crit_edge.i.i.i:                                ; preds = %.backedge.i.i.i, %bb.cm
  call void @list_iterator_destroy(ptr noundef %i.ii) #12
  %i.iv = call i32 @list_delete_all(ptr noundef nonnull %i.if, ptr noundef nonnull @_find_empty_job_tres, ptr noundef null) #12 ; 0 uses
  %i.iw = call i32 @list_transfer(ptr noundef nonnull %i.id, ptr noundef nonnull %i.if) #12 ; 0 uses
  br label %_combine_job_groups.exit.i.i

_combine_job_groups.exit.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.cl
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hw, i64 32 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8
  call void @combine_tres_list(ptr noundef %i.iy, ptr noundef %i.ja) #12
  %i.jb = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.not27.i.i = icmp eq ptr %i.jb, null
  br i1 %.not27.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_combine_job_groups.exit.i.i
  call void @list_destroy(ptr noundef nonnull %i.jb) #12
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_combine_job_groups.exit.i.i
  store ptr null, ptr %i.iz, align 8
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.cr, %.lr.ph.i.i
  %i.jc = call ptr @list_next(ptr noundef %i.ht) #12 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.jc, null
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ck
  call void @list_iterator_destroy(ptr noundef %i.ht) #12
  %i.jd = call i32 @list_delete_all(ptr noundef nonnull %i.hq, ptr noundef nonnull @_find_empty_acct_tres, ptr noundef null) #12 ; 0 uses
  %i.je = call i32 @list_transfer(ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hq) #12 ; 0 uses
  br label %_combine_acct_groups.exit.i

_combine_acct_groups.exit.i:                      ; preds = %._crit_edge.i.i, %bb.cj, %bb.ci
  %i.jf = call i32 @list_delete_item(ptr noundef %i.hc) #12 ; 0 uses
  %i.jg = call ptr @list_next(ptr noundef %i.hc) #12 ; 2 uses
  %.not.i171 = icmp eq ptr %i.jg, null
  br i1 %.not.i171, label %.outer._crit_edge.i, label %bb.cf, !llvm.loop !12

.outer._crit_edge.i:                              ; preds = %.outer.i, %_combine_acct_groups.exit.i, %bb.ce
  call void @list_iterator_destroy(ptr noundef %i.hc) #12
  br label %_merge_cluster_groups.exit

_merge_cluster_groups.exit:                       ; preds = %.outer._crit_edge.i, %bb.cd, %bb.cc
  %i.jh = load ptr, ptr @tres_list, align 8
  %i.ji = call ptr @list_iterator_create(ptr noundef %i.jh) #12 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cu, %_merge_cluster_groups.exit
  %.0108.ph = phi i32 [ %i.jn, %bb.cu ], [ 0, %_merge_cluster_groups.exit ] ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %.outer, %bb.ct
  %i.jj = call ptr @list_next(ptr noundef %i.ji) #12 ; 2 uses
  %.not148 = icmp eq ptr %i.jj, null
  br i1 %.not148, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load i32, ptr %i.jk, align 8            ; 2 uses
  %i.jm = icmp eq i32 %i.jl, -2
  br i1 %i.jm, label %bb.cs, label %bb.cu, !llvm.loop !15

bb.cu:                                            ; preds = %bb.ct
  store i32 %i.jl, ptr %i.d, align 4
  %i.jn = add nuw nsw i32 %.0108.ph, 1
  br label %.outer, !llvm.loop !15

bb.cv:                                            ; preds = %bb.cs
  call void @list_iterator_destroy(ptr noundef %i.ji) #12
  %i.jo = icmp samesign ugt i32 %.0108.ph, 1
  br i1 %i.jo, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.jp = load ptr, ptr @stderr, align 8
  %fwrite = call i64 @fwrite(ptr nonnull @.str.7, i64 96, i64 1, ptr %i.jp) #16 ; 0 uses
  store i32 1, ptr @exit_code, align 4
  br label %bb.fq

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8
  %.not.i172 = icmp eq ptr %i.k, null             ; 2 uses
  br i1 %.not.i172, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jq = call i32 @list_count(ptr noundef nonnull %i.k) #12
  %.not49.i = icmp eq i32 %i.jq, 0
  br i1 %.not49.i, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  store i32 1, ptr @exit_code, align 4
  %i.jr = load ptr, ptr @stderr, align 8
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.43, i64 44, i64 1, ptr %i.jr) #16 ; 0 uses
  br label %_setup_print_fields_list.exit

bb.da:                                            ; preds = %bb.cy
  %i.js = load ptr, ptr @print_fields_list, align 8
  %.not50.i = icmp eq ptr %i.js, null
  br i1 %.not50.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.jt = call ptr @list_create(ptr noundef nonnull @destroy_print_field) #12
  store ptr %i.jt, ptr @print_fields_list, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ju = call ptr @list_iterator_create(ptr noundef nonnull %i.k) #12 ; 3 uses
  %i.jv = call ptr @list_next(ptr noundef %i.ju) #12 ; 2 uses
  %.not5165.i = icmp eq ptr %i.jv, null
  br i1 %.not5165.i, label %._crit_edge.i, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %bb.dc, %bb.dt
  %i.jw = phi ptr [ %i.lh, %bb.dt ], [ %i.jv, %bb.dc ] ; 14 uses
  %strchr.i174 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.jw, i32 37) ; 3 uses
end_hunk_0
