Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-img?download=true
inline.NumInlined: 83
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@img_convert:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !annotation !9
  %i.bc = call i32 @qemu_strtou64(ptr noundef %i.bb, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a) #22 ; 4 uses
  %i.bd = icmp slt i32 %i.bc, 0
  %i.be = icmp ne i32 %i.bc, -34
  %or.cond.i374 = and i1 %i.bd, %i.be
  br i1 %or.cond.i374, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.214, ptr noundef %i.bb) #22
  %i.bf = sext i32 %i.bc to i64
  br label %cvtnum_full.exit.thread

bb.ai:                                            ; preds = %bb.ag
  %i.bg = icmp eq i32 %i.bc, -34
  br i1 %i.bg, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bh = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bi = add i64 %i.bh, -17
  %or.cond17.i = icmp ult i64 %i.bi, -16
  br i1 %or.cond17.i, label %bb.ak, label %cvtnum_full.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.214, i64 noundef 1, i64 noundef 16) #22
  br label %cvtnum_full.exit.thread

cvtnum_full.exit.thread:                          ; preds = %bb.ah, %bb.ak
  %.0.i.ph = phi i64 [ -34, %bb.ak ], [ %i.bf, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i64 %.0.i.ph, ptr %i.m, align 8
  br label %.thread

cvtnum_full.exit:                                 ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i64 %i.bh, ptr %i.m, align 8
  br label %.backedge

bb.al:                                            ; preds = %bb.b
  store i8 0, ptr %i.j, align 8
  br label %.backedge

bb.am:                                            ; preds = %bb.b
  store i8 1, ptr %i.o, align 1
  br label %.backedge

bb.an:                                            ; preds = %bb.b
  br label %.backedge

bb.ao:                                            ; preds = %bb.b
  store i8 1, ptr %i.n, align 1
  br label %.backedge

bb.ap:                                            ; preds = %bb.b
  %i.bj = load ptr, ptr @optarg, align 8
  call void @user_creatable_process_cmdline(ptr noundef %i.bj) #22
  br label %.backedge

bb.aq:                                            ; preds = %bb.b
  %i.bk = load ptr, ptr %2, align 8
  call fastcc void @tryhelp(ptr noundef %i.bk) #23
  unreachable

bb.ar:                                            ; preds = %bb.b
  %i.bl = icmp ne ptr %.0253, null
  %or.cond = or i1 %i.bl, %.0301
  %spec.store.select = select i1 %or.cond, ptr %.0253, ptr @.str.215 ; 8 uses
  %.not = xor i1 %.0288, true
  %or.cond3 = or i1 %.0290, %.not
  br i1 %or.cond3, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.216) #22
  br label %.thread

bb.at:                                            ; preds = %bb.ar
  %i.bm = load i8, ptr %i.p, align 1, !range !10, !noundef !11
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load i8, ptr %i.o, align 1, !range !10
  %i.bp = trunc nuw i8 %i.bo to i1                ; 3 uses
  %or.cond6 = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond6, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.217) #22
  br label %.thread

bb.av:                                            ; preds = %bb.at
  %or.cond9 = select i1 %.0292, i1 %i.bp, i1 false
  br i1 %or.cond9, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.218) #22
  br label %.thread

bb.ax:                                            ; preds = %bb.av
  %i.bq = load i8, ptr %i.r, align 2, !range !10
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond12 = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond12, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.219) #22
  br label %.thread

bb.az:                                            ; preds = %bb.ax
  %.not13 = xor i1 %.0301, true
  %i.bs = trunc nuw i8 %.0280 to i1               ; 7 uses
  %or.cond15 = or i1 %.not13, %i.bs
  br i1 %or.cond15, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.220) #22
  br label %.thread

bb.bb:                                            ; preds = %bb.az
  %i.bt = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.bu = icmp ne ptr %i.bt, null
  %or.cond17 = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond17, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.221) #22
  br label %.thread

bb.bd:                                            ; preds = %bb.bb
  %i.bv = load i8, ptr %i.q, align 8, !range !10, !noundef !11
  %i.bw = trunc nuw i8 %i.bv to i1
  %.not18 = xor i1 %i.bw, true
  %or.cond20 = or i1 %.not18, %i.bs
  br i1 %or.cond20, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.222) #22
  br label %.thread

bb.bf:                                            ; preds = %bb.bd
  %i.bx = load i32, ptr @optind, align 4
  %i.by = xor i32 %i.bx, -1
  %i.bz = add i32 %1, %i.by                       ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 11 uses
  store i32 %i.bz, ptr %i.ca, align 8
  %i.cb = icmp sgt i32 %i.bz, 0
  br i1 %i.cb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.cc = add i32 %1, -1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.cg = phi ptr [ %i.cf, %bb.bg ], [ null, %bb.bf ] ; 6 uses
  %.not337 = icmp eq ptr %i.bt, null
  br i1 %.not337, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ch = call zeroext i1 @has_help_option(ptr noundef nonnull %i.bt) #22
  br i1 %i.ch, label %bb.bj, label %._crit_edge829

._crit_edge829:                                   ; preds = %bb.bi
  %.pre = load i32, ptr %i.ca, align 8
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.not360 = icmp eq ptr %spec.store.select, null
  br i1 %.not360, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ci = call fastcc i32 @print_block_option_help(ptr noundef %i.cg, ptr noundef nonnull %spec.store.select)
  %i.cj = zext nneg i32 %i.ci to i64
  br label %.thread

bb.bl:                                            ; preds = %bb.bj
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.223) #22
  br label %.thread

bb.bm:                                            ; preds = %._crit_edge829, %bb.bh
  %i.ck = phi i32 [ %.pre, %._crit_edge829 ], [ %i.bz, %bb.bh ]
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.224) #22
  br label %.thread

bb.bo:                                            ; preds = %bb.bm
  %i.cm = call i32 @bdrv_parse_cache_mode(ptr noundef %.0257, ptr noundef nonnull %i.e, ptr noundef nonnull %i.i) #22 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i32 %i.cm, 0
  br i1 %i.co, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.144, ptr noundef %.0257) #22
  br label %.thread

bb.bq:                                            ; preds = %bb.bo
  %i.cp = load i8, ptr %i.n, align 1, !range !10, !noundef !11
  %i.cq = trunc nuw i8 %i.cp to i1
  %5 = select i1 %i.cq, i8 0, i8 %.0303
  %6 = zext nneg i8 %5 to i32
  call void @qemu_progress_init(i32 noundef %6, float noundef 1.000000e+00) #22
  call void @qemu_progress_print(float noundef 0.000000e+00, i32 noundef 100) #22
  %i.cr = load i32, ptr %i.ca, align 8
  %i.cs = sext i32 %i.cr to i64
  %i.ct = call noalias ptr @g_malloc0_n(i64 noundef %i.cs, i64 noundef 8) #27
  store ptr %i.ct, ptr %4, align 8
  %i.cu = load i32, ptr %i.ca, align 8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = call noalias ptr @g_malloc_n(i64 noundef %i.cv, i64 noundef 8) #27
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr %i.cw, ptr %i.cx, align 8
  %i.cy = load i32, ptr %i.ca, align 8
  %i.cz = sext i32 %i.cy to i64
  %i.da = call noalias ptr @g_malloc_n(i64 noundef %i.cz, i64 noundef 4) #27
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = load i32, ptr %i.ca, align 8
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bq
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %bb.bw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bw ] ; 10 uses
  %i.df = load i32, ptr @optind, align 4
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dh = add i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = load i32, ptr %i.e, align 4
  %i.dm = load i8, ptr %i.i, align 1, !range !10, !noundef !11
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = call fastcc ptr @img_open(i1 noundef zeroext %.0277, ptr noundef %i.dk, ptr noundef %.0251, i32 noundef %i.dl, i1 noundef zeroext %i.dn, i1 noundef zeroext %.0295)
  %i.dp = load ptr, ptr %4, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv
  store ptr %i.do, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %4, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not355 = icmp eq ptr %i.dt, null
  br i1 %.not355, label %.thread400, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.du = call i64 @blk_nb_sectors(ptr noundef nonnull %i.dt) #22
  %i.dv = load ptr, ptr %i.cx, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv
  store i64 %i.du, ptr %i.dw, align 8
  %i.dx = load ptr, ptr %i.cx, align 8
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv
  %i.dz = load i64, ptr %i.dy, align 8            ; 2 uses
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.eb = load i32, ptr @optind, align 4
  %i.ec = add i32 %i.eb, %i.dg
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = trunc i64 %i.dz to i32
  %i.eh = sub i32 0, %i.eg
  %i.ei = call ptr @strerror(i32 noundef %i.eh) #22
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.225, ptr noundef %i.ef, ptr noundef %i.ei) #22
  br label %.thread400

bb.bu:                                            ; preds = %bb.bs
  %i.ej = load ptr, ptr %4, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call ptr @blk_bs(ptr noundef %i.el) #22 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16464
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = zext i32 %i.eo to i64
  %i.eq = add nuw nsw i64 %i.ep, 511
  %i.er = lshr i64 %i.eq, 9
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = load ptr, ptr %i.db, align 8
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv
  store i32 %i.es, ptr %i.eu, align 4
  %i.ev = call i32 @bdrv_get_info(ptr noundef %i.em, ptr noundef nonnull %3) #22
  %.not356 = icmp eq i32 %i.ev, 0
  br i1 %.not356, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ew = load ptr, ptr %i.db, align 8
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = sext i32 %i.ey to i64
  %i.fa = load i32, ptr %3, align 8
  %i.fb = sext i32 %i.fa to i64
  %i.fc = lshr i64 %i.fb, 9
  %i.fd = call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.ez)
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ex, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ff = load ptr, ptr %i.cx, align 8
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = load i64, ptr %i.de, align 8
  %i.fj = add i64 %i.fi, %i.fh
  store i64 %i.fj, ptr %i.de, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next, %i.fl
  br i1 %i.fm, label %bb.br, label %._crit_edge.loopexit, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %bb.bw
  %i.fn = icmp sgt i32 %i.fk, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bq
  %.lcssa = phi i1 [ false, %bb.bq ], [ %i.fn, %._crit_edge.loopexit ]
  %.not338 = icmp eq ptr %.0268, null
  br i1 %.not338, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge
  %i.fo = load ptr, ptr %4, align 8
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call ptr @blk_bs(ptr noundef %i.fp) #22
  %i.fr = call ptr @qemu_opt_get(ptr noundef nonnull %.0268, ptr noundef nonnull @.str.226) #22
  %i.fs = call ptr @qemu_opt_get(ptr noundef nonnull %.0268, ptr noundef nonnull @.str.227) #22
  %i.ft = call i32 @bdrv_snapshot_load_tmp(ptr noundef %i.fq, ptr noundef %i.fr, ptr noundef %i.fs, ptr noundef nonnull %i.g) #22 ; 0 uses
  br label %bb.cc

bb.by:                                            ; preds = %._crit_edge
  %.not339 = icmp eq ptr %.0261, null
  br i1 %.not339, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  br i1 %.lcssa, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.228) #22
  br label %.thread400

bb.cb:                                            ; preds = %bb.bz
  %i.fu = load ptr, ptr %4, align 8
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call ptr @blk_bs(ptr noundef %i.fv) #22
  %i.fx = call i32 @bdrv_snapshot_load_tmp_by_id_or_name(ptr noundef %i.fw, ptr noundef nonnull %.0261, ptr noundef nonnull %i.g) #22 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.by, %bb.cb, %bb.bx
  %i.fy = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not340 = icmp eq ptr %i.fy, null
  br i1 %.not340, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ptr, ...) @error_reportf_err(ptr noundef nonnull %i.fy, ptr noundef nonnull @.str.229) #22
  br label %.thread400

bb.ce:                                            ; preds = %bb.cc
  br i1 %i.bs, label %bb.cr, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fz = call ptr @bdrv_find_format(ptr noundef %spec.store.select) #22 ; 4 uses
  %.not341 = icmp eq ptr %i.fz, null
  br i1 %.not341, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.69, ptr noundef %spec.store.select) #22
  br label %.thread400

bb.ch:                                            ; preds = %bb.cf
  %i.ga = call ptr @bdrv_find_protocol(ptr noundef %i.cg, i1 noundef zeroext true, ptr noundef nonnull %i.g) #22 ; 3 uses
  %.not342 = icmp eq ptr %i.ga, null
  br i1 %.not342, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.gb = load ptr, ptr %i.g, align 8
  call void @error_report_err(ptr noundef %i.gb) #22
  br label %.thread400

bb.cj:                                            ; preds = %bb.ch
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %.not343 = icmp eq ptr %i.gd, null
  br i1 %.not343, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ge = load ptr, ptr %i.fz, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.230, ptr noundef %i.ge) #22
  br label %.thread400

bb.cl:                                            ; preds = %bb.cj
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 32 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8
  %.not344 = icmp eq ptr %i.gg, null
  br i1 %.not344, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.gh = load ptr, ptr %i.ga, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.231, ptr noundef %i.gh) #22
  br label %.thread400
end_hunk_0
