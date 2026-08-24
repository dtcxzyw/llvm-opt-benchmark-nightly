Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_test?download=true
inline.NumInlined: 60
inline.NumDeleted: 26
begin_hunk_0_@_can_job_run_on_node:bb.a
  br i1 %.not198, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 240
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 300
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %.not199 = icmp eq i32 %i.ea, 0
  %i.eb = trunc i32 %i.ea to i16
  %spec.select = select i1 %.not199, i16 1, i16 %i.eb
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ak, %bb.am
  %.0164 = phi i16 [ 1, %bb.am ], [ %i.dt, %bb.ak ], [ 1, %bb.al ], [ %spec.select, %bb.an ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.ed = load i16, ptr %i.ec, align 8            ; 2 uses
  %i.ee = mul i16 %i.ed, %.0164                   ; 2 uses
  %i.ef = zext i16 %i.ee to i32
  %i.eg = icmp ult i16 %i.dh, %i.ee
  br i1 %i.eg, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ei = and i64 %i.eh, 1
  %.not213 = icmp eq i64 %i.ei, 0
  br i1 %.not213, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ej = call i32 @get_log_level() #9
  %i.ek = icmp sgt i32 %i.ej, 3
  br i1 %i.ek, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.el = load i16, ptr %i.df, align 8
  %i.em = zext i16 %i.el to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.79, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._can_job_run_on_node, i32 noundef %2, i32 noundef %i.em, i32 noundef %i.ef) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar, %bb.aq
  %.not214 = icmp eq ptr %.0165, null
  br i1 %.not214, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @list_destroy(ptr noundef nonnull %.0165) #9
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.df, ptr %i.c, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @slurm_xfree(ptr noundef nonnull %i.en) #9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.df, i64 40 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %.not2.i224 = icmp eq ptr %i.ep, null
  br i1 %.not2.i224, label %_free_avail_res.exit225, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @list_destroy(ptr noundef nonnull %i.ep) #9
  br label %_free_avail_res.exit225

_free_avail_res.exit225:                          ; preds = %bb.au, %bb.av
  store ptr null, ptr %i.eo, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.da

bb.aw:                                            ; preds = %bb.ao
  %i.eq = and i32 %i.cm, 16
  %.not200 = icmp eq i32 %i.eq, 0                 ; 2 uses
  br i1 %.not200, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = sub i64 %i.es, %i.eu                    ; 2 uses
  br i1 %6, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ew = load i64, ptr %i.ab, align 8
  %i.ex = sub i64 %i.ev, %i.ew
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %.0167 = phi i64 [ %i.ev, %bb.ax ], [ %i.ex, %bb.ay ], [ -2, %bb.aw ] ; 5 uses
  %.not201 = icmp eq ptr %.0165, null
  br i1 %.not201, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i16 0, ptr %i.f, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  store ptr null, ptr %11, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store ptr %i.ez, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.0167, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fc = load i16, ptr %i.n, align 2
  store i16 %i.fc, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.fd, i8 0, i64 6, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ff = load ptr, ptr %i.cj, align 8
  store ptr %i.ff, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 568
  %i.fi = load i16, ptr %i.fh, align 8
  store i16 %i.fi, ptr %i.fg, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 42
  store i16 %i.ed, ptr %i.fj, align 2
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.fl = load i8, ptr %i.s, align 2, !range !8, !noundef !9
  store i8 %i.fl, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 45
  store i8 0, ptr %i.fm, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 46
  %i.fo = load i16, ptr %i.df, align 8
  store i16 %i.fo, ptr %i.fn, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.f, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.fr = load i16, ptr %i.at, align 2
  store i16 %i.fr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 58
  store i16 0, ptr %i.fs, align 2
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 60
  store i32 %3, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i16 %i.dt, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 66
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 512
  %i.fx = load i8, ptr %i.fw, align 8
  %i.fy = and i8 %i.fx, 1
  store i8 %i.fy, ptr %i.fv, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.fz, i8 0, i64 5, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.df, i64 40 ; 3 uses
  store ptr %.0165, ptr %i.ga, align 8
  %i.gb = call i32 @gres_select_filter_remove_unusable(ptr noundef nonnull %.0165, ptr noundef nonnull %11) #9
  %.not202 = icmp eq i32 %i.gb, 0
  br i1 %.not202, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gc = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.gd = and i64 %i.gc, 1
  %.not203 = icmp eq i64 %i.gd, 0
  br i1 %.not203, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = call i32 @get_log_level() #9
  %i.gf = icmp sgt i32 %i.ge, 3
  br i1 %i.gf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.80, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._can_job_run_on_node, i32 noundef %2) #9
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.df, ptr %i.b, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @slurm_xfree(ptr noundef nonnull %i.gg) #9
  %i.gh = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not2.i227 = icmp eq ptr %i.gh, null
  br i1 %.not2.i227, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @list_destroy(ptr noundef nonnull %i.gh) #9
  br label %bb.bg

.thread:                                          ; preds = %bb.ba
  %i.gi = getelementptr inbounds nuw i8, ptr %i.k, i64 472 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = and i64 %i.gj, -256
  %i.gl = load i16, ptr %i.f, align 2
  %i.gm = zext i16 %i.gl to i64
  %i.gn = sub nsw i64 255, %i.gm
  %i.go = or i64 %i.gn, %i.gk
  store i64 %i.go, ptr %i.gi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %.pre248 = load i16, ptr %i.df, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store ptr null, ptr %i.ga, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %bb.da

bb.bh:                                            ; preds = %.thread, %bb.az
  %i.gp = phi i16 [ %.pre248, %.thread ], [ %i.dh, %bb.az ] ; 7 uses
  br i1 %.not200, label %bb.bx, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gq = load ptr, ptr %i.dq, align 8            ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 320
  %i.gs = load i64, ptr %i.gr, align 8            ; 2 uses
  %i.gt = and i64 %i.gs, 9223372036854775807      ; 4 uses
  %.not204 = icmp sgt i64 %i.gs, -1
  br i1 %.not204, label %bb.bw, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gu = load i64, ptr %i.az, align 8
  %i.gv = and i64 %i.gu, 65536
  %.not205 = icmp eq i64 %i.gv, 0
  %i.gw = zext i16 %i.gp to i64
  %i.gx = mul i64 %i.gt, %i.gw
  %i.gy = icmp ugt i64 %i.gx, %.0167              ; 2 uses
  %or.cond = select i1 %.not205, i1 %i.gy, i1 false
  br i1 %or.cond, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 512
  %i.ha = load i8, ptr %i.gz, align 8
  %i.hb = and i8 %i.ha, 1
  %.not206 = icmp eq i8 %i.hb, 0
  br i1 %.not206, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.hc = and i32 %i.cm, 1
  %.not207 = icmp eq i32 %i.hc, 0
  br i1 %.not207, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gq, i64 248
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not208 = icmp eq ptr %i.he, null
  br i1 %.not208, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 14
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = icmp eq i16 %i.hg, 1
  br i1 %i.hh, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  %i.hj = load i16, ptr %i.hi, align 8
  %i.hk = icmp eq i16 %i.hj, 1
  br i1 %i.hk, label %.preheader, label %bb.br

.preheader:                                       ; preds = %bb.bo
  %.not209237 = icmp eq i16 %i.gp, 0
  br i1 %.not209237, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.hl = getelementptr inbounds nuw i8, ptr %i.k, i64 568
  %i.hm = load i16, ptr %i.hl, align 8
  %i.hn = zext i16 %i.hm to i64
  %factor.op.mul = mul i64 %i.gt, %i.hn
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.bq
  %.0168238 = phi i16 [ %i.gp, %.lr.ph ], [ %13, %bb.bq ] ; 3 uses
  %12 = zext i16 %.0168238 to i64
  %.reass = mul i64 %factor.op.mul, %12
  %i.ho = icmp ugt i64 %.reass, %.0167
  br i1 %i.ho, label %bb.bq, label %.critedge

bb.bq:                                            ; preds = %bb.bp
  %13 = add i16 %.0168238, -1                     ; 2 uses
  %.not209 = icmp eq i16 %13, 0
  br i1 %.not209, label %.critedge, label %bb.bp, !llvm.loop !59

bb.br:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  br i1 %i.gy, label %.lr.ph242, label %.critedge

.lr.ph242:                                        ; preds = %bb.br
  %i.hp = load i32, ptr %i.e, align 4             ; 2 uses
  %i.hq = trunc i32 %i.hp to i16
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph242, %bb.bt
  %.1241 = phi i16 [ %i.gp, %.lr.ph242 ], [ %i.hs, %bb.bt ] ; 2 uses
  %i.hr = zext i16 %.1241 to i32
  %.not210 = icmp sgt i32 %i.hp, %i.hr
  br i1 %.not210, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hs = sub i16 %.1241, %i.hq                   ; 3 uses
  %i.ht = zext i16 %i.hs to i64
  %i.hu = mul i64 %i.gt, %i.ht
  %i.hv = icmp ugt i64 %i.hu, %.0167
  br i1 %i.hv, label %bb.bs, label %.critedge, !llvm.loop !60

.critedge:                                        ; preds = %bb.bp, %bb.bq, %bb.bt, %bb.bs, %.preheader, %bb.br, %bb.bk
  %.2 = phi i16 [ 0, %bb.bk ], [ 0, %.preheader ], [ 0, %bb.bs ], [ %i.gp, %bb.br ], [ %i.hs, %bb.bt ], [ %.0168238, %bb.bp ], [ 0, %bb.bq ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  %i.hx = load i16, ptr %i.hw, align 8            ; 2 uses
  %i.hy = icmp ugt i16 %i.hx, 1
  br i1 %i.hy, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.critedge
  %i.hz = urem i16 %.2, %i.hx
  %i.ia = sub i16 %.2, %i.hz
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.critedge
  %.3 = phi i16 [ %i.ia, %bb.bu ], [ %.2, %.critedge ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gq, i64 296
  %i.ic = load i16, ptr %i.ib, align 8
  %i.id = icmp ult i16 %.3, %i.ic
  br i1 %i.id, label %.thread231, label %bb.bx

bb.bw:                                            ; preds = %bb.bi
  %i.ie = icmp ugt i64 %i.gt, %.0167
  br i1 %i.ie, label %.thread231, label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bh
  %.4 = phi i16 [ %i.gp, %bb.bh ], [ %i.gp, %bb.bw ], [ %.3, %bb.bv ] ; 3 uses
  %i.if = zext i16 %.4 to i32
  %i.ig = icmp eq i16 %.4, 0
  br i1 %i.ig, label %.thread231, label %bb.cb

.thread231:                                       ; preds = %bb.bv, %bb.bw, %bb.bx
  %i.ih = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ii = and i64 %i.ih, 1
  %.not211 = icmp eq i64 %i.ii, 0
  br i1 %.not211, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %.thread231
  %i.ij = call i32 @get_log_level() #9
  %i.ik = icmp sgt i32 %i.ij, 3
  br i1 %i.ik, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.81, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._can_job_run_on_node, i32 noundef %2) #9
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %.thread231
  %i.il = load ptr, ptr %i.cj, align 8
  call void @bit_clear_all(ptr noundef %i.il) #9
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bx, %bb.ca
  %i.im = phi i32 [ %i.if, %bb.bx ], [ 0, %bb.ca ]
  %.4233 = phi i16 [ %.4, %bb.bx ], [ 0, %bb.ca ] ; 2 uses
  %i.in = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.io = and i64 %i.in, 1
  %.not212 = icmp eq i64 %i.io, 0
  br i1 %.not212, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ip = call i32 @get_log_level() #9
  %i.iq = icmp sgt i32 %i.ip, 3
  br i1 %i.iq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ir = load ptr, ptr %i.ak, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.it = load i16, ptr %i.is, align 8
  %i.iu = zext i16 %i.it to i32
  %i.iv = load i64, ptr %i.ab, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  %i.ix = load i64, ptr %i.iw, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.82, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._can_job_run_on_node, i32 noundef %i.im, ptr noundef %i.ir, i32 noundef %i.iu, i64 noundef %i.iv, i64 noundef %i.ix) #9
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd, %bb.cb
  store i16 %.4233, ptr %i.df, align 8
  %i.iy = zext i16 %.4233 to i64                  ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  store i64 %i.iy, ptr %i.iz, align 8
  %i.ja = load i8, ptr %i.z, align 8, !range !8, !noundef !9
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jc = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.jd = load i16, ptr %i.jc, align 2
  %i.je = zext i16 %i.jd to i64
  %i.jf = mul nuw nsw i64 %i.je, %i.iy            ; 2 uses
  store i64 %i.jf, ptr %i.iz, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.jg = phi i64 [ %i.jf, %bb.cf ], [ %i.iy, %bb.ce ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.df, i64 52
  store i16 %.0163, ptr %i.jh, align 4
  br i1 %.not194, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = zext i16 %.0163 to i64
  %i.jl = getelementptr inbounds nuw [48 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 8
  %i.jn = zext i32 %i.jm to i64
  %i.jo = mul nuw i64 %i.jg, %i.jn
  store i64 %i.jo, ptr %i.iz, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.jp = load ptr, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.jq = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.jr = and i64 %i.jq, 1
  %.not.i229 = icmp eq i64 %i.jr, 0
  br i1 %.not.i229, label %_avail_res_log.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.js = call i32 @get_log_level() #9
  %i.jt = icmp sgt i32 %i.js, 3
  br i1 %i.jt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ju = load i64, ptr %i.iz, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.df, i64 36
  %i.jw = load i16, ptr %i.jv, align 4
  %i.jx = zext i16 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.jz = load i16, ptr %i.jy, align 8
  %i.ka = zext i16 %i.jz to i32
  %i.kb = getelementptr inbounds nuw i8, ptr %i.df, i64 34
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = zext i16 %i.kc to i32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.kf = load i16, ptr %i.ke, align 8
  %i.kg = zext i16 %i.kf to i32
  %i.kh = load i16, ptr %i.df, align 8
  %i.ki = zext i16 %i.kh to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.df, i64 50
  %i.kk = load i16, ptr %i.kj, align 2
  %i.kl = zext i16 %i.kk to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.87, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._avail_res_log, ptr noundef %i.jp, i64 noundef %i.ju, i32 noundef %i.jx, i32 noundef %i.ka, i32 noundef %i.kd, i32 noundef %i.kg, i32 noundef %i.ki, i32 noundef %i.kl) #9
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.km = getelementptr inbounds nuw i8, ptr %i.df, i64 40 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = call ptr @gres_sock_str(ptr noundef %i.kn, i32 noundef -1) #9 ; 3 uses
  store ptr %i.ko, ptr %i.a, align 8
  %.not22.i = icmp eq ptr %i.ko, null
  br i1 %.not22.i, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kp = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.kq = and i64 %i.kp, 1
  %.not23.i = icmp eq i64 %i.kq, 0
  br i1 %.not23.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kr = call i32 @get_log_level() #9
  %i.ks = icmp sgt i32 %i.kr, 3
  br i1 %i.ks, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.88, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._avail_res_log, ptr noundef nonnull %i.ko) #9
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cl
  %i.kt = getelementptr inbounds nuw i8, ptr %i.df, i64 36 ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 4
  %.not29.i = icmp eq i16 %i.ku, 0
  br i1 %.not29.i, label %_avail_res_log.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cq
  %i.kv = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cz, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cz ] ; 4 uses
  %i.kw = load ptr, ptr %i.km, align 8
  %i.kx = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ky = call ptr @gres_sock_str(ptr noundef %i.kw, i32 noundef %i.kx) #9 ; 2 uses
  store ptr %i.ky, ptr %i.a, align 8
  %.not24.i = icmp eq ptr %i.ky, null
  %i.kz = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.la = and i64 %i.kz, 1
  %.not25.i = icmp eq i64 %i.la, 0                ; 2 uses
  br i1 %.not24.i, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not25.i, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lb = call i32 @get_log_level() #9
  %i.lc = icmp sgt i32 %i.lb, 3
  br i1 %i.lc, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ld = load ptr, ptr %i.kv, align 8
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %indvars.iv.i
end_hunk_0
