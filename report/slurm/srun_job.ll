inline.NumInlined: 40
inline.NumDeleted: 24
begin_hunk_0_@create_srun_job:bb.a

bb.bg:                                            ; preds = %bb.be
  br i1 %i.bc, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store i32 %.2186354, ptr %i.dy, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  tail call void @list_append(ptr noundef %i.ba, ptr noundef nonnull %i.dw) #15
  %i.dz = add nsw i32 %.2186354, 1                ; 2 uses
  %i.ea = tail call ptr @get_next_opt(i32 noundef %.1188373) #15 ; 2 uses
  %.not257 = icmp eq ptr %i.ea, null
  br i1 %.not257, label %._crit_edge363, label %bb.ad, !llvm.loop !26

._crit_edge363:                                   ; preds = %bb.bi, %bb.ac
  %.1196.lcssa = phi ptr [ %.0195372, %bb.ac ], [ %i.dw, %bb.bi ] ; 2 uses
  %.2186.lcssa = phi i32 [ %.1185374, %bb.ac ], [ %i.dz, %bb.bi ]
  %.1178.lcssa = phi i1 [ %.0177375, %bb.ac ], [ %.2179, %bb.bi ]
  %.1175.lcssa = phi i1 [ %.0174376, %bb.ac ], [ %.2176, %bb.bi ]
  %.1172.lcssa = phi i1 [ %.0171377, %bb.ac ], [ %.3, %bb.bi ]
  %.1169.lcssa = phi i1 [ %.0168378, %bb.ac ], [ %.2170, %bb.bi ]
  %.1167.lcssa = phi i1 [ %.0166379, %bb.ac ], [ %.2, %bb.bi ]
  %i.eb = add nsw i32 %.1188373, 1
  %i.ec = tail call ptr @list_next(ptr noundef %i.bd) #15 ; 2 uses
  %.not251 = icmp eq ptr %i.ec, null
  br i1 %.not251, label %._crit_edge382, label %bb.z, !llvm.loop !27

._crit_edge382:                                   ; preds = %._crit_edge363, %bb.y
  %.0195.lcssa = phi ptr [ null, %bb.y ], [ %.1196.lcssa, %._crit_edge363 ] ; 2 uses
  tail call void @list_iterator_destroy(ptr noundef %i.bd) #15
  %i.ed = tail call i32 @get_max_het_group() #15  ; 2 uses
  %i.ee = tail call i32 @list_count(ptr noundef nonnull %i.ac) #15 ; 2 uses
  %.not252 = icmp slt i32 %i.ed, %i.ee
  br i1 %.not252, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge382
  %i.ef = add nsw i32 %i.ee, -1
  %i.eg = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %i.ed, i32 noundef %i.ef) #15 ; 0 uses
  %i.eh = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.eh) #17
  unreachable

bb.bk:                                            ; preds = %._crit_edge382
  %i.ei = tail call i32 @list_count(ptr noundef %i.ba) #15
  switch i32 %i.ei, label %bb.bo [
    i32 0, label %bb.bl
    i32 1, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.ej = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.27) #15 ; 0 uses
  %i.ek = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.ek) #17
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %.not253 = icmp eq ptr %i.ba, null
  br i1 %.not253, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @list_destroy(ptr noundef nonnull %i.ba) #15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bk
  %.0200 = phi ptr [ %i.ba, %bb.bk ], [ null, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.el = tail call i32 @list_count(ptr noundef nonnull %i.ac) #15
  %i.em = icmp sgt i32 %i.el, 1
  br i1 %i.em, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.en = load i8, ptr @local_het_step, align 1, !range !8, !noundef !9
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eq = load i32, ptr %i.ep, align 8            ; 2 uses
  %i.er = icmp eq i32 %i.eq, -2
  %or.cond9.not = select i1 %i.eo, i1 true, i1 %i.er
  %spec.select269 = select i1 %or.cond9.not, i32 0, i32 %i.eq
  %i.es = tail call fastcc ptr @_compress_het_job_nodelist(ptr noundef %i.bb)
  store ptr %i.es, ptr %i.j, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.1181 = phi i32 [ %spec.select269, %bb.bp ], [ 0, %bb.bo ]
  %.not255 = icmp eq ptr %i.bb, null
  br i1 %.not255, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @list_destroy(ptr noundef nonnull %i.bb) #15
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.et = tail call fastcc i32 @_create_job_step(ptr noundef %.0195.lcssa, i1 noundef zeroext false, ptr noundef %.0200, i32 noundef %.1181)
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.ev = load i8, ptr %1, align 1, !range !8, !noundef !9
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ex = call i32 @slurm_complete_job(ptr noundef nonnull %4, i32 noundef 1) #15 ; 0 uses
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  tail call fastcc void @_cancel_steps(ptr noundef %.0200)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ey = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.ey) #17
  unreachable

bb.bx:                                            ; preds = %bb.bs
  call void @slurm_xfree(ptr noundef nonnull %i.j) #15
  br label %bb.fc

bb.by:                                            ; preds = %bb.p
  %i.ez = tail call zeroext i1 @slurm_option_set_by_cli(ptr noundef nonnull @opt, i32 noundef 74) #15
  br i1 %i.ez, label %.sink.split, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fa = tail call zeroext i1 @slurm_option_set_by_env(ptr noundef nonnull @opt, i32 noundef 74) #15
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 64), align 8
  %i.fc = icmp eq i32 %i.fb, 0
  %or.cond12.not = select i1 %i.fa, i1 true, i1 %i.fc
  br i1 %or.cond12.not, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 72), align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.by, %bb.ca
  %.sink.in = phi ptr [ %i.fd, %bb.ca ], [ getelementptr inbounds nuw (i8, ptr @opt, i64 264), %bb.by ]
  %.sink = load ptr, ptr %.sink.in, align 8
  %i.fe = tail call i32 (ptr, ...) @setenvfs(ptr noundef nonnull @.str.28, ptr noundef %.sink) #15 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split, %bb.bz
  %i.ff = load ptr, ptr @opt_list, align 8
  %.not234 = icmp eq ptr %i.ff, null
  br i1 %.not234, label %bb.ef, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fg = load i32, ptr @colon_cnt, align 4
  %.not239 = icmp eq i32 %i.fg, 0
  br i1 %.not239, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.fh = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.29) #15 ; 0 uses
  %i.fi = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.fi) #17
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.fj = tail call ptr @allocate_het_job_nodes() #15 ; 7 uses
  %.not240 = icmp eq ptr %i.fj, null
  br i1 %.not240, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.fk = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.fk) #17
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.fl = tail call ptr @list_create(ptr noundef null) #15 ; 6 uses
  %i.fm = load ptr, ptr @opt_list, align 8
  %i.fn = tail call ptr @list_iterator_create(ptr noundef %i.fm) #15 ; 2 uses
  %i.fo = tail call ptr @list_iterator_create(ptr noundef nonnull %i.fj) #15 ; 3 uses
  %i.fp = tail call ptr @list_next(ptr noundef %i.fo) #15 ; 2 uses
  %.not241387 = icmp eq ptr %i.fp, null
  br i1 %.not241387, label %_set_step_opts.exit.thread, label %.lr.ph391

.lr.ph391:                                        ; preds = %bb.cg
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph391, %_set_step_opts.exit
  %i.fr = phi ptr [ %i.fp, %.lr.ph391 ], [ %i.kf, %_set_step_opts.exit ] ; 15 uses
  %.2189389 = phi i32 [ -1, %.lr.ph391 ], [ %i.fw, %_set_step_opts.exit ] ; 2 uses
  %.2197388 = phi ptr [ null, %.lr.ph391 ], [ %i.jh, %_set_step_opts.exit ]
  %i.fs = load i32, ptr %i.fq, align 8
  %i.ft = icmp eq i32 %i.fs, -2
  br i1 %i.ft, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 24, i1 false)
  store i8 1, ptr %1, align 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.fv = call ptr @list_next(ptr noundef %i.fn) #15 ; 11 uses
  %.not242 = icmp eq ptr %i.fv, null
  br i1 %.not242, label %_set_step_opts.exit.thread.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call fastcc void @_print_job_information(ptr noundef %i.fr)
  %i.fw = add nsw i32 %.2189389, 1                ; 10 uses
  call fastcc void @_set_env_vars(ptr noundef %i.fr, i32 noundef %i.fw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  %i.fx = load ptr, ptr %i.fr, align 8
  %.not.i271 = icmp eq ptr %i.fx, null
  br i1 %.not.i271, label %bb.cr, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store ptr null, ptr %i.h, align 8
  %i.fy = load i8, ptr @local_het_step, align 1, !range !8, !noundef !9
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ga = call ptr @xstrdup(ptr noundef nonnull @.str.84) #15
  br label %_build_key.exit.i

bb.cn:                                            ; preds = %bb.cl
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef range(i32 -2147483647, -2147483648) %i.fw) #15
  %.pre.i.i = load ptr, ptr %i.h, align 8
  br label %_build_key.exit.i

_build_key.exit.i:                                ; preds = %bb.cn, %bb.cm
  %i.gb = phi ptr [ %.pre.i.i, %bb.cn ], [ %i.ga, %bb.cm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  store ptr %i.gb, ptr %i.i, align 8
  %i.gc = call ptr @getenv(ptr noundef %i.gb) #15
  %.not14.i = icmp eq ptr %i.gc, null
  br i1 %.not14.i, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %_build_key.exit.i
  %i.gd = load ptr, ptr %i.fr, align 8
  %i.ge = call i32 (ptr, ptr, ptr, ...) @setenvf(ptr noundef null, ptr noundef %i.gb, ptr noundef nonnull @.str.64, ptr noundef %i.gd) #15
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.gg = load ptr, ptr %i.i, align 8
  %i.gh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.77, ptr noundef %i.gg) #15 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %_build_key.exit.i
  call void @slurm_xfree(ptr noundef nonnull %i.i) #15
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store ptr null, ptr %i.g, align 8
  %i.gi = load i8, ptr @local_het_step, align 1, !range !8, !noundef !9
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.gk = call ptr @xstrdup(ptr noundef nonnull @.str.85) #15
  br label %_build_key.exit24.i

bb.ct:                                            ; preds = %bb.cr
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.85, i32 noundef range(i32 -2147483647, -2147483648) %i.fw) #15
  %.pre.i23.i = load ptr, ptr %i.g, align 8
  br label %_build_key.exit24.i

_build_key.exit24.i:                              ; preds = %bb.ct, %bb.cs
  %i.gl = phi ptr [ %.pre.i23.i, %bb.ct ], [ %i.gk, %bb.cs ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  store ptr %i.gl, ptr %i.i, align 8
  %i.gm = call ptr @getenv(ptr noundef %i.gl) #15
  %.not15.i = icmp eq ptr %i.gm, null
  br i1 %.not15.i, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %_build_key.exit24.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fr, i64 168
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = call i32 (ptr, ptr, ptr, ...) @setenvf(ptr noundef null, ptr noundef %i.gl, ptr noundef nonnull @.str.82, i32 noundef %i.go) #15
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.gr = load ptr, ptr %i.i, align 8
  %i.gs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.77, ptr noundef %i.gr) #15 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %_build_key.exit24.i
  call void @slurm_xfree(ptr noundef nonnull %i.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store ptr null, ptr %i.f, align 8
  %i.gt = load i8, ptr @local_het_step, align 1, !range !8, !noundef !9
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.gv = call ptr @xstrdup(ptr noundef nonnull @.str.86) #15
  br label %_build_key.exit27.i

bb.cy:                                            ; preds = %bb.cw
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.86, i32 noundef range(i32 -2147483647, -2147483648) %i.fw) #15
  %.pre.i26.i = load ptr, ptr %i.f, align 8
  br label %_build_key.exit27.i

_build_key.exit27.i:                              ; preds = %bb.cy, %bb.cx
  %i.gw = phi ptr [ %.pre.i26.i, %bb.cy ], [ %i.gv, %bb.cx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  store ptr %i.gw, ptr %i.i, align 8
  %i.gx = call ptr @getenv(ptr noundef %i.gw) #15
  %.not16.i = icmp eq ptr %i.gx, null
  br i1 %.not16.i, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %_build_key.exit27.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = call i32 (ptr, ptr, ptr, ...) @setenvf(ptr noundef null, ptr noundef %i.gw, ptr noundef nonnull @.str.64, ptr noundef %i.gz) #15
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.hc = load ptr, ptr %i.i, align 8
  %i.hd = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.77, ptr noundef %i.hc) #15 ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %_build_key.exit27.i
  call void @slurm_xfree(ptr noundef nonnull %i.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr null, ptr %i.e, align 8
  %i.he = load i8, ptr @local_het_step, align 1, !range !8, !noundef !9
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.hg = call ptr @xstrdup(ptr noundef nonnull @.str.87) #15
  br label %_build_key.exit30.i

bb.dd:                                            ; preds = %bb.db
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.87, i32 noundef range(i32 -2147483647, -2147483648) %i.fw) #15
  %.pre.i29.i = load ptr, ptr %i.e, align 8
  br label %_build_key.exit30.i

_build_key.exit30.i:                              ; preds = %bb.dd, %bb.dc
  %i.hh = phi ptr [ %.pre.i29.i, %bb.dd ], [ %i.hg, %bb.dc ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  store ptr %i.hh, ptr %i.i, align 8
  %i.hi = call ptr @getenv(ptr noundef %i.hh) #15
  %.not17.i = icmp eq ptr %i.hi, null
  br i1 %.not17.i, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %_build_key.exit30.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fr, i64 120
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call i32 (ptr, ptr, ptr, ...) @setenvf(ptr noundef null, ptr noundef %i.hh, ptr noundef nonnull @.str.64, ptr noundef %i.hk) #15
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.hn = load ptr, ptr %i.i, align 8
  %i.ho = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.77, ptr noundef %i.hn) #15 ; 0 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %_build_key.exit30.i
  call void @slurm_xfree(ptr noundef nonnull %i.i) #15
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fr, i64 136 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8
  %.not18.i = icmp eq ptr %i.hq, null
  br i1 %.not18.i, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8
  %i.hr = load i8, ptr @local_het_step, align 1, !range !8, !noundef !9
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ht = call ptr @xstrdup(ptr noundef nonnull @.str.88) #15
  br label %_build_key.exit33.i

bb.dj:                                            ; preds = %bb.dh
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.88, i32 noundef range(i32 -2147483647, -2147483648) %i.fw) #15
  %.pre.i32.i = load ptr, ptr %i.d, align 8
  br label %_build_key.exit33.i

_build_key.exit33.i:                              ; preds = %bb.dj, %bb.di
  %i.hu = phi ptr [ %.pre.i32.i, %bb.dj ], [ %i.ht, %bb.di ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  store ptr %i.hu, ptr %i.i, align 8
  %i.hv = call ptr @getenv(ptr noundef %i.hu) #15
  %.not19.i = icmp eq ptr %i.hv, null
  br i1 %.not19.i, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %_build_key.exit33.i
  %i.hw = load ptr, ptr %i.hp, align 8
  %i.hx = call i32 (ptr, ptr, ptr, ...) @setenvf(ptr noundef null, ptr noundef %i.hu, ptr noundef nonnull @.str.64, ptr noundef %i.hw) #15
  %i.hy = icmp slt i32 %i.hx, 0
  br i1 %i.hy, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.hz = load ptr, ptr %i.i, align 8
  %i.ia = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.77, ptr noundef %i.hz) #15 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %_build_key.exit33.i
  call void @slurm_xfree(ptr noundef nonnull %i.i) #15
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dg
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fr, i64 144 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8
  %.not20.i = icmp eq ptr %i.ic, null
  br i1 %.not20.i, label %_set_env_vars2.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8
  %i.id = load i8, ptr @local_het_step, align 1, !range !8, !noundef !9
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.if = call ptr @xstrdup(ptr noundef nonnull @.str.89) #15
  br label %_build_key.exit36.i

bb.dq:                                            ; preds = %bb.do
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.89, i32 noundef range(i32 -2147483647, -2147483648) %i.fw) #15
  %.pre.i35.i = load ptr, ptr %i.c, align 8
  br label %_build_key.exit36.i

_build_key.exit36.i:                              ; preds = %bb.dq, %bb.dp
  %i.ig = phi ptr [ %.pre.i35.i, %bb.dq ], [ %i.if, %bb.dp ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  store ptr %i.ig, ptr %i.i, align 8
  %i.ih = call ptr @getenv(ptr noundef %i.ig) #15
  %.not21.i = icmp eq ptr %i.ih, null
  br i1 %.not21.i, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %_build_key.exit36.i
  %i.ii = load ptr, ptr %i.ib, align 8
  %i.ij = call i32 (ptr, ptr, ptr, ...) @setenvf(ptr noundef null, ptr noundef %i.ig, ptr noundef nonnull @.str.64, ptr noundef %i.ii) #15
  %i.ik = icmp slt i32 %i.ij, 0
  br i1 %i.ik, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.il = load ptr, ptr %i.i, align 8
  %i.im = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.77, ptr noundef %i.il) #15 ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %_build_key.exit36.i
  call void @slurm_xfree(ptr noundef nonnull %i.i) #15
  br label %_set_env_vars2.exit

_set_env_vars2.exit:                              ; preds = %bb.dn, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  %i.in = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8            ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 212
  %i.iq = load i32, ptr %i.ip, align 4            ; 2 uses
  %.not.i272 = icmp eq i32 %i.iq, -2
  br i1 %.not.i272, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %_set_env_vars2.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fv, i64 136
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = add nsw i32 %i.is, %i.iq
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fr, i64 88
  %i.iv = load i32, ptr %i.iu, align 8
  %i.iw = icmp ugt i32 %i.it, %i.iv
  br i1 %i.iw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 212
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fv, i64 136
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fr, i64 88
  %i.ja = call zeroext i1 @slurm_option_set_by_cli(ptr noundef nonnull %i.fv, i32 noundef 78) #15
  %i.jb = load i32, ptr %i.ix, align 4
  %i.jc = load i32, ptr %i.iy, align 8
  %i.jd = load i32, ptr %i.iz, align 8
  %.str.104..str.105.i275 = select i1 %i.ja, ptr @.str.104, ptr @.str.105
  %i.je = call i32 (ptr, ...) @error(ptr noundef nonnull %.str.104..str.105.i275, i32 noundef %i.jb, i32 noundef %i.jc, i32 noundef %i.jd) #15 ; 0 uses
  %i.jf = call i32 @slurm_complete_job(ptr noundef nonnull %4, i32 noundef 1) #15 ; 0 uses
  %i.jg = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.jg) #17
  unreachable

bb.dw:                                            ; preds = %bb.du, %_set_env_vars2.exit
  %i.jh = call ptr @job_create_allocation(ptr noundef nonnull %i.fr, ptr noundef nonnull %i.fv) ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  store i32 %i.fw, ptr %i.ji, align 8
  call void @list_append(ptr noundef %i.fl, ptr noundef %i.jh) #15
  %i.jj = load ptr, ptr %i.in, align 8            ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fv, i64 228
  store i32 -2, ptr %i.jk, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fv, i64 480
  call void @slurm_xfree(ptr noundef nonnull %i.jl) #15
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 58
  %i.jn = load i8, ptr %i.jm, align 2, !range !8, !noundef !9
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 89
  %i.jq = load i8, ptr %i.jp, align 1, !range !8, !noundef !9
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.js = getelementptr inbounds nuw i8, ptr %i.fv, i64 132
  %i.jt = load i8, ptr %i.js, align 4, !range !8, !noundef !9
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sink.i = phi i8 [ 0, %bb.dz ], [ 1, %bb.dy ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jj, i64 89
  store i8 %.sink.i, ptr %i.jv, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.fr, i64 192 ; 4 uses
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = call zeroext i16 @slurm_opt_get_tres_per_task_cpu_cnt(ptr noundef %i.jx) #15 ; 2 uses
  %.not.i277 = icmp eq i16 %i.jy, 0
  br i1 %.not.i277, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.jz = zext i16 %i.jy to i32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.fv, i64 128
  store i32 %i.jz, ptr %i.ka, align 8
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.kb = load ptr, ptr %i.jw, align 8
  %.not18.i278 = icmp eq ptr %i.kb, null
  br i1 %.not18.i278, label %_set_step_opts.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fv, i64 760 ; 3 uses
  call void @slurm_xfree(ptr noundef nonnull %i.kc) #15
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = load ptr, ptr %i.jw, align 8
  store ptr %i.ke, ptr %i.kc, align 8
  store ptr %i.kd, ptr %i.jw, align 8
  br label %_set_step_opts.exit

_set_step_opts.exit:                              ; preds = %bb.ed, %bb.ec
  %i.kf = call ptr @list_next(ptr noundef %i.fo) #15 ; 2 uses
  %.not241 = icmp eq ptr %i.kf, null
  br i1 %.not241, label %_set_step_opts.exit.thread.loopexit, label %bb.ch

_set_step_opts.exit.thread.loopexit:              ; preds = %bb.cj, %_set_step_opts.exit
  %.2197.lcssa.ph = phi ptr [ %i.jh, %_set_step_opts.exit ], [ %.2197388, %bb.cj ]
  %.2189.lcssa.ph = phi i32 [ %i.fw, %_set_step_opts.exit ], [ %.2189389, %bb.cj ]
  %.lcssa.ph = phi ptr [ null, %_set_step_opts.exit ], [ %i.fr, %bb.cj ]
  %i.kg = add nsw i32 %.2189.lcssa.ph, 1
  br label %_set_step_opts.exit.thread

_set_step_opts.exit.thread:                       ; preds = %_set_step_opts.exit.thread.loopexit, %bb.cg
  %.2197.lcssa = phi ptr [ null, %bb.cg ], [ %.2197.lcssa.ph, %_set_step_opts.exit.thread.loopexit ] ; 4 uses
  %.2189.lcssa = phi i32 [ 0, %bb.cg ], [ %i.kg, %_set_step_opts.exit.thread.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ null, %bb.cg ], [ %.lcssa.ph, %_set_step_opts.exit.thread.loopexit ] ; 4 uses
  call void @list_iterator_destroy(ptr noundef %i.fn) #15
  call void @list_iterator_destroy(ptr noundef %i.fo) #15
  %i.kh = load i8, ptr @local_het_step, align 1, !range !8, !noundef !9
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %_set_step_opts.exit287, label %bb.ee

bb.ee:                                            ; preds = %_set_step_opts.exit.thread
  %i.kj = call i32 (ptr, ...) @setenvfs(ptr noundef nonnull @.str.30, i32 noundef %.2189.lcssa) #15 ; 0 uses
  %i.kk = call i32 (ptr, ...) @setenvfs(ptr noundef nonnull @.str.31, i32 noundef %.2189.lcssa) #15 ; 0 uses
  br label %_set_step_opts.exit287

bb.ef:                                            ; preds = %bb.cb
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sropt, i64 168), align 8 ; 2 uses
  %.not235 = icmp eq ptr %i.kl, null
  br i1 %.not235, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.km = tail call i64 @bit_fls(ptr noundef nonnull %i.kl) #15
  %.not236 = icmp eq i64 %i.km, -1
  br i1 %.not236, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.kn = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.29) #15 ; 0 uses
  %i.ko = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.ko) #17
  unreachable

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %i.kp = tail call ptr @allocate_nodes(ptr noundef nonnull @opt) #15 ; 9 uses
  %.not237 = icmp eq ptr %i.kp, null
  br i1 %.not237, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.kq = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.kq) #17
  unreachable

bb.ek:                                            ; preds = %bb.ei
  store i8 1, ptr %1, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.kr, i64 24, i1 false)
  tail call fastcc void @_print_job_information(ptr noundef %i.kp)
  tail call fastcc void @_set_env_vars(ptr noundef %i.kp, i32 noundef -1)
  %i.ks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 24), align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 212 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4            ; 2 uses
  %.not.i279 = icmp eq i32 %i.ku, -2
  br i1 %.not.i279, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.kv = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 136), align 8
  %i.kw = add nsw i32 %i.kv, %i.ku
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 88 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8
  %i.kz = icmp ugt i32 %i.kw, %i.ky
  br i1 %i.kz, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
end_hunk_0
