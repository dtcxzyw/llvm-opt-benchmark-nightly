Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_test?download=true
inline.NumInlined: 60
inline.NumDeleted: 26
begin_hunk_0_@job_test:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.du = call i64 @time(ptr noundef null) #9     ; 18 uses
  %.val.i.i = load ptr, ptr %i.an, align 8
  %i.dv = getelementptr i8, ptr %.val.i.i, i64 324
  %.val.val.i.i = load i16, ptr %i.dv, align 4    ; 2 uses
  %i.dw = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8 ; 5 uses
  %.not.i.i.i = icmp eq i16 %.val.val.i.i, 0
  br i1 %.not.i.i.i, label %_setup_cr_type.exit.i.i, label %bb.as

bb.as:                                            ; preds = %.thread.i
  %i.dx = and i16 %i.dw, 6
  %or.cond.i.i.i = icmp eq i16 %i.dx, 0
  br i1 %or.cond.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = and i16 %i.dw, -23
  %i.dz = or i16 %i.dy, %.val.val.i.i
  br label %_setup_cr_type.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.ea = call i32 @get_log_level() #9
  %i.eb = icmp sgt i32 %i.ea, 2
  br i1 %i.eb, label %bb.av, label %_setup_cr_type.exit.i.i

bb.av:                                            ; preds = %bb.au
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.16, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._setup_cr_type, ptr noundef nonnull @plugin_type) #9
  br label %_setup_cr_type.exit.i.i

_setup_cr_type.exit.i.i:                          ; preds = %bb.av, %bb.au, %bb.at, %.thread.i
  %.0.i.i.i = phi i16 [ %i.dz, %bb.at ], [ %i.dw, %bb.av ], [ %i.dw, %bb.au ], [ %i.dw, %.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br i1 %.not.i88, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_setup_cr_type.exit.i.i
  %i.ec = load i64, ptr %9, align 8
  %.not183.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not183.i.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4
  %i.ed = call ptr @next_node_bitmap(ptr noundef %1, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not22.i.i.i, label %_set_sched_weight.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.ax, %bb.az
  %i.ee = phi ptr [ %i.eu, %bb.az ], [ %i.ed, %bb.ax ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 572
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 472 ; 2 uses
  %i.ej = shl nuw nsw i64 %i.eh, 16               ; 3 uses
  store i64 %i.ej, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 328
  %i.el = load i32, ptr %i.ek, align 8            ; 3 uses
  %i.em = and i32 %i.el, 1396736
  %.not29.i.i.i = icmp eq i32 %i.em, 0
  br i1 %.not29.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.en = and i32 %i.el, 282624
  %or.cond21.us.not.i.i.i = icmp eq i32 %i.en, 0
  %i.eo = and i32 %i.el, 1114112
  %or.cond.us.not.i.i.i = icmp eq i32 %i.eo, 0
  %i.ep = or disjoint i64 %i.ej, 512
  %i.eq = select i1 %or.cond.us.not.i.i.i, i64 %i.ej, i64 %i.ep ; 2 uses
  %i.er = or disjoint i64 %i.eq, 562949953421312
  %simplifycfg.merge.i.i.i = select i1 %or.cond21.us.not.i.i.i, i64 %i.eq, i64 %i.er
  store i64 %simplifycfg.merge.i.i.i, ptr %i.ei, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph.split.us.i.i.i
  %i.es = load i32, ptr %i.c, align 4
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.c, align 4
  %i.eu = call ptr @next_node_bitmap(ptr noundef %1, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.us.i.i.i, label %_set_sched_weight.exit.i.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !10

_set_sched_weight.exit.i.i:                       ; preds = %bb.az, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ba

bb.ba:                                            ; preds = %_set_sched_weight.exit.i.i, %bb.aw, %_setup_cr_type.exit.i.i
  %i.ev = load ptr, ptr @select_part_record, align 8
  %i.ew = call ptr @part_data_dup_res(ptr noundef %i.ev, ptr noundef %i.ce) #9 ; 7 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %.thread96.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ey = load ptr, ptr @select_node_usage, align 8
  %i.ez = call ptr @node_data_dup_use(ptr noundef %i.ey, ptr noundef %i.ce) #9 ; 6 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @part_data_destroy_res(ptr noundef nonnull %i.ew) #9
  br label %.thread96.i

bb.bd:                                            ; preds = %bb.bb
  %i.fb = load i64, ptr %i.dt, align 8
  %i.fc = and i64 %i.fb, 8
  %.not184.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not184.i.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fd = call ptr @cluster_license_copy() #9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0140.i.i = phi ptr [ null, %bb.bd ], [ %i.fd, %bb.be ] ; 8 uses
  %i.fe = call ptr @list_create(ptr noundef null) #9 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  br i1 %.not.i88, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fh = load i64, ptr %9, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fi = phi i64 [ %i.fh, %bb.bg ], [ 0, %bb.bf ]
  store ptr %.16089.i, ptr %14, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.fe, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ez, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.ew, ptr %.sroa.434.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %.0140.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.fg, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %i.du, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %i.ce, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr %i.d, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  store i64 %i.fi, ptr %.sroa.10.0..sroa_idx.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 80
  store ptr %i.e, ptr %.sroa.11.0..sroa_idx.i.i, align 8
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 88
  store ptr %i.g, ptr %.sroa.12.0..sroa_idx.i.i, align 8
  %i.fj = load ptr, ptr @job_list, align 8
  %i.fk = call i32 @list_for_each(ptr noundef %i.fj, ptr noundef nonnull @_build_cr_job_list, ptr noundef nonnull %14) #9 ; 0 uses
  %i.fl = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8
  %i.fm = icmp ne i64 %i.fl, 0
  %or.cond.i77.i = select i1 %i.ds, i1 true, i1 %i.fm
  br i1 %or.cond.i77.i, label %bb.bi, label %._crit_edge71.i.i

._crit_edge71.i.i:                                ; preds = %bb.bh
  %.pre72.i.i = zext i16 %.0.i to i32
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  call void @bit_or(ptr noundef %1, ptr noundef %i.ce) #9
  %i.fn = zext i16 %.0.i to i32                   ; 2 uses
  %i.fo = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = call fastcc i32 @_job_test(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2, i16 noundef zeroext %.0.i.i.i, i32 noundef %i.fn, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ez, ptr noundef %.0140.i.i, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext %i.fp, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 %i.du, ptr %i.fs, align 8
  br label %bb.du

bb.bk:                                            ; preds = %bb.bi, %._crit_edge71.i.i
  %.pre-phi.i.i = phi i32 [ %.pre72.i.i, %._crit_edge71.i.i ], [ %i.fn, %bb.bi ]
  %.0150.i.i = phi i32 [ -1, %._crit_edge71.i.i ], [ %i.fq, %bb.bi ]
  call void @list_sort(ptr noundef %i.fe, ptr noundef nonnull @_cr_job_list_sort) #9
  %i.ft = call ptr @list_create(ptr noundef null) #9 ; 3 uses
  %i.fu = call { i64, i64 } @timespec_now() #9    ; 2 uses
  %i.fv = extractvalue { i64, i64 } %i.fu, 0
  %i.fw = extractvalue { i64, i64 } %i.fu, 1
  store i64 %i.fv, ptr %15, align 8
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.fw, ptr %.sroa.432.0..sroa_idx.i.i, align 8
  %i.fx = call ptr @list_iterator_create(ptr noundef %i.fe) #9 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not188.i.i.a = icmp eq ptr %.0140.i.i, null   ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.bl

bb.bl:                                            ; preds = %.critedge.i.i, %bb.bk
  %.0159.i.i = phi i1 [ true, %bb.bk ], [ %.21618.i.i, %.critedge.i.i ]
  %.0149.i.i = phi i64 [ undef, %bb.bk ], [ %.215113.i.i, %.critedge.i.i ]
  %.0153.i.i = phi i32 [ 30, %bb.bk ], [ %.3156.i.i, %.critedge.i.i ] ; 11 uses
  %.1151.i.i = phi i32 [ %.0150.i.i, %bb.bk ], [ %.2152.i.i, %.critedge.i.i ] ; 4 uses
  br i1 %.0159.i.i, label %bb.bm, label %.thread33.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @bit_or(ptr noundef %1, ptr noundef %i.ce) #9
  %i.fz = call ptr @list_next(ptr noundef %i.fx) #9 ; 2 uses
  %.not18548.i.i = icmp eq ptr %i.fz, null
  br i1 %.not18548.i.i, label %.thread33.i.i, label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %bb.bm
  %i.ga = sext i32 %.0153.i.i to i64              ; 4 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.cu, %.lr.ph.i79.i
  %i.gb = phi ptr [ %i.fz, %.lr.ph.i79.i ], [ %i.jy, %bb.cu ] ; 20 uses
  %.014152.i.i = phi i64 [ %.0149.i.i, %.lr.ph.i79.i ], [ %.1.i.i, %bb.cu ] ; 4 uses
  %.014251.i.i = phi i32 [ 0, %.lr.ph.i79.i ], [ %.1143.i.i, %bb.cu ] ; 4 uses
  %.014550.i.i = phi ptr [ null, %.lr.ph.i79.i ], [ %.1146.i.i, %bb.cu ] ; 3 uses
  %.014749.i.i = phi ptr [ null, %.lr.ph.i79.i ], [ %.1148.i.i, %bb.cu ] ; 3 uses
  br i1 %.not.i88, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gc = load i64, ptr %i.fy, align 8            ; 2 uses
  %.not186.i.i.a = icmp eq i64 %i.gc, 0
  br i1 %.not186.i.i.a, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = load i8, ptr @soft_time_limit, align 1, !range !8, !noundef !9
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1108
  %i.gg = load i32, ptr %i.gf, align 4            ; 2 uses
  %.not.i206.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i206.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 272
  %i.gi = load i64, ptr %i.gh, align 8
  br label %_soft_job_end.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 1032
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = mul i32 %i.gg, 60
  %i.gm = zext i32 %i.gl to i64
  %i.gn = add nsw i64 %i.gk, %i.gm                ; 2 uses
  %i.go = icmp slt i64 %i.gn, %i.du
  br i1 %i.go, label %bb.bt, label %_soft_job_end.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gb, i64 272
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = sub nsw i64 %i.gq, %i.du
  %i.gs = sdiv i64 %i.gr, 2
  %i.gt = add nsw i64 %i.gs, %i.du
  br label %_soft_job_end.exit.i.i

_soft_job_end.exit.i.i:                           ; preds = %bb.bt, %bb.bs, %bb.br
  %.010.i.i.i = phi i64 [ %i.gi, %bb.br ], [ %i.gt, %bb.bt ], [ %i.gn, %bb.bs ]
  %i.gu = icmp sgt i64 %.010.i.i.i, %i.gc
  br i1 %i.gu, label %._crit_edge.i.i, label %bb.bu

bb.bu:                                            ; preds = %_soft_job_end.exit.i.i, %bb.bo, %bb.bn
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gb, i64 256
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 512
  %i.gy = load i8, ptr %i.gx, align 8
  %i.gz = and i8 %i.gy, 8
  %.not.i207.i.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i207.i.i, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gb, i64 776
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not23.i.i.i, label %_select_topo_bitmap.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 168
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = and i32 %i.hd, 65536
  %.not24.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not24.i.i.i, label %_select_topo_bitmap.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %i.hf = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not25.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not25.i.i.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hg = call ptr @bit_copy(ptr noundef %1) #9   ; 2 uses
  store ptr %i.hg, ptr %i.e, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gb, i64 776
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 328
  %i.hk = load i32, ptr %i.hj, align 8            ; 2 uses
  store i32 %i.hk, ptr %i.g, align 4
  br label %.sink.split.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.hl = load i32, ptr %i.g, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gb, i64 776 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 328
  %i.hp = load i32, ptr %i.ho, align 8            ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.hl, %i.hp
  br i1 %.not26.i.i.i, label %_select_topo_bitmap.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i32 %i.hp, ptr %i.g, align 4
  call void @bit_copybits(ptr noundef nonnull %i.hf, ptr noundef %1) #9
  %.sink.i.pre.i.i = load ptr, ptr %i.e, align 8
  %.sink31.i.pre.i.i = load ptr, ptr %i.hm, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sink31.i.pre.i.i, i64 328
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.ca, %bb.by
  %i.hq = phi i32 [ %.pre.i.i, %bb.ca ], [ %i.hk, %bb.by ]
  %.sink.i.i.i = phi ptr [ %.sink.i.pre.i.i, %bb.ca ], [ %i.hg, %bb.by ]
  %i.hr = call i32 @topology_g_whole_topo(ptr noundef %.sink.i.i.i, i32 noundef %i.hq) #9 ; 0 uses
  %.pre70.i.i = load ptr, ptr %i.e, align 8
  br label %_select_topo_bitmap.exit.i.i

_select_topo_bitmap.exit.i.i:                     ; preds = %.sink.split.i.i.i, %bb.bz, %bb.bw, %bb.bv
  %.0.i208.i.i = phi ptr [ %1, %bb.bv ], [ %1, %bb.bw ], [ %.pre70.i.i, %.sink.split.i.i.i ], [ %i.hf, %bb.bz ] ; 3 uses
  %i.hs = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ht = and i64 %i.hs, 1
  %.not187.i.i = icmp eq i64 %i.ht, 0
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gb, i64 656
  %i.hv = load ptr, ptr %i.hu, align 8            ; 2 uses
  br i1 %.not187.i.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %_select_topo_bitmap.exit.i.i
  %i.hw = call i32 @bit_overlap(ptr noundef %.0.i208.i.i, ptr noundef %i.hv) #9 ; 3 uses
  %i.hx = call i32 @get_log_level() #9
  %i.hy = icmp sgt i32 %i.hx, 2
  br i1 %i.hy, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.91, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._future_run_test, ptr noundef nonnull %i.gb, i32 noundef %i.hw) #9
  br label %bb.ce

bb.cd:                                            ; preds = %_select_topo_bitmap.exit.i.i
  %i.hz = call i32 @bit_overlap_any(ptr noundef %.0.i208.i.i, ptr noundef %i.hv) #9
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %.0144.i.i = phi i32 [ %i.hw, %bb.cc ], [ %i.hw, %bb.cb ], [ %i.hz, %bb.cd ]
  %i.ia = icmp eq i32 %.0144.i.i, 0
  br i1 %i.ia, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  br i1 %.not188.i.i.a, label %bb.cu, label %bb.cg, !llvm.loop !13

bb.cg:                                            ; preds = %bb.cf
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gb, i64 544
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = load ptr, ptr %i.ff, align 8
  %i.ie = call zeroext i1 @license_list_overlap_non_hres(ptr noundef %i.ic, ptr noundef %i.id) #9
  br i1 %i.ie, label %bb.ch, label %bb.cu, !llvm.loop !13

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  %i.if = load i64, ptr %i.f, align 8
  %.not189.i.i = icmp eq i64 %i.if, 0
  br i1 %.not189.i.i, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.ig = load i8, ptr @soft_time_limit, align 1, !range !8, !noundef !9
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gb, i64 1108
  %i.ij = load i32, ptr %i.ii, align 4            ; 2 uses
  %.not.i210.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not.i210.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gb, i64 272
  %i.il = load i64, ptr %i.ik, align 8
  br label %_soft_job_end.exit211.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.im = getelementptr inbounds nuw i8, ptr %i.gb, i64 1032
  %i.in = load i64, ptr %i.im, align 8
  %i.io = mul i32 %i.ij, 60
  %i.ip = zext i32 %i.io to i64
  %i.iq = add nsw i64 %i.in, %i.ip                ; 2 uses
  %i.ir = icmp slt i64 %i.iq, %i.du
  br i1 %i.ir, label %bb.cm, label %_soft_job_end.exit211.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.is = getelementptr inbounds nuw i8, ptr %i.gb, i64 272
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = sub nsw i64 %i.it, %i.du
  %i.iv = sdiv i64 %i.iu, 2
  %i.iw = add nsw i64 %i.iv, %i.du
  br label %_soft_job_end.exit211.i.i

_soft_job_end.exit211.i.i:                        ; preds = %bb.cm, %bb.cl, %bb.ck
  %.010.i209.i.i = phi i64 [ %i.il, %bb.ck ], [ %i.iw, %bb.cm ], [ %i.iq, %bb.cl ] ; 2 uses
  %i.ix = srem i64 %.010.i209.i.i, %i.ga
  %i.iy = add i64 %.010.i209.i.i, %i.ga
  %i.iz = sub i64 %i.iy, %i.ix
  store i64 %i.iz, ptr %i.f, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %_soft_job_end.exit211.i.i, %bb.ch
  %i.ja = call i32 @job_res_rm_job(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ez, ptr noundef %.0140.i.i, ptr noundef nonnull %i.gb, i32 noundef 0, ptr noundef %.0.i208.i.i) #9 ; 0 uses
  call void @list_push(ptr noundef %i.ft, ptr noundef nonnull %i.gb) #9
  %i.jb = call ptr @list_peek_next(ptr noundef %i.fx) #9 ; 7 uses
  %.not190.not.i.not.i.not.not = icmp ne ptr %i.jb, null ; 3 uses
  br i1 %.not190.not.i.not.i.not.not, label %bb.co, label %.thread21.i.i

bb.co:                                            ; preds = %bb.cn
  %i.jc = load i8, ptr @soft_time_limit, align 1, !range !8, !noundef !9
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 1108
  %i.jf = load i32, ptr %i.je, align 4            ; 2 uses
  %.not.i213.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i213.i.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 272
  %i.jh = load i64, ptr %i.jg, align 8
  br label %_soft_job_end.exit214.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 1032
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = mul i32 %i.jf, 60
  %i.jl = zext i32 %i.jk to i64
  %i.jm = add nsw i64 %i.jj, %i.jl                ; 2 uses
  %i.jn = icmp slt i64 %i.jm, %i.du
  br i1 %i.jn, label %bb.cs, label %_soft_job_end.exit214.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jb, i64 272
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = sub nsw i64 %i.jp, %i.du
  %i.jr = sdiv i64 %i.jq, 2
  %i.js = add nsw i64 %i.jr, %i.du
  br label %_soft_job_end.exit214.i.i

_soft_job_end.exit214.i.i:                        ; preds = %bb.cs, %bb.cr, %bb.cq
  %.010.i212.i.i = phi i64 [ %i.jh, %bb.cq ], [ %i.js, %bb.cs ], [ %i.jm, %bb.cr ] ; 4 uses
  %i.jt = load i64, ptr %i.f, align 8
  %i.ju = add nsw i64 %i.jt, %i.ga
  %i.jv = icmp sgt i64 %.010.i212.i.i, %i.ju
  br i1 %i.jv, label %.thread21.i.i, label %bb.ct

bb.ct:                                            ; preds = %_soft_job_end.exit214.i.i
  %i.jw = add nsw i32 %.014251.i.i, 1
  %i.jx = icmp sgt i32 %.014251.i.i, 200
  br i1 %i.jx, label %.critedge.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cg, %bb.cf
  %.1148.i.i = phi ptr [ %.014749.i.i, %bb.cf ], [ %.014749.i.i, %bb.cg ], [ %i.gb, %bb.ct ] ; 2 uses
  %.1146.i.i = phi ptr [ %.014550.i.i, %bb.cf ], [ %.014550.i.i, %bb.cg ], [ %i.jb, %bb.ct ] ; 2 uses
  %.1143.i.i = phi i32 [ %.014251.i.i, %bb.cf ], [ %.014251.i.i, %bb.cg ], [ %i.jw, %bb.ct ]
  %.1.i.i = phi i64 [ %.014152.i.i, %bb.cf ], [ %.014152.i.i, %bb.cg ], [ %.010.i212.i.i, %bb.ct ] ; 2 uses
  %i.jy = call ptr @list_next(ptr noundef %i.fx) #9 ; 2 uses
  %.not185.i.i = icmp eq ptr %i.jy, null
  br i1 %.not185.i.i, label %._crit_edge.i.i, label %bb.bn

._crit_edge.i.i:                                  ; preds = %bb.cu, %_soft_job_end.exit.i.i
  %.0147.lcssa.i.i = phi ptr [ %.1148.i.i, %bb.cu ], [ %.014749.i.i, %_soft_job_end.exit.i.i ] ; 2 uses
  %.0145.lcssa.i.i = phi ptr [ %.1146.i.i, %bb.cu ], [ %.014550.i.i, %_soft_job_end.exit.i.i ]
  %.0141.lcssa.i.i = phi i64 [ %.1.i.i, %bb.cu ], [ %.014152.i.i, %_soft_job_end.exit.i.i ]
  %.not191.i.i = icmp eq ptr %.0147.lcssa.i.i, null
  br i1 %.not191.i.i, label %.thread33.i.i, label %.thread21.i.i

.thread21.i.i:                                    ; preds = %_soft_job_end.exit214.i.i, %bb.cn, %._crit_edge.i.i
  %.1.ph30.i.i = phi i64 [ %.0141.lcssa.i.i, %._crit_edge.i.i ], [ %.010.i212.i.i, %_soft_job_end.exit214.i.i ], [ %.014152.i.i, %bb.cn ] ; 6 uses
  %.2154.ph31.i.i = phi i1 [ false, %._crit_edge.i.i ], [ %.not190.not.i.not.i.not.not, %bb.cn ], [ %.not190.not.i.not.i.not.not, %_soft_job_end.exit214.i.i ] ; 4 uses
  %.1146.ph29.i.i = phi ptr [ %.0145.lcssa.i.i, %._crit_edge.i.i ], [ %i.jb, %_soft_job_end.exit214.i.i ], [ null, %bb.cn ]
  %.1148.ph28.i.i = phi ptr [ %.0147.lcssa.i.i, %._crit_edge.i.i ], [ %i.gb, %bb.cn ], [ %i.gb, %_soft_job_end.exit214.i.i ]
  %i.jz = load i8, ptr @backfill_busy_nodes, align 1, !range !8, !noundef !9
  %i.ka = trunc nuw i8 %i.jz to i1
  %i.kb = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = call fastcc i32 @_job_test(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2, i16 noundef zeroext %.0.i.i.i, i32 noundef %.pre-phi.i.i, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ez, ptr noundef %.0140.i.i, ptr noundef %8, i1 noundef zeroext %i.ka, i1 noundef zeroext %i.kc, i1 noundef zeroext true, ptr noundef null) ; 5 uses
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.cv, label %bb.dn

bb.cv:                                            ; preds = %.thread21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.g, ptr %i.ki, align 8
  br i1 %.not188.i.i.a, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kj = load ptr, ptr %i.ff, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.kj, null
  br i1 %.not10.i.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kk = call i32 @list_count(ptr noundef nonnull %i.kj) #9
  %i.kl = sext i32 %i.kk to i64
  %i.km = call ptr @slurm_xcalloc(i64 noundef %i.kl, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 2687, ptr noundef nonnull @__func__._get_last_relevant_job) #9
  store ptr %i.km, ptr %i.kg, align 8
  store ptr %.0140.i.i, ptr %i.kf, align 8
  %i.kn = load ptr, ptr %i.ff, align 8
  %i.ko = call i32 @list_for_each(ptr noundef %i.kn, ptr noundef nonnull @_set_license_req, ptr noundef nonnull %13) #9 ; 0 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.kp = call ptr @list_find_first(ptr noundef %i.ft, ptr noundef nonnull @_is_job_relevant, ptr noundef nonnull %13) #9 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.kg) #9
  %i.kq = load ptr, ptr %13, align 8
  %.not11.i.i.i = icmp eq ptr %i.kq, null
  br i1 %.not11.i.i.i, label %_get_last_relevant_job.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @slurm_bit_free(ptr noundef nonnull %13) #9
  br label %_get_last_relevant_job.exit.i.i

_get_last_relevant_job.exit.i.i:                  ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %.not194.i.i.a = icmp eq ptr %i.kp, null
  %spec.select.i80.i = select i1 %.not194.i.i.a, ptr %.1148.ph28.i.i, ptr %i.kp ; 8 uses
  %i.kr = load i8, ptr @soft_time_limit, align 1, !range !8, !noundef !9
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_get_last_relevant_job.exit.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %spec.select.i80.i, i64 1108
  %i.ku = load i32, ptr %i.kt, align 4            ; 2 uses
  %.not.i217.i.i = icmp eq i32 %i.ku, 0
  br i1 %.not.i217.i.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da, %_get_last_relevant_job.exit.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %spec.select.i80.i, i64 272
  %i.kw = load i64, ptr %i.kv, align 8
  br label %_soft_job_end.exit218.i.i

bb.dc:                                            ; preds = %bb.da
  %i.kx = getelementptr inbounds nuw i8, ptr %spec.select.i80.i, i64 1032
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = mul i32 %i.ku, 60
  %i.la = zext i32 %i.kz to i64
  %i.lb = add nsw i64 %i.ky, %i.la                ; 2 uses
  %i.lc = icmp slt i64 %i.lb, %i.du
  br i1 %i.lc, label %bb.dd, label %_soft_job_end.exit218.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.ld = getelementptr inbounds nuw i8, ptr %spec.select.i80.i, i64 272
  %i.le = load i64, ptr %i.ld, align 8
  %i.lf = sub nsw i64 %i.le, %i.du
  %i.lg = sdiv i64 %i.lf, 2
  %i.lh = add nsw i64 %i.lg, %i.du
  br label %_soft_job_end.exit218.i.i

_soft_job_end.exit218.i.i:                        ; preds = %bb.dd, %bb.dc, %bb.db
  %.010.i216.i.i = phi i64 [ %i.kw, %bb.db ], [ %i.lh, %bb.dd ], [ %i.lb, %bb.dc ] ; 2 uses
  %.not195.i.i = icmp sgt i64 %.010.i216.i.i, %i.du
  br i1 %.not195.i.i, label %.thread33.sink.split.i.i, label %bb.de

bb.de:                                            ; preds = %_soft_job_end.exit218.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %spec.select.i80.i, i64 776
  %i.lj = load ptr, ptr %i.li, align 8            ; 2 uses
  %.not.i219.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i219.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 272
  %i.ll = load i16, ptr %i.lk, align 8            ; 2 uses
  %.not22.i220.i.i = icmp eq i16 %i.ll, -2
  br i1 %.not22.i220.i.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.lm = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 840), align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0.i221.i.i = phi i16 [ %i.lm, %bb.dg ], [ %i.ll, %bb.df ] ; 2 uses
  switch i16 %.0.i221.i.i, label %bb.dm [
    i16 0, label %bb.di
    i16 -1, label %bb.dj
  ]

bb.di:                                            ; preds = %bb.dh
  %i.ln = getelementptr inbounds nuw i8, ptr %spec.select.i80.i, i64 272
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 638), align 2
  %i.lq = zext i16 %i.lp to i64
  %i.lr = add nsw i64 %i.lo, %i.lq
  br label %_guess_job_end.exit.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.ls = getelementptr inbounds nuw i8, ptr %spec.select.i80.i, i64 1104
  %i.lt = load i32, ptr %i.ls, align 8            ; 2 uses
  %.off.i.i.i = add i32 %i.lt, -1
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, -3
  br i1 %switch.i.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.lu = mul i32 %i.lt, 60
  %i.lv = zext i32 %i.lu to i64
  %i.lw = add nsw i64 %i.du, %i.lv
  br label %_guess_job_end.exit.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.lx = add nsw i64 %i.du, 31536000
  br label %_guess_job_end.exit.i.i

bb.dm:                                            ; preds = %bb.dh
  %i.ly = zext i16 %.0.i221.i.i to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %spec.select.i80.i, i64 272
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 638), align 2
  %i.mc = zext i16 %i.mb to i64
  %i.md = mul nuw nsw i64 %i.ly, 60
  %i.me = add i64 %i.ma, %i.md
  %i.mf = add i64 %i.me, %i.mc
  br label %_guess_job_end.exit.i.i

_guess_job_end.exit.i.i:                          ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.di
  %.017.i.i.i = phi i64 [ %i.lr, %bb.di ], [ %i.lw, %bb.dk ], [ %i.lx, %bb.dl ], [ %i.mf, %bb.dm ]
  %i.mg = add nsw i64 %i.du, 1
  %spec.select.i.i.i = call range(i64 -9223372036854775807, -9223372036854775808) i64 @llvm.smax.i64(i64 %.017.i.i.i, i64 %i.mg)
  br label %.thread33.sink.split.i.i

bb.dn:                                            ; preds = %.thread21.i.i
  %.old3.i.i = icmp sgt i32 %.0153.i.i, 31536000
  br i1 %.old3.i.i, label %.critedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.dn
  %i.mh = load i32, ptr @bf_window_scale, align 4
  %.fr.i.i = freeze i32 %i.mh                     ; 3 uses
  %.not192.i.i = icmp eq i32 %.fr.i.i, 0          ; 2 uses
  %.not193.i.i = icmp eq ptr %.1146.ph29.i.i, null
  %i.mi = load i64, ptr %i.f, align 8             ; 2 uses
  br i1 %.not193.i.i, label %.preheader.split.us.i.i, label %.preheader.split.i.i

.preheader.split.us.i.i:                          ; preds = %.preheader.i.i
  %i.mj = add nsw i32 %.fr.i.i, %.0153.i.i
  %i.mk = shl nsw i32 %.0153.i.i, 1
  %.2155.us.i.i = select i1 %.not192.i.i, i32 %i.mk, i32 %i.mj
  br label %.critedge.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i.i
  br i1 %.not192.i.i, label %.preheader.split.split.us.i.i, label %.preheader.split.split.preheader.i.i

.preheader.split.split.preheader.i.i:             ; preds = %.preheader.split.i.i
  %i.ml = sext i32 %.fr.i.i to i64
  br label %.preheader.split.split.i.i

.preheader.split.split.us.i.i:                    ; preds = %.preheader.split.i.i, %.preheader.split.split.us.i.i
  %.1154.us58.i.i = phi i32 [ %i.mm, %.preheader.split.split.us.i.i ], [ %.0153.i.i, %.preheader.split.i.i ] ; 2 uses
  %i.mm = shl nsw i32 %.1154.us58.i.i, 1          ; 3 uses
  %i.mn = sext i32 %i.mm to i64
  %i.mo = add nsw i64 %i.mi, %i.mn
  %i.mp = icmp sle i64 %.1.ph30.i.i, %i.mo
  %i.mq = icmp sgt i32 %.1154.us58.i.i, 15768000
  %or.cond4.us.i.i = or i1 %i.mq, %i.mp
  br i1 %or.cond4.us.i.i, label %.critedge.i.i, label %.preheader.split.split.us.i.i, !llvm.loop !14

.preheader.split.split.i.i:                       ; preds = %.preheader.split.split.i.i, %.preheader.split.split.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ga, %.preheader.split.split.preheader.i.i ], [ %indvars.iv.next.i.i, %.preheader.split.split.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, %i.ml ; 4 uses
  %i.mr = add nsw i64 %indvars.iv.next.i.i, %i.mi
  %i.ms = icmp sle i64 %.1.ph30.i.i, %i.mr
  %i.mt = icmp sgt i64 %indvars.iv.next.i.i, 31536000
  %or.cond4.i.i = or i1 %i.mt, %i.ms
  br i1 %or.cond4.i.i, label %.critedge.loopexit61.i.i, label %.preheader.split.split.i.i, !llvm.loop !14

.critedge.loopexit61.i.i:                         ; preds = %.preheader.split.split.i.i
  %i.mu = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ct, %.preheader.split.split.us.i.i, %.critedge.loopexit61.i.i, %.preheader.split.us.i.i, %bb.dn
  %.215113.i.i = phi i64 [ %.1.ph30.i.i, %bb.dn ], [ %.1.ph30.i.i, %.preheader.split.us.i.i ], [ %.1.ph30.i.i, %.critedge.loopexit61.i.i ], [ %.1.ph30.i.i, %.preheader.split.split.us.i.i ], [ %.010.i212.i.i, %bb.ct ]
  %.21618.i.i = phi i1 [ %.2154.ph31.i.i, %bb.dn ], [ %.2154.ph31.i.i, %.preheader.split.us.i.i ], [ %.2154.ph31.i.i, %.critedge.loopexit61.i.i ], [ %.2154.ph31.i.i, %.preheader.split.split.us.i.i ], [ true, %bb.ct ]
  %.3156.i.i = phi i32 [ %.0153.i.i, %bb.dn ], [ %.2155.us.i.i, %.preheader.split.us.i.i ], [ %i.mu, %.critedge.loopexit61.i.i ], [ %i.mm, %.preheader.split.split.us.i.i ], [ %.0153.i.i, %bb.ct ] ; 2 uses
  %.2152.i.i = phi i32 [ %i.kd, %bb.dn ], [ %i.kd, %.preheader.split.us.i.i ], [ %i.kd, %.critedge.loopexit61.i.i ], [ %i.kd, %.preheader.split.split.us.i.i ], [ %.1151.i.i, %bb.ct ] ; 2 uses
  %i.mv = call { i64, i64 } @timespec_now() #9    ; 2 uses
  %i.mw = extractvalue { i64, i64 } %i.mv, 0
  %i.mx = extractvalue { i64, i64 } %i.mv, 1
  store i64 %i.mw, ptr %16, align 8
  store i64 %i.mx, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.my = call i64 @timer_get_duration(ptr noundef nonnull %15, ptr noundef nonnull %16) #9
  %i.mz = icmp sgt i64 %i.my, 1999999
  br i1 %i.mz, label %.thread33.i.i, label %bb.bl

.thread33.sink.split.i.i:                         ; preds = %_guess_job_end.exit.i.i, %_soft_job_end.exit218.i.i
  %.010.i216.sink.i.i = phi i64 [ %spec.select.i.i.i, %_guess_job_end.exit.i.i ], [ %.010.i216.i.i, %_soft_job_end.exit218.i.i ]
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 %.010.i216.sink.i.i, ptr %i.na, align 8
  br label %.thread33.i.i

.thread33.i.i:                                    ; preds = %.critedge.i.i, %._crit_edge.i.i, %bb.bm, %bb.bl, %.thread33.sink.split.i.i
  %.5158.i.i = phi i32 [ %.0153.i.i, %.thread33.sink.split.i.i ], [ %.0153.i.i, %._crit_edge.i.i ], [ %.0153.i.i, %bb.bl ], [ %.0153.i.i, %bb.bm ], [ %.3156.i.i, %.critedge.i.i ]
  %.4.i.i = phi i32 [ 0, %.thread33.sink.split.i.i ], [ %.1151.i.i, %._crit_edge.i.i ], [ %.1151.i.i, %bb.bl ], [ %.1151.i.i, %bb.bm ], [ %.2152.i.i, %.critedge.i.i ]
  %i.nb = load i64, ptr %i.f, align 8
  %.not196.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not196.i.i, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %.thread33.i.i
  %i.nc = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8 ; 2 uses
  %i.nd = and i64 %i.nc, 1
  %.not197.i.i = icmp eq i64 %i.nd, 0
  br i1 %.not197.i.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ne = load i64, ptr %i.dt, align 8
  %i.nf = and i64 %i.ne, 8
  %.not198.i.i = icmp eq i64 %i.nf, 0
  %i.ng = and i64 %i.nc, 4096
  %.not199.i.i = icmp eq i64 %i.ng, 0
  %or.cond205.i.i = or i1 %.not199.i.i, %.not198.i.i
  br i1 %or.cond205.i.i, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.nh = call i32 @get_log_level() #9
  %i.ni = icmp sgt i32 %i.nh, 3
  br i1 %i.ni, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.nj = call ptr @slurm_ctime2_r(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h) #9
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.92, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._future_run_test, ptr noundef %0, i32 noundef %.5158.i.i, ptr noundef %i.nj) #9
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dp, %.thread33.i.i
  call void @list_iterator_destroy(ptr noundef %i.fx) #9
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.bj
  %.5.i.i = phi i32 [ 0, %bb.bj ], [ %.4.i.i, %bb.dt ] ; 2 uses
  %.0149.i.i.a = phi ptr [ null, %bb.bj ], [ %i.ft, %bb.dt ] ; 2 uses
  %i.nk = load ptr, ptr %i.e, align 8
  %.not200.i.i = icmp eq ptr %i.nk, null
  br i1 %.not200.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #9
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  store ptr null, ptr %i.e, align 8
  %.not201.i.i = icmp eq ptr %i.fe, null
  br i1 %.not201.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @list_destroy(ptr noundef nonnull %i.fe) #9
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  call void @part_data_destroy_res(ptr noundef nonnull %i.ew) #9
  call void @node_data_destroy(ptr noundef nonnull %i.ez) #9
  %.not202.i.i = icmp eq ptr %.0140.i.i, null
  br i1 %.not202.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @list_destroy(ptr noundef nonnull %.0140.i.i) #9
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.not203.i.i = icmp eq ptr %.0149.i.i.a, null
  br i1 %.not203.i.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @list_destroy(ptr noundef nonnull %.0149.i.i.a) #9
  br label %bb.ec

.thread96.i:                                      ; preds = %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread90.i

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.nl = icmp eq i32 %.5.i.i, 0
  %i.nm = icmp ne ptr %7, null
  %or.cond5.i = and i1 %i.nm, %i.nl
  %or.cond7.i = and i1 %i.ds, %or.cond5.i
  br i1 %or.cond7.i, label %bb.ed, label %.thread90.i

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store ptr null, ptr %i.k, align 8
  %i.nn = load ptr, ptr %7, align 8
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.np = call ptr @list_create(ptr noundef null) #9
  store ptr %i.np, ptr %7, align 8
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.nq = call ptr @list_iterator_create(ptr noundef nonnull %.16089.i) #9 ; 4 uses
  %i.nr = call ptr @list_next(ptr noundef %i.nq) #9 ; 2 uses
  %.not71105.i = icmp eq ptr %i.nr, null
  br i1 %.not71105.i, label %._crit_edge.i.thread, label %.lr.ph.i

._crit_edge.i.thread:                             ; preds = %bb.ef
  call void @list_iterator_destroy(ptr noundef %i.nq) #9
  br label %bb.eo

.lr.ph.i:                                         ; preds = %bb.ef, %.backedge.i
  %i.ns = phi ptr [ %i.ot, %.backedge.i ], [ %i.nr, %bb.ef ] ; 6 uses
  %.083106.i = phi i32 [ %.3.i, %.backedge.i ], [ undef, %bb.ef ] ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 256
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 512
  %i.nw = load i8, ptr %i.nv, align 8
  %i.nx = and i8 %i.nw, 8
  %.not.i81.i = icmp eq i8 %i.nx, 0
  br i1 %.not.i81.i, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %.lr.ph.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 776
  %i.nz = load ptr, ptr %i.ny, align 8            ; 2 uses
  %.not23.i.i = icmp eq ptr %i.nz, null
  br i1 %.not23.i.i, label %_select_topo_bitmap.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 168
  %i.ob = load i32, ptr %i.oa, align 8
  %i.oc = and i32 %i.ob, 65536
  %.not24.i.i = icmp eq i32 %i.oc, 0
  br i1 %.not24.i.i, label %_select_topo_bitmap.exit.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.i
  %i.od = load ptr, ptr %i.k, align 8             ; 4 uses
  %.not25.i.i = icmp eq ptr %i.od, null
  br i1 %.not25.i.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.oe = call ptr @bit_copy(ptr noundef %1) #9   ; 2 uses
  store ptr %i.oe, ptr %i.k, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.ns, i64 776
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 328
  %i.oi = load i32, ptr %i.oh, align 8            ; 2 uses
  br label %.sink.split.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ns, i64 776 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 328
  %i.om = load i32, ptr %i.ol, align 8            ; 2 uses
  %.not26.i.i = icmp eq i32 %.083106.i, %i.om
  br i1 %.not26.i.i, label %_select_topo_bitmap.exit.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @bit_copybits(ptr noundef nonnull %i.od, ptr noundef %1) #9
  %.sink31.i.pre.i = load ptr, ptr %i.oj, align 8
  %.phi.trans.insert114.i = getelementptr inbounds nuw i8, ptr %.sink31.i.pre.i, i64 328
  %.pre115.i = load i32, ptr %.phi.trans.insert114.i, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.el, %bb.ej
  %i.on = phi i32 [ %i.oi, %bb.ej ], [ %.pre115.i, %bb.el ]
  %.sink.i.i = phi ptr [ %i.oe, %bb.ej ], [ %i.od, %bb.el ] ; 2 uses
  %.184.i = phi i32 [ %i.oi, %bb.ej ], [ %i.om, %bb.el ]
  %i.oo = call i32 @topology_g_whole_topo(ptr noundef %.sink.i.i, i32 noundef %i.on) #9 ; 0 uses
  br label %_select_topo_bitmap.exit.i

_select_topo_bitmap.exit.i:                       ; preds = %.sink.split.i.i, %bb.ek, %bb.eh, %bb.eg
  %.3.i = phi i32 [ %.083106.i, %bb.eg ], [ %.083106.i, %bb.eh ], [ %.184.i, %.sink.split.i.i ], [ %.083106.i, %bb.ek ]
  %.0.i82.i = phi ptr [ %1, %bb.eg ], [ %1, %bb.eh ], [ %.sink.i.i, %.sink.split.i.i ], [ %i.od, %bb.ek ]
  %i.op = getelementptr inbounds nuw i8, ptr %i.ns, i64 656
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = call i32 @bit_overlap_any(ptr noundef %.0.i82.i, ptr noundef %i.oq) #9
  %.not74.i = icmp eq i32 %i.or, 0
  br i1 %.not74.i, label %.backedge.i, label %bb.em

bb.em:                                            ; preds = %_select_topo_bitmap.exit.i
  %i.os = load ptr, ptr %7, align 8
  call void @list_append(ptr noundef %i.os, ptr noundef nonnull %i.ns) #9
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.em, %_select_topo_bitmap.exit.i
  %i.ot = call ptr @list_next(ptr noundef %i.nq) #9 ; 2 uses
  %.not71.i = icmp eq ptr %i.ot, null
  br i1 %.not71.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.backedge.i
  %.pre231 = load ptr, ptr %i.k, align 8
  %i.ou = icmp eq ptr %.pre231, null
  call void @list_iterator_destroy(ptr noundef %i.nq) #9
  br i1 %i.ou, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %._crit_edge.i
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #9
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge.i.thread, %bb.en, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  %.pre232 = load ptr, ptr %i.j, align 8
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.eo, %bb.ec, %.thread96.i, %bb.ar
  %i.ov = phi ptr [ %i.ce, %.thread96.i ], [ %i.ce, %bb.ec ], [ %.pre232, %bb.eo ], [ %i.ce, %bb.ar ]
  %.195.i = phi i32 [ -1, %.thread96.i ], [ %.5.i.i, %bb.ec ], [ 0, %bb.eo ], [ -1, %bb.ar ] ; 2 uses
  %.not73.i = icmp eq ptr %i.ov, null
  br i1 %.not73.i, label %_will_run_test.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %.thread90.i, %bb.aq, %bb.an
  %.058.ph.i = phi i32 [ -1, %bb.aq ], [ 0, %bb.an ], [ %.195.i, %.thread90.i ]
  call void @slurm_bit_free(ptr noundef nonnull %i.j) #9
  br label %_will_run_test.exit

_will_run_test.exit:                              ; preds = %bb.an, %bb.aq, %.thread90.i, %.sink.split.i
  %.058.i = phi i32 [ -1, %bb.aq ], [ 0, %bb.an ], [ %.195.i, %.thread90.i ], [ %.058.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %_test_only.exit

bb.ep:                                            ; preds = %_rebuild_suspend_exempt_cores.exit
  %.val.i89 = load ptr, ptr %i.an, align 8
  %i.ow = getelementptr i8, ptr %.val.i89, i64 324
  %.val.val.i90 = load i16, ptr %i.ow, align 4    ; 2 uses
  %i.ox = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8 ; 5 uses
  %.not.i.i91 = icmp eq i16 %.val.val.i90, 0
  br i1 %.not.i.i91, label %_setup_cr_type.exit.i93, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.oy = and i16 %i.ox, 6
  %or.cond.i.i92 = icmp eq i16 %i.oy, 0
  br i1 %or.cond.i.i92, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.oz = and i16 %i.ox, -23
  %i.pa = or i16 %i.oz, %.val.val.i90
  br label %_setup_cr_type.exit.i93

bb.es:                                            ; preds = %bb.eq
  %i.pb = tail call i32 @get_log_level() #9
  %i.pc = icmp sgt i32 %i.pb, 2
  br i1 %i.pc, label %bb.et, label %_setup_cr_type.exit.i93

bb.et:                                            ; preds = %bb.es
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.16, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._setup_cr_type, ptr noundef nonnull @plugin_type) #9
  br label %_setup_cr_type.exit.i93

_setup_cr_type.exit.i93:                          ; preds = %bb.et, %bb.es, %bb.er, %bb.ep
  %.0.i.i94 = phi i16 [ %i.pa, %bb.er ], [ %i.ox, %bb.et ], [ %i.ox, %bb.es ], [ %i.ox, %bb.ep ]
  %i.pd = tail call ptr @cluster_license_copy() #9 ; 3 uses
  tail call void @hres_pre_select(ptr noundef nonnull %0, i1 noundef zeroext true) #9
  %i.pe = zext i16 %.0.i to i32
  %i.pf = load ptr, ptr @select_part_record, align 8
  %i.pg = load ptr, ptr @select_node_usage, align 8
  %i.ph = tail call fastcc i32 @_job_test(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1, i16 noundef zeroext %.0.i.i94, i32 noundef %i.pe, ptr noundef %i.pf, ptr noundef %i.pg, ptr noundef %i.pd, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %.not.i95 = icmp eq ptr %i.pd, null
  br i1 %.not.i95, label %_test_only.exit, label %bb.eu

bb.eu:                                            ; preds = %_setup_cr_type.exit.i93
  tail call void @list_destroy(ptr noundef nonnull %i.pd) #9
  br label %_test_only.exit

bb.ev:                                            ; preds = %_rebuild_suspend_exempt_cores.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.val.i96 = load ptr, ptr %i.an, align 8
  %i.pi = getelementptr i8, ptr %.val.i96, i64 324
  %.val.val.i97 = load i16, ptr %i.pi, align 4    ; 2 uses
  %i.pj = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8 ; 5 uses
  %.not.i.i98 = icmp eq i16 %.val.val.i97, 0
  br i1 %.not.i.i98, label %_setup_cr_type.exit.i100, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.pk = and i16 %i.pj, 6
  %or.cond.i.i99 = icmp eq i16 %i.pk, 0
  br i1 %or.cond.i.i99, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.pl = and i16 %i.pj, -23
  %i.pm = or i16 %i.pl, %.val.val.i97
  br label %_setup_cr_type.exit.i100

bb.ey:                                            ; preds = %bb.ew
  %i.pn = tail call i32 @get_log_level() #9
  %i.po = icmp sgt i32 %i.pn, 2
  br i1 %i.po, label %bb.ez, label %_setup_cr_type.exit.i100

bb.ez:                                            ; preds = %bb.ey
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.16, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._setup_cr_type, ptr noundef nonnull @plugin_type) #9
  br label %_setup_cr_type.exit.i100

_setup_cr_type.exit.i100:                         ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %.0.i.i101 = phi i16 [ %i.pm, %bb.ex ], [ %i.pj, %bb.ez ], [ %i.pj, %bb.ey ], [ %i.pj, %bb.ev ] ; 4 uses
  tail call void @hres_pre_select(ptr noundef nonnull %0, i1 noundef zeroext false) #9
  %i.pp = tail call ptr @bit_copy(ptr noundef %1) #9 ; 2 uses
  store ptr %i.pp, ptr %i.b, align 8
  %i.pq = zext i16 %.0.i to i32                   ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pt = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.px = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.py = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.pz = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.qa = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.phi.trans.insert.i.i102 = getelementptr inbounds nuw i8, ptr %10, i64 40
  br label %bb.fa

bb.fa:                                            ; preds = %bb.hx, %_setup_cr_type.exit.i100
  %.0213.i = phi ptr [ %i.pp, %_setup_cr_type.exit.i100 ], [ %.pre.i110, %bb.hx ]
  %.0188.i = phi i16 [ 0, %_setup_cr_type.exit.i100 ], [ %i.tn, %bb.hx ] ; 2 uses
  %.0185.i = phi i16 [ -2, %_setup_cr_type.exit.i100 ], [ %i.sz, %bb.hx ] ; 3 uses
  %.0184.i = phi i1 [ false, %_setup_cr_type.exit.i100 ], [ true, %bb.hx ] ; 2 uses
  %.0182.i = phi ptr [ %6, %_setup_cr_type.exit.i100 ], [ %.1214.i, %bb.hx ] ; 8 uses
  %i.qb = call ptr @bit_copy(ptr noundef %.0213.i) #9
  store ptr %i.qb, ptr %i.a, align 8
  %i.qc = call ptr @cluster_license_copy() #9     ; 15 uses
  %i.qd = load ptr, ptr @select_part_record, align 8
  %i.qe = load ptr, ptr @select_node_usage, align 8
  %i.qf = call fastcc i32 @_job_test(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i16 noundef zeroext %.0.i.i101, i32 noundef %i.pq, ptr noundef %i.qd, ptr noundef %i.qe, ptr noundef %i.qc, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) ; 7 uses
  %i.qg = icmp ne i32 %i.qf, 2040
  %i.qh = load i8, ptr @preempt_for_licenses, align 1, !range !8
  %i.qi = trunc nuw i8 %i.qh to i1
  %i.qj = icmp ne i16 %.0185.i, 1
  %or.cond.not.i = and i1 %i.qj, %i.qi
  %.not310.i = select i1 %i.qg, i1 true, i1 %or.cond.not.i
  %.1214.i = select i1 %.not310.i, ptr %.0182.i, ptr null ; 2 uses
  %i.qk = icmp ne i32 %i.qf, 0
  %i.ql = icmp ne ptr %.1214.i, null
  %or.cond5.i103 = select i1 %i.qk, i1 %i.ql, i1 false ; 3 uses
  %i.qm = load i8, ptr @preempt_by_qos, align 1, !range !8
  %i.qn = trunc nuw i8 %i.qm to i1
  %or.cond7.i104 = select i1 %or.cond5.i103, i1 %i.qn, i1 false
  br i1 %or.cond7.i104, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.qo = call ptr @list_peek(ptr noundef nonnull %.0182.i) #9 ; 2 uses
  %.not.i113 = icmp eq ptr %i.qo, null
  br i1 %.not.i113, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.qp = call zeroext i16 @slurm_job_preempt_mode(ptr noundef nonnull %i.qo) #9
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa
  %.1186.i = phi i16 [ %i.qp, %bb.fc ], [ %.0185.i, %bb.fb ], [ %.0185.i, %bb.fa ]
  %i.qq = load i8, ptr @preempt_by_qos, align 1, !range !8
  %i.qr = trunc nuw i8 %i.qq to i1
  %or.cond11.i = select i1 %or.cond5.i103, i1 %i.qr, i1 false
  %i.qs = icmp eq i16 %.1186.i, 1
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.qs, i1 false
  br i1 %or.cond14.i, label %bb.fe, label %bb.gg

bb.fe:                                            ; preds = %bb.fd
  %i.qt = load i32, ptr %i.pr, align 8
  %.not237.i = icmp eq i32 %i.qt, 0
  br i1 %.not237.i, label %bb.gg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qu = call ptr @list_create(ptr noundef null) #9 ; 6 uses
  %i.qv = load ptr, ptr @select_part_record, align 8
  %i.qw = load ptr, ptr %i.a, align 8
  %i.qx = call ptr @part_data_dup_res(ptr noundef %i.qv, ptr noundef %i.qw) #9 ; 6 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.fg, label %bb.fk

bb.fg:                                            ; preds = %bb.ff
  %i.qz = load ptr, ptr %i.a, align 8
  %.not268.i = icmp eq ptr %i.qz, null
  br i1 %.not268.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  store ptr null, ptr %i.a, align 8
  %i.ra = load ptr, ptr %i.b, align 8
  %.not269.i = icmp eq ptr %i.ra, null
  br i1 %.not269.i, label %_run_now.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #9
  br label %_run_now.exit

bb.fk:                                            ; preds = %bb.ff
  %i.rb = load ptr, ptr @select_node_usage, align 8
  %i.rc = load ptr, ptr %i.a, align 8
  %i.rd = call ptr @node_data_dup_use(ptr noundef %i.rb, ptr noundef %i.rc) #9 ; 5 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %bb.fk
  call void @part_data_destroy_res(ptr noundef nonnull %i.qx) #9
  %i.rf = load ptr, ptr %i.a, align 8
  %.not266.i = icmp eq ptr %i.rf, null
  br i1 %.not266.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  store ptr null, ptr %i.a, align 8
  %i.rg = load ptr, ptr %i.b, align 8
  %.not267.i = icmp eq ptr %i.rg, null
  br i1 %.not267.i, label %_run_now.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #9
  br label %_run_now.exit

bb.fp:                                            ; preds = %bb.fk
  %i.rh = call ptr @list_iterator_create(ptr noundef nonnull %.0182.i) #9 ; 3 uses
  %i.ri = call ptr @list_next(ptr noundef %i.rh) #9 ; 2 uses
  %.not257382.i = icmp eq ptr %i.ri, null
  br i1 %.not257382.i, label %._crit_edge386.i, label %.lr.ph385.i

.lr.ph385.i:                                      ; preds = %bb.fp
  %i.rj = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.rk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.rm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.rn = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ro = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.rp = getelementptr inbounds nuw i8, ptr %12, i64 44
  br label %bb.fq

bb.fq:                                            ; preds = %bb.ge, %.lr.ph385.i
  %i.rq = phi ptr [ %i.ri, %.lr.ph385.i ], [ %i.sg, %bb.ge ] ; 5 uses
  %.0200383.i = phi i32 [ %i.qf, %.lr.ph385.i ], [ %.1201.i, %bb.ge ] ; 2 uses
  %i.rr = call zeroext i16 @slurm_job_preempt_mode(ptr noundef nonnull %i.rq) #9
  %.not259.i = icmp eq i16 %i.rr, 1
  br i1 %.not259.i, label %bb.fr, label %bb.ge, !llvm.loop !16

bb.fr:                                            ; preds = %bb.fq
  %i.rs = load ptr, ptr %i.a, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  store i32 2, ptr %12, align 8
  store i32 0, ptr %i.rj, align 4
  store ptr null, ptr %i.rk, align 8
  store ptr %i.rs, ptr %i.rl, align 8
  store ptr %i.rd, ptr %i.rm, align 8
  store ptr %i.qx, ptr %i.rn, align 8
  store i32 0, ptr %i.ro, align 8
  store i32 0, ptr %i.rp, align 4
  %i.rt = call zeroext i1 @job_overlap_and_running(ptr noundef %i.rs, ptr noundef null, ptr noundef nonnull %i.rq) #9
  br i1 %i.rt, label %bb.fs, label %_job_res_rm_job.exit.i

bb.fs:                                            ; preds = %bb.fr
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 432
  %i.rv = load ptr, ptr %i.ru, align 8            ; 2 uses
  %.not.i274.i = icmp eq ptr %i.rv, null
  br i1 %.not.i274.i, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.rw = call i32 @job_res_rm_job(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.rd, ptr noundef null, ptr noundef nonnull %i.rq, i32 noundef 2, ptr noundef %i.rs) #9 ; 0 uses
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  %i.rx = call i32 @list_for_each(ptr noundef nonnull %i.rv, ptr noundef nonnull @_wrapper_job_res_rm_job, ptr noundef nonnull %12) #9 ; 0 uses
  br label %bb.fv

_job_res_rm_job.exit.i:                           ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.ge, !llvm.loop !16

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @list_append(ptr noundef %i.qu, ptr noundef nonnull %i.rq) #9
  %i.ry = load ptr, ptr %i.a, align 8
  call void @bit_or(ptr noundef %1, ptr noundef %i.ry) #9
  %i.rz = call fastcc i32 @_job_test(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2, i16 noundef zeroext %.0.i.i101, i32 noundef %i.pq, ptr noundef nonnull %i.qx, ptr noundef nonnull %i.rd, ptr noundef null, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext %.0184.i, ptr noundef null) ; 2 uses
  %.not261.i = icmp eq i32 %i.rz, 0
  br i1 %.not261.i, label %bb.fw, label %bb.ge, !llvm.loop !16

bb.fw:                                            ; preds = %bb.fv
  %i.sa = load ptr, ptr %i.a, align 8
  call void @bit_or(ptr noundef %1, ptr noundef %i.sa) #9
  %i.sb = load ptr, ptr @select_part_record, align 8
  %i.sc = load ptr, ptr @select_node_usage, align 8
  %i.sd = call fastcc i32 @_job_test(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i16 noundef zeroext %.0.i.i101, i32 noundef %i.pq, ptr noundef %i.sb, ptr noundef %i.sc, ptr noundef null, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext %.0184.i, ptr noundef %i.qu) ; 2 uses
  %.not262.i = icmp eq ptr %i.qu, null
  br i1 %.not262.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @list_destroy(ptr noundef nonnull %i.qu) #9
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.se = load ptr, ptr %i.a, align 8
  %.not263.i = icmp eq ptr %i.se, null
  br i1 %.not263.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  store ptr null, ptr %i.a, align 8
  %i.sf = load ptr, ptr %i.b, align 8
  %.not264.i = icmp eq ptr %i.sf, null
  br i1 %.not264.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #9
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  store ptr null, ptr %i.b, align 8
  call void @list_iterator_destroy(ptr noundef %i.rh) #9
  call void @part_data_destroy_res(ptr noundef nonnull %i.qx) #9
  call void @node_data_destroy(ptr noundef nonnull %i.rd) #9
  %.not265.i = icmp eq ptr %i.qc, null
  br i1 %.not265.i, label %_run_now.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @list_destroy(ptr noundef nonnull %i.qc) #9
  br label %_run_now.exit

bb.ge:                                            ; preds = %bb.fv, %_job_res_rm_job.exit.i, %bb.fq
  %.1201.i = phi i32 [ %i.rz, %bb.fv ], [ %.0200383.i, %bb.fq ], [ %.0200383.i, %_job_res_rm_job.exit.i ] ; 2 uses
  %i.sg = call ptr @list_next(ptr noundef %i.rh) #9 ; 2 uses
  %.not257.i = icmp eq ptr %i.sg, null
  br i1 %.not257.i, label %._crit_edge386.i, label %bb.fq

._crit_edge386.i:                                 ; preds = %bb.ge, %bb.fp
  %.0200.lcssa.i = phi i32 [ %i.qf, %bb.fp ], [ %.1201.i, %bb.ge ] ; 2 uses
  %.not258.i = icmp eq ptr %i.qu, null
  br i1 %.not258.i, label %.loopexit316.i, label %bb.gf

bb.gf:                                            ; preds = %._crit_edge386.i
  call void @list_destroy(ptr noundef nonnull %i.qu) #9
  br label %.loopexit316.i

bb.gg:                                            ; preds = %bb.fe, %bb.fd
  br i1 %or.cond5.i103, label %bb.gh, label %.loopexit316.i

bb.gh:                                            ; preds = %bb.gg
  %i.sh = load i64, ptr %i.ps, align 8
  %i.si = and i64 %i.sh, 70368744177664
  %.not238.i = icmp eq i64 %i.si, 0
  br i1 %.not238.i, label %bb.gi, label %.loopexit316.i

bb.gi:                                            ; preds = %bb.gh
  %i.sj = call i32 @list_count(ptr noundef nonnull %.0182.i) #9
  %i.sk = load ptr, ptr @select_part_record, align 8
  %i.sl = load ptr, ptr %i.a, align 8
  %i.sm = call ptr @part_data_dup_res(ptr noundef %i.sk, ptr noundef %i.sl) #9 ; 7 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %bb.gj, label %bb.gp

bb.gj:                                            ; preds = %bb.gi
  %i.so = load ptr, ptr %i.a, align 8
  %.not254.i = icmp eq ptr %i.so, null
  br i1 %.not254.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  store ptr null, ptr %i.a, align 8
  %i.sp = load ptr, ptr %i.b, align 8
  %.not255.i = icmp eq ptr %i.sp, null
  br i1 %.not255.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #9
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  store ptr null, ptr %i.b, align 8
  %.not256.i = icmp eq ptr %i.qc, null
  br i1 %.not256.i, label %_run_now.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @list_destroy(ptr noundef nonnull %i.qc) #9
  br label %_run_now.exit

bb.gp:                                            ; preds = %bb.gi
  %i.sq = load ptr, ptr @select_node_usage, align 8
  %i.sr = load ptr, ptr %i.a, align 8
  %i.ss = call ptr @node_data_dup_use(ptr noundef %i.sq, ptr noundef %i.sr) #9 ; 6 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %bb.gq, label %bb.gw

bb.gq:                                            ; preds = %bb.gp
  call void @part_data_destroy_res(ptr noundef nonnull %i.sm) #9
  %i.su = load ptr, ptr %i.a, align 8
  %.not251.i = icmp eq ptr %i.su, null
  br i1 %.not251.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  store ptr null, ptr %i.a, align 8
  %i.sv = load ptr, ptr %i.b, align 8
  %.not252.i = icmp eq ptr %i.sv, null
  br i1 %.not252.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #9
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  store ptr null, ptr %i.b, align 8
  %.not253.i = icmp eq ptr %i.qc, null
  br i1 %.not253.i, label %_run_now.exit, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @list_destroy(ptr noundef nonnull %i.qc) #9
  br label %_run_now.exit

bb.gw:                                            ; preds = %bb.gp
  %i.sw = call ptr @list_iterator_create(ptr noundef nonnull %.0182.i) #9 ; 12 uses
  br label %.outer314.i

.outer314.i:                                      ; preds = %bb.hb, %bb.gw
  %.3203.ph.i = phi i32 [ %i.ti, %bb.hb ], [ %i.qf, %bb.gw ] ; 2 uses
  %i.sx = call ptr @list_next(ptr noundef %i.sw) #9 ; 2 uses
  %.not239363.i = icmp eq ptr %i.sx, null
  br i1 %.not239363.i, label %.loopexit312.i, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.outer314.i, %.backedge315.i
  %i.sy = phi ptr [ %i.ta, %.backedge315.i ], [ %i.sx, %.outer314.i ] ; 6 uses
  %i.sz = call zeroext i16 @slurm_job_preempt_mode(ptr noundef nonnull %i.sy) #9 ; 2 uses
  switch i16 %i.sz, label %.backedge315.i [
    i16 8, label %bb.gx
    i16 2, label %bb.gx
  ]

.backedge315.i:                                   ; preds = %_job_res_rm_job.exit277.i, %.lr.ph.i105
  %i.ta = call ptr @list_next(ptr noundef %i.sw) #9 ; 2 uses
  %.not239.i = icmp eq ptr %i.ta, null
  br i1 %.not239.i, label %.loopexit312.i, label %.lr.ph.i105, !llvm.loop !17

bb.gx:                                            ; preds = %.lr.ph.i105, %.lr.ph.i105
  %i.tb = load ptr, ptr %i.a, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  store i32 0, ptr %11, align 8
  store i32 0, ptr %i.pt, align 4
  store ptr %i.qc, ptr %i.pu, align 8
  store ptr %i.tb, ptr %i.pv, align 8
  store ptr %i.ss, ptr %i.pw, align 8
  store ptr %i.sm, ptr %i.px, align 8
  store i32 0, ptr %i.py, align 8
  store i32 0, ptr %i.pz, align 4
  %i.tc = call zeroext i1 @job_overlap_and_running(ptr noundef %i.tb, ptr noundef %i.qc, ptr noundef nonnull %i.sy) #9
  br i1 %i.tc, label %bb.gy, label %_job_res_rm_job.exit277.i

bb.gy:                                            ; preds = %bb.gx
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 432
  %i.te = load ptr, ptr %i.td, align 8            ; 2 uses
  %.not.i276.i = icmp eq ptr %i.te, null
  br i1 %.not.i276.i, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.tf = call i32 @job_res_rm_job(ptr noundef nonnull %i.sm, ptr noundef nonnull %i.ss, ptr noundef %i.qc, ptr noundef nonnull %i.sy, i32 noundef 0, ptr noundef %i.tb) #9 ; 0 uses
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gy
  %i.tg = call i32 @list_for_each(ptr noundef nonnull %i.te, ptr noundef nonnull @_wrapper_job_res_rm_job, ptr noundef nonnull %11) #9 ; 0 uses
  br label %bb.hb

_job_res_rm_job.exit277.i:                        ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %.backedge315.i

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.th = load ptr, ptr %i.a, align 8
  call void @bit_or(ptr noundef %1, ptr noundef %i.th) #9
  %i.ti = call fastcc i32 @_job_test(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2, i16 noundef zeroext %.0.i.i101, i32 noundef %i.pq, ptr noundef nonnull %i.sm, ptr noundef nonnull %i.ss, ptr noundef %i.qc, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sy, i64 256
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 508
  store i32 0, ptr %i.tl, align 4
  %.not241.i = icmp eq i32 %i.ti, 0
  br i1 %.not241.i, label %bb.hc, label %.outer314.i, !llvm.loop !17

bb.hc:                                            ; preds = %bb.hb
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sy, i64 256
  %i.tn = add i16 %.0188.i, 1                     ; 2 uses
  %i.to = zext i16 %.0188.i to i32
  %i.tp = load i32, ptr @preempt_reorder_cnt, align 4
  %i.tq = icmp sge i32 %i.tp, %i.to
  %i.tr = zext i16 %i.tn to i32
  %.not242.i = icmp sgt i32 %i.sj, %i.tr
  %or.cond.i107 = select i1 %i.tq, i1 %.not242.i, i1 false
  br i1 %or.cond.i107, label %bb.hd, label %.preheader.i

.preheader.i:                                     ; preds = %bb.hc
  %i.ts = call ptr @list_next(ptr noundef %i.sw) #9 ; 2 uses
  %.not247388.i = icmp eq ptr %i.ts, null
  br i1 %.not247388.i, label %.loopexit312.i, label %.lr.ph389.i

.lr.ph389.i:                                      ; preds = %.preheader.i, %.lr.ph389.i
  %i.tt = phi ptr [ %i.tx, %.lr.ph389.i ], [ %i.ts, %.preheader.i ]
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 256
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 508
  store i32 1, ptr %i.tw, align 4
  %i.tx = call ptr @list_next(ptr noundef %i.sw) #9 ; 2 uses
  %.not247.i = icmp eq ptr %i.tx, null
  br i1 %.not247.i, label %.loopexit312.i, label %.lr.ph389.i, !llvm.loop !18

bb.hd:                                            ; preds = %bb.hc
  %i.ty = load i8, ptr @preempt_strict_order, align 1, !range !8, !noundef !9
  %i.tz = trunc nuw i8 %i.ty to i1
  br i1 %i.tz, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.ua = call ptr @list_remove(ptr noundef %i.sw) #9
  call void @list_prepend(ptr noundef nonnull %.0182.i, ptr noundef %i.ua) #9
  br label %bb.hk

bb.hf:                                            ; preds = %bb.hd
  %i.ub = load ptr, ptr %i.tm, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 508
  store i32 99999, ptr %i.uc, align 4
  call void @list_iterator_reset(ptr noundef %i.sw) #9
  %i.ud = call ptr @list_next(ptr noundef %i.sw) #9 ; 2 uses
  %.not243375.i = icmp eq ptr %i.ud, null
  br i1 %.not243375.i, label %._crit_edge.i109, label %.lr.ph376.i

.lr.ph376.i:                                      ; preds = %bb.hf, %_get_usable_nodes.exit.i
  %i.ue = phi ptr [ %i.uw, %_get_usable_nodes.exit.i ], [ %i.ud, %bb.hf ] ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 256 ; 2 uses
  %i.ug = load ptr, ptr %i.uf, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 508
  %i.ui = load i32, ptr %i.uh, align 4
  %i.uj = icmp eq i32 %i.ui, 99999
  br i1 %i.uj, label %._crit_edge.i109, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph376.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  store ptr %1, ptr %i.qa, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ue, i64 432
  %i.ul = load ptr, ptr %i.uk, align 8            ; 2 uses
  %.not.i278.i = icmp eq ptr %i.ul, null
  br i1 %.not.i278.i, label %bb.hh, label %bb.hj

bb.hh:                                            ; preds = %bb.hg
  %i.um = getelementptr inbounds nuw i8, ptr %i.ue, i64 512
  %i.un = load i32, ptr %i.um, align 8
  %i.uo = and i32 %i.un, 255
  %.off.i.i.i111 = add nsw i32 %i.uo, -1
  %switch.i.i.i112 = icmp ult i32 %.off.i.i.i111, 2
  br i1 %switch.i.i.i112, label %bb.hi, label %_get_usable_nodes.exit.i

bb.hi:                                            ; preds = %bb.hh
  %i.up = getelementptr inbounds nuw i8, ptr %i.ue, i64 656
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = call i32 @bit_overlap(ptr noundef %1, ptr noundef %i.uq) #9
  br label %_get_usable_nodes.exit.i

bb.hj:                                            ; preds = %bb.hg
  %i.us = call i32 @list_for_each_nobreak(ptr noundef nonnull %i.ul, ptr noundef nonnull @_wrapper_get_usable_nodes, ptr noundef nonnull %10) #9 ; 0 uses
  %.pre.i.i108 = load i32, ptr %.phi.trans.insert.i.i102, align 8
  br label %_get_usable_nodes.exit.i

_get_usable_nodes.exit.i:                         ; preds = %bb.hj, %bb.hi, %bb.hh
  %i.ut = phi i32 [ %i.ur, %bb.hi ], [ 0, %bb.hh ], [ %.pre.i.i108, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.uu = load ptr, ptr %i.uf, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 508
  store i32 %i.ut, ptr %i.uv, align 4
  %i.uw = call ptr @list_next(ptr noundef %i.sw) #9 ; 2 uses
  %.not243.i = icmp eq ptr %i.uw, null
  br i1 %.not243.i, label %._crit_edge.i109, label %.lr.ph376.i, !llvm.loop !19

._crit_edge.i109:                                 ; preds = %_get_usable_nodes.exit.i, %.lr.ph376.i, %bb.hf
  %i.ux = call ptr @list_next(ptr noundef %i.sw) #9 ; 2 uses
  %.not244378.i = icmp eq ptr %i.ux, null
  br i1 %.not244378.i, label %._crit_edge381.i, label %.lr.ph380.i

.lr.ph380.i:                                      ; preds = %._crit_edge.i109, %.lr.ph380.i
  %i.uy = phi ptr [ %i.vc, %.lr.ph380.i ], [ %i.ux, %._crit_edge.i109 ]
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 256
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 508
  store i32 0, ptr %i.vb, align 4
  %i.vc = call ptr @list_next(ptr noundef %i.sw) #9 ; 2 uses
  %.not244.i = icmp eq ptr %i.vc, null
  br i1 %.not244.i, label %._crit_edge381.i, label %.lr.ph380.i, !llvm.loop !20

._crit_edge381.i:                                 ; preds = %.lr.ph380.i, %._crit_edge.i109
  call void @list_sort(ptr noundef nonnull %.0182.i, ptr noundef nonnull @_sort_usable_nodes_dec) #9
  br label %bb.hk

bb.hk:                                            ; preds = %._crit_edge381.i, %bb.he
  %i.vd = load ptr, ptr %i.a, align 8
  %.not245.i = icmp eq ptr %i.vd, null
  br i1 %.not245.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  store ptr null, ptr %i.a, align 8
  call void @list_iterator_destroy(ptr noundef %i.sw) #9
  call void @part_data_destroy_res(ptr noundef nonnull %i.sm) #9
  call void @node_data_destroy(ptr noundef nonnull %i.ss) #9
  %.not246.i = icmp eq ptr %i.qc, null
  br i1 %.not246.i, label %bb.hx, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @list_destroy(ptr noundef nonnull %i.qc) #9
  br label %bb.hx

.loopexit312.i:                                   ; preds = %.outer314.i, %.backedge315.i, %.lr.ph389.i, %.preheader.i
  %.4204.i = phi i32 [ 0, %.preheader.i ], [ %.3203.ph.i, %.backedge315.i ], [ 0, %.lr.ph389.i ], [ %.3203.ph.i, %.outer314.i ] ; 2 uses
  call void @list_iterator_destroy(ptr noundef %i.sw) #9
  %i.ve = icmp eq i32 %.4204.i, 0
  %i.vf = icmp ne ptr %7, null
  %or.cond21.i = and i1 %i.vf, %i.ve
  br i1 %or.cond21.i, label %bb.ho, label %.thread302.i

bb.ho:                                            ; preds = %.loopexit312.i
  %i.vg = load ptr, ptr %7, align 8
  %i.vh = icmp eq ptr %i.vg, null
  br i1 %i.vh, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.vi = call ptr @list_create(ptr noundef null) #9
  store ptr %i.vi, ptr %7, align 8
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.vj = call ptr @list_iterator_create(ptr noundef nonnull %.0182.i) #9 ; 6 uses
  %i.vk = call ptr @list_next(ptr noundef %i.vj) #9 ; 2 uses
  %.not248390394.i = icmp eq ptr %i.vk, null
  br i1 %.not248390394.i, label %.critedge.i, label %.lr.ph391.lr.ph.i

.lr.ph391.lr.ph.i:                                ; preds = %bb.hq
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 552
  br label %.lr.ph391.i

.lr.ph391.i:                                      ; preds = %.outer.i, %.lr.ph391.lr.ph.i
  %i.vm = phi ptr [ %i.vk, %.lr.ph391.lr.ph.i ], [ %i.vx, %.outer.i ]
  %.1192.ph395.i = phi i1 [ false, %.lr.ph391.lr.ph.i ], [ true, %.outer.i ]
  br label %bb.hr

bb.hr:                                            ; preds = %.backedge.i106, %.lr.ph391.i
  %i.vn = phi ptr [ %i.vm, %.lr.ph391.i ], [ %i.vr, %.backedge.i106 ] ; 4 uses
  %i.vo = call zeroext i16 @slurm_job_preempt_mode(ptr noundef nonnull %i.vn) #9
  switch i16 %i.vo, label %.backedge.i106 [
    i16 8, label %bb.hs
    i16 2, label %bb.hs
  ]

bb.hs:                                            ; preds = %bb.hr, %bb.hr
  %i.vp = load ptr, ptr %i.vl, align 8
  %i.vq = call zeroext i1 @job_overlap_and_running(ptr noundef %1, ptr noundef %i.vp, ptr noundef nonnull %i.vn) #9
  br i1 %i.vq, label %bb.ht, label %.backedge.i106

.backedge.i106:                                   ; preds = %bb.hs, %bb.hr
  %i.vr = call ptr @list_next(ptr noundef %i.vj) #9 ; 2 uses
  %.not248.i = icmp eq ptr %i.vr, null
  br i1 %.not248.i, label %.loopexit.i, label %bb.hr, !llvm.loop !21

bb.ht:                                            ; preds = %bb.hs
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 256
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 508
  %i.vv = load i32, ptr %i.vu, align 4
  %.not249.i = icmp eq i32 %i.vv, 0
  br i1 %.not249.i, label %.outer.i, label %.loopexit.i

.outer.i:                                         ; preds = %bb.ht
  %i.vw = load ptr, ptr %7, align 8
  call void @list_append(ptr noundef %i.vw, ptr noundef nonnull %i.vn) #9
  %i.vx = call ptr @list_next(ptr noundef %i.vj) #9 ; 2 uses
  %.not248390.i = icmp eq ptr %i.vx, null
  br i1 %.not248390.i, label %.thread302.critedge.i, label %.lr.ph391.i, !llvm.loop !21

.loopexit.i:                                      ; preds = %bb.ht, %.backedge.i106
  call void @list_iterator_destroy(ptr noundef %i.vj) #9
  br i1 %.1192.ph395.i, label %.thread302.i, label %bb.hu

.critedge.i:                                      ; preds = %bb.hq
  call void @list_iterator_destroy(ptr noundef %i.vj) #9
  br label %bb.hu

bb.hu:                                            ; preds = %.critedge.i, %.loopexit.i
  %i.vy = load ptr, ptr %7, align 8               ; 2 uses
  %.not250.i = icmp eq ptr %i.vy, null
  br i1 %.not250.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @list_destroy(ptr noundef nonnull %i.vy) #9
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  store ptr null, ptr %7, align 8
  br label %.thread302.i

.thread302.critedge.i:                            ; preds = %.outer.i
  call void @list_iterator_destroy(ptr noundef %i.vj) #9
  br label %.thread302.i

.thread302.i:                                     ; preds = %.thread302.critedge.i, %bb.hw, %.loopexit.i, %.loopexit312.i
  call void @part_data_destroy_res(ptr noundef nonnull %i.sm) #9
  call void @node_data_destroy(ptr noundef nonnull %i.ss) #9
  br label %.loopexit316.i

bb.hx:                                            ; preds = %bb.hn, %bb.hm
  %.pre.i110 = load ptr, ptr %i.b, align 8
  br label %bb.fa

.loopexit316.i:                                   ; preds = %bb.gh, %bb.gg, %.thread302.i, %bb.gf, %._crit_edge386.i
  %.6206.i = phi i32 [ %.0200.lcssa.i, %._crit_edge386.i ], [ %.0200.lcssa.i, %bb.gf ], [ %.4204.i, %.thread302.i ], [ %i.qf, %bb.gg ], [ %i.qf, %bb.gh ] ; 2 uses
  %.not270.i = icmp eq ptr %i.qc, null
  br i1 %.not270.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %.loopexit316.i
  call void @list_destroy(ptr noundef nonnull %i.qc) #9
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %.loopexit316.i
  %i.vz = load ptr, ptr %i.a, align 8
  %.not271.i = icmp eq ptr %i.vz, null
  br i1 %.not271.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  store ptr null, ptr %i.a, align 8
  %i.wa = load ptr, ptr %i.b, align 8
  %.not272.i = icmp eq ptr %i.wa, null
  br i1 %.not272.i, label %_run_now.exit, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #9
  br label %_run_now.exit

_run_now.exit:                                    ; preds = %bb.fi, %bb.fj, %bb.fn, %bb.fo, %bb.gc, %bb.gd, %bb.gn, %bb.go, %bb.gu, %bb.gv, %bb.ib, %bb.ic
  %.5212.i = phi i32 [ -1, %bb.fn ], [ %i.sd, %bb.gc ], [ -1, %bb.gv ], [ -1, %bb.fi ], [ %i.sd, %bb.gd ], [ -1, %bb.gu ], [ -1, %bb.gn ], [ -1, %bb.go ], [ -1, %bb.fj ], [ -1, %bb.fo ], [ %.6206.i, %bb.ic ], [ %.6206.i, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_test_only.exit

bb.id:                                            ; preds = %_rebuild_suspend_exempt_cores.exit
  %i.wb = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %i.bm) #9 ; 0 uses
  br label %bb.im

_test_only.exit:                                  ; preds = %bb.eu, %_setup_cr_type.exit.i93, %_will_run_test.exit, %_run_now.exit
  %.072.a = phi i32 [ %.058.i, %_will_run_test.exit ], [ %.5212.i, %_run_now.exit ], [ %i.ph, %_setup_cr_type.exit.i93 ], [ %i.ph, %bb.eu ] ; 6 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8            ; 2 uses
  %.not82 = icmp eq ptr %i.wd, null
  br i1 %.not82, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %_test_only.exit
  call void @list_destroy(ptr noundef nonnull %i.wd) #9
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %_test_only.exit
  store ptr null, ptr %i.wc, align 8
  %i.we = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.wf = and i64 %i.we, 9
  %or.cond = icmp eq i64 %i.wf, 0
  br i1 %or.cond, label %bb.im, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.wh = load ptr, ptr %i.wg, align 8
  %.not85 = icmp eq ptr %i.wh, null
  %i.wi = call i32 @get_log_level() #9
  %i.wj = icmp sgt i32 %i.wi, 3                   ; 2 uses
  br i1 %.not85, label %bb.ik, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  br i1 %i.wj, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.wk = call ptr @slurm_strerror(i32 noundef %.072.a) #9
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.job_test, ptr noundef %i.wk) #9
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  call void @log_job_resources(ptr noundef nonnull %0) #9
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.wm = load ptr, ptr %i.wl, align 8
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.wo = load i32, ptr %i.wn, align 8
  call void @gres_job_state_log(ptr noundef %i.wm, i32 noundef %i.wo) #9
  br label %bb.im

bb.ik:                                            ; preds = %bb.ig
  br i1 %i.wj, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.13, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.job_test, ptr noundef nonnull %0, i32 noundef %.072.a) #9
  br label %bb.im

bb.im:                                            ; preds = %bb.ik, %bb.il, %bb.ij, %bb.if, %bb.id
  %.073 = phi i32 [ 22, %bb.id ], [ %.072.a, %bb.if ], [ %.072.a, %bb.ij ], [ %.072.a, %bb.il ], [ %.072.a, %bb.ik ]
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @job_record_create_mc() local_unnamed_addr #2

declare void @core_array_log(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bit_set_count(ptr noundef) local_unnamed_addr #2

declare void @node_data_dump() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare void @list_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #2

declare void @log_job_resources(ptr noundef) local_unnamed_addr #2

declare void @gres_job_state_log(ptr noundef, i32 noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@_add_exempt_cores:bb.a
bb.f:                                             ; preds = %bb.e
  %i.l = tail call zeroext i1 @acct_policy_is_job_preempt_exempt(ptr noundef nonnull %0) #9
  br i1 %i.l, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.n = and i64 %i.m, 1
  %.not28 = icmp eq i64 %i.n, 0
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @get_log_level() #9
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._add_exempt_cores, ptr noundef nonnull %0) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = call ptr @next_node_bitmap(ptr noundef %i.q, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not2933 = icmp eq ptr %i.r, null
  br i1 %.not2933, label %._crit_edge, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 162
  br label %bb.k

._crit_edge:                                      ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph36, %.loopexit
  %i.t = phi ptr [ %i.r, %.lr.ph36 ], [ %i.bi, %.loopexit ] ; 3 uses
  %.02134 = phi i32 [ 0, %.lr.ph36 ], [ %i.be, %.loopexit ] ; 2 uses
  %i.u = load ptr, ptr @suspend_exempt_cores, align 8
  %i.v = load i32, ptr %i.a, align 4              ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  %.not30 = icmp eq ptr %i.y, null
  br i1 %.not30, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = zext i16 %i.aa to i64
  %i.ac = call ptr @bit_alloc(i64 noundef %i.ab) #9
  %i.ad = load ptr, ptr @suspend_exempt_cores, align 8
  %i.ae = load i32, ptr %i.a, align 4             ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  store ptr %i.ac, ptr %i.ag, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = phi i32 [ %i.ae, %bb.l ], [ %i.v, %bb.k ]
  %i.ai = load i8, ptr %i.s, align 2
  %i.aj = icmp eq i8 %i.ai, 1
  br i1 %i.aj, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 552 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 8
  %.not37 = icmp eq i16 %i.al, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.am = zext nneg i32 %.02134 to i64
  br label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr @suspend_exempt_cores, align 8
  %i.ao = sext i32 %i.ah to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  call void @bit_set_all(ptr noundef %i.aq) #9
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %.pre = load i16, ptr %.phi.trans.insert, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = add nuw nsw i64 %indvars.iv, %i.am
  %i.at = call i32 @slurm_bit_test(ptr noundef %i.ar, i64 noundef %i.as) #9
  %.not31 = icmp eq i32 %i.at, 0
  br i1 %.not31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr @suspend_exempt_cores, align 8
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8
  call void @bit_set(ptr noundef %i.ay, i64 noundef %indvars.iv) #9
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i16, ptr %i.ak, align 8            ; 2 uses
  %i.ba = zext i16 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %bb.p, %.preheader, %bb.n
  %i.bc = phi i16 [ %.pre, %bb.n ], [ 0, %.preheader ], [ %i.az, %bb.p ]
  %i.bd = zext i16 %i.bc to i32
  %i.be = add nuw nsw i32 %.02134, %i.bd
  %i.bf = load i32, ptr %i.a, align 4
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.a, align 4
  %i.bh = load ptr, ptr %i.i, align 8
  %i.bi = call ptr @next_node_bitmap(ptr noundef %i.bh, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not29 = icmp eq ptr %i.bi, null
  br i1 %.not29, label %._crit_edge, label %bb.k, !llvm.loop !23

bb.q:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.c, %bb.d, %bb.a, %._crit_edge
  ret i32 0
}

declare zeroext i16 @slurm_job_preempt_mode(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @acct_policy_is_job_preempt_exempt(ptr noundef) local_unnamed_addr #2

declare ptr @next_node_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #2

declare void @bit_set_all(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @bit_copy(ptr noundef) local_unnamed_addr #2

declare ptr @cluster_license_copy() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_job_test(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5, i16 noundef zeroext %6, i32 noundef range(i32 0, 65536) %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef %10, ptr noundef %11, i1 noundef zeroext %12, i1 noundef zeroext %13, i1 noundef zeroext %14, ptr noundef %15) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 24 uses
  %i.d = alloca ptr, align 8                      ; 14 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %i.f = alloca ptr, align 8                      ; 15 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 9 uses
  %i.i = alloca ptr, align 8                      ; 28 uses
  %i.j = alloca ptr, align 8                      ; 48 uses
  %i.k = alloca ptr, align 8                      ; 9 uses
  %i.l = alloca ptr, align 8                      ; 8 uses
  %i.m = alloca ptr, align 8                      ; 39 uses
  %i.n = alloca i32, align 4                      ; 67 uses
  %i.o = alloca ptr, align 8                      ; 20 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %i.q = alloca ptr, align 8                      ; 7 uses
  %i.r = alloca ptr, align 8                      ; 11 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  store ptr null, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 26 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  store ptr null, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  store ptr null, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  store ptr null, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #9
  store ptr null, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  tail call void @free_job_resources(ptr noundef nonnull %i.v) #9
  tail call void @part_data_rebuild_rows(ptr noundef %8) #9
  %i.w = icmp eq i32 %5, 1                        ; 13 uses
  %i.x = icmp eq i32 %5, 2                        ; 9 uses
  %i.y = icmp ne ptr %15, null                    ; 4 uses
  %not. = xor i1 %i.y, true
  %spec.select = and i1 %14, %not.
  %spec.select898 = or i1 %13, %i.y               ; 4 uses
  br i1 %i.w, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 8388608
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i64 @gres_select_util_job_mem_max(ptr noundef %i.ad) #9 ; 2 uses
  %.not108.i = icmp eq i64 %i.ae, 0
  br i1 %.not108.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.t, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 320
  store i64 0, ptr %i.ag, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ah = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %.not109.i = icmp sgt i64 %i.aj, -1
  br i1 %.not109.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 296
  %i.am = load i16, ptr %i.al, align 8
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 308
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 %i.an)
  %i.ar = trunc i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.at = load i16, ptr %i.as, align 8
  %.in.i = tail call i16 @llvm.umax.i16(i16 %i.at, i16 %i.ar)
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %.in.i, i16 1)
  %i.au = zext i16 %narrow.i to i64
  %.087.i = mul i64 %i.ak, %i.au
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1.i = phi i64 [ %.087.i, %bb.f ], [ %i.ae, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  %i.av = call ptr @next_node_bitmap(ptr noundef %1, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not111135.not.i = icmp eq ptr %i.av, null
  br i1 %.not111135.not.i, label %_verify_node_state.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %.not112.i = icmp eq i64 %.1.i, 0
  %i.aw = and i16 %6, 16
  %.not113.i = icmp eq i16 %i.aw, 0               ; 2 uses
  %or.cond133.i = or i1 %.not113.i, %.not112.i
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 448
  %trunc.i = trunc nuw i32 %7 to i16              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.bb, %.lr.ph.i
  %i.bb = phi ptr [ %i.av, %.lr.ph.i ], [ %i.fs, %bb.bb ] ; 9 uses
  br i1 %or.cond133.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 408
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = sub i64 %i.bd, %i.bf
  %i.bh = load i32, ptr %i.a, align 4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [32 x i8], ptr %9, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8
  %.088.i = call i64 @llvm.usub.sat.i64(i64 %i.bg, i64 %i.bk) ; 2 uses
  %i.bl = icmp ult i64 %.088.i, %.1.i
  br i1 %i.bl, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bm = call i32 @get_log_level() #9
  %i.bn = icmp sgt i32 %i.bm, 6
  br i1 %i.bn, label %bb.k, label %bb.az

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  %i.bp = load ptr, ptr %i.bo, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.58, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.bp, i64 noundef %.088.i, i64 noundef %.1.i, ptr noundef nonnull %0) #9
  br label %bb.az

bb.l:                                             ; preds = %bb.h
  br i1 %.not113.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.a, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [32 x i8], ptr %9, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8
  %.not115.i = icmp eq i64 %i.bt, 0
  br i1 %.not115.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = call i32 @get_log_level() #9
  %i.bv = icmp sgt i32 %i.bu, 6
  br i1 %i.bv, label %bb.o, label %bb.az

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load i32, ptr %i.a, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [32 x i8], ptr %9, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.59, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.bx, i64 noundef %i.cb, ptr noundef nonnull %0) #9
  br label %bb.az

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.i
  %i.cc = load ptr, ptr %i.t, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 512
  %i.ce = load i8, ptr %i.cd, align 8
  %i.cf = and i8 %i.ce, 1
  %.not116.i = icmp eq i8 %i.cf, 0
  br i1 %.not116.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not117.i = icmp eq ptr %i.cg, null
  br i1 %.not117.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load i32, ptr %i.a, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not118.i = icmp eq ptr %i.ck, null
  br i1 %.not118.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = call i64 @bit_ffs(ptr noundef nonnull %i.ck) #9
  %.not119.i = icmp eq i64 %i.cl, -1
  br i1 %.not119.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = call i32 @get_log_level() #9
  %i.cn = icmp sgt i32 %i.cm, 6
  br i1 %i.cn, label %bb.u, label %bb.az

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  %i.cp = load ptr, ptr %i.co, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.60, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.cp) #9
  br label %bb.az

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.cq = load i32, ptr %i.a, align 4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [32 x i8], ptr %9, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not120.i = icmp eq ptr %i.cu, null
  br i1 %.not120.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  %i.cw = load ptr, ptr %i.cv, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.086.i = phi ptr [ %i.cw, %bb.w ], [ %i.cu, %bb.v ] ; 2 uses
  %i.cx = load ptr, ptr %i.t, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 512
  %i.cz = load i8, ptr %i.cy, align 8
  %i.da = and i8 %i.cz, 1
  %.not121.i = icmp eq i8 %i.da, 0
  br i1 %.not121.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = call zeroext i1 @gres_node_state_list_has_alloc_gres(ptr noundef %.086.i) #9
  br i1 %i.db, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dc = call i32 @get_log_level() #9
  %i.dd = icmp sgt i32 %i.dc, 6
  br i1 %i.dd, label %bb.aa, label %bb.az

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  %i.df = load ptr, ptr %i.de, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.61, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.df) #9
  br label %bb.az

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.dg = load ptr, ptr %i.ay, align 8
  %i.dh = load i32, ptr %i.az, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.bb, i64 280 ; 7 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call i32 @gres_job_test(ptr noundef %i.dg, ptr noundef %.086.i, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0, i32 noundef %i.dh, ptr noundef %i.dj) #9 ; 2 uses
  %.not122.i = icmp eq i32 %i.dk, -2
  br i1 %.not122.i, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bb, i64 568
  %i.dm = load i16, ptr %i.dl, align 8
  %i.dn = zext i16 %i.dm to i32
  %i.do = mul i32 %i.dk, %i.dn
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.dq = call i32 @get_log_level() #9
  %i.dr = icmp sgt i32 %i.dq, 6
  br i1 %i.dr, label %bb.ae, label %bb.az

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load ptr, ptr %i.di, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.62, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.ds) #9
  br label %bb.az

.critedge.i:                                      ; preds = %bb.ac, %bb.ab
  %i.dt = load i32, ptr %i.a, align 4             ; 4 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [32 x i8], ptr %9, i64 %i.du ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i16, ptr %i.dw, align 8            ; 2 uses
  %i.dy = icmp ugt i16 %i.dx, -1537
  br i1 %i.dy, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.critedge.i
  %i.dz = call i32 @get_log_level() #9
  %i.ea = icmp sgt i32 %i.dz, 6
  br i1 %i.ea, label %bb.ag, label %bb.az

bb.ag:                                            ; preds = %bb.af
  %i.eb = load ptr, ptr %i.di, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.63, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.eb) #9
  br label %bb.az

bb.ah:                                            ; preds = %.critedge.i
  %.not123.i = icmp eq i16 %i.dx, 0
  br i1 %.not123.i, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  switch i16 %trunc.i, label %bb.am [
    i16 -1536, label %bb.aj
    i16 0, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.ec = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ed = and i64 %i.ec, 1
  %.not130.i = icmp eq i64 %i.ed, 0
  br i1 %.not130.i, label %bb.az, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = call i32 @get_log_level() #9
  %i.ef = icmp sgt i32 %i.ee, 3
  br i1 %i.ef, label %bb.al, label %bb.az

bb.al:                                            ; preds = %bb.ak
  %i.eg = load ptr, ptr %i.di, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.64, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.eg) #9
  br label %bb.az

bb.am:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.ba, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call fastcc i32 @_is_node_busy(ptr noundef readonly %8, i32 noundef %i.dt, i1 noundef zeroext true, ptr noundef %i.eh, i1 noundef zeroext %spec.select898, ptr noundef %i.ej)
  %.not128.i = icmp eq i32 %i.ek, 0
  br i1 %.not128.i, label %bb.bb, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.el = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.em = and i64 %i.el, 1
  %.not129.i = icmp eq i64 %i.em, 0
  br i1 %.not129.i, label %bb.az, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = call i32 @get_log_level() #9
  %i.eo = icmp sgt i32 %i.en, 3
  br i1 %i.eo, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %i.ep = load ptr, ptr %i.di, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.ep) #9
  br label %bb.az

bb.aq:                                            ; preds = %bb.ah
  switch i16 %trunc.i, label %bb.bb [
    i16 -1536, label %bb.ar
    i16 1, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.eq = load ptr, ptr %i.ba, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = call fastcc i32 @_is_node_busy(ptr noundef readonly %8, i32 noundef %i.dt, i1 noundef zeroext false, ptr noundef %i.eq, i1 noundef zeroext %spec.select898, ptr noundef %i.es)
  %.not126.i = icmp eq i32 %i.et, 0
  br i1 %.not126.i, label %bb.bb, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ev = and i64 %i.eu, 1
  %.not127.i = icmp eq i64 %i.ev, 0
  br i1 %.not127.i, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ew = call i32 @get_log_level() #9
  %i.ex = icmp sgt i32 %i.ew, 3
  br i1 %i.ex, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.ey = load ptr, ptr %i.di, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.66, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.ey) #9
  br label %bb.az

bb.av:                                            ; preds = %bb.aq
  %i.ez = load ptr, ptr %i.ba, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call fastcc i32 @_is_node_busy(ptr noundef readonly %8, i32 noundef %i.dt, i1 noundef zeroext true, ptr noundef %i.ez, i1 noundef zeroext %spec.select898, ptr noundef %i.fb)
  %.not124.i = icmp eq i32 %i.fc, 0
  br i1 %.not124.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fe = and i64 %i.fd, 1
  %.not125.i = icmp eq i64 %i.fe, 0
  br i1 %.not125.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ff = call i32 @get_log_level() #9
  %i.fg = icmp sgt i32 %i.ff, 3
  br i1 %i.fg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fh = load ptr, ptr %i.di, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._verify_node_state, ptr noundef %i.fh) #9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.o, %bb.n, %bb.k, %bb.j
  %i.fi = load i32, ptr %i.a, align 4
  %i.fj = sext i32 %i.fi to i64
  call void @bit_clear(ptr noundef %1, i64 noundef %i.fj) #9
  %i.fk = load ptr, ptr %i.t, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 392
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %.not131.i = icmp eq ptr %i.fm, null
  br i1 %.not131.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fn = load i32, ptr %i.a, align 4
  %i.fo = sext i32 %i.fn to i64
  %i.fp = call i32 @slurm_bit_test(ptr noundef nonnull %i.fm, i64 noundef %i.fo) #9
  %.not132.i = icmp eq i32 %i.fp, 0
  br i1 %.not132.i, label %bb.bb, label %_verify_node_state.exit

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.av, %bb.ar, %bb.aq, %bb.am
  %i.fq = load i32, ptr %i.a, align 4
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.a, align 4
  %i.fs = call ptr @next_node_bitmap(ptr noundef %1, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not111.not.i = icmp eq ptr %i.fs, null
  br i1 %.not111.not.i, label %_verify_node_state.exit.thread, label %bb.h, !llvm.loop !24

_verify_node_state.exit.thread:                   ; preds = %bb.bb, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bc

_verify_node_state.exit:                          ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.critedge

bb.bc:                                            ; preds = %_verify_node_state.exit.thread, %bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %.not745 = icmp eq ptr %i.fu, null
  br i1 %.not745, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fv = call i32 @bit_set_count(ptr noundef %1) #9
  %spec.select899 = call i32 @llvm.umin.i32(i32 %3, i32 %i.fv)
  %i.fw = load ptr, ptr %i.ft, align 8
  %i.fx = zext i32 %spec.select899 to i64
  %i.fy = call i64 @bit_fls_from_bit(ptr noundef %i.fw, i64 noundef %i.fx) #9
  %i.fz = trunc i64 %i.fy to i32                  ; 5 uses
  %i.ga = icmp slt i32 %i.fz, 1
  %i.gb = icmp ugt i32 %2, %i.fz
  %or.cond900 = or i1 %i.ga, %i.gb
  br i1 %or.cond900, label %.critedge, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.1668 = phi i32 [ %4, %bb.bc ], [ %i.fz, %bb.bd ]
  %.1665 = phi i32 [ %3, %bb.bc ], [ %i.fz, %bb.bd ]
  %.1660 = phi i32 [ %2, %bb.bc ], [ %i.fz, %bb.bd ]
  %.not746 = icmp eq ptr %10, null
  br i1 %.not746, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gc = call i64 @time(ptr noundef null) #9
  %i.gd = call i32 @license_job_test_with_list(ptr noundef nonnull %0, i64 noundef %i.gc, i1 noundef zeroext true, ptr noundef nonnull %10, i1 noundef zeroext true) #9 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.gf = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.gg = and i64 %i.gf, 1
  %.not748 = icmp eq i64 %i.gg, 0
  br i1 %.not748, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gh = call i32 @get_log_level() #9
  %i.gi = icmp sgt i32 %i.gh, 3
  br i1 %i.gi, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.critedge

bb.bj:                                            ; preds = %bb.bf
  %i.gj = icmp ne i32 %i.gd, 11
  %or.cond.not = or i1 %i.w, %i.gj
  br i1 %or.cond.not, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.gl = and i64 %i.gk, 1
  %.not = icmp eq i64 %i.gl, 0
  br i1 %.not, label %.critedge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gm = call i32 @get_log_level() #9
  %i.gn = icmp sgt i32 %i.gm, 3
  br i1 %i.gn, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.critedge

bb.bn:                                            ; preds = %bb.bj, %bb.be
  %i.go = getelementptr inbounds nuw i8, ptr %i.u, i64 305 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1
  %.not749 = icmp eq i8 %i.gp, 0
  br i1 %.not749, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gq = getelementptr inbounds nuw i8, ptr %i.u, i64 272 ; 4 uses
  %i.gr = load i32, ptr %i.gq, align 8            ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = icmp eq i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  %i.gw = load ptr, ptr %i.gv, align 8            ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i16, ptr %i.gx, align 2            ; 2 uses
  switch i16 %i.gy, label %bb.bq [
    i16 -2, label %bb.br
    i16 1, label %bb.br
    i16 0, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.gz = zext i16 %i.gy to i32
  %i.ha = mul i32 %i.gr, %i.gz                    ; 2 uses
  store i32 %i.ha, ptr %i.gq, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bq
  %i.hb = phi i32 [ %i.gr, %bb.bp ], [ %i.gr, %bb.bp ], [ %i.gr, %bb.bp ], [ %i.ha, %bb.bq ] ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 6
  %i.hd = load i16, ptr %i.hc, align 2            ; 2 uses
  switch i16 %i.hd, label %bb.bs [
    i16 -2, label %bb.bt
    i16 1, label %bb.bt
    i16 0, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.he = zext i16 %i.hd to i32
  %i.hf = mul i32 %i.hb, %i.he                    ; 2 uses
  store i32 %i.hf, ptr %i.gq, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.br, %bb.br, %bb.bs
  %i.hg = phi i32 [ %i.hb, %bb.br ], [ %i.hb, %bb.br ], [ %i.hb, %bb.br ], [ %i.hf, %bb.bs ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.hi = load i16, ptr %i.hh, align 2            ; 2 uses
  switch i16 %i.hi, label %bb.bu [
    i16 -2, label %bb.bv
    i16 1, label %bb.bv
    i16 0, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul i32 %i.hg, %i.hj
  store i32 %i.hk, ptr %i.gq, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bu, %bb.bo, %bb.bn
  %i.hl = getelementptr inbounds nuw i8, ptr %i.u, i64 296 ; 3 uses
  %i.hm = load i16, ptr %i.hl, align 8
  %narrow = call i16 @llvm.umax.i16(i16 %i.hm, i16 1)
  %spec.select904 = zext i16 %narrow to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not753 = icmp eq ptr %i.ho, null
  br i1 %.not753, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i16, ptr %i.hp, align 2
  %narrow997 = call i16 @llvm.umax.i16(i16 %i.hq, i16 1)
  %spec.select905 = zext i16 %narrow997 to i32
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0646 = phi i32 [ 1, %bb.bv ], [ %spec.select905, %bb.bw ] ; 4 uses
end_hunk_1
begin_hunk_2_@_job_test:bb.a
  %i.ip = icmp eq i16 %i.io, -2
  br i1 %i.ip, label %._crit_edge.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.iq = load i64, ptr @def_cpu_per_gpu, align 8 ; 2 uses
  %.not19.i = icmp eq i64 %i.iq, -2
  br i1 %.not19.i, label %._crit_edge.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ir = getelementptr inbounds nuw i8, ptr %.pre.pre.i.pre, i64 112
  %i.is = load i16, ptr %i.ir, align 8
  %i.it = icmp eq i16 %i.is, -2
  %spec.select.i = select i1 %i.it, i64 %i.iq, i64 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ch, %bb.cg, %bb.cf
  %.010.i = phi i64 [ %spec.select.i, %bb.ch ], [ %i.im, %bb.cf ], [ 0, %bb.cg ]
  %i.iu = load i64, ptr @_set_gpu_defaults.last_mem_per_gpu, align 8 ; 2 uses
  %.not20.i = icmp eq i64 %i.iu, -2
  %i.iv = load i64, ptr @def_mem_per_gpu, align 8 ; 2 uses
  %.not21.i = icmp eq i64 %i.iv, -2
  %..i = select i1 %.not21.i, i64 0, i64 %i.iv
  %.0.i = select i1 %.not20.i, i64 %..i, i64 %i.iu
  %i.iw = load ptr, ptr %i.hr, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.iz = getelementptr inbounds nuw i8, ptr %.pre.pre.i.pre, i64 96
  call void @gres_select_util_job_set_defs(ptr noundef %i.iw, ptr noundef nonnull @.str.47, i64 noundef %.010.i, i64 noundef %.0.i, ptr noundef nonnull %i.ix, ptr noundef nonnull %i.iy, ptr noundef nonnull %i.iz) #9
  br label %_set_gpu_defaults.exit

_set_gpu_defaults.exit:                           ; preds = %bb.bx, %._crit_edge.i
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.jb = load ptr, ptr %i.ja, align 8            ; 2 uses
  %.not755 = icmp eq ptr %i.jb, null
  br i1 %.not755, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_set_gpu_defaults.exit
  %i.jc = load ptr, ptr %i.hr, align 8
  %i.jd = call ptr @gres_select_util_create_list_req_accum(ptr noundef %i.jc) #9 ; 2 uses
  store ptr %i.jd, ptr %i.ja, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_set_gpu_defaults.exit
  %i.je = phi ptr [ %i.jd, %bb.ci ], [ %i.jb, %_set_gpu_defaults.exit ]
  %i.jf = load i16, ptr %i.hl, align 8
  %i.jg = zext i16 %i.jf to i32
  %i.jh = call i32 @gres_select_util_job_min_cpu_node(i32 noundef %.0646, i32 noundef %i.jg, ptr noundef %i.je) #9
  %i.ji = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  store i32 %i.jh, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  %i.jk = load i32, ptr %i.jj, align 8            ; 2 uses
  %i.jl = mul i32 %i.jk, %spec.select904
  %i.jm = load ptr, ptr %i.ja, align 8
  %i.jn = call i32 @gres_select_util_job_min_cpus(i32 noundef %i.jk, i32 noundef %.0646, i32 noundef %i.jl, ptr noundef %i.jm) #9
  %i.jo = getelementptr inbounds nuw i8, ptr %i.u, i64 284
  store i32 %i.jn, ptr %i.jo, align 4
  %i.jp = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.jq = and i64 %i.jp, 1
  %.not756 = icmp eq i64 %i.jq, 0
  br i1 %.not756, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jr = call i32 @get_log_level() #9
  %i.js = icmp sgt i32 %i.jr, 3
  br i1 %i.js, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.jt = call i32 @bit_set_count(ptr noundef %1) #9
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef nonnull %0, i32 noundef %i.jt) #9
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %bb.cj
  %i.ju = call ptr @bit_copy(ptr noundef %1) #9
  store ptr %i.ju, ptr %i.c, align 8
  %i.jv = call ptr @cons_helpers_mark_avail_cores(ptr noundef %1, ptr noundef nonnull %0) #9 ; 2 uses
  store ptr %i.jv, ptr %i.i, align 8
  %i.jw = call ptr @copy_core_array(ptr noundef %i.jv) #9
  store ptr %i.jw, ptr %i.j, align 8
  %i.jx = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 255, ptr noundef nonnull @__func__._build_gres_mc_data) #9 ; 17 uses
  %i.jy = load ptr, ptr %i.t, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 96
  %i.ka = load i16, ptr %i.jz, align 8            ; 2 uses
  %or.cond.i.i = icmp ugt i16 %i.ka, -3
  %..i.i = select i1 %or.cond.i.i, i16 0, i16 %i.ka
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 10
  store i16 %..i.i, ptr %i.kb, align 2
  %i.kc = load ptr, ptr %i.t, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 300
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i32 %i.ke, ptr %i.kf, align 4
  %i.kg = load ptr, ptr %i.t, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 296
  %i.ki = load i16, ptr %i.kh, align 8            ; 2 uses
  %or.cond.i34.i = icmp ugt i16 %i.ki, -3
  %..i35.i = select i1 %or.cond.i34.i, i16 0, i16 %i.ki
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store i16 %..i35.i, ptr %i.kj, align 4
  %i.kk = load ptr, ptr %i.t, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 305
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 26
  store i8 %i.km, ptr %i.kn, align 2
  %i.ko = load ptr, ptr %i.t, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 504
  %i.kq = load i32, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  store i32 %i.kq, ptr %i.kr, align 4
  %i.ks = load ptr, ptr %i.t, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 512
  %i.ku = load i8, ptr %i.kt, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jx, i64 36
  store i8 %i.ku, ptr %i.kv, align 4
  %i.kw = load ptr, ptr %i.t, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 248
  %i.ky = load ptr, ptr %i.kx, align 8            ; 9 uses
  %.not.i923 = icmp eq ptr %i.ky, null
  br i1 %.not.i923, label %._crit_edge.i924, label %bb.cn

._crit_edge.i924:                                 ; preds = %bb.cm
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 22
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.kz = load i16, ptr %i.ky, align 2            ; 2 uses
  %or.cond.i36.i = icmp ugt i16 %i.kz, -3
  %..i37.i = select i1 %or.cond.i36.i, i16 0, i16 %i.kz
  store i16 %..i37.i, ptr %i.jx, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %i.lb = load i16, ptr %i.la, align 2            ; 2 uses
  %or.cond.i38.i = icmp ugt i16 %i.lb, -3
  %..i39.i = select i1 %or.cond.i38.i, i16 0, i16 %i.lb
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  store i16 %..i39.i, ptr %i.lc, align 2
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.le = load i16, ptr %i.ld, align 2            ; 2 uses
  %or.cond.i40.i = icmp ugt i16 %i.le, -3
  %..i41.i = select i1 %or.cond.i40.i, i16 0, i16 %i.le
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store i16 %..i41.i, ptr %i.lf, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 6
  %i.lh = load i16, ptr %i.lg, align 2            ; 2 uses
  %or.cond.i42.i = icmp ugt i16 %i.lh, -3
  %..i43.i = select i1 %or.cond.i42.i, i16 0, i16 %i.lh
  %i.li = getelementptr inbounds nuw i8, ptr %i.jx, i64 6
  store i16 %..i43.i, ptr %i.li, align 2
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lk = load i16, ptr %i.lj, align 2            ; 2 uses
  %or.cond.i44.i = icmp ugt i16 %i.lk, -3
  %..i45.i = select i1 %or.cond.i44.i, i16 0, i16 %i.lk
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i16 %..i45.i, ptr %i.ll, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ky, i64 10
  %i.ln = load i16, ptr %i.lm, align 2            ; 2 uses
  %or.cond.i46.i = icmp ugt i16 %i.ln, -3
  %..i47.i = select i1 %or.cond.i46.i, i16 0, i16 %i.ln
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jx, i64 18
  store i16 %..i47.i, ptr %i.lo, align 2
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lq = load i16, ptr %i.lp, align 2            ; 2 uses
  %or.cond.i48.i = icmp ugt i16 %i.lq, -3
  %..i49.i = select i1 %or.cond.i48.i, i16 0, i16 %i.lq
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jx, i64 20
  store i16 %..i49.i, ptr %i.lr, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ky, i64 14
  %i.lt = load i16, ptr %i.ls, align 2            ; 2 uses
  %or.cond.i50.i = icmp ugt i16 %i.lt, -3
  %..i51.i = select i1 %or.cond.i50.i, i16 0, i16 %i.lt ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jx, i64 22
  store i16 %..i51.i, ptr %i.lu, align 2
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge.i924
  %i.lv = phi i16 [ %.pre.i, %._crit_edge.i924 ], [ %..i51.i, %bb.cn ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jx, i64 22
  %i.lx = icmp eq i16 %i.lv, 0
  br i1 %i.lx, label %bb.cp, label %_build_gres_mc_data.exit

bb.cp:                                            ; preds = %bb.co
  %i.ly = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8
  %i.lz = and i16 %i.ly, 256
  %.not33.i = icmp eq i16 %i.lz, 0
  br i1 %.not33.i, label %_build_gres_mc_data.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i16 1, ptr %i.lw, align 2
  br label %_build_gres_mc_data.exit

_build_gres_mc_data.exit:                         ; preds = %bb.co, %bb.cp, %bb.cq
  store ptr %i.jx, ptr %i.o, align 8
  %i.ma = icmp ne i32 %7, 1
  %i.mb = icmp ne i32 %7, 64000
  %or.cond5.not761 = and i1 %i.ma, %i.mb
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %.not7731038 = icmp eq ptr %8, null             ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 4 uses
  %i.mf = icmp ne i32 %7, 0                       ; 2 uses
  %.not998 = xor i1 %13, true
  %spec.select.not = xor i1 %spec.select898, true
  %i.mg = sext i1 %.not998 to i32
  %invariant.op = or i1 %or.cond5.not761, %i.w
  br label %bb.cr

bb.cr:                                            ; preds = %.backedge, %_build_gres_mc_data.exit
  %.2669 = phi i32 [ 0, %_build_gres_mc_data.exit ], [ %.2611, %.backedge ]
  %.2666 = phi i32 [ %.1668, %_build_gres_mc_data.exit ], [ %.2611, %.backedge ] ; 8 uses
  %.2661 = phi i32 [ %.1665, %_build_gres_mc_data.exit ], [ %.2611, %.backedge ] ; 9 uses
  %.0609 = phi i32 [ %.1660, %_build_gres_mc_data.exit ], [ %.2611, %.backedge ] ; 8 uses
  %i.mh = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not757 = icmp eq ptr %i.mh, null
  br i1 %.not757, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mi = add i32 %.2661, -1
  %i.mj = zext i32 %i.mi to i64
  %i.mk = call i64 @bit_fls_from_bit(ptr noundef nonnull %i.mh, i64 noundef %i.mj) #9
  %i.ml = trunc i64 %i.mk to i32                  ; 3 uses
  %i.mm = icmp slt i32 %i.ml, 1
  %.not758 = icmp ugt i32 %2, %i.ml
  %or.cond906 = or i1 %i.mm, %.not758
  %.1610 = select i1 %or.cond906, i32 0, i32 %i.ml
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.2611 = phi i32 [ %.1610, %bb.cs ], [ %.2669, %bb.cr ] ; 9 uses
  %i.mn = load i8, ptr @gang_mode, align 1, !range !8, !noundef !9
  %i.mo = icmp ne i8 %i.mn, 0
  %brmerge.reass.reass = or i1 %i.mo, %invariant.op
  br i1 %brmerge.reass.reass, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mp = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.mq = and i64 %i.mp, 1
  %.not762 = icmp eq i64 %i.mq, 0
  br i1 %.not762, label %bb.eb, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mr = call i32 @get_log_level() #9
  %i.ms = icmp sgt i32 %i.mr, 3
  br i1 %i.ms, label %bb.cw, label %bb.eb

bb.cw:                                            ; preds = %bb.cv
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %bb.eb

bb.cx:                                            ; preds = %bb.ct
  %i.mt = load ptr, ptr %i.j, align 8
  %i.mu = load ptr, ptr %i.d, align 8
  %i.mv = load ptr, ptr %i.o, align 8
  %i.mw = call fastcc ptr @_select_nodes(ptr noundef %0, i32 noundef %.0609, i32 noundef %.2661, i32 noundef %.2666, ptr noundef %1, ptr noundef %i.mt, ptr noundef %9, i16 noundef zeroext %6, i1 noundef zeroext %i.w, i1 noundef zeroext %i.x, ptr noundef %i.mu, i1 noundef zeroext %12, ptr noundef %i.mv, ptr noundef %11, ptr noundef %i.b) ; 5 uses
  %.not763 = icmp eq ptr %i.mw, null
  br i1 %.not763, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mx = load i8, ptr %i.mc, align 8, !range !8, !noundef !9
  %i.my = trunc nuw i8 %i.mx to i1                ; 2 uses
  %i.mz = icmp eq i32 %.2611, 0
  %or.cond10.not = select i1 %i.my, i1 true, i1 %i.mz
  br i1 %or.cond10.not, label %bb.dk, label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %.old9.not = icmp eq i32 %.2611, 0
  br i1 %.old9.not, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.na = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.nb = and i64 %i.na, 1
  %.not896 = icmp eq i64 %i.nb, 0
  br i1 %.not896, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nc = call i32 @get_log_level() #9
  %i.nd = icmp sgt i32 %i.nc, 3
  br i1 %i.nd, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc, %bb.da
  %i.ne = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.ne) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.nf = load ptr, ptr %i.i, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.in, %._crit_edge1175, %bb.dd
  %.sink1311 = phi ptr [ %i.nf, %bb.dd ], [ %.pre1176, %._crit_edge1175 ], [ %i.abt, %bb.in ]
  %.sink = phi ptr [ %i.mw, %bb.dd ], [ %.5617939, %._crit_edge1175 ], [ %.5617939, %bb.in ]
  %i.ng = call ptr @copy_core_array(ptr noundef %.sink1311) #9
  store ptr %i.ng, ptr %i.j, align 8
  call fastcc void @_free_avail_res_array(ptr noundef %.sink)
  br label %bb.cr

bb.de:                                            ; preds = %bb.cz
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  %i.nh = load ptr, ptr %i.c, align 8
  %.not765 = icmp eq ptr %i.nh, null
  br i1 %.not765, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #9
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  store ptr null, ptr %i.c, align 8
  call void @free_core_array(ptr noundef nonnull %i.i) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.ni = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.nj = and i64 %i.ni, 1
  %.not766 = icmp eq i64 %i.nj, 0
  br i1 %.not766, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nk = call i32 @get_log_level() #9
  %i.nl = icmp sgt i32 %i.nk, 3
  br i1 %i.nl, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di, %bb.dg
  %i.nm = load i32, ptr %i.b, align 4             ; 2 uses
  %.not767 = icmp eq i32 %i.nm, 0
  %i.nn = select i1 %.not767, i32 -1, i32 %i.nm
  br label %.critedge

bb.dk:                                            ; preds = %bb.cy
  br i1 %i.w, label %bb.dl, label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  %i.no = load ptr, ptr %i.c, align 8
  %.not894 = icmp eq ptr %i.no, null
  br i1 %.not894, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #9
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  store ptr null, ptr %i.c, align 8
  call void @free_core_array(ptr noundef nonnull %i.i) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %i.mw)
  %i.np = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.nq = and i64 %i.np, 1
  %.not895 = icmp eq i64 %i.nq, 0
  br i1 %.not895, label %.critedge, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nr = call i32 @get_log_level() #9
  %i.ns = icmp sgt i32 %i.nr, 3
  br i1 %i.ns, label %bb.dp, label %.critedge

bb.dp:                                            ; preds = %bb.do
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.critedge

bb.dq:                                            ; preds = %bb.dk
  br i1 %i.my, label %bb.dx, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  %i.nt = load ptr, ptr %i.c, align 8
  %.not768 = icmp eq ptr %i.nt, null
  br i1 %.not768, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #9
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  store ptr null, ptr %i.c, align 8
  call void @free_core_array(ptr noundef nonnull %i.i) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %i.mw)
  %i.nu = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.nv = and i64 %i.nu, 1
  %.not769 = icmp eq i64 %i.nv, 0
  br i1 %.not769, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nw = call i32 @get_log_level() #9
  %i.nx = icmp sgt i32 %i.nw, 3
  br i1 %i.nx, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %bb.dt
  %i.ny = load i32, ptr %i.b, align 4             ; 2 uses
  %.not770 = icmp eq i32 %i.ny, 0
  %i.nz = select i1 %.not770, i32 -1, i32 %i.ny
  br label %.critedge

bb.dx:                                            ; preds = %bb.dq
  %i.oa = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ob = and i64 %i.oa, 1
  %.not771 = icmp eq i64 %i.ob, 0
  br i1 %.not771, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.oc = call i32 @get_log_level() #9
  %i.od = icmp sgt i32 %i.oc, 3
  br i1 %i.od, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.25, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dy, %bb.dz, %bb.dx
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %i.mw)
  %i.oe = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.oe) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.of = load ptr, ptr %i.i, align 8
  %i.og = call ptr @copy_core_array(ptr noundef %i.of) #9
  store ptr %i.og, ptr %i.j, align 8
  br label %bb.eb

bb.eb:                                            ; preds = %bb.cu, %bb.cw, %bb.cv, %bb.ea
  %i.oh = load ptr, ptr %i.md, align 8            ; 2 uses
  %.not772 = icmp eq ptr %i.oh, null
  br i1 %.not772, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oi = load ptr, ptr %i.j, align 8
  call void @core_array_and_not(ptr noundef %i.oi, ptr noundef nonnull %i.oh) #9
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  br i1 %.not7731038, label %._crit_edge, label %.lr.ph1041

.lr.ph1041:                                       ; preds = %bb.ed, %.loopexit1009
  %.06191039 = phi ptr [ %i.pj, %.loopexit1009 ], [ %8, %bb.ed ] ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.06191039, i64 32 ; 3 uses
  %i.ok = load ptr, ptr %i.oj, align 8
  %.not889 = icmp eq ptr %i.ok, null
  br i1 %.not889, label %.loopexit1009, label %.preheader1008

.preheader1008:                                   ; preds = %.lr.ph1041
  %i.ol = getelementptr inbounds nuw i8, ptr %.06191039, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.om = load i16, ptr %i.ol, align 8
  %.not1128 = icmp eq i16 %i.om, 0
  br i1 %.not1128, label %.loopexit1009, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1008
  %i.on = getelementptr inbounds nuw i8, ptr %.06191039, i64 16
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph, %bb.ej
  %storemerge8901037 = phi i32 [ 0, %.lr.ph ], [ %i.pf, %bb.ej ]
  %i.oo = load ptr, ptr %i.oj, align 8
  %i.op = sext i32 %storemerge8901037 to i64
  %i.oq = getelementptr inbounds [32 x i8], ptr %i.oo, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8            ; 2 uses
  %.not891 = icmp eq ptr %i.os, null
  br i1 %.not891, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ot = load ptr, ptr %i.j, align 8
  call void @core_array_and_not(ptr noundef %i.ot, ptr noundef nonnull %i.os) #9
  %i.ou = load ptr, ptr %i.on, align 8
  %i.ov = load ptr, ptr %i.me, align 8
  %.not892 = icmp eq ptr %i.ou, %i.ov
  br i1 %.not892, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.ow = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not893 = icmp eq ptr %i.ow, null
  %i.ox = load ptr, ptr %i.oj, align 8
  %i.oy = load i32, ptr %i.n, align 4
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds [32 x i8], ptr %i.ox, i64 %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8            ; 2 uses
  br i1 %.not893, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @core_array_or(ptr noundef nonnull %i.ow, ptr noundef %i.pc) #9
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.pd = call ptr @copy_core_array(ptr noundef %i.pc) #9
  store ptr %i.pd, ptr %i.d, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei, %bb.ef, %bb.ee
  %i.pe = load i32, ptr %i.n, align 4
  %i.pf = add nsw i32 %i.pe, 1                    ; 3 uses
  store i32 %i.pf, ptr %i.n, align 4
  %i.pg = load i16, ptr %i.ol, align 8
  %i.ph = zext i16 %i.pg to i32
  %i.pi = icmp slt i32 %i.pf, %i.ph
  br i1 %i.pi, label %bb.ee, label %.loopexit1009, !llvm.loop !25

.loopexit1009:                                    ; preds = %bb.ej, %.preheader1008, %.lr.ph1041
  %i.pj = load ptr, ptr %.06191039, align 8       ; 2 uses
  %.not773 = icmp eq ptr %i.pj, null
  br i1 %.not773, label %._crit_edge, label %.lr.ph1041, !llvm.loop !26

._crit_edge:                                      ; preds = %.loopexit1009, %bb.ed
  %i.pk = load ptr, ptr %i.t, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 512
  %i.pm = load i8, ptr %i.pl, align 8
  %i.pn = and i8 %i.pm, 1
  %.not774 = icmp eq i8 %i.pn, 0
  br i1 %.not774, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge
  %i.po = load ptr, ptr %i.i, align 8
  %i.pp = load ptr, ptr %i.j, align 8
  call fastcc void @_block_whole_nodes(ptr noundef %1, ptr noundef %i.po, ptr noundef %i.pp)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %._crit_edge
  call fastcc void @_block_by_topology(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %1)
  %i.pq = load ptr, ptr %i.j, align 8
  %i.pr = load ptr, ptr %i.d, align 8
  %i.ps = load ptr, ptr %i.o, align 8
  %i.pt = call fastcc ptr @_select_nodes(ptr noundef nonnull %0, i32 noundef %.0609, i32 noundef %.2661, i32 noundef %.2666, ptr noundef %1, ptr noundef %i.pq, ptr noundef %9, i16 noundef zeroext %6, i1 noundef zeroext %i.w, i1 noundef zeroext %i.x, ptr noundef %i.pr, i1 noundef zeroext %12, ptr noundef %i.ps, ptr noundef %11, ptr noundef %i.b) ; 5 uses
  %.not775 = icmp eq ptr %i.pt, null
  br i1 %.not775, label %.split, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.pu = load i8, ptr %i.mc, align 8, !range !8, !noundef !9
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %bb.en, label %.split670

.split670:                                        ; preds = %bb.em
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %i.pt)
  br label %.split

bb.en:                                            ; preds = %bb.em
  %i.pw = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.px = and i64 %i.pw, 1
  %.not825 = icmp eq i64 %i.px, 0
  br i1 %.not825, label %.thread945, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.py = call i32 @get_log_level() #9
  %i.pz = icmp sgt i32 %i.py, 3
  br i1 %i.pz, label %bb.ep, label %.thread945

bb.ep:                                            ; preds = %bb.eo
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.26, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.thread945

.split:                                           ; preds = %bb.el, %.split670
  %i.qa = load i8, ptr @gang_mode, align 1, !range !8, !noundef !9
  %i.qb = icmp eq i8 %i.qa, 0
  %or.cond13 = and i1 %i.mf, %i.qb
  %i.qc = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.qd = and i64 %i.qc, 1
  %.not824 = icmp eq i64 %i.qd, 0                 ; 2 uses
  br i1 %or.cond13, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %.split
  br i1 %.not824, label %.thread936, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qe = call i32 @get_log_level() #9
  %i.qf = icmp sgt i32 %i.qe, 3
  br i1 %i.qf, label %bb.es, label %.thread936

bb.es:                                            ; preds = %bb.er
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.thread936

bb.et:                                            ; preds = %.split
  br i1 %.not824, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qg = call i32 @get_log_level() #9
  %i.qh = icmp sgt i32 %i.qg, 3
  br i1 %i.qh, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.28, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev, %bb.et
  br i1 %.not7731038, label %.critedge908, label %.lr.ph1045

.lr.ph1045:                                       ; preds = %bb.ew
  %i.qi = load ptr, ptr %i.me, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %.lr.ph1045, %bb.ey
  %.06181043 = phi ptr [ %8, %.lr.ph1045 ], [ %i.qm, %bb.ey ] ; 6 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.06181043, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = icmp eq ptr %i.qk, %i.qi
  br i1 %i.ql, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.qm = load ptr, ptr %.06181043, align 8       ; 2 uses
  %.not777 = icmp eq ptr %i.qm, null
  br i1 %.not777, label %.critedge908, label %bb.ex, !llvm.loop !27

.critedge908:                                     ; preds = %bb.ey, %bb.ew
  %i.qn = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.29, ptr noundef nonnull %0) #9 ; 0 uses
  br label %.thread936

bb.ez:                                            ; preds = %bb.ex
  %i.qo = getelementptr inbounds nuw i8, ptr %.06181043, i64 16 ; 3 uses
  %i.qp = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.qp) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.qq = load ptr, ptr %i.i, align 8
  %i.qr = call ptr @copy_core_array(ptr noundef %i.qq) #9 ; 2 uses
  store ptr %i.qr, ptr %i.j, align 8
  %i.qs = load ptr, ptr %i.md, align 8            ; 2 uses
  %.not778 = icmp eq ptr %i.qs, null
  br i1 %.not778, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @core_array_and_not(ptr noundef %i.qr, ptr noundef nonnull %i.qs) #9
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.qt = load ptr, ptr @suspend_exempt_cores, align 8 ; 2 uses
  %i.qu = icmp eq ptr %i.qt, null
  %or.cond16 = or i1 %i.w, %i.qu
  br i1 %or.cond16, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.qv = load ptr, ptr %i.j, align 8
  call void @core_array_and_not(ptr noundef %i.qv, ptr noundef nonnull %i.qt) #9
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.qw = load i8, ptr @preempt_by_part, align 1, !range !8, !noundef !9
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %bb.fe, label %.loopexit1012

bb.fe:                                            ; preds = %bb.fd
  %i.qy = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.qz = and i64 %i.qy, 1
  %.not779 = icmp eq i64 %i.qz, 0
  br i1 %.not779, label %.preheader1355, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ra = call i32 @get_log_level() #9
  %i.rb = icmp sgt i32 %i.ra, 3
  br i1 %i.rb, label %bb.fg, label %.preheader1355

bb.fg:                                            ; preds = %bb.ff
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.30, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.preheader1355

.preheader1355:                                   ; preds = %bb.ff, %bb.fg, %bb.fe
  br label %bb.fh

bb.fh:                                            ; preds = %.preheader1355, %.loopexit1007
  %.16201048 = phi ptr [ %i.sm, %.loopexit1007 ], [ %8, %.preheader1355 ] ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.16201048, i64 16 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8            ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 278
  %i.rf = load i16, ptr %i.re, align 2
  %i.rg = load ptr, ptr %i.qo, align 8            ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 278
  %i.ri = load i16, ptr %i.rh, align 2
  %.not818 = icmp ugt i16 %i.rf, %i.ri
  br i1 %.not818, label %bb.fm, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 274
  %i.rk = load i16, ptr %i.rj, align 2
  %.not819 = icmp eq i16 %i.rk, 0
  br i1 %.not819, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.rl = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.rm = and i64 %i.rl, 1
  %.not823 = icmp eq i64 %i.rm, 0
  br i1 %.not823, label %.loopexit1007, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.rn = call i32 @get_log_level() #9
  %i.ro = icmp sgt i32 %i.rn, 3
  br i1 %i.ro, label %bb.fl, label %.loopexit1007

bb.fl:                                            ; preds = %bb.fk
  %i.rp = load ptr, ptr %i.rc, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 224
  %i.rr = load ptr, ptr %i.rq, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.31, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef %i.rr) #9
  br label %.loopexit1007

bb.fm:                                            ; preds = %bb.fi, %bb.fh
  %i.rs = icmp eq ptr %i.rd, %i.rg
  br i1 %i.rs, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.rt = getelementptr inbounds nuw i8, ptr %.16201048, i64 8
  %i.ru = load i16, ptr %i.rt, align 8
  %i.rv = icmp ugt i16 %i.ru, 1
  br i1 %i.rv, label %.loopexit1007, label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.rw = getelementptr inbounds nuw i8, ptr %.16201048, i64 32 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8
  %.not820 = icmp eq ptr %i.rx, null
  br i1 %.not820, label %.loopexit1007, label %.preheader1006

.preheader1006:                                   ; preds = %bb.fo
  %i.ry = getelementptr inbounds nuw i8, ptr %.16201048, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.rz = load i16, ptr %i.ry, align 8            ; 2 uses
  %.not1129 = icmp eq i16 %i.rz, 0
  br i1 %.not1129, label %.loopexit1007, label %.lr.ph1047

.lr.ph1047:                                       ; preds = %.preheader1006, %bb.fq
  %i.sa = phi i16 [ %i.sh, %bb.fq ], [ %i.rz, %.preheader1006 ]
  %storemerge8211046 = phi i32 [ %i.sj, %bb.fq ], [ 0, %.preheader1006 ] ; 2 uses
  %i.sb = load ptr, ptr %i.rw, align 8
  %i.sc = sext i32 %storemerge8211046 to i64
  %i.sd = getelementptr inbounds [32 x i8], ptr %i.sb, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sf = load ptr, ptr %i.se, align 8            ; 2 uses
  %.not822 = icmp eq ptr %i.sf, null
  br i1 %.not822, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph1047
  %i.sg = load ptr, ptr %i.j, align 8
  call void @core_array_and_not(ptr noundef %i.sg, ptr noundef nonnull %i.sf) #9
  %.pre = load i32, ptr %i.n, align 4
  %.pre1168 = load i16, ptr %i.ry, align 8
  br label %bb.fq

bb.fq:                                            ; preds = %.lr.ph1047, %bb.fp
  %i.sh = phi i16 [ %i.sa, %.lr.ph1047 ], [ %.pre1168, %bb.fp ] ; 2 uses
  %i.si = phi i32 [ %storemerge8211046, %.lr.ph1047 ], [ %.pre, %bb.fp ]
  %i.sj = add nsw i32 %i.si, 1                    ; 3 uses
  store i32 %i.sj, ptr %i.n, align 4
  %i.sk = zext i16 %i.sh to i32
  %i.sl = icmp slt i32 %i.sj, %i.sk
  br i1 %i.sl, label %.lr.ph1047, label %.loopexit1007, !llvm.loop !28

.loopexit1007:                                    ; preds = %bb.fq, %.preheader1006, %bb.fo, %bb.fn, %bb.fj, %bb.fl, %bb.fk
  %i.sm = load ptr, ptr %.16201048, align 8       ; 2 uses
  %.not780 = icmp eq ptr %i.sm, null
  br i1 %.not780, label %.loopexit1012, label %bb.fh, !llvm.loop !29

.loopexit1012:                                    ; preds = %.loopexit1007, %bb.fd
  %i.sn = load ptr, ptr %i.t, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 512
  %i.sp = load i8, ptr %i.so, align 8
  %i.sq = and i8 %i.sp, 1
  %.not781 = icmp eq i8 %i.sq, 0
  br i1 %.not781, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.loopexit1012
  %i.sr = load ptr, ptr %i.i, align 8
  %i.ss = load ptr, ptr %i.j, align 8
  call fastcc void @_block_whole_nodes(ptr noundef %1, ptr noundef %i.sr, ptr noundef %i.ss)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.loopexit1012
  call fastcc void @_block_by_topology(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %1)
  %i.st = load ptr, ptr %i.i, align 8
  store ptr %i.st, ptr %i.k, align 8
  %i.su = load ptr, ptr %i.j, align 8
  %i.sv = call ptr @copy_core_array(ptr noundef %i.su) #9
  store ptr %i.sv, ptr %i.i, align 8
  %i.sw = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %i.sw, ptr noundef %1) #9
  %i.sx = load ptr, ptr %i.j, align 8
  %i.sy = load ptr, ptr %i.d, align 8
  %i.sz = load ptr, ptr %i.o, align 8
  %i.ta = call fastcc ptr @_select_nodes(ptr noundef nonnull %0, i32 noundef %.0609, i32 noundef %.2661, i32 noundef %.2666, ptr noundef %1, ptr noundef %i.sx, ptr noundef %9, i16 noundef zeroext %6, i1 noundef zeroext %i.w, i1 noundef zeroext %i.x, ptr noundef %i.sy, i1 noundef zeroext %12, ptr noundef %i.sz, ptr noundef %11, ptr noundef %i.b) ; 2 uses
  %.not782 = icmp eq ptr %i.ta, null
  br i1 %.not782, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.tb = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.tc = and i64 %i.tb, 1
  %.not783 = icmp eq i64 %i.tc, 0
  br i1 %.not783, label %.thread936, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.td = call i32 @get_log_level() #9
  %i.te = icmp sgt i32 %i.td, 3
  br i1 %i.te, label %bb.fv, label %.thread936

bb.fv:                                            ; preds = %bb.fu
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.32, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.thread936

bb.fw:                                            ; preds = %bb.fs
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %i.ta)
  %i.tf = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.tg = and i64 %i.tf, 1
  %.not784 = icmp eq i64 %i.tg, 0
  br i1 %.not784, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.th = call i32 @get_log_level() #9
  %i.ti = icmp sgt i32 %i.th, 3
  br i1 %i.ti, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.33, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fx, %bb.fy, %bb.fw
  %i.tj = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.tj) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.tk = load ptr, ptr %i.i, align 8
  %i.tl = call ptr @copy_core_array(ptr noundef %i.tk) #9
  store ptr %i.tl, ptr %i.j, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %.loopexit1005
  %.26211051 = phi ptr [ %8, %bb.fz ], [ %i.uj, %.loopexit1005 ] ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.26211051, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 278
  %i.tp = load i16, ptr %i.to, align 2
  %i.tq = load ptr, ptr %i.qo, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 278
  %i.ts = load i16, ptr %i.tr, align 2
  %.not814 = icmp eq i16 %i.tp, %i.ts
  br i1 %.not814, label %bb.gb, label %.loopexit1005

bb.gb:                                            ; preds = %bb.ga
  %i.tt = getelementptr inbounds nuw i8, ptr %.26211051, i64 32 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8
  %.not815 = icmp eq ptr %i.tu, null
  br i1 %.not815, label %.loopexit1005, label %.preheader1004

.preheader1004:                                   ; preds = %bb.gb
  %i.tv = getelementptr inbounds nuw i8, ptr %.26211051, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.tw = load i16, ptr %i.tv, align 8            ; 2 uses
  %.not1130 = icmp eq i16 %i.tw, 0
  br i1 %.not1130, label %.loopexit1005, label %.lr.ph1050

.lr.ph1050:                                       ; preds = %.preheader1004, %bb.gd
  %i.tx = phi i16 [ %i.ue, %bb.gd ], [ %i.tw, %.preheader1004 ]
  %storemerge8161049 = phi i32 [ %i.ug, %bb.gd ], [ 0, %.preheader1004 ] ; 2 uses
  %i.ty = load ptr, ptr %i.tt, align 8
  %i.tz = sext i32 %storemerge8161049 to i64
  %i.ua = getelementptr inbounds [32 x i8], ptr %i.ty, i64 %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8            ; 2 uses
  %.not817 = icmp eq ptr %i.uc, null
  br i1 %.not817, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph1050
  %i.ud = load ptr, ptr %i.j, align 8
  call void @core_array_and_not(ptr noundef %i.ud, ptr noundef nonnull %i.uc) #9
  %.pre1169 = load i32, ptr %i.n, align 4
  %.pre1170 = load i16, ptr %i.tv, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %.lr.ph1050, %bb.gc
  %i.ue = phi i16 [ %i.tx, %.lr.ph1050 ], [ %.pre1170, %bb.gc ] ; 2 uses
  %i.uf = phi i32 [ %storemerge8161049, %.lr.ph1050 ], [ %.pre1169, %bb.gc ]
  %i.ug = add nsw i32 %i.uf, 1                    ; 3 uses
  store i32 %i.ug, ptr %i.n, align 4
  %i.uh = zext i16 %i.ue to i32
  %i.ui = icmp slt i32 %i.ug, %i.uh
  br i1 %i.ui, label %.lr.ph1050, label %.loopexit1005, !llvm.loop !30

.loopexit1005:                                    ; preds = %bb.gd, %.preheader1004, %bb.gb, %bb.ga
  %i.uj = load ptr, ptr %.26211051, align 8       ; 2 uses
  %.not785 = icmp eq ptr %i.uj, null
  br i1 %.not785, label %bb.ge, label %bb.ga, !llvm.loop !31

bb.ge:                                            ; preds = %.loopexit1005
  %i.uk = load ptr, ptr %i.t, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 512
  %i.um = load i8, ptr %i.ul, align 8
  %i.un = and i8 %i.um, 1
  %.not786 = icmp eq i8 %i.un, 0
  br i1 %.not786, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.uo = load ptr, ptr %i.i, align 8
  %i.up = load ptr, ptr %i.j, align 8
  call fastcc void @_block_whole_nodes(ptr noundef %1, ptr noundef %i.uo, ptr noundef %i.up)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  call fastcc void @_block_by_topology(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %1)
  %i.uq = load ptr, ptr %i.j, align 8
  %i.ur = call ptr @copy_core_array(ptr noundef %i.uq) #9
  store ptr %i.ur, ptr %i.e, align 8
  %i.us = call ptr @bit_copy(ptr noundef %1) #9
  store ptr %i.us, ptr %i.f, align 8
  %i.ut = load ptr, ptr %i.j, align 8
  %i.uu = load ptr, ptr %i.d, align 8
  %i.uv = load ptr, ptr %i.o, align 8
  %i.uw = call fastcc ptr @_select_nodes(ptr noundef nonnull %0, i32 noundef %.0609, i32 noundef %.2661, i32 noundef %.2666, ptr noundef %1, ptr noundef %i.ut, ptr noundef %9, i16 noundef zeroext %6, i1 noundef zeroext %i.w, i1 noundef zeroext %i.x, ptr noundef %i.uu, i1 noundef zeroext %12, ptr noundef %i.uv, ptr noundef %11, ptr noundef %i.b) ; 2 uses
  %.not787 = icmp eq ptr %i.uw, null
  %i.ux = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.uy = and i64 %i.ux, 1
  %.not788 = icmp eq i64 %i.uy, 0                 ; 2 uses
  br i1 %.not787, label %bb.ha, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  br i1 %.not788, label %.preheader1354, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.uz = call i32 @get_log_level() #9
  %i.va = icmp sgt i32 %i.uz, 3
  br i1 %i.va, label %bb.gj, label %.preheader1354

bb.gj:                                            ; preds = %bb.gi
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.34, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.preheader1354

.preheader1354:                                   ; preds = %bb.gi, %bb.gj, %bb.gh
  br label %bb.gk

bb.gk:                                            ; preds = %.preheader1354, %bb.gz
  %.06121056 = phi ptr [ %.1613, %bb.gz ], [ %i.uw, %.preheader1354 ] ; 4 uses
  %.36221055 = phi ptr [ %i.xc, %bb.gz ], [ %8, %.preheader1354 ] ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.36221055, i64 16 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 278
  %i.ve = load i16, ptr %i.vd, align 2
  %i.vf = load ptr, ptr %i.qo, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 278
  %i.vh = load i16, ptr %i.vg, align 2
  %.not805 = icmp ult i16 %i.ve, %i.vh
  br i1 %.not805, label %bb.gl, label %bb.gz

bb.gl:                                            ; preds = %bb.gk
  %i.vi = getelementptr inbounds nuw i8, ptr %.36221055, i64 32 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8
  %.not806 = icmp eq ptr %i.vj, null
  br i1 %.not806, label %bb.gz, label %.preheader1003

.preheader1003:                                   ; preds = %bb.gl
  %i.vk = getelementptr inbounds nuw i8, ptr %.36221055, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.vl = load i16, ptr %i.vk, align 8            ; 2 uses
  %.not1131 = icmp eq i16 %i.vl, 0
  br i1 %.not1131, label %._crit_edge1054, label %.lr.ph1053

.lr.ph1053:                                       ; preds = %.preheader1003, %bb.gn
  %i.vm = phi i16 [ %i.vt, %bb.gn ], [ %i.vl, %.preheader1003 ]
  %storemerge8071052 = phi i32 [ %i.vv, %bb.gn ], [ 0, %.preheader1003 ] ; 2 uses
  %i.vn = load ptr, ptr %i.vi, align 8
  %i.vo = sext i32 %storemerge8071052 to i64
  %i.vp = getelementptr inbounds [32 x i8], ptr %i.vn, i64 %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8            ; 2 uses
  %.not813 = icmp eq ptr %i.vr, null
  br i1 %.not813, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph1053
  %i.vs = load ptr, ptr %i.e, align 8
  call void @core_array_and_not(ptr noundef %i.vs, ptr noundef nonnull %i.vr) #9
  %.pre1171 = load i32, ptr %i.n, align 4
  %.pre1172 = load i16, ptr %i.vk, align 8
  br label %bb.gn

bb.gn:                                            ; preds = %.lr.ph1053, %bb.gm
  %i.vt = phi i16 [ %i.vm, %.lr.ph1053 ], [ %.pre1172, %bb.gm ] ; 2 uses
  %i.vu = phi i32 [ %storemerge8071052, %.lr.ph1053 ], [ %.pre1171, %bb.gm ]
  %i.vv = add nsw i32 %i.vu, 1                    ; 3 uses
  store i32 %i.vv, ptr %i.n, align 4
  %i.vw = zext i16 %i.vt to i32
  %i.vx = icmp slt i32 %i.vv, %i.vw
  br i1 %i.vx, label %.lr.ph1053, label %._crit_edge1054, !llvm.loop !32

._crit_edge1054:                                  ; preds = %bb.gn, %.preheader1003
  %i.vy = load ptr, ptr %i.t, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 512
  %i.wa = load i8, ptr %i.vz, align 8
  %i.wb = and i8 %i.wa, 1
  %.not808 = icmp eq i8 %i.wb, 0
  br i1 %.not808, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %._crit_edge1054
  %i.wc = load ptr, ptr %i.f, align 8
  %i.wd = load ptr, ptr %i.i, align 8
  %i.we = load ptr, ptr %i.e, align 8
  call fastcc void @_block_whole_nodes(ptr noundef %i.wc, ptr noundef %i.wd, ptr noundef %i.we)
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %._crit_edge1054
  %i.wf = load ptr, ptr %i.f, align 8
  call fastcc void @_block_by_topology(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %i.wf)
  %i.wg = load ptr, ptr %i.e, align 8
  %i.wh = call ptr @copy_core_array(ptr noundef %i.wg) #9
  store ptr %i.wh, ptr %i.g, align 8
  %i.wi = load ptr, ptr %i.f, align 8
  %i.wj = call ptr @bit_copy(ptr noundef %i.wi) #9
  store ptr %i.wj, ptr %i.h, align 8
  %i.wk = load ptr, ptr %i.f, align 8
  %i.wl = load ptr, ptr %i.e, align 8
  %i.wm = load ptr, ptr %i.d, align 8
  %i.wn = load ptr, ptr %i.o, align 8
  %i.wo = call fastcc ptr @_select_nodes(ptr noundef nonnull %0, i32 noundef %.0609, i32 noundef %.2661, i32 noundef %.2666, ptr noundef %i.wk, ptr noundef %i.wl, ptr noundef %9, i16 noundef zeroext %6, i1 noundef zeroext %i.w, i1 noundef zeroext %i.x, ptr noundef %i.wm, i1 noundef zeroext %12, ptr noundef %i.wn, ptr noundef %11, ptr noundef %i.b) ; 2 uses
  %.not809 = icmp eq ptr %i.wo, null
  br i1 %.not809, label %bb.gq, label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  call void @free_core_array(ptr noundef nonnull %i.g) #9
  %i.wp = load ptr, ptr %i.h, align 8
  %.not810 = icmp eq ptr %i.wp, null
  br i1 %.not810, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @slurm_bit_free(ptr noundef nonnull %i.h) #9
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  store ptr null, ptr %i.h, align 8
  br label %.thread945

bb.gt:                                            ; preds = %bb.gp
  %i.wq = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.wr = and i64 %i.wq, 1
  %.not811 = icmp eq i64 %i.wr, 0
  br i1 %.not811, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ws = call i32 @get_log_level() #9
  %i.wt = icmp sgt i32 %i.ws, 3
  br i1 %i.wt, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.wu = load ptr, ptr %i.vb, align 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 224
  %i.ww = load ptr, ptr %i.wv, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef %i.ww) #9
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gu, %bb.gv, %bb.gt
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.wx = load ptr, ptr %i.e, align 8
  store ptr %i.wx, ptr %i.j, align 8
  %i.wy = load ptr, ptr %i.g, align 8
  store ptr %i.wy, ptr %i.e, align 8
  store ptr null, ptr %i.g, align 8
  %i.wz = load ptr, ptr %i.f, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.wz) #9
  %i.xa = load ptr, ptr %i.f, align 8
  %.not812 = icmp eq ptr %i.xa, null
  br i1 %.not812, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @slurm_bit_free(ptr noundef nonnull %i.f) #9
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.xb = load ptr, ptr %i.h, align 8
  store ptr %i.xb, ptr %i.f, align 8
  store ptr null, ptr %i.h, align 8
  call fastcc void @_free_avail_res_array(ptr noundef %.06121056)
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gl, %bb.gk, %bb.gy
  %.1613 = phi ptr [ %.06121056, %bb.gk ], [ %i.wo, %bb.gy ], [ %.06121056, %bb.gl ] ; 2 uses
  %i.xc = load ptr, ptr %.36221055, align 8       ; 2 uses
  %.not804 = icmp eq ptr %i.xc, null
  br i1 %.not804, label %.thread945, label %bb.gk, !llvm.loop !33

bb.ha:                                            ; preds = %bb.gg
  br i1 %.not788, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.xd = call i32 @get_log_level() #9
  %i.xe = icmp sgt i32 %i.xd, 3
  br i1 %i.xe, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.36, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %bb.hd

bb.hd:                                            ; preds = %bb.ha, %bb.hc, %bb.hb
  %i.xf = getelementptr inbounds nuw i8, ptr %.06181043, i64 32 ; 8 uses
  %i.xg = load ptr, ptr %i.xf, align 8
  %.not789 = icmp eq ptr %i.xg, null
  br i1 %.not789, label %bb.he, label %bb.hi

bb.he:                                            ; preds = %bb.hd
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.xh = load ptr, ptr %i.i, align 8
  %i.xi = call ptr @copy_core_array(ptr noundef %i.xh) #9
  store ptr %i.xi, ptr %i.j, align 8
  %i.xj = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.xj) #9
  %i.xk = load ptr, ptr %i.j, align 8
  %i.xl = load ptr, ptr %i.d, align 8
  %i.xm = load ptr, ptr %i.o, align 8
  %i.xn = call fastcc ptr @_select_nodes(ptr noundef nonnull %0, i32 noundef %.0609, i32 noundef %.2661, i32 noundef %.2666, ptr noundef %1, ptr noundef %i.xk, ptr noundef %9, i16 noundef zeroext %6, i1 noundef zeroext %i.w, i1 noundef zeroext %i.x, ptr noundef %i.xl, i1 noundef zeroext %12, ptr noundef %i.xm, ptr noundef %11, ptr noundef %i.b) ; 4 uses
  %.not790 = icmp eq ptr %i.xn, null
  br i1 %.not790, label %.thread936, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.xo = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.xp = and i64 %i.xo, 1
  %.not791 = icmp eq i64 %i.xp, 0
  br i1 %.not791, label %.thread945, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.xq = call i32 @get_log_level() #9
  %i.xr = icmp sgt i32 %i.xq, 3
  br i1 %i.xr, label %bb.hh, label %.thread945

bb.hh:                                            ; preds = %bb.hg
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.37, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.thread945

bb.hi:                                            ; preds = %bb.hd
  %i.xs = getelementptr inbounds nuw i8, ptr %.06181043, i64 8 ; 2 uses
  %i.xt = load i16, ptr %i.xs, align 8            ; 3 uses
  %i.xu = icmp ugt i16 %i.xt, 1
  br i1 %i.xu, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %bb.hi
  %i.xv = load i8, ptr @preempt_by_qos, align 1, !range !8, !noundef !9
  %i.xw = trunc nuw i8 %i.xv to i1
  %.not17 = xor i1 %i.xw, true
  %or.cond20 = or i1 %i.y, %.not17
  br i1 %or.cond20, label %bb.hk, label %.thread930

.thread930:                                       ; preds = %bb.hj
  %i.xx = zext i16 %i.xt to i32
  %spec.select909933 = add nsw i32 %i.mg, %i.xx
  br label %bb.hp

bb.hk:                                            ; preds = %bb.hj
  call void @part_data_sort_res(ptr noundef nonnull %.06181043) #9
  %.pre1173 = load i16, ptr %i.xs, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hi
  %i.xy = phi i16 [ %.pre1173, %bb.hk ], [ %i.xt, %bb.hi ]
  %i.xz = zext i16 %i.xy to i32
  %i.ya = load i8, ptr @preempt_by_qos, align 1, !range !8, !noundef !9 ; 2 uses
  %i.yb = trunc nuw i8 %i.ya to i1
  %not.or.cond24 = and i1 %spec.select.not, %i.yb
  %i.yc = sext i1 %not.or.cond24 to i32
  %spec.select909 = add nsw i32 %i.yc, %i.xz      ; 3 uses
  br i1 %i.y, label %bb.hm, label %bb.hp

bb.hm:                                            ; preds = %bb.hl
  %i.yd = load ptr, ptr %i.xf, align 8
  %i.ye = add nsw i32 %spec.select909, -1         ; 2 uses
  %i.yf = zext i32 %i.ye to i64                   ; 5 uses
  %i.yg = getelementptr inbounds nuw [32 x i8], ptr %i.yd, i64 %i.yf
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8
  %.not792 = icmp eq ptr %i.yi, null
  br i1 %.not792, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.yj = call ptr @build_core_array() #9
  %i.yk = load ptr, ptr %i.xf, align 8
  %i.yl = getelementptr inbounds nuw [32 x i8], ptr %i.yk, i64 %i.yf
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  store ptr %i.yj, ptr %i.ym, align 8
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.not1132 = icmp eq i32 %i.ye, 0
  br i1 %.not1132, label %._crit_edge1060, label %.lr.ph1059

._crit_edge1060:                                  ; preds = %.lr.ph1059, %bb.ho
  %i.yn = call ptr @list_iterator_create(ptr noundef nonnull %15) #9 ; 3 uses
  %i.yo = call ptr @list_next(ptr noundef %i.yn) #9 ; 2 uses
  %.not7931061 = icmp eq ptr %i.yo, null
  br i1 %.not7931061, label %._crit_edge1064, label %.lr.ph1063

.lr.ph1059:                                       ; preds = %bb.ho, %.lr.ph1059
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph1059 ], [ 0, %bb.ho ] ; 2 uses
  %i.yp = load ptr, ptr %i.xf, align 8            ; 2 uses
  %i.yq = getelementptr inbounds nuw [32 x i8], ptr %i.yp, i64 %i.yf
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds nuw [32 x i8], ptr %i.yp, i64 %indvars.iv
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8
  call void @core_array_or(ptr noundef %i.ys, ptr noundef %i.yv) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.yf
  br i1 %exitcond.not, label %._crit_edge1060, label %.lr.ph1059, !llvm.loop !34

.lr.ph1063:                                       ; preds = %._crit_edge1060, %.lr.ph1063
  %i.yw = phi ptr [ %i.zb, %.lr.ph1063 ], [ %i.yo, %._crit_edge1060 ]
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 504
  %i.yy = load ptr, ptr %i.yx, align 8
  %i.yz = load ptr, ptr %i.xf, align 8
  %i.za = getelementptr inbounds nuw [32 x i8], ptr %i.yz, i64 %i.yf
  call void @job_res_rm_cores(ptr noundef %i.yy, ptr noundef %i.za) #9
  %i.zb = call ptr @list_next(ptr noundef %i.yn) #9 ; 2 uses
  %.not793 = icmp eq ptr %i.zb, null
  br i1 %.not793, label %._crit_edge1064, label %.lr.ph1063, !llvm.loop !35

._crit_edge1064:                                  ; preds = %.lr.ph1063, %._crit_edge1060
  call void @list_iterator_destroy(ptr noundef %i.yn) #9
  %.pre1174 = load i8, ptr @preempt_by_qos, align 1, !range !8
  br label %bb.hp

bb.hp:                                            ; preds = %.thread930, %._crit_edge1064, %bb.hl
  %i.zc = phi i8 [ 1, %.thread930 ], [ %.pre1174, %._crit_edge1064 ], [ %i.ya, %bb.hl ]
  %spec.select909934 = phi i32 [ %spec.select909933, %.thread930 ], [ %spec.select909, %._crit_edge1064 ], [ %spec.select909, %bb.hl ]
  %i.zd = trunc nuw i8 %i.zc to i1
  %or.cond30 = and i1 %i.mf, %i.zd
  %spec.select910 = select i1 %or.cond30, i32 1, i32 %spec.select909934 ; 3 uses
  store i32 0, ptr %i.n, align 4
  %.not1133 = icmp eq i32 %spec.select910, 0
  br i1 %.not1133, label %.loopexit1010, label %.lr.ph1067

.lr.ph1067:                                       ; preds = %bb.hp, %bb.hz
  %storemerge1065 = phi i32 [ %i.aal, %bb.hz ], [ 0, %bb.hp ]
  %i.ze = load ptr, ptr %i.xf, align 8
  %i.zf = sext i32 %storemerge1065 to i64
  %i.zg = getelementptr inbounds [32 x i8], ptr %i.ze, i64 %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8
  %.not794 = icmp eq ptr %i.zi, null
  br i1 %.not794, label %.loopexit1010, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph1067
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.zj = load ptr, ptr %i.i, align 8
  %i.zk = call ptr @copy_core_array(ptr noundef %i.zj) #9 ; 2 uses
  store ptr %i.zk, ptr %i.j, align 8
  %i.zl = load ptr, ptr %i.xf, align 8
  %i.zm = load i32, ptr %i.n, align 4
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr inbounds [32 x i8], ptr %i.zl, i64 %i.zn
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8
  call void @core_array_and_not(ptr noundef %i.zk, ptr noundef %i.zq) #9
  %i.zr = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.zr) #9
  %i.zs = load ptr, ptr %i.t, align 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 512
  %i.zu = load i8, ptr %i.zt, align 8
  %i.zv = and i8 %i.zu, 1
  %.not795 = icmp eq i8 %i.zv, 0
  br i1 %.not795, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.zw = load ptr, ptr %i.i, align 8
  %i.zx = load ptr, ptr %i.j, align 8
  call fastcc void @_block_whole_nodes(ptr noundef %1, ptr noundef %i.zw, ptr noundef %i.zx)
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  call fastcc void @_block_by_topology(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %1)
  %i.zy = load ptr, ptr %i.j, align 8
  %i.zz = load ptr, ptr %i.d, align 8
  %i.aaa = load ptr, ptr %i.o, align 8
  %i.aab = call fastcc ptr @_select_nodes(ptr noundef nonnull %0, i32 noundef %.0609, i32 noundef %.2661, i32 noundef %.2666, ptr noundef %1, ptr noundef %i.zy, ptr noundef %9, i16 noundef zeroext %6, i1 noundef zeroext %i.w, i1 noundef zeroext %i.x, ptr noundef %i.zz, i1 noundef zeroext %12, ptr noundef %i.aaa, ptr noundef %11, ptr noundef %i.b) ; 4 uses
  %.not796 = icmp eq ptr %i.aab, null
  %i.aac = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aad = and i64 %i.aac, 1
  %.not797 = icmp eq i64 %i.aad, 0                ; 2 uses
  br i1 %.not796, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  br i1 %.not797, label %.loopexit1010, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.aae = call i32 @get_log_level() #9
  %i.aaf = icmp sgt i32 %i.aae, 3
  br i1 %i.aaf, label %bb.hv, label %.loopexit1010

bb.hv:                                            ; preds = %bb.hu
  %i.aag = load i32, ptr %i.n, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.38, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, i32 noundef %i.aag) #9
  br label %.loopexit1010

bb.hw:                                            ; preds = %bb.hs
  br i1 %.not797, label %bb.hz, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.aah = call i32 @get_log_level() #9
  %i.aai = icmp sgt i32 %i.aah, 3
  br i1 %i.aai, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.aaj = load i32, ptr %i.n, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.39, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, i32 noundef %i.aaj) #9
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hw, %bb.hy, %bb.hx
  %i.aak = load i32, ptr %i.n, align 4
  %i.aal = add nsw i32 %i.aak, 1                  ; 3 uses
  store i32 %i.aal, ptr %i.n, align 4
  %i.aam = icmp ult i32 %i.aal, %spec.select910
  br i1 %i.aam, label %.lr.ph1067, label %.loopexit1010, !llvm.loop !36

.loopexit1010:                                    ; preds = %bb.hz, %.lr.ph1067, %bb.hp, %bb.ht, %bb.hv, %bb.hu
  %.3615 = phi ptr [ %i.aab, %bb.hv ], [ %i.aab, %bb.hu ], [ %i.aab, %bb.ht ], [ null, %bb.hp ], [ null, %.lr.ph1067 ], [ null, %bb.hz ] ; 2 uses
  %i.aan = load i32, ptr %i.n, align 4            ; 2 uses
  %i.aao = icmp ult i32 %i.aan, %spec.select910
  br i1 %i.aao, label %bb.ia, label %bb.if

bb.ia:                                            ; preds = %.loopexit1010
  %i.aap = load ptr, ptr %i.xf, align 8
  %i.aaq = sext i32 %i.aan to i64
  %i.aar = getelementptr inbounds [32 x i8], ptr %i.aap, i64 %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8
  %.not799 = icmp eq ptr %i.aat, null
  br i1 %.not799, label %bb.ib, label %bb.if

bb.ib:                                            ; preds = %bb.ia
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.aau = load ptr, ptr %i.i, align 8
  %i.aav = call ptr @copy_core_array(ptr noundef %i.aau) #9
  store ptr %i.aav, ptr %i.j, align 8
  %i.aaw = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.aaw) #9
  %i.aax = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aay = and i64 %i.aax, 1
  %.not800 = icmp eq i64 %i.aay, 0
  br i1 %.not800, label %bb.ie, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aaz = call i32 @get_log_level() #9
  %i.aba = icmp sgt i32 %i.aaz, 3
  br i1 %i.aba, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.abb = load i32, ptr %i.n, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.40, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, i32 noundef %i.abb) #9
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ic, %bb.id, %bb.ib
  %i.abc = load ptr, ptr %i.j, align 8
  %i.abd = load ptr, ptr %i.d, align 8
  %i.abe = load ptr, ptr %i.o, align 8
  %i.abf = call fastcc ptr @_select_nodes(ptr noundef %0, i32 noundef %.0609, i32 noundef %.2661, i32 noundef %.2666, ptr noundef %1, ptr noundef %i.abc, ptr noundef %9, i16 noundef zeroext %6, i1 noundef zeroext %i.w, i1 noundef zeroext %i.x, ptr noundef %i.abd, i1 noundef zeroext %12, ptr noundef %i.abe, ptr noundef %11, ptr noundef %i.b)
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.ia, %.loopexit1010
  %.4616 = phi ptr [ %.3615, %bb.ia ], [ %i.abf, %bb.ie ], [ %.3615, %.loopexit1010 ] ; 2 uses
  %.not801 = icmp eq ptr %.4616, null
  br i1 %.not801, label %bb.ig, label %.thread945

bb.ig:                                            ; preds = %bb.if
  %i.abg = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.abh = and i64 %i.abg, 1
  %.not802 = icmp eq i64 %i.abh, 0
  br i1 %.not802, label %.thread936, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.abi = call i32 @get_log_level() #9
  %i.abj = icmp sgt i32 %i.abi, 3
  br i1 %i.abj, label %bb.ii, label %.thread936

bb.ii:                                            ; preds = %bb.ih
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.41, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test) #9
  br label %.thread936

.thread945:                                       ; preds = %bb.gz, %bb.gs, %bb.if, %bb.hf, %bb.hg, %bb.hh, %bb.en, %bb.eo, %bb.ep
  %.5617948 = phi ptr [ %i.pt, %bb.ep ], [ %.4616, %bb.if ], [ %i.xn, %bb.hf ], [ %i.xn, %bb.hg ], [ %i.xn, %bb.hh ], [ %i.pt, %bb.en ], [ %i.pt, %bb.eo ], [ %.06121056, %bb.gs ], [ %.1613, %bb.gz ] ; 2 uses
  %i.abk = load i8, ptr %i.mc, align 8, !range !8, !noundef !9
  %i.abl = trunc nuw i8 %i.abk to i1
  %i.abm = icmp eq i32 %.2611, 0
  %or.cond34.not = select i1 %i.abl, i1 true, i1 %i.abm
  br i1 %or.cond34.not, label %bb.io, label %bb.ij

.thread936:                                       ; preds = %.critedge908, %bb.ft, %bb.fu, %bb.fv, %bb.he, %bb.ig, %bb.ih, %bb.ii, %bb.eq, %bb.er, %bb.es
  %.old33.not = icmp eq i32 %.2611, 0
  br i1 %.old33.not, label %bb.io, label %bb.ij

bb.ij:                                            ; preds = %.thread936, %.thread945
  %.5617939 = phi ptr [ null, %.thread936 ], [ %.5617948, %.thread945 ] ; 2 uses
  %i.abn = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.abo = and i64 %i.abn, 1
  %.not887 = icmp eq i64 %i.abo, 0
  br i1 %.not887, label %bb.im, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.abp = call i32 @get_log_level() #9
  %i.abq = icmp sgt i32 %i.abp, 3
  br i1 %i.abq, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.42, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, i32 noundef %.2611) #9
  br label %bb.im

bb.im:                                            ; preds = %bb.ik, %bb.il, %bb.ij
  %i.abr = load ptr, ptr %i.c, align 8
  call void @bit_copybits(ptr noundef %1, ptr noundef %i.abr) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.abs = load ptr, ptr %i.k, align 8
  %.not888 = icmp eq ptr %i.abs, null
  br i1 %.not888, label %._crit_edge1175, label %bb.in

._crit_edge1175:                                  ; preds = %bb.im
  %.pre1176 = load ptr, ptr %i.i, align 8
  br label %.backedge

bb.in:                                            ; preds = %bb.im
  call void @free_core_array(ptr noundef nonnull %i.i) #9
  %i.abt = load ptr, ptr %i.k, align 8            ; 2 uses
  store ptr %i.abt, ptr %i.i, align 8
  store ptr null, ptr %i.k, align 8
  br label %.backedge

bb.io:                                            ; preds = %.thread936, %.thread945
  %.not826942 = phi i1 [ true, %.thread936 ], [ false, %.thread945 ]
  %.5617941 = phi ptr [ null, %.thread936 ], [ %.5617948, %.thread945 ] ; 11 uses
  %i.abu = load ptr, ptr %i.k, align 8
  %.not828 = icmp eq ptr %i.abu, null
  br i1 %.not828, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @free_core_array(ptr noundef nonnull %i.k) #9
  br label %bb.iq

bb.iq:                                            ; preds = %bb.io, %bb.ip
  %i.abv = load ptr, ptr %i.c, align 8
  %.not829 = icmp eq ptr %i.abv, null
  br i1 %.not829, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #9
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  store ptr null, ptr %i.c, align 8
  call void @free_core_array(ptr noundef nonnull %i.d) #9
  call void @free_core_array(ptr noundef nonnull %i.e) #9
  %i.abw = load ptr, ptr %i.f, align 8
  %.not830 = icmp eq ptr %i.abw, null
  br i1 %.not830, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @slurm_bit_free(ptr noundef nonnull %i.f) #9
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is
  store ptr null, ptr %i.f, align 8
  br i1 %.not826942, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.abx = load i8, ptr %i.mc, align 8, !range !8, !noundef !9
  %i.aby = trunc nuw i8 %i.abx to i1
  br i1 %i.aby, label %bb.ja, label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  call void @free_core_array(ptr noundef nonnull %i.i) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  call fastcc void @_free_avail_res_array(ptr noundef %.5617941)
  %i.abz = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aca = and i64 %i.abz, 1
  %.not831 = icmp eq i64 %i.aca, 0
  br i1 %.not831, label %._crit_edge1189, label %bb.ix

._crit_edge1189:                                  ; preds = %bb.iw
  %.pre1190 = load i32, ptr %i.b, align 4
  br label %bb.iz

bb.ix:                                            ; preds = %bb.iw
  %i.acb = call i32 @get_log_level() #9
  %i.acc = icmp sgt i32 %i.acb, 3
  %.pre1191 = load i32, ptr %i.b, align 4         ; 3 uses
  br i1 %i.acc, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, i32 noundef %.pre1191) #9
  br label %bb.iz

bb.iz:                                            ; preds = %._crit_edge1189, %bb.ix, %bb.iy
  %i.acd = phi i32 [ %.pre1190, %._crit_edge1189 ], [ %.pre1191, %bb.ix ], [ %.pre1191, %bb.iy ] ; 2 uses
  %.not832 = icmp eq i32 %i.acd, 0
  %i.ace = select i1 %.not832, i32 -1, i32 %i.acd
  br label %.critedge

bb.ja:                                            ; preds = %bb.iv
  br i1 %i.x, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.acf = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 272
  %i.ach = load i32, ptr %i.acg, align 8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 288
  %i.acj = load i32, ptr %i.aci, align 8
  %. = call i32 @llvm.umax.i32(i32 %i.ach, i32 %i.acj)
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i32 %., ptr %i.ack, align 8
  br label %.thread955

bb.jc:                                            ; preds = %bb.ja
  %i.acl = load ptr, ptr %i.me, align 8
  %.not1000 = icmp eq ptr %i.acl, null
  br i1 %.not1000, label %bb.jd, label %.thread955

bb.jd:                                            ; preds = %bb.jc
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  call void @free_core_array(ptr noundef nonnull %i.i) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %.5617941)
  br label %.critedge

.thread955:                                       ; preds = %bb.jb, %bb.jc
  %i.acm = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.acn = and i64 %i.acm, 1
  %.not835 = icmp eq i64 %i.acn, 0
  br i1 %.not835, label %bb.jg, label %bb.je

bb.je:                                            ; preds = %.thread955
  %i.aco = call i32 @get_log_level() #9
  %i.acp = icmp sgt i32 %i.aco, 3
  br i1 %i.acp, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.44, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef nonnull %0) #9
  br label %bb.jg

bb.jg:                                            ; preds = %bb.je, %bb.jf, %.thread955
  %i.acq = call i32 @bit_set_count(ptr noundef %1) #9 ; 7 uses
  %i.acr = zext i32 %i.acq to i64
  %i.acs = shl nuw nsw i64 %i.acr, 1
  %i.act = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.acs, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 1988, ptr noundef nonnull @__func__._job_test) #9 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.acu = call ptr @next_node_bitmap(ptr noundef %1, ptr noundef nonnull %i.n) #9
  %.not8371069 = icmp eq ptr %i.acu, null
  br i1 %.not8371069, label %._crit_edge1073, label %.lr.ph1072

.lr.ph1072:                                       ; preds = %bb.jg, %bb.ji
  %.06361070 = phi i32 [ %.1637, %bb.ji ], [ 0, %bb.jg ] ; 3 uses
  %i.acv = load i32, ptr %i.n, align 4            ; 2 uses
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds [8 x i8], ptr %.5617941, i64 %i.acw
  %i.acy = load ptr, ptr %i.acx, align 8          ; 2 uses
  %.not886 = icmp eq ptr %i.acy, null
  br i1 %.not886, label %bb.ji, label %bb.jh

end_hunk_2
begin_hunk_3_@_job_test:bb.a
  %i.adb = zext i32 %.06361070 to i64
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.adb
  store i16 %i.acz, ptr %i.adc, align 2
  %.pre1177 = load i32, ptr %i.n, align 4
  br label %bb.ji

bb.ji:                                            ; preds = %.lr.ph1072, %bb.jh
  %i.add = phi i32 [ %.pre1177, %bb.jh ], [ %i.acv, %.lr.ph1072 ]
  %.1637 = phi i32 [ %i.ada, %bb.jh ], [ %.06361070, %.lr.ph1072 ] ; 2 uses
  %i.ade = add nsw i32 %i.add, 1
  store i32 %i.ade, ptr %i.n, align 4
  %i.adf = call ptr @next_node_bitmap(ptr noundef %1, ptr noundef nonnull %i.n) #9
  %.not837 = icmp eq ptr %i.adf, null
  br i1 %.not837, label %._crit_edge1073, label %.lr.ph1072, !llvm.loop !37

._crit_edge1073:                                  ; preds = %bb.ji, %bb.jg
  %.0636.lcssa = phi i32 [ 0, %bb.jg ], [ %.1637, %bb.ji ] ; 2 uses
  %.not838 = icmp eq i32 %.0636.lcssa, %i.acq
  br i1 %.not838, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %._crit_edge1073
  %i.adg = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.46, i32 noundef %.0636.lcssa, i32 noundef %i.acq) #9 ; 0 uses
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %._crit_edge1073
  %i.adh = call ptr @create_job_resources() #9
  store ptr %i.adh, ptr %i.m, align 8
  %i.adi = call ptr @bit_copy(ptr noundef %1) #9
  %i.adj = load ptr, ptr %i.m, align 8
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 96
  store ptr %i.adi, ptr %i.adk, align 8
  %i.adl = call ptr @bitmap2node_name_sortable(ptr noundef %1, i1 noundef zeroext false) #9
  %i.adm = load ptr, ptr %i.m, align 8            ; 5 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 120
  store ptr %i.adl, ptr %i.adn, align 8
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 92
  store i32 %i.acq, ptr %i.ado, align 4
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 128 ; 2 uses
  store i32 %i.acq, ptr %i.adp, align 8
  %i.adq = load ptr, ptr %i.t, align 8
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 248
  %i.ads = load ptr, ptr %i.adr, align 8
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adu = load i16, ptr %i.adt, align 2
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adm, i64 160
  store i16 %i.adu, ptr %i.adv, align 8
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adm, i64 64
  store i16 %6, ptr %i.adw, align 8
  %i.adx = load ptr, ptr %i.t, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 296
  %i.adz = load i16, ptr %i.ady, align 8
  %.not839 = icmp eq i16 %i.adz, 0
  br i1 %.not839, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aea = load i16, ptr %i.hl, align 8
  %i.aeb = zext i16 %i.aea to i32
  %i.aec = mul i32 %i.acq, %i.aeb
  store i32 %i.aec, ptr %i.adp, align 8
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.aed = getelementptr inbounds nuw i8, ptr %i.u, i64 298
  %i.aee = load i16, ptr %i.aed, align 2
  %i.aef = load ptr, ptr %i.hr, align 8
  %i.aeg = call i32 @gres_select_util_job_min_tasks(i32 noundef %i.acq, i32 noundef %.0646, i16 noundef zeroext %i.aee, ptr noundef nonnull @.str.47, ptr noundef %i.aef) #9 ; 2 uses
  store i32 %i.aeg, ptr %i.n, align 4
  %i.aeh = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 128 ; 4 uses
  %i.aej = load i32, ptr %i.aei, align 8
  %.913 = call i32 @llvm.umax.i32(i32 %i.aej, i32 %i.aeg) ; 2 uses
  store i32 %.913, ptr %i.aei, align 8
  %i.aek = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.ael = load i32, ptr %i.aek, align 8
  %i.aem = call i32 @llvm.umax.i32(i32 %.913, i32 %i.ael) ; 2 uses
  store i32 %i.aem, ptr %i.aei, align 8
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeh, i64 92
  %i.aeo = load i32, ptr %i.aen, align 4          ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.u, i64 308
  %i.aeq = load i32, ptr %i.aep, align 4
  %i.aer = mul i32 %i.aeq, %i.aeo
  %i.aes = call i32 @llvm.umax.i32(i32 %i.aem, i32 %i.aer)
  store i32 %i.aes, ptr %i.aei, align 8
  %i.aet = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 248
  %i.aev = load ptr, ptr %i.aeu, align 8          ; 2 uses
  %.not840 = icmp eq ptr %i.aev, null
  br i1 %.not840, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.aex = load i16, ptr %i.aew, align 2
  %i.aey = zext i16 %i.aex to i32
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %.1647 = phi i32 [ %i.aey, %bb.jn ], [ %.0646, %bb.jm ]
  %i.aez = load ptr, ptr %i.ja, align 8           ; 2 uses
  %.not841 = icmp eq ptr %i.aez, null
  br i1 %.not841, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.afa = load ptr, ptr %i.hr, align 8
  %i.afb = call ptr @gres_select_util_create_list_req_accum(ptr noundef %i.afa) #9 ; 2 uses
  store ptr %i.afb, ptr %i.ja, align 8
  %.pre1178 = load ptr, ptr %i.m, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1178, i64 92
  %.pre1179 = load i32, ptr %.phi.trans.insert, align 4
  %.pre1180 = load ptr, ptr %i.t, align 8
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.afc = phi ptr [ %i.afb, %bb.jp ], [ %i.aez, %bb.jo ]
  %i.afd = phi ptr [ %.pre1180, %bb.jp ], [ %i.aet, %bb.jo ]
  %i.afe = phi i32 [ %.pre1179, %bb.jp ], [ %i.aeo, %bb.jo ]
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 300
  %i.afg = load i32, ptr %i.aff, align 4
  %i.afh = call i32 @gres_select_util_job_min_cpus(i32 noundef %i.afe, i32 noundef %.1647, i32 noundef %i.afg, ptr noundef %i.afc) #9 ; 2 uses
  store i32 %i.afh, ptr %i.n, align 4
  %i.afi = load ptr, ptr %i.m, align 8            ; 4 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 128 ; 2 uses
  %i.afk = load i32, ptr %i.afj, align 8
  %.914 = call i32 @llvm.umax.i32(i32 %i.afk, i32 %i.afh)
  store i32 %.914, ptr %i.afj, align 8
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afi, i64 112
  store i32 %7, ptr %i.afl, align 8
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afi, i64 40
  store ptr %i.act, ptr %i.afm, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afi, i64 92
  %i.afo = load i32, ptr %i.afn, align 4
  %i.afp = zext i32 %i.afo to i64
  %i.afq = shl nuw nsw i64 %i.afp, 1
  %i.afr = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.afq, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 2031, ptr noundef nonnull @__func__._job_test) #9
  %i.afs = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 48
  store ptr %i.afr, ptr %i.aft, align 8
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 92
  %i.afv = load i32, ptr %i.afu, align 4
  %i.afw = zext i32 %i.afv to i64
  %i.afx = shl nuw nsw i64 %i.afw, 3
  %i.afy = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.afx, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 2033, ptr noundef nonnull @__func__._job_test) #9
  %i.afz = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 72
  store ptr %i.afy, ptr %i.aga, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 92
  %i.agc = load i32, ptr %i.agb, align 4
  %i.agd = zext i32 %i.agc to i64
  %i.age = shl nuw nsw i64 %i.agd, 3
  %i.agf = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.age, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 2035, ptr noundef nonnull @__func__._job_test) #9
  %i.agg = load ptr, ptr %i.m, align 8            ; 3 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 80
  store ptr %i.agf, ptr %i.agh, align 8
  %i.agi = load ptr, ptr %i.t, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 512
  %i.agk = load i8, ptr %i.agj, align 8
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agg, i64 162
  store i8 %i.agk, ptr %i.agl, align 2
  %i.agm = call i32 @build_job_resources(ptr noundef %i.agg) #9 ; 2 uses
  %.not842 = icmp eq i32 %i.agm, 0
  br i1 %.not842, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %.5617941)
  call void @free_job_resources(ptr noundef nonnull %i.m) #9
  call void @free_core_array(ptr noundef nonnull %i.i) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  br label %.critedge

bb.js:                                            ; preds = %bb.jq
  %i.agn = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.ago = load ptr, ptr %i.agn, align 8          ; 2 uses
  %.not843 = icmp eq ptr %i.ago, null
  br i1 %.not843, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.agp = call i64 @bit_size(ptr noundef nonnull %i.ago) #9
  %i.agq = trunc i64 %i.agp to i32
  %.pre1181 = load ptr, ptr %i.m, align 8
  br label %bb.ju

bb.ju:                                            ; preds = %bb.js, %bb.jt
  %i.agr = phi ptr [ %.pre1181, %bb.jt ], [ %i.agn, %bb.js ]
  %.0629 = phi i32 [ %i.agq, %bb.jt ], [ 0, %bb.js ] ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 92
  %i.agt = load i32, ptr %i.ags, align 4
  %i.agu = zext i32 %i.agt to i64
  %i.agv = call ptr @slurm_xcalloc(i64 noundef %i.agu, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 2056, ptr noundef nonnull @__func__._job_test) #9
  store ptr %i.agv, ptr %i.l, align 8
  store i32 0, ptr %i.n, align 4
  %i.agw = call ptr @next_node_bitmap(ptr noundef %1, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not8451083 = icmp eq ptr %i.agw, null
  br i1 %.not8451083, label %._crit_edge1091, label %.lr.ph1090

.lr.ph1090:                                       ; preds = %bb.ju
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  br label %bb.jv

bb.jv:                                            ; preds = %.lr.ph1090, %bb.ke
  %i.agy = phi ptr [ %i.agw, %.lr.ph1090 ], [ %i.ajn, %bb.ke ] ; 3 uses
  %.06251088 = phi i1 [ false, %.lr.ph1090 ], [ %spec.select915, %bb.ke ]
  %.06301087 = phi i32 [ 0, %.lr.ph1090 ], [ %.1631.lcssa, %bb.ke ] ; 2 uses
  %.16341086 = phi i32 [ 0, %.lr.ph1090 ], [ %i.ajl, %bb.ke ] ; 3 uses
  %.26431085 = phi i32 [ 0, %.lr.ph1090 ], [ %.3644.lcssa, %bb.ke ] ; 2 uses
  %.06641084 = phi i32 [ 0, %.lr.ph1090 ], [ %i.ajk, %bb.ke ]
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 552
  %i.aha = load i16, ptr %i.agz, align 8          ; 2 uses
  %i.ahb = load ptr, ptr %i.j, align 8
  %i.ahc = load i32, ptr %i.n, align 4
  %i.ahd = sext i32 %i.ahc to i64                 ; 2 uses
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.ahb, i64 %i.ahd
  %i.ahf = load ptr, ptr %i.ahe, align 8
  %i.ahg = load i16, ptr %i.agx, align 8
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agy, i64 400
  %i.ahi = load i16, ptr %i.ahh, align 8          ; 2 uses
  %i.ahj = icmp ugt i16 %i.ahg, %i.ahi
  br i1 %i.ahj, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  store i16 %i.ahi, ptr %i.agx, align 8
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %.not8851074.not = icmp eq i16 %i.aha, 0
  br i1 %.not8851074.not, label %._crit_edge1080, label %.lr.ph1079.preheader

.lr.ph1079.preheader:                             ; preds = %bb.jx
  %wide.trip.count1163 = zext i16 %i.aha to i64
  br label %.lr.ph1079

.lr.ph1079:                                       ; preds = %.lr.ph1079.preheader, %bb.ka
  %indvars.iv1160 = phi i64 [ 0, %.lr.ph1079.preheader ], [ %indvars.iv.next1161, %bb.ka ] ; 2 uses
  %.16311077 = phi i32 [ %.06301087, %.lr.ph1079.preheader ], [ %i.ahw, %bb.ka ] ; 3 uses
  %.36441075 = phi i32 [ %.26431085, %.lr.ph1079.preheader ], [ %.2632, %bb.ka ] ; 2 uses
  %i.ahk = call i32 @slurm_bit_test(ptr noundef %i.ahf, i64 noundef %indvars.iv1160) #9
  %.not883 = icmp eq i32 %i.ahk, 0
  br i1 %.not883, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %.lr.ph1079
  %.not884 = icmp ult i32 %.16311077, %.0629
  br i1 %.not884, label %bb.jz, label %.thread957

.thread957:                                       ; preds = %bb.jy
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agy, i64 280 ; 2 uses
  %i.ahm = load ptr, ptr %i.ahl, align 8
  %i.ahn = load i32, ptr %i.n, align 4
  %i.aho = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.48, ptr noundef %i.ahm, i32 noundef %i.ahn, i32 noundef %.0629) #9 ; 0 uses
  %i.ahp = load ptr, ptr %i.ahl, align 8
  %i.ahq = call i32 @getuid() #9
  %i.ahr = call i32 @drain_nodes(ptr noundef %i.ahp, ptr noundef nonnull @.str.49, i32 noundef %i.ahq) #9 ; 0 uses
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %.5617941)
  call void @free_job_resources(ptr noundef nonnull %i.m) #9
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  call void @slurm_xfree(ptr noundef nonnull %i.l) #9
  br label %.critedge

bb.jz:                                            ; preds = %bb.jy
  %i.ahs = load ptr, ptr %i.m, align 8
  %i.aht = load ptr, ptr %i.ahs, align 8
  %i.ahu = zext i32 %.16311077 to i64
  call void @bit_set(ptr noundef %i.aht, i64 noundef %i.ahu) #9
  %i.ahv = add i32 %.36441075, 1
  br label %bb.ka

bb.ka:                                            ; preds = %.lr.ph1079, %bb.jz
  %.2632 = phi i32 [ %i.ahv, %bb.jz ], [ %.36441075, %.lr.ph1079 ] ; 2 uses
  %indvars.iv.next1161 = add nuw nsw i64 %indvars.iv1160, 1 ; 2 uses
  %i.ahw = add i32 %.16311077, 1                  ; 2 uses
  %exitcond1164.not = icmp eq i64 %indvars.iv.next1161, %wide.trip.count1163
  br i1 %exitcond1164.not, label %._crit_edge1080.loopexit, label %.lr.ph1079, !llvm.loop !38

._crit_edge1080.loopexit:                         ; preds = %bb.ka
  %.pre1182 = load i32, ptr %i.n, align 4
  %.pre1192 = sext i32 %.pre1182 to i64
  br label %._crit_edge1080

._crit_edge1080:                                  ; preds = %._crit_edge1080.loopexit, %bb.jx
  %.pre-phi = phi i64 [ %.pre1192, %._crit_edge1080.loopexit ], [ %i.ahd, %bb.jx ]
  %.3644.lcssa = phi i32 [ %.2632, %._crit_edge1080.loopexit ], [ %.26431085, %bb.jx ] ; 2 uses
  %.1631.lcssa = phi i32 [ %i.ahw, %._crit_edge1080.loopexit ], [ %.06301087, %bb.jx ]
  %i.ahx = getelementptr inbounds [8 x i8], ptr %.5617941, i64 %.pre-phi
  %i.ahy = load ptr, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 24
  %i.aia = load i32, ptr %i.ahz, align 8          ; 2 uses
  %.not880 = icmp eq i32 %i.aia, 0
  br i1 %.not880, label %._crit_edge1080._crit_edge, label %bb.kb

._crit_edge1080._crit_edge:                       ; preds = %._crit_edge1080
  %.pre1196 = zext i32 %.16341086 to i64
  br label %bb.ke

bb.kb:                                            ; preds = %._crit_edge1080
  %i.aib = load ptr, ptr %i.l, align 8
  %i.aic = zext i32 %.16341086 to i64             ; 6 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.aic
  store i32 %i.aia, ptr %i.aid, align 4
  %i.aie = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aif = and i64 %i.aie, 1
  %.not881 = icmp eq i64 %i.aif, 0
  br i1 %.not881, label %bb.ke, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.aig = call i32 @get_log_level() #9
  %i.aih = icmp sgt i32 %i.aig, 3
  br i1 %i.aih, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.aii = load ptr, ptr @node_record_table_ptr, align 8
  %i.aij = load i32, ptr %i.n, align 4            ; 3 uses
  %i.aik = sext i32 %i.aij to i64
  %i.ail = getelementptr inbounds [8 x i8], ptr %i.aii, i64 %i.aik
  %i.aim = load ptr, ptr %i.ail, align 8
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 280
  %i.aio = load ptr, ptr %i.ain, align 8
  %i.aip = load ptr, ptr %i.m, align 8
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 40
  %i.air = load ptr, ptr %i.aiq, align 8
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %i.air, i64 %i.aic
  %i.ait = load i16, ptr %i.ais, align 2
  %i.aiu = zext i16 %i.ait to i32
  %i.aiv = load ptr, ptr %i.l, align 8
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aiv, i64 %i.aic
  %i.aix = load i32, ptr %i.aiw, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.50, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef %0, ptr noundef %i.aio, i32 noundef %i.aij, i32 noundef %i.aiu, i32 noundef %i.aij, i32 noundef %i.aix) #9
  br label %bb.ke

bb.ke:                                            ; preds = %._crit_edge1080._crit_edge, %bb.kb, %bb.kd, %bb.kc
  %.pre-phi1197 = phi i64 [ %.pre1196, %._crit_edge1080._crit_edge ], [ %i.aic, %bb.kb ], [ %i.aic, %bb.kd ], [ %i.aic, %bb.kc ]
  %i.aiy = load i32, ptr %i.n, align 4            ; 2 uses
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [8 x i8], ptr %.5617941, i64 %i.aiz
  %i.ajb = load ptr, ptr %i.aja, align 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 28
  %i.ajd = load i32, ptr %i.ajc, align 4
  %.not882 = icmp ne i32 %i.ajd, 0
  %spec.select915 = select i1 %.not882, i1 true, i1 %.06251088 ; 2 uses
  %i.aje = load ptr, ptr %i.m, align 8
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 40
  %i.ajg = load ptr, ptr %i.ajf, align 8
  %i.ajh = getelementptr inbounds nuw [2 x i8], ptr %i.ajg, i64 %.pre-phi1197
  %i.aji = load i16, ptr %i.ajh, align 2
  %i.ajj = zext i16 %i.aji to i32
  %i.ajk = add i32 %.06641084, %i.ajj             ; 2 uses
  %i.ajl = add i32 %.16341086, 1
  %i.ajm = add nsw i32 %i.aiy, 1
  store i32 %i.ajm, ptr %i.n, align 4
  %i.ajn = call ptr @next_node_bitmap(ptr noundef %1, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not845 = icmp eq ptr %i.ajn, null
  br i1 %.not845, label %._crit_edge1091, label %bb.jv, !llvm.loop !39

._crit_edge1091:                                  ; preds = %bb.ke, %bb.ju
  %.0664.lcssa = phi i32 [ 0, %bb.ju ], [ %i.ajk, %bb.ke ] ; 2 uses
  %.0630.lcssa = phi i32 [ 0, %bb.ju ], [ %.3644.lcssa, %bb.ke ]
  %.0625.lcssa = phi i1 [ false, %bb.ju ], [ %spec.select915, %bb.ke ] ; 2 uses
  %i.ajo = load i8, ptr %i.go, align 1
  %.not846 = icmp eq i8 %i.ajo, 0
  br i1 %.not846, label %bb.kh, label %bb.kf

bb.kf:                                            ; preds = %._crit_edge1091
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.u, i64 300
  %i.ajq = load i32, ptr %i.ajp, align 4          ; 2 uses
  %.not847 = icmp eq i32 %i.ajq, 0
  br i1 %.not847, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %.0627. = call i32 @llvm.umin.i32(i32 %.0664.lcssa, i32 %i.ajq)
  %i.ajr = load ptr, ptr %i.m, align 8
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 128
  store i32 %.0627., ptr %i.ajs, align 8
  br label %bb.kh

bb.kh:                                            ; preds = %._crit_edge1091, %bb.kf, %bb.kg
  %i.ajt = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aju = and i64 %i.ajt, 1
  %.not848 = icmp eq i64 %i.aju, 0
  br i1 %.not848, label %bb.kk, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ajv = call i32 @get_log_level() #9
  %i.ajw = icmp sgt i32 %i.ajv, 3
  br i1 %i.ajw, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.ajx = load ptr, ptr %i.m, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 128
  %i.ajz = load i32, ptr %i.ajy, align 8
  %i.aka = load ptr, ptr %i.j, align 8
  %i.akb = call i32 @count_core_array_set(ptr noundef %i.aka) #9
  %i.akc = load ptr, ptr %i.m, align 8
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 92
  %i.ake = load i32, ptr %i.akd, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef %0, i32 noundef %i.ajz, i32 noundef %i.akb, i32 noundef %.0630.lcssa, i32 noundef %i.ake) #9
  br label %bb.kk

bb.kk:                                            ; preds = %bb.ki, %bb.kj, %bb.kh
  call void @free_core_array(ptr noundef nonnull %i.j) #9
  %i.akf = load ptr, ptr %i.m, align 8
  store ptr %i.akf, ptr %i.v, align 8
  %i.akg = load ptr, ptr %i.hr, align 8           ; 2 uses
  %.not849 = icmp eq ptr %i.akg, null
  br i1 %.not849, label %bb.kw, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.akh = call zeroext i1 @gres_select_util_job_tres_per_task(ptr noundef nonnull %i.akg) #9 ; 2 uses
  %or.cond43 = select i1 %i.akh, i1 true, i1 %.0625.lcssa
  br i1 %or.cond43, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.aki = load ptr, ptr %i.m, align 8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 92
  %i.akk = load i32, ptr %i.akj, align 4
  %i.akl = zext i32 %i.akk to i64
  %i.akm = call ptr @slurm_xcalloc(i64 noundef %i.akl, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 2126, ptr noundef nonnull @__func__._job_test) #9
  store ptr %i.akm, ptr %i.r, align 8
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kl, %bb.km
  %i.akn = load ptr, ptr %i.m, align 8
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 92
  %i.akp = load i32, ptr %i.ako, align 4
  %i.akq = zext i32 %i.akp to i64
  %i.akr = call ptr @slurm_xcalloc(i64 noundef %i.akq, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 2128, ptr noundef nonnull @__func__._job_test) #9
  store ptr %i.akr, ptr %i.p, align 8
  %i.aks = load ptr, ptr %i.m, align 8
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 92
  %i.aku = load i32, ptr %i.akt, align 4
  %i.akv = zext i32 %i.aku to i64
  %i.akw = call ptr @slurm_xcalloc(i64 noundef %i.akv, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 2129, ptr noundef nonnull @__func__._job_test) #9
  store ptr %i.akw, ptr %i.q, align 8
  store i32 0, ptr %i.n, align 4
  %i.akx = load ptr, ptr %i.m, align 8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 96
  %i.akz = load ptr, ptr %i.aky, align 8
  %i.ala = call ptr @next_node_bitmap(ptr noundef %i.akz, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not8511095 = icmp eq ptr %i.ala, null
  br i1 %.not8511095, label %._crit_edge1100.thread, label %.lr.ph1099

.lr.ph1099:                                       ; preds = %bb.kn, %bb.kv
  %i.alb = phi ptr [ %i.ana, %bb.kv ], [ %i.ala, %bb.kn ] ; 2 uses
  %.06031097 = phi i8 [ %.1604, %bb.kv ], [ 0, %bb.kn ] ; 2 uses
  %.36391096 = phi i32 [ %i.amv, %bb.kv ], [ 0, %bb.kn ] ; 4 uses
  br i1 %i.akh, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %.lr.ph1099
  %i.alc = load i32, ptr %i.n, align 4
  %i.ald = sext i32 %i.alc to i64
  %i.ale = getelementptr inbounds [8 x i8], ptr %.5617941, i64 %i.ald
  %i.alf = load ptr, ptr %i.ale, align 8
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 40
  %i.alh = load ptr, ptr %i.alg, align 8
  %i.ali = call i32 @gres_select_util_get_task_limit(ptr noundef %i.alh) #9
  %i.alj = load ptr, ptr %i.r, align 8
  %i.alk = zext i32 %.36391096 to i64             ; 3 uses
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.alk
  store i32 %i.ali, ptr %i.all, align 4
  %i.alm = load ptr, ptr %i.r, align 8
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.alk
  %i.alo = load i32, ptr %i.aln, align 4
  %.not878 = icmp eq i32 %i.alo, -2
  %spec.select916 = select i1 %.not878, i8 %.06031097, i8 1
  br label %bb.kr

bb.kp:                                            ; preds = %.lr.ph1099
  br i1 %.0625.lcssa, label %bb.kq, label %._crit_edge1193

._crit_edge1193:                                  ; preds = %bb.kp
  %.pre1194 = zext i32 %.36391096 to i64
  br label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.alp = load i32, ptr %i.n, align 4
  %i.alq = sext i32 %i.alp to i64
  %i.alr = getelementptr inbounds [8 x i8], ptr %.5617941, i64 %i.alq
  %i.als = load ptr, ptr %i.alr, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 28
  %i.alu = load i32, ptr %i.alt, align 4
  %i.alv = load ptr, ptr %i.r, align 8
  %i.alw = zext i32 %.36391096 to i64             ; 2 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %i.alw
  store i32 %i.alu, ptr %i.alx, align 4
  br label %bb.kr

bb.kr:                                            ; preds = %._crit_edge1193, %bb.ko, %bb.kq
  %.pre-phi1195 = phi i64 [ %.pre1194, %._crit_edge1193 ], [ %i.alk, %bb.ko ], [ %i.alw, %bb.kq ] ; 3 uses
  %.1604 = phi i8 [ %.06031097, %._crit_edge1193 ], [ %spec.select916, %bb.ko ], [ 1, %bb.kq ] ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alb, i64 208
  %i.alz = load ptr, ptr %i.aly, align 8
  %i.ama = load ptr, ptr %i.p, align 8
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.ama, i64 %.pre-phi1195
  store ptr %i.alz, ptr %i.amb, align 8
  %i.amc = load i32, ptr %i.n, align 4            ; 3 uses
  %i.amd = sext i32 %i.amc to i64
  %i.ame = getelementptr inbounds [8 x i8], ptr %.5617941, i64 %i.amd
  %i.amf = load ptr, ptr %i.ame, align 8
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 40
  %i.amh = load ptr, ptr %i.amg, align 8
  %i.ami = load ptr, ptr %i.q, align 8
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.ami, i64 %.pre-phi1195
  store ptr %i.amh, ptr %i.amj, align 8
  %i.amk = trunc nuw i8 %.1604 to i1
  br i1 %i.amk, label %bb.ks, label %bb.kv

bb.ks:                                            ; preds = %bb.kr
  %i.aml = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.amm = and i64 %i.aml, 1
  %.not879 = icmp eq i64 %i.amm, 0
  br i1 %.not879, label %bb.kv, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.amn = call i32 @get_log_level() #9
  %i.amo = icmp sgt i32 %i.amn, 3
  %.pre1184 = load i32, ptr %i.n, align 4         ; 2 uses
  br i1 %i.amo, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.amp = getelementptr inbounds nuw i8, ptr %i.alb, i64 280
  %i.amq = load ptr, ptr %i.amp, align 8
  %i.amr = load ptr, ptr %i.r, align 8
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.amr, i64 %.pre-phi1195
  %i.amt = load i32, ptr %i.ams, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef %0, ptr noundef %i.amq, i32 noundef %.pre1184, i32 noundef %i.amt) #9
  %.pre1183 = load i32, ptr %i.n, align 4
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ks, %bb.ku, %bb.kt, %bb.kr
  %i.amu = phi i32 [ %i.amc, %bb.ks ], [ %.pre1183, %bb.ku ], [ %.pre1184, %bb.kt ], [ %i.amc, %bb.kr ]
  %i.amv = add i32 %.36391096, 1
  %i.amw = add nsw i32 %i.amu, 1
  store i32 %i.amw, ptr %i.n, align 4
  %i.amx = load ptr, ptr %i.m, align 8
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 96
  %i.amz = load ptr, ptr %i.amy, align 8
  %i.ana = call ptr @next_node_bitmap(ptr noundef %i.amz, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not851 = icmp eq ptr %i.ana, null
  br i1 %.not851, label %._crit_edge1100, label %.lr.ph1099, !llvm.loop !40

._crit_edge1100:                                  ; preds = %bb.kv
  %i.anb = trunc nuw i8 %.1604 to i1
  br i1 %i.anb, label %bb.kw, label %._crit_edge1100.thread

._crit_edge1100.thread:                           ; preds = %bb.kn, %._crit_edge1100
  call void @slurm_xfree(ptr noundef nonnull %i.r) #9
  br label %bb.kw

bb.kw:                                            ; preds = %._crit_edge1100, %._crit_edge1100.thread, %bb.kk
  %i.anc = load ptr, ptr %i.i, align 8
  %i.and = load ptr, ptr %i.r, align 8
  %i.ane = load ptr, ptr %i.l, align 8
  %i.anf = call i32 @dist_tasks(ptr noundef %0, i16 noundef zeroext %6, i1 noundef zeroext %spec.select, ptr noundef %i.anc, ptr noundef %i.and, ptr noundef %i.ane) #9 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.l) #9
  %i.ang = load ptr, ptr %i.hr, align 8
  %i.anh = icmp ne ptr %i.ang, null
  %i.ani = icmp eq i32 %i.anf, 0
  %or.cond46 = select i1 %i.anh, i1 %i.ani, i1 false
  br i1 %or.cond46, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.anj = load ptr, ptr %i.q, align 8
  %i.ank = load ptr, ptr %i.o, align 8
  %i.anl = call i32 @gres_select_filter_select_and_set(ptr noundef %i.anj, ptr noundef nonnull %0, ptr noundef %i.ank) #9
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %.2655 = phi i32 [ %i.anl, %bb.kx ], [ %i.anf, %bb.kw ] ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.r) #9
  call void @slurm_xfree(ptr noundef nonnull %i.p) #9
  call void @slurm_xfree(ptr noundef nonnull %i.q) #9
  call void @slurm_xfree(ptr noundef nonnull %i.o) #9
  call fastcc void @_free_avail_res_array(ptr noundef nonnull %.5617941)
  call void @free_core_array(ptr noundef nonnull %i.i) #9
  %i.anm = icmp eq i32 %.2655, 0
  br i1 %i.anm, label %bb.kz, label %.thread971

bb.kz:                                            ; preds = %bb.ky
  %i.ann = load ptr, ptr %i.m, align 8            ; 5 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 92
  %i.anp = load i32, ptr %i.ano, align 4
  %i.anq = icmp ugt i32 %i.anp, 1
  br i1 %i.anq, label %bb.la, label %.thread968

bb.la:                                            ; preds = %bb.kz
  %i.anr = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8
  %i.ans = and i16 %i.anr, 2048
  %.not852 = icmp eq i16 %i.ans, 0
  br i1 %.not852, label %bb.lb, label %.thread968

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #9
  store i32 0, ptr %i.s, align 4
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ann, i64 96
  %i.anu = load ptr, ptr %i.ant, align 8
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ann, i64 104
  %i.anw = load ptr, ptr %i.me, align 8
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 328
  %i.any = load i32, ptr %i.anx, align 8
  %i.anz = call i32 @topology_g_get_rank(ptr noundef %i.anu, ptr noundef nonnull %i.anv, ptr noundef nonnull %i.s, i32 noundef %i.any) #9 ; 2 uses
  %i.aoa = load ptr, ptr %i.m, align 8            ; 3 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 104
  %i.aoc = load ptr, ptr %i.aob, align 8
  %.not853 = icmp eq ptr %i.aoc, null
  br i1 %.not853, label %select.unfold, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.aod = load i32, ptr %i.s, align 4
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aoa, i64 92
  %i.aof = load i32, ptr %i.aoe, align 4
  %.not854 = icmp eq i32 %i.aod, %i.aof
  br i1 %.not854, label %select.unfold, label %.thread962

select.unfold:                                    ; preds = %bb.lc, %bb.lb
  %.not855 = icmp eq i32 %i.anz, 0
  br i1 %.not855, label %.thread975, label %.thread962

.thread975:                                       ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #9
  br label %.thread968

.thread962:                                       ; preds = %bb.lc, %select.unfold
  %.3656965 = phi i32 [ %i.anz, %select.unfold ], [ -1, %bb.lc ]
  %i.aog = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.53) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #9
  br label %.thread971

.thread971:                                       ; preds = %bb.ky, %.thread962
  %.4657974 = phi i32 [ %.3656965, %.thread962 ], [ %.2655, %bb.ky ]
  call void @free_job_resources(ptr noundef nonnull %i.v) #9
  br label %.critedge

.thread968:                                       ; preds = %bb.kz, %bb.la, %.thread975
  %i.aoh = phi ptr [ %i.ann, %bb.kz ], [ %i.ann, %bb.la ], [ %i.aoa, %.thread975 ]
  %i.aoi = call i32 @build_job_resources_cpu_array(ptr noundef nonnull %i.aoh) #9 ; 2 uses
  %i.aoj = load ptr, ptr %i.t, align 8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 512
  %i.aol = load i8, ptr %i.aok, align 8
  %i.aom = and i8 %i.aol, 1
  %.not857 = icmp eq i8 %i.aom, 0
  br i1 %.not857, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %.thread968
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  store i32 0, ptr %i.aon, align 8
  store i32 0, ptr %i.n, align 4
  %i.aoo = load ptr, ptr %i.m, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 96
  %i.aoq = load ptr, ptr %i.aop, align 8
  %i.aor = call ptr @next_node_bitmap(ptr noundef %i.aoq, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not8641102 = icmp eq ptr %i.aor, null
  br i1 %.not8641102, label %.loopexit, label %.lr.ph1104

.lr.ph1104:                                       ; preds = %bb.ld, %.lr.ph1104
  %i.aos = phi ptr [ %i.apd, %.lr.ph1104 ], [ %i.aor, %bb.ld ]
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 122
  %i.aou = load i16, ptr %i.aot, align 2
  %i.aov = zext i16 %i.aou to i32
  %i.aow = load i32, ptr %i.aon, align 8
  %i.aox = add i32 %i.aow, %i.aov
  store i32 %i.aox, ptr %i.aon, align 8
  %i.aoy = load i32, ptr %i.n, align 4
  %i.aoz = add nsw i32 %i.aoy, 1
  store i32 %i.aoz, ptr %i.n, align 4
  %i.apa = load ptr, ptr %i.m, align 8
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 96
  %i.apc = load ptr, ptr %i.apb, align 8
  %i.apd = call ptr @next_node_bitmap(ptr noundef %i.apc, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not864 = icmp eq ptr %i.apd, null
  br i1 %.not864, label %.loopexit, label %.lr.ph1104, !llvm.loop !41

bb.le:                                            ; preds = %.thread968
  %i.ape = and i16 %6, 2
  %.not858 = icmp eq i16 %i.ape, 0
  %i.apf = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 4 uses
  br i1 %.not858, label %.loopexit.sink.split, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  store i32 0, ptr %i.apf, align 8
  store i32 0, ptr %i.n, align 4
  %i.apg = load ptr, ptr %i.m, align 8
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 96
  %i.api = load ptr, ptr %i.aph, align 8
  %i.apj = call ptr @next_node_bitmap(ptr noundef %i.api, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not8601119 = icmp eq ptr %i.apj, null
  br i1 %.not8601119, label %.loopexit, label %.preheader1001

.preheader1001:                                   ; preds = %bb.lf, %._crit_edge1116
  %i.apk = phi ptr [ %i.aqu, %._crit_edge1116 ], [ %i.apj, %bb.lf ] ; 3 uses
  %.06001120 = phi i32 [ %.1601.lcssa, %._crit_edge1116 ], [ 0, %bb.lf ] ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 554 ; 2 uses
  %i.apm = load i16, ptr %i.apl, align 2          ; 2 uses
  %.not1134 = icmp eq i16 %i.apm, 0
  %.phi.trans.insert1187 = getelementptr inbounds nuw i8, ptr %i.apk, i64 90 ; 2 uses
  %.pre1188 = load i16, ptr %.phi.trans.insert1187, align 2 ; 3 uses
  br i1 %.not1134, label %._crit_edge1116, label %.preheader

.preheader:                                       ; preds = %.preheader1001, %._crit_edge1110
  %i.apn = phi i16 [ %i.aqa, %._crit_edge1110 ], [ %.pre1188, %.preheader1001 ]
  %i.apo = phi i16 [ %i.aqb, %._crit_edge1110 ], [ %i.apm, %.preheader1001 ]
  %i.app = phi i16 [ %i.aqc, %._crit_edge1110 ], [ %.pre1188, %.preheader1001 ]
  %.05941115 = phi i32 [ %.1595.lcssa, %._crit_edge1110 ], [ 0, %.preheader1001 ] ; 2 uses
  %.05991114 = phi i32 [ %i.aqd, %._crit_edge1110 ], [ 0, %.preheader1001 ] ; 3 uses
  %.16011113 = phi i32 [ %.2602.lcssa, %._crit_edge1110 ], [ %.06001120, %.preheader1001 ] ; 2 uses
  %.not1135 = icmp eq i16 %i.app, 0
  br i1 %.not1135, label %._crit_edge1110, label %.lr.ph1109.preheader

.lr.ph1109.preheader:                             ; preds = %.preheader
  %i.apq = sext i32 %.16011113 to i64
  br label %.lr.ph1109

.lr.ph1109:                                       ; preds = %.lr.ph1109.preheader, %.lr.ph1109
  %indvars.iv1165 = phi i64 [ %i.apq, %.lr.ph1109.preheader ], [ %indvars.iv.next1166, %.lr.ph1109 ] ; 2 uses
  %.15951108 = phi i32 [ %.05941115, %.lr.ph1109.preheader ], [ %.2596, %.lr.ph1109 ]
  %.05971107 = phi i32 [ -1, %.lr.ph1109.preheader ], [ %.1598, %.lr.ph1109 ] ; 2 uses
  %.46451105 = phi i32 [ 0, %.lr.ph1109.preheader ], [ %i.apv, %.lr.ph1109 ]
  %i.apr = load ptr, ptr %i.m, align 8
  %i.aps = load ptr, ptr %i.apr, align 8
  %i.apt = call i32 @slurm_bit_test(ptr noundef %i.aps, i64 noundef %indvars.iv1165) #9
  %.not861 = icmp ne i32 %i.apt, 0                ; 2 uses
  %.not862 = icmp ne i32 %.05991114, %.05971107
  %or.cond918.not = select i1 %.not861, i1 %.not862, i1 false
  %.1598 = select i1 %.not861, i32 %.05991114, i32 %.05971107
  %i.apu = zext i1 %or.cond918.not to i32
  %.2596 = add nsw i32 %.15951108, %i.apu         ; 2 uses
  %indvars.iv.next1166 = add nsw i64 %indvars.iv1165, 1 ; 2 uses
  %i.apv = add nuw nsw i32 %.46451105, 1          ; 2 uses
  %i.apw = load i16, ptr %.phi.trans.insert1187, align 2 ; 3 uses
  %i.apx = zext i16 %i.apw to i32
  %i.apy = icmp samesign ult i32 %i.apv, %i.apx
  br i1 %i.apy, label %.lr.ph1109, label %._crit_edge1110.loopexit, !llvm.loop !42

._crit_edge1110.loopexit:                         ; preds = %.lr.ph1109
  %i.apz = trunc nsw i64 %indvars.iv.next1166 to i32
  %.pre1186 = load i16, ptr %i.apl, align 2
  br label %._crit_edge1110

._crit_edge1110:                                  ; preds = %._crit_edge1110.loopexit, %.preheader
  %i.aqa = phi i16 [ %i.apn, %.preheader ], [ %i.apw, %._crit_edge1110.loopexit ] ; 2 uses
  %i.aqb = phi i16 [ %i.apo, %.preheader ], [ %.pre1186, %._crit_edge1110.loopexit ] ; 2 uses
  %i.aqc = phi i16 [ 0, %.preheader ], [ %i.apw, %._crit_edge1110.loopexit ]
  %.2602.lcssa = phi i32 [ %.16011113, %.preheader ], [ %i.apz, %._crit_edge1110.loopexit ] ; 2 uses
  %.1595.lcssa = phi i32 [ %.05941115, %.preheader ], [ %.2596, %._crit_edge1110.loopexit ] ; 2 uses
  %i.aqd = add nuw nsw i32 %.05991114, 1          ; 2 uses
  %i.aqe = zext i16 %i.aqb to i32
  %i.aqf = icmp samesign ult i32 %i.aqd, %i.aqe
  br i1 %i.aqf, label %.preheader, label %._crit_edge1116, !llvm.loop !43

._crit_edge1116:                                  ; preds = %._crit_edge1110, %.preheader1001
  %i.aqg = phi i16 [ %.pre1188, %.preheader1001 ], [ %i.aqa, %._crit_edge1110 ]
  %.1601.lcssa = phi i32 [ %.06001120, %.preheader1001 ], [ %.2602.lcssa, %._crit_edge1110 ]
  %.0594.lcssa = phi i32 [ 0, %.preheader1001 ], [ %.1595.lcssa, %._crit_edge1110 ]
  %i.aqh = zext i16 %i.aqg to i32
  %i.aqi = mul nsw i32 %.0594.lcssa, %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.apk, i64 568
  %i.aqk = load i16, ptr %i.aqj, align 8
  %i.aql = zext i16 %i.aqk to i32
  %i.aqm = mul nsw i32 %i.aqi, %i.aql
  %i.aqn = load i32, ptr %i.apf, align 8
  %i.aqo = add i32 %i.aqm, %i.aqn
  store i32 %i.aqo, ptr %i.apf, align 8
  %i.aqp = load i32, ptr %i.n, align 4
  %i.aqq = add nsw i32 %i.aqp, 1
  store i32 %i.aqq, ptr %i.n, align 4
  %i.aqr = load ptr, ptr %i.m, align 8
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 96
  %i.aqt = load ptr, ptr %i.aqs, align 8
  %i.aqu = call ptr @next_node_bitmap(ptr noundef %i.aqt, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not860 = icmp eq ptr %i.aqu, null
  br i1 %.not860, label %.loopexit, label %.preheader1001, !llvm.loop !44

.loopexit.sink.split:                             ; preds = %bb.le
  %i.aqv = icmp slt i32 %i.aoi, 0
  %..0627.lcssa = select i1 %i.aqv, i32 %.0664.lcssa, i32 %i.aoi
  store i32 %..0627.lcssa, ptr %i.apf, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph1104, %._crit_edge1116, %.loopexit.sink.split, %bb.ld, %bb.lf
  %.not865 = icmp eq i32 %5, 0
  br i1 %.not865, label %bb.lk, label %bb.lg

bb.lg:                                            ; preds = %.loopexit
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  %i.aqx = load ptr, ptr %i.aqw, align 8
  %.not876 = icmp eq ptr %i.aqx, null
  br i1 %.not876, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @slurm_bit_free(ptr noundef nonnull %i.aqw) #9
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  store ptr null, ptr %i.aqw, align 8
  %i.aqy = load ptr, ptr %i.v, align 8
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 96
  %i.ara = load ptr, ptr %i.aqz, align 8
  %i.arb = call ptr @bit_copy(ptr noundef %i.ara) #9
  store ptr %i.arb, ptr %i.aqw, align 8
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ard = load i32, ptr %i.arc, align 8
  %.not877 = icmp eq i32 %i.ard, 0
  br i1 %.not877, label %.critedge, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  call void @free_job_resources(ptr noundef nonnull %i.v) #9
  br label %.critedge

bb.lk:                                            ; preds = %.loopexit
  %i.are = and i16 %6, 16
  %.not866 = icmp eq i16 %i.are, 0
  br i1 %.not866, label %.critedge, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.arg = load i64, ptr %i.arf, align 8
  %i.arh = and i64 %i.arg, 8388608
  %.not867 = icmp eq i64 %i.arh, 0
  br i1 %.not867, label %bb.lm, label %bb.lp

bb.lm:                                            ; preds = %bb.ll
  %i.ari = load ptr, ptr %i.hr, align 8
  %i.arj = load ptr, ptr %i.m, align 8
  %i.ark = call zeroext i1 @gres_select_util_job_mem_set(ptr noundef %i.ari, ptr noundef %i.arj) #9
  br i1 %i.ark, label %bb.ln, label %bb.lp

bb.ln:                                            ; preds = %bb.lm
  %i.arl = call i32 @get_log_level() #9
  %i.arm = icmp sgt i32 %i.arl, 4
  br i1 %i.arm, label %bb.lo, label %.critedge

bb.lo:                                            ; preds = %bb.ln
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.54, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef nonnull %0) #9
  br label %.critedge

bb.lp:                                            ; preds = %bb.lm, %bb.ll
  %i.arn = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.aro = load i64, ptr %i.arn, align 8          ; 4 uses
  store i32 0, ptr %i.n, align 4
  %i.arp = load ptr, ptr %i.m, align 8
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 96
  %i.arr = load ptr, ptr %i.arq, align 8
  %i.ars = call ptr @next_node_bitmap(ptr noundef %i.arr, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not8691121 = icmp eq ptr %i.ars, null
  br i1 %.not8691121, label %.critedge, label %.lr.ph1126

.lr.ph1126:                                       ; preds = %bb.lp
  %.not870 = icmp sgt i64 %i.aro, -1
  %i.art = and i64 %i.aro, 9223372036854775807
  %.not871 = icmp eq i64 %i.aro, 0
  br label %bb.lq

bb.lq:                                            ; preds = %.lr.ph1126, %.thread987
  %i.aru = phi ptr [ %i.ars, %.lr.ph1126 ], [ %i.atq, %.thread987 ] ; 3 uses
  %.46401122 = phi i32 [ 0, %.lr.ph1126 ], [ %i.atl, %.thread987 ] ; 3 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 280
  %i.arw = load ptr, ptr %i.arv, align 8          ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 408
  %i.ary = load i64, ptr %i.arx, align 8
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aru, i64 272
  %i.asa = load i64, ptr %i.arz, align 8
  %i.asb = sub i64 %i.ary, %i.asa                 ; 4 uses
  br i1 %.not870, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.asc = load ptr, ptr %i.m, align 8
  %i.asd = load i32, ptr %i.n, align 4
  %i.ase = call zeroext i16 @job_resources_get_node_cpu_cnt(ptr noundef %i.asc, i32 noundef %.46401122, i32 noundef %i.asd) #9
  %i.asf = zext i16 %i.ase to i64
  %i.asg = mul i64 %i.art, %i.asf
  br label %bb.lx

bb.ls:                                            ; preds = %bb.lq
  br i1 %.not871, label %bb.lt, label %bb.lx

bb.lt:                                            ; preds = %bb.ls
  %i.ash = load i32, ptr %i.n, align 4            ; 2 uses
  %i.asi = sext i32 %i.ash to i64
  %i.asj = getelementptr inbounds [32 x i8], ptr %9, i64 %i.asi
  %i.ask = load i64, ptr %i.asj, align 8
  %.not872 = icmp eq i64 %i.ask, 0
  br i1 %.not872, label %.thread987, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.asl = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.asm = and i64 %i.asl, 1
  %.not873 = icmp eq i64 %i.asm, 0
  br i1 %.not873, label %bb.md, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.asn = call i32 @get_log_level() #9
  %i.aso = icmp sgt i32 %i.asn, 3
  br i1 %i.aso, label %bb.lw, label %bb.md

bb.lw:                                            ; preds = %bb.lv
  %i.asp = load i32, ptr %i.n, align 4
  %i.asq = sext i32 %i.asp to i64
  %i.asr = getelementptr inbounds [32 x i8], ptr %9, i64 %i.asq
  %i.ass = load i64, ptr %i.asr, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.55, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef %i.arw, i64 noundef %i.ass, ptr noundef %0) #9
  br label %bb.md

bb.lx:                                            ; preds = %bb.ls, %bb.lr
  %.0625.ph = phi i64 [ %i.aro, %bb.ls ], [ %i.asg, %bb.lr ] ; 3 uses
  %i.ast = load i32, ptr %i.n, align 4            ; 2 uses
  %i.asu = sext i32 %i.ast to i64
  %i.asv = getelementptr inbounds [32 x i8], ptr %9, i64 %i.asu
  %i.asw = load i64, ptr %i.asv, align 8          ; 3 uses
  %i.asx = icmp ugt i64 %i.asw, %i.asb
  br i1 %i.asx, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  %i.asy = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.56, ptr noundef %i.arw, i64 noundef %i.asw, i64 noundef %i.asb, ptr noundef %0) #9 ; 0 uses
  br label %bb.md

bb.lz:                                            ; preds = %bb.lx
  %i.asz = sub nuw i64 %i.asb, %i.asw             ; 2 uses
  %i.ata = icmp ugt i64 %.0625.ph, %i.asz
  br i1 %i.ata, label %bb.ma, label %.thread987

bb.ma:                                            ; preds = %bb.lz
  %i.atb = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.atc = and i64 %i.atb, 1
  %.not875 = icmp eq i64 %i.atc, 0
  br i1 %.not875, label %bb.md, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.atd = call i32 @get_log_level() #9
  %i.ate = icmp sgt i32 %i.atd, 3
  br i1 %i.ate, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.57, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._job_test, ptr noundef %0, ptr noundef %i.arw, i64 noundef %.0625.ph, i64 noundef %i.asz) #9
  br label %bb.md

.thread987:                                       ; preds = %bb.lt, %bb.lz
  %i.atf = phi i32 [ %i.ast, %bb.lz ], [ %i.ash, %bb.lt ]
  %.0625984992 = phi i64 [ %.0625.ph, %bb.lz ], [ %i.asb, %bb.lt ]
  %i.atg = load ptr, ptr %i.m, align 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 72
  %i.ati = load ptr, ptr %i.ath, align 8
  %i.atj = zext i32 %.46401122 to i64
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %i.ati, i64 %i.atj
  store i64 %.0625984992, ptr %i.atk, align 8
  %i.atl = add i32 %.46401122, 1
  %i.atm = add nsw i32 %i.atf, 1
  store i32 %i.atm, ptr %i.n, align 4
  %i.atn = load ptr, ptr %i.m, align 8
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 96
  %i.atp = load ptr, ptr %i.ato, align 8
  %i.atq = call ptr @next_node_bitmap(ptr noundef %i.atp, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not869 = icmp eq ptr %i.atq, null
  br i1 %.not869, label %.critedge, label %bb.lq, !llvm.loop !45

bb.md:                                            ; preds = %bb.ly, %bb.lu, %bb.lv, %bb.lw, %bb.mb, %bb.mc, %bb.ma
  call void @free_job_resources(ptr noundef nonnull %i.v) #9
  br label %.critedge

.critedge:                                        ; preds = %.thread987, %bb.lp, %bb.bm, %bb.bl, %bb.bi, %bb.bh, %bb.bg, %bb.bk, %bb.lo, %bb.ln, %.thread957, %_verify_node_state.exit, %bb.bd, %bb.md, %bb.lk, %bb.li, %bb.lj, %bb.dn, %bb.dp, %bb.do, %.thread971, %bb.jr, %bb.jd, %bb.iz, %bb.dw, %bb.dj
  %.6 = phi i32 [ -1, %_verify_node_state.exit ], [ 22, %bb.jd ], [ %i.agm, %bb.jr ], [ -1, %.thread957 ], [ %.4657974, %.thread971 ], [ 0, %bb.dn ], [ 0, %bb.lk ], [ 0, %bb.li ], [ %i.ace, %bb.iz ], [ %i.nz, %bb.dw ], [ %i.nn, %bb.dj ], [ 0, %bb.ln ], [ -1, %bb.bd ], [ 0, %bb.do ], [ 0, %bb.dp ], [ 0, %bb.lj ], [ -1, %bb.md ], [ 2040, %bb.bm ], [ 0, %bb.lo ], [ 2040, %bb.bk ], [ 2040, %bb.bg ], [ 2040, %bb.bh ], [ 2040, %bb.bi ], [ 2040, %bb.bl ], [ 0, %bb.lp ], [ 0, %.thread987 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
end_hunk_3
begin_hunk_4_@_can_job_run_on_node:bb.a
  %.not24.i = icmp eq ptr %i.la, null
  %i.lb = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.lc = and i64 %i.lb, 1
  %.not25.i = icmp eq i64 %i.lc, 0                ; 2 uses
  br i1 %.not24.i, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not25.i, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ld = call i32 @get_log_level() #9
  %i.le = icmp sgt i32 %i.ld, 3
  br i1 %i.le, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.lf = load ptr, ptr %i.kx, align 8
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %indvars.iv.i
  %i.lh = load i16, ptr %i.lg, align 2
  %i.li = zext i16 %i.lh to i32
  %i.lj = load ptr, ptr %i.a, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.89, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._avail_res_log, i32 noundef %i.kz, i32 noundef %i.li, ptr noundef %i.lj) #9
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cr
  br i1 %.not25.i, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lk = call i32 @get_log_level() #9
  %i.ll = icmp sgt i32 %i.lk, 3
  br i1 %i.ll, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.lm = load ptr, ptr %i.kx, align 8
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %indvars.iv.i
  %i.lo = load i16, ptr %i.ln, align 2
  %i.lp = zext i16 %i.lo to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.90, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._avail_res_log, i32 noundef %i.kz, i32 noundef %i.lp) #9
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lq = load i16, ptr %i.kv, align 4
  %i.lr = zext i16 %i.lq to i64
  %i.ls = icmp samesign ult i64 %indvars.iv.next.i, %i.lr
  br i1 %i.ls, label %bb.cr, label %_avail_res_log.exit, !llvm.loop !61

_avail_res_log.exit:                              ; preds = %bb.cz, %bb.ci, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.da

bb.da:                                            ; preds = %bb.bg, %bb.ai, %bb.aj, %bb.u, %bb.w, %bb.v, %bb.p, %bb.r, %bb.q, %bb.e, %bb.g, %bb.f, %_avail_res_log.exit, %_free_avail_res.exit225
  %.1170 = phi ptr [ null, %bb.p ], [ null, %bb.u ], [ null, %_free_avail_res.exit225 ], [ %i.df, %_avail_res_log.exit ], [ null, %bb.bg ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.aj ], [ null, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret ptr %.1170
}

declare i32 @topology_g_eval_node(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gres_sock_list_create(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @hres_select_find_leaf(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gres_select_filter_remove_unusable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bit_clear_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_allocate_sc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i16, ptr %i.d, align 8              ; 12 uses
  %i.f = load ptr, ptr @node_record_table_ptr, align 8
  %i.g = zext i32 %3 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 554
  %i.k = load i16, ptr %i.j, align 2              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 90
  %i.m = load i16, ptr %i.l, align 2              ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 568 ; 3 uses
  %i.o = load i16, ptr %i.n, align 8              ; 7 uses
  %i.p = zext i16 %i.k to i64                     ; 17 uses
  %i.q = alloca i16, i64 %i.p, align 16           ; 18 uses
  %i.r = alloca i16, i64 %i.p, align 16           ; 3 uses
  %i.s = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 56, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 3391, ptr noundef nonnull @__func__._allocate_sc) #9 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  %i.t = shl nuw nsw i64 %i.p, 1                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.q, i8 0, i64 %i.t, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.r, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.v = load i8, ptr %i.u, align 8
  %i.w = trunc i8 %i.v to i1
  %or.cond = and i1 %5, %i.w
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 66
  %i.y = load i16, ptr %i.x, align 2
  %.not = icmp eq i16 %i.y, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0317.shrunk = phi i1 [ %5, %bb.a ], [ %.not, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.aa = load ptr, ptr %i.z, align 8             ; 6 uses
  %.not406 = icmp eq ptr %i.aa, null
  br i1 %.not406, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ae = load i16, ptr %i.ad, align 2            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.ag = load i16, ptr %i.af, align 2            ; 3 uses
  %i.ah = zext i16 %i.ag to i32
  %.off = add i16 %i.ag, -1
  %switch = icmp ult i16 %.off, -2                ; 2 uses
  %i.ai = zext i16 %i.o to i32                    ; 2 uses
  %i.aj = zext i16 %i.e to i32
  %i.ak = mul nuw nsw i32 %i.ah, %i.aj
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.ai)
  %i.am = trunc nuw i32 %i.al to i16
  %.0340 = select i1 %switch, i16 %i.am, i16 -1   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %.not411.not = icmp eq i16 %i.ao, -2
  %i.ap = tail call i16 @llvm.umin.i16(i16 %i.ao, i16 %.0340)
  %.1341 = select i1 %.not411.not, i16 %.0340, i16 %i.ap ; 4 uses
  %i.aq = load i32, ptr %4, align 4
  %i.ar = zext i16 %.1341 to i32
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ar)
  store i32 %i.as, ptr %4, align 4
  %.not412 = icmp ne i16 %.1341, -1
  %i.at = icmp ugt i16 %.1341, %i.o
  %or.cond454 = select i1 %.not412, i1 %i.at, i1 false
  br i1 %or.cond454, label %.thread547, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.av = load i16, ptr %i.au, align 2            ; 3 uses
  %.0338 = select i1 %switch, i16 %i.ag, i16 -1
  %.not408 = icmp eq i16 %i.ae, -2
  %.0344 = select i1 %.not408, i16 1, i16 %i.ae
  %.not407 = icmp eq i16 %i.ac, -2
  %spec.select452 = select i1 %.not407, i16 1, i16 %i.ac
  %.not413 = icmp ne i16 %i.av, -1
  %i.aw = zext i16 %i.av to i32
  %i.ax = zext i16 %i.m to i32
  %i.ay = mul nuw nsw i32 %i.ai, %i.ax
  %i.az = icmp samesign ult i32 %i.ay, %i.aw
  %or.cond459 = select i1 %.not413, i1 %i.az, i1 false
  br i1 %or.cond459, label %.thread547, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1347.a = phi i16 [ 1, %bb.c ], [ %spec.select452, %bb.e ] ; 2 uses
  %.1345 = phi i16 [ 1, %bb.c ], [ %.0344, %bb.e ]
  %.0343 = phi i16 [ 0, %bb.c ], [ %i.av, %bb.e ]
  %.2342 = phi i16 [ -1, %bb.c ], [ %.1341, %bb.e ]
  %.1339 = phi i16 [ -1, %bb.c ], [ %.0338, %bb.e ] ; 4 uses
  %.0343.fr = freeze i16 %.0343                   ; 7 uses
  %.not414 = icmp eq ptr %2, null
  br i1 %.not414, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call ptr @bit_copy(ptr noundef nonnull %2) #9 ; 3 uses
  store ptr %i.ba, ptr %i.a, align 8
  tail call void @bit_and_not(ptr noundef %i.ba, ptr noundef %1) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = phi ptr [ %i.ba, %bb.g ], [ null, %bb.f ] ; 3 uses
  %i.bc = zext i16 %i.m to i32                    ; 5 uses
  %.not638 = icmp eq i16 %i.k, 0                  ; 3 uses
  br i1 %.not638, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.h
  %.pre725 = zext i16 %i.o to i32
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %.not446 = icmp eq ptr %i.bb, null              ; 2 uses
  %i.bd = zext i16 %i.o to i32                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.bf = phi i32 [ 0, %.lr.ph ], [ %i.cs, %bb.s ]
  %.0322562 = phi i32 [ %i.bc, %.lr.ph ], [ %i.co, %bb.s ] ; 5 uses
  %.0324561 = phi i32 [ 0, %.lr.ph ], [ %.0322562, %bb.s ] ; 2 uses
  %.0336560 = phi i16 [ 0, %.lr.ph ], [ %i.cq, %bb.s ]
  %.0349558 = phi i32 [ 0, %.lr.ph ], [ %.1337, %bb.s ]
  %i.bg = tail call i32 @bit_set_count_range(ptr noundef %1, i32 noundef %.0324561, i32 noundef %.0322562) #9 ; 2 uses
  %i.bh = trunc i32 %i.bg to i16                  ; 5 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv ; 4 uses
  store i16 %i.bh, ptr %i.bi, align 2
  br i1 %.not446, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bj = sub i16 %i.m, %i.bh                     ; 2 uses
  %i.bk = mul i16 %i.bj, %i.o                     ; 2 uses
  %i.bl = add nuw i32 %.0322562, %i.bc            ; 2 uses
  %i.bm = icmp ne i16 %i.bk, 0
  %or.cond4 = select i1 %.0317.shrunk, i1 %i.bm, i1 false
  br i1 %or.cond4, label %bb.k, label %._crit_edge722

.thread:                                          ; preds = %bb.i
  %i.bn = tail call i32 @bit_set_count_range(ptr noundef nonnull %i.bb, i32 noundef %.0324561, i32 noundef %.0322562) #9
  %i.bo = trunc i32 %i.bn to i16                  ; 2 uses
  %i.bp = mul i16 %i.o, %i.bo                     ; 2 uses
  %i.bq = add nuw i32 %.0322562, %i.bc            ; 3 uses
  %i.br = zext i16 %i.bp to i32                   ; 4 uses
  %i.bs = icmp ne i16 %i.bp, 0
  %or.cond4750 = select i1 %.0317.shrunk, i1 %i.bs, i1 false
  br i1 %or.cond4750, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bt = phi i32 [ %i.bq, %.thread ], [ %i.bl, %bb.j ]
  %.sink751 = phi i16 [ %i.bo, %.thread ], [ %i.bj, %bb.j ]
  %i.bu = add i16 %.sink751, %i.bh
  %i.bv = mul i16 %i.bu, %i.o
  store i16 0, ptr %i.bi, align 2
  %.pre724 = zext i16 %i.bv to i32
  br label %bb.s

._crit_edge722:                                   ; preds = %bb.j
  %i.bw = zext i16 %i.bk to i32
  %.pre = load ptr, ptr %i.be, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 188
  %.pre723 = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.q

bb.l:                                             ; preds = %.thread
  %.pre753 = load ptr, ptr %i.be, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre753, i64 188
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %.not448 = icmp ugt i32 %i.by, %i.br
  br i1 %.not448, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ca = and i64 %i.bz, 1
  %.not450 = icmp eq i64 %i.ca, 0
  br i1 %.not450, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = tail call i32 @get_log_level() #9
  %i.cc = icmp sgt i32 %i.cb, 3
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr %i.be, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 188
  %i.cf = load i32, ptr %i.ce, align 4
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.83, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._allocate_sc, i32 noundef %i.cf, i32 noundef %i.bf, i32 noundef %i.br) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  store i16 0, ptr %i.bi, align 2
  br label %bb.s

bb.q:                                             ; preds = %._crit_edge722, %bb.l
  %i.cg = phi i32 [ %i.bl, %._crit_edge722 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.ch = phi i32 [ %i.bw, %._crit_edge722 ], [ %i.br, %bb.l ] ; 2 uses
  %i.ci = phi i32 [ %.pre723, %._crit_edge722 ], [ %i.by, %bb.l ] ; 2 uses
  %.not449 = icmp eq i32 %i.ci, -1
  br i1 %.not449, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = and i32 %i.bg, 65535
  %i.ck = udiv i32 %i.ci, %i.bd                   ; 2 uses
  %i.cl = icmp ugt i32 %i.ck, %i.cj
  %i.cm = trunc nuw i32 %i.ck to i16
  %i.cn = select i1 %i.cl, i16 %i.bh, i16 %i.cm   ; 2 uses
  store i16 %i.cn, ptr %i.bi, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %bb.k
  %i.co = phi i32 [ %i.bq, %bb.p ], [ %i.cg, %bb.r ], [ %i.cg, %bb.q ], [ %i.bt, %bb.k ]
  %.pre-phi = phi i32 [ %i.br, %bb.p ], [ %i.ch, %bb.r ], [ %i.ch, %bb.q ], [ %.pre724, %bb.k ]
  %i.cp = phi i16 [ 0, %bb.p ], [ %i.cn, %bb.r ], [ %i.bh, %bb.q ], [ 0, %bb.k ]
  %i.cq = add i16 %i.cp, %.0336560                ; 2 uses
  %i.cr = select i1 %.not446, i32 0, i32 %.pre-phi
  %.1337 = add i32 %i.cr, %.0349558               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cs = trunc nuw i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.s, %.._crit_edge_crit_edge
  %.pre-phi726 = phi i32 [ %.pre725, %.._crit_edge_crit_edge ], [ %i.bd, %bb.s ]
  %.0349.lcssa = phi i32 [ 0, %.._crit_edge_crit_edge ], [ %.1337, %bb.s ] ; 3 uses
  %.0336.lcssa = phi i16 [ 0, %.._crit_edge_crit_edge ], [ %i.cq, %bb.s ] ; 4 uses
  %i.ct = zext i16 %.0336.lcssa to i32
  %i.cu = mul nuw nsw i32 %.pre-phi726, %i.ct     ; 2 uses
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i16 %i.cv, ptr %i.cw, align 8
  %.not415 = icmp eq ptr %i.bb, null
  br i1 %.not415, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  store ptr null, ptr %i.a, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 184
  %i.da = load i32, ptr %i.cz, align 8            ; 4 uses
  %.not416 = icmp eq i32 %i.da, -1
  br i1 %.not416, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = add i32 %i.cu, %.0349.lcssa             ; 2 uses
  %i.dc = icmp ugt i32 %i.db, %i.da
  br i1 %i.dc, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.dd = load ptr, ptr %i.b, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 512
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = and i8 %i.df, 1
  %.not417 = icmp eq i8 %i.dg, 0
  br i1 %.not417, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.di = and i64 %i.dh, 1
  %.not441 = icmp eq i64 %i.di, 0
  br i1 %.not441, label %.thread547, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = call i32 @get_log_level() #9
  %i.dk = icmp sgt i32 %i.dj, 3
  br i1 %i.dk, label %bb.z, label %.thread547

bb.z:                                             ; preds = %bb.y
  %i.dl = load ptr, ptr %i.cx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 184
  %i.dn = load i32, ptr %i.dm, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.84, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._allocate_sc, i32 noundef %i.db, i32 noundef %i.dn) #9
  br label %.thread547

bb.aa:                                            ; preds = %bb.w
  %.not418 = icmp ult i32 %.0349.lcssa, %i.da
  br i1 %.not418, label %bb.ab, label %.thread547

bb.ab:                                            ; preds = %bb.aa
  %i.do = sub nuw i32 %i.da, %.0349.lcssa         ; 2 uses
  %i.dp = trunc i32 %i.do to i16                  ; 4 uses
  %i.dq = and i32 %i.do, 65535
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.1339.off = add i16 %.1339, -2
  %switch475 = icmp ult i16 %.1339.off, -3
  %.0343.off = add i16 %.0343.fr, -2
  %switch476 = icmp ult i16 %.0343.off, -3
  %or.cond477 = or i1 %switch476, %switch475
  br i1 %or.cond477, label %.thread547, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = add i16 %.2342, -2
  %or.cond462 = icmp ult i16 %i.ds, -3
  %i.dt = icmp ugt i16 %i.e, 1
  %or.cond463 = select i1 %or.cond462, i1 true, i1 %i.dt
  br i1 %or.cond463, label %.thread547, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.v, %bb.u
  %.0318 = phi i16 [ %i.dp, %bb.ad ], [ %i.dp, %bb.ab ], [ -1, %bb.v ], [ -1, %bb.u ] ; 7 uses
  br i1 %.not638, label %._crit_edge569, label %.lr.ph568.preheader

.lr.ph568.preheader:                              ; preds = %bb.ae
  %min.iters.check = icmp ult i16 %i.k, 8
  br i1 %min.iters.check, label %.lr.ph568.preheader857, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph568.preheader
  %n.vec = and i64 %i.p, 65528                    ; 3 uses
  %i.du = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.0336.lcssa, i64 0
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.1347.a, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue803, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue803 ] ; 9 uses
  %vec.phi = phi <8 x i16> [ %i.du, %vector.ph ], [ %predphi804, %pred.store.continue803 ]
  %vec.phi789 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %predphi, %pred.store.continue803 ]
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.dv, align 16 ; 2 uses
  %i.dw = icmp ult <8 x i16> %wide.load, %broadcast.splat ; 10 uses
  %i.dx = extractelement <8 x i1> %i.dw, i64 0
  br i1 %i.dx, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 0, ptr %i.dv, align 16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dy = extractelement <8 x i1> %i.dw, i64 1
  br i1 %i.dy, label %pred.store.if790, label %pred.store.continue791

pred.store.if790:                                 ; preds = %pred.store.continue
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  store i16 0, ptr %i.ea, align 2
  br label %pred.store.continue791

pred.store.continue791:                           ; preds = %pred.store.if790, %pred.store.continue
  %i.eb = extractelement <8 x i1> %i.dw, i64 2
  br i1 %i.eb, label %pred.store.if792, label %pred.store.continue793

pred.store.if792:                                 ; preds = %pred.store.continue791
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i16 0, ptr %i.ed, align 4
  br label %pred.store.continue793

pred.store.continue793:                           ; preds = %pred.store.if792, %pred.store.continue791
  %i.ee = extractelement <8 x i1> %i.dw, i64 3
  br i1 %i.ee, label %pred.store.if794, label %pred.store.continue795

pred.store.if794:                                 ; preds = %pred.store.continue793
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 6
  store i16 0, ptr %i.eg, align 2
  br label %pred.store.continue795

pred.store.continue795:                           ; preds = %pred.store.if794, %pred.store.continue793
  %i.eh = extractelement <8 x i1> %i.dw, i64 4
  br i1 %i.eh, label %pred.store.if796, label %pred.store.continue797

pred.store.if796:                                 ; preds = %pred.store.continue795
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i16 0, ptr %i.ej, align 8
  br label %pred.store.continue797

pred.store.continue797:                           ; preds = %pred.store.if796, %pred.store.continue795
  %i.ek = extractelement <8 x i1> %i.dw, i64 5
  br i1 %i.ek, label %pred.store.if798, label %pred.store.continue799

pred.store.if798:                                 ; preds = %pred.store.continue797
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 10
  store i16 0, ptr %i.em, align 2
  br label %pred.store.continue799

pred.store.continue799:                           ; preds = %pred.store.if798, %pred.store.continue797
  %i.en = extractelement <8 x i1> %i.dw, i64 6
  br i1 %i.en, label %pred.store.if800, label %pred.store.continue801

pred.store.if800:                                 ; preds = %pred.store.continue799
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i16 0, ptr %i.ep, align 4
  br label %pred.store.continue801

pred.store.continue801:                           ; preds = %pred.store.if800, %pred.store.continue799
  %i.eq = extractelement <8 x i1> %i.dw, i64 7
  br i1 %i.eq, label %pred.store.if802, label %pred.store.continue803

pred.store.if802:                                 ; preds = %pred.store.continue801
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 14
  store i16 0, ptr %i.es, align 2
  br label %pred.store.continue803

pred.store.continue803:                           ; preds = %pred.store.if802, %pred.store.continue801
  %not. = xor <8 x i1> %i.dw, splat (i1 true)
  %7 = zext <8 x i1> %not. to <8 x i16>
  %predphi = add <8 x i16> %vec.phi789, %7        ; 2 uses
  %8 = select <8 x i1> %i.dw, <8 x i16> %wide.load, <8 x i16> zeroinitializer
  %predphi804 = sub <8 x i16> %vec.phi, %8        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %pred.store.continue803
  %i.eu = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %predphi804) ; 2 uses
  %i.ev = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %predphi) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %._crit_edge569, label %.lr.ph568.preheader857

.lr.ph568.preheader857:                           ; preds = %.lr.ph568.preheader, %middle.block
  %indvars.iv678.ph = phi i64 [ 0, %.lr.ph568.preheader ], [ %n.vec, %middle.block ]
  %.0348566.ph = phi i16 [ %.0336.lcssa, %.lr.ph568.preheader ], [ %i.eu, %middle.block ]
  %.1359564.ph = phi i16 [ 0, %.lr.ph568.preheader ], [ %i.ev, %middle.block ]
  br label %.lr.ph568

.lr.ph568:                                        ; preds = %.lr.ph568.preheader857, %bb.ah
  %indvars.iv678 = phi i64 [ %indvars.iv.next679, %bb.ah ], [ %indvars.iv678.ph, %.lr.ph568.preheader857 ] ; 2 uses
  %.0348566 = phi i16 [ %.1349, %bb.ah ], [ %.0348566.ph, %.lr.ph568.preheader857 ] ; 2 uses
  %.1359564 = phi i16 [ %.2360, %bb.ah ], [ %.1359564.ph, %.lr.ph568.preheader857 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv678 ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2            ; 2 uses
  %i.ey = icmp ult i16 %i.ex, %.1347.a
  br i1 %i.ey, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph568
  %i.ez = sub i16 %.0348566, %i.ex
  store i16 0, ptr %i.ew, align 2
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph568
  %i.fa = add i16 %.1359564, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.2360 = phi i16 [ %.1359564, %bb.af ], [ %i.fa, %bb.ag ] ; 2 uses
  %.1349 = phi i16 [ %i.ez, %bb.af ], [ %.0348566, %bb.ag ] ; 2 uses
  %indvars.iv.next679 = add nuw nsw i64 %indvars.iv678, 1 ; 2 uses
  %exitcond682.not = icmp eq i64 %indvars.iv.next679, %i.p
  br i1 %exitcond682.not, label %._crit_edge569, label %.lr.ph568, !llvm.loop !66

._crit_edge569:                                   ; preds = %bb.ah, %middle.block, %bb.ae
  %.1359.lcssa = phi i16 [ 0, %bb.ae ], [ %i.ev, %middle.block ], [ %.2360, %bb.ah ]
  %.0348.lcssa = phi i16 [ %.0336.lcssa, %bb.ae ], [ %i.eu, %middle.block ], [ %.1349, %bb.ah ] ; 2 uses
  %i.fb = icmp ult i16 %.1359.lcssa, %.1345
  %i.fc = icmp eq i16 %.0348.lcssa, 0
  %or.cond474 = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %or.cond474, label %.thread547, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge569
  %i.fd = zext i16 %.0348.lcssa to i32
  %i.fe = call zeroext i16 @job_mgr_determine_cpus_per_core(ptr noundef %i.c, i32 noundef %3) #9 ; 21 uses
  %i.ff = zext i16 %i.fe to i32                   ; 9 uses
  %i.fg = mul nuw nsw i32 %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 308 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = icmp ult i32 %i.fg, %i.fi
  br i1 %i.fj, label %.thread547, label %.preheader554

.preheader554:                                    ; preds = %bb.ai
  br i1 %.not638, label %._crit_edge577, label %.lr.ph576

.lr.ph576:                                        ; preds = %.preheader554
  %.not438 = icmp eq ptr %6, null
  %.not440 = icmp eq i16 %.0343.fr, 0             ; 2 uses
  br i1 %.not438, label %.lr.ph576.split.us, label %.lr.ph576.split

.lr.ph576.split.us:                               ; preds = %.lr.ph576
  %min.iters.check826 = icmp ult i16 %i.k, 8      ; 2 uses
  br i1 %.not440, label %.lr.ph576.split.us.split.us.preheader, label %.lr.ph576.split.us.split.preheader

.lr.ph576.split.us.split.preheader:               ; preds = %.lr.ph576.split.us
  br i1 %min.iters.check826, label %.lr.ph576.split.us.split.preheader850, label %vector.ph808

vector.ph808:                                     ; preds = %.lr.ph576.split.us.split.preheader
  %n.vec809 = and i64 %i.p, 65528                 ; 3 uses
  %broadcast.splatinsert810 = insertelement <8 x i16> poison, i16 %i.fe, i64 0
  %broadcast.splat811 = shufflevector <8 x i16> %broadcast.splatinsert810, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert812 = insertelement <8 x i16> poison, i16 %.0343.fr, i64 0
  %broadcast.splat813 = shufflevector <8 x i16> %broadcast.splatinsert812, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body814

vector.body814:                                   ; preds = %vector.body814, %vector.ph808
  %index815 = phi i64 [ 0, %vector.ph808 ], [ %index.next819, %vector.body814 ] ; 2 uses
  %vec.phi816 = phi <8 x i16> [ zeroinitializer, %vector.ph808 ], [ %i.fo, %vector.body814 ]
  %vec.phi817 = phi <8 x i16> [ zeroinitializer, %vector.ph808 ], [ %i.fm, %vector.body814 ]
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index815
  %wide.load818 = load <8 x i16>, ptr %i.fk, align 16
  %i.fl = mul <8 x i16> %wide.load818, %broadcast.splat811 ; 2 uses
  %i.fm = add <8 x i16> %i.fl, %vec.phi817        ; 2 uses
  %i.fn = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.fl, <8 x i16> %broadcast.splat813)
  %i.fo = add <8 x i16> %i.fn, %vec.phi816        ; 2 uses
  %index.next819 = add nuw i64 %index815, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next819, %n.vec809
  br i1 %i.fp, label %middle.block820, label %vector.body814, !llvm.loop !67

middle.block820:                                  ; preds = %vector.body814
  %i.fq = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.fo) ; 2 uses
  %i.fr = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.fm) ; 2 uses
  %cmp.n821 = icmp eq i64 %n.vec809, %i.p
  br i1 %cmp.n821, label %._crit_edge577, label %.lr.ph576.split.us.split.preheader850

.lr.ph576.split.us.split.preheader850:            ; preds = %.lr.ph576.split.us.split.preheader, %middle.block820
  %indvars.iv688.ph = phi i64 [ 0, %.lr.ph576.split.us.split.preheader ], [ %n.vec809, %middle.block820 ]
  %.0330575.us.ph = phi i16 [ 0, %.lr.ph576.split.us.split.preheader ], [ %i.fq, %middle.block820 ]
  %.0517572.us.ph = phi i16 [ 0, %.lr.ph576.split.us.split.preheader ], [ %i.fr, %middle.block820 ]
  br label %.lr.ph576.split.us.split

.lr.ph576.split.us.split.us.preheader:            ; preds = %.lr.ph576.split.us
  br i1 %min.iters.check826, label %.lr.ph576.split.us.split.us.preheader847, label %vector.ph827

vector.ph827:                                     ; preds = %.lr.ph576.split.us.split.us.preheader
  %n.vec828 = and i64 %i.p, 65528                 ; 3 uses
  %broadcast.splatinsert829 = insertelement <8 x i16> poison, i16 %i.fe, i64 0
  %broadcast.splat830 = shufflevector <8 x i16> %broadcast.splatinsert829, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph827
  %index832 = phi i64 [ 0, %vector.ph827 ], [ %index.next836, %vector.body831 ] ; 2 uses
  %vec.phi833 = phi <8 x i16> [ zeroinitializer, %vector.ph827 ], [ %i.fv, %vector.body831 ]
  %vec.phi834 = phi <8 x i16> [ zeroinitializer, %vector.ph827 ], [ %i.fu, %vector.body831 ]
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index832
  %wide.load835 = load <8 x i16>, ptr %i.fs, align 16
  %i.ft = mul <8 x i16> %wide.load835, %broadcast.splat830 ; 2 uses
  %i.fu = add <8 x i16> %i.ft, %vec.phi834        ; 2 uses
  %i.fv = add <8 x i16> %i.ft, %vec.phi833        ; 2 uses
  %index.next836 = add nuw i64 %index832, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next836, %n.vec828
  br i1 %i.fw, label %middle.block837, label %vector.body831, !llvm.loop !68

middle.block837:                                  ; preds = %vector.body831
  %i.fx = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.fv) ; 2 uses
  %i.fy = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.fu) ; 2 uses
  %cmp.n838 = icmp eq i64 %n.vec828, %i.p
  br i1 %cmp.n838, label %._crit_edge577, label %.lr.ph576.split.us.split.us.preheader847

.lr.ph576.split.us.split.us.preheader847:         ; preds = %.lr.ph576.split.us.split.us.preheader, %middle.block837
  %indvars.iv693.ph = phi i64 [ 0, %.lr.ph576.split.us.split.us.preheader ], [ %n.vec828, %middle.block837 ]
  %.0330575.us.us.ph = phi i16 [ 0, %.lr.ph576.split.us.split.us.preheader ], [ %i.fx, %middle.block837 ]
  %.0517572.us.us.ph = phi i16 [ 0, %.lr.ph576.split.us.split.us.preheader ], [ %i.fy, %middle.block837 ]
  br label %.lr.ph576.split.us.split.us

.lr.ph576.split.us.split.us:                      ; preds = %.lr.ph576.split.us.split.us.preheader847, %.lr.ph576.split.us.split.us
  %indvars.iv693 = phi i64 [ %indvars.iv.next694, %.lr.ph576.split.us.split.us ], [ %indvars.iv693.ph, %.lr.ph576.split.us.split.us.preheader847 ] ; 2 uses
  %.0330575.us.us = phi i16 [ %.1331.us.us, %.lr.ph576.split.us.split.us ], [ %.0330575.us.us.ph, %.lr.ph576.split.us.split.us.preheader847 ]
  %.0517572.us.us = phi i16 [ %i.gc, %.lr.ph576.split.us.split.us ], [ %.0517572.us.us.ph, %.lr.ph576.split.us.split.us.preheader847 ]
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv693
  %i.ga = load i16, ptr %i.fz, align 2
  %i.gb = mul i16 %i.ga, %i.fe                    ; 2 uses
  %i.gc = add i16 %i.gb, %.0517572.us.us          ; 2 uses
  %.1331.us.us = add i16 %i.gb, %.0330575.us.us   ; 2 uses
  %indvars.iv.next694 = add nuw nsw i64 %indvars.iv693, 1 ; 2 uses
  %exitcond697.not = icmp eq i64 %indvars.iv.next694, %i.p
  br i1 %exitcond697.not, label %._crit_edge577, label %.lr.ph576.split.us.split.us, !llvm.loop !69

.lr.ph576.split.us.split:                         ; preds = %.lr.ph576.split.us.split.preheader850, %.lr.ph576.split.us.split
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %.lr.ph576.split.us.split ], [ %indvars.iv688.ph, %.lr.ph576.split.us.split.preheader850 ] ; 2 uses
  %.0330575.us = phi i16 [ %.1331.us, %.lr.ph576.split.us.split ], [ %.0330575.us.ph, %.lr.ph576.split.us.split.preheader850 ]
  %.0517572.us = phi i16 [ %i.gg, %.lr.ph576.split.us.split ], [ %.0517572.us.ph, %.lr.ph576.split.us.split.preheader850 ]
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv688
  %i.ge = load i16, ptr %i.gd, align 2
  %i.gf = mul i16 %i.ge, %i.fe                    ; 2 uses
  %i.gg = add i16 %i.gf, %.0517572.us             ; 2 uses
  %i.gh = call i16 @llvm.umin.i16(i16 %i.gf, i16 %.0343.fr)
  %.1331.us = add i16 %i.gh, %.0330575.us         ; 2 uses
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1 ; 2 uses
  %exitcond692.not = icmp eq i64 %indvars.iv.next689, %i.p
  br i1 %exitcond692.not, label %._crit_edge577, label %.lr.ph576.split.us.split, !llvm.loop !70

.lr.ph576.split:                                  ; preds = %.lr.ph576, %bb.al
  %indvars.iv683 = phi i64 [ %indvars.iv.next684, %bb.al ], [ 0, %.lr.ph576 ] ; 3 uses
  %.0330575 = phi i16 [ %.1331, %bb.al ], [ 0, %.lr.ph576 ]
  %.0332574 = phi i16 [ %.1333, %bb.al ], [ 0, %.lr.ph576 ] ; 2 uses
  %.0517572 = phi i16 [ %i.go, %bb.al ], [ 0, %.lr.ph576 ]
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv683
  %i.gj = load i16, ptr %i.gi, align 2
  %i.gk = mul i16 %i.gj, %i.fe                    ; 5 uses
  %i.gl = call i32 @slurm_bit_test(ptr noundef nonnull %6, i64 noundef %indvars.iv683) #9
  %.not439 = icmp eq i32 %i.gl, 0
  br i1 %.not439, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph576.split
  %i.gm = icmp eq i16 %i.gk, 0
  br i1 %i.gm, label %.thread547, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gn = add i16 %i.gk, %.0332574
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph576.split, %bb.ak
  %.1333 = phi i16 [ %i.gn, %bb.ak ], [ %.0332574, %.lr.ph576.split ] ; 2 uses
  %i.go = add i16 %i.gk, %.0517572                ; 2 uses
  %i.gp = call i16 @llvm.umin.i16(i16 %i.gk, i16 %.0343.fr)
  %.pn = select i1 %.not440, i16 %i.gk, i16 %i.gp
  %.1331 = add i16 %.pn, %.0330575                ; 2 uses
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv683, 1 ; 2 uses
  %exitcond687.not = icmp eq i64 %indvars.iv.next684, %i.p
  br i1 %exitcond687.not, label %._crit_edge577, label %.lr.ph576.split, !llvm.loop !71

._crit_edge577:                                   ; preds = %bb.al, %.lr.ph576.split.us.split, %.lr.ph576.split.us.split.us, %middle.block820, %middle.block837, %.preheader554
  %.0517.lcssa = phi i16 [ 0, %.preheader554 ], [ %i.gg, %.lr.ph576.split.us.split ], [ %i.gc, %.lr.ph576.split.us.split.us ], [ %i.fy, %middle.block837 ], [ %i.fr, %middle.block820 ], [ %i.go, %bb.al ] ; 3 uses
  %.0332.lcssa = phi i16 [ 0, %.preheader554 ], [ 0, %.lr.ph576.split.us.split ], [ 0, %.lr.ph576.split.us.split.us ], [ 0, %middle.block837 ], [ 0, %middle.block820 ], [ %.1333, %bb.al ]
  %.0330.lcssa = phi i16 [ 0, %.preheader554 ], [ %.1331.us, %.lr.ph576.split.us.split ], [ %.1331.us.us, %.lr.ph576.split.us.split.us ], [ %i.fx, %middle.block837 ], [ %i.fq, %middle.block820 ], [ %.1331, %bb.al ] ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.gr = load i16, ptr %i.gq, align 8            ; 4 uses
  %.not422 = icmp eq i16 %i.gr, 0
  br i1 %.not422, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %._crit_edge577
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 442
  %i.gt = load i8, ptr %i.gs, align 2
  %.not423 = icmp eq i8 %i.gt, 0
  br i1 %.not423, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gv = load ptr, ptr %i.gu, align 8
  %.not424 = icmp eq ptr %i.gv, null
  br i1 %.not424, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.0330. = call i16 @llvm.umin.i16(i16 %.0330.lcssa, i16 %i.gr)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %._crit_edge577
  %.3 = phi i16 [ %.0330.lcssa, %bb.an ], [ %.0330., %bb.ao ], [ %.0330.lcssa, %bb.am ], [ %.0330.lcssa, %._crit_edge577 ] ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.gx = load ptr, ptr %i.gw, align 8
  %.not425 = icmp eq ptr %i.gx, null
  br i1 %.not425, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gy = zext i16 %i.e to i32
  %i.gz = icmp ult i16 %i.e, 2
  br i1 %i.gz, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ha = icmp eq i16 %.1339, 1
  %i.hb = icmp ugt i16 %i.e, %i.fe
  %or.cond465 = select i1 %i.ha, i1 %i.hb, i1 false
  br i1 %or.cond465, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hc = add nsw i32 %i.gy, -1
  %i.hd = add nuw nsw i32 %i.hc, %i.ff
  %.fr = freeze i32 %i.hd                         ; 2 uses
  %i.he = urem i32 %.fr, %i.ff
  %i.hf = sub nuw i32 %.fr, %i.he
  %i.hg = zext i16 %.0517.lcssa to i32
  %i.hh = udiv i32 %i.hg, %i.hf
  %i.hi = trunc nuw i32 %i.hh to i16
end_hunk_4
