Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_disk_posix?download=true
inline.NumInlined: 57
inline.NumDeleted: 21
begin_hunk_0_@_archive_write_disk_header:bb.a
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %i.ca = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.cb = and i32 %i.ca, 8192
  %.not199 = icmp eq i32 %i.cb, 0
  br i1 %.not199, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.cd = call i32 @archive_entry_filetype(ptr noundef %i.cc) #18
  %i.ce = icmp eq i32 %i.cd, 16384
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = load i32, ptr %i.l, align 4, !tbaa !64
  %i.cg = or i32 %i.cf, 8192
  store i32 %i.cg, ptr %i.l, align 4, !tbaa !64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ch = load i32, ptr %i.be, align 8, !tbaa !71
  %i.ci = or i32 %i.ch, 8192
  store i32 %i.ci, ptr %i.be, align 8, !tbaa !71
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x
  %i.cj = load i32, ptr %i.ar, align 8, !tbaa !25 ; 4 uses
  %i.ck = and i32 %i.cj, 128
  %.not200 = icmp eq i32 %i.ck, 0
  br i1 %.not200, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i32, ptr %i.be, align 8, !tbaa !71
  %i.cm = or i32 %i.cl, 128
  store i32 %i.cm, ptr %i.be, align 8, !tbaa !71
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cn = and i32 %i.cj, 64
  %.not201 = icmp eq i32 %i.cn, 0
  br i1 %.not201, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = load i32, ptr %i.be, align 8, !tbaa !71
  %i.cp = or i32 %i.co, 64
  store i32 %i.cp, ptr %i.be, align 8, !tbaa !71
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cq = and i32 %i.cj, 256
  %.not202 = icmp eq i32 %i.cq, 0
  br i1 %.not202, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.cr = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.cs = call fastcc i32 @check_symlinks_fsobj(ptr noundef %i.cr, ptr noundef %i.a, ptr noundef %2, i32 noundef %i.cj, i32 noundef 0) ; 2 uses
  %.not.i216 = icmp eq i32 %i.cs, 0
  br i1 %.not.i216, label %check_symlinks.exit.thread, label %check_symlinks.exit

check_symlinks.exit.thread:                       ; preds = %bb.ag
  call void @archive_string_free(ptr noundef nonnull %2) #18
  store ptr null, ptr %i.j, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.ah

check_symlinks.exit:                              ; preds = %bb.ag
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !57
  %i.cu = load ptr, ptr %2, align 8, !tbaa !70
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.ct, ptr noundef nonnull @.str.12, ptr noundef %i.cu) #18
  call void @archive_string_free(ptr noundef nonnull %2) #18
  store ptr null, ptr %i.j, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.dt

bb.ah:                                            ; preds = %check_symlinks.exit.thread, %bb.af
  %i.cv = load ptr, ptr %i.ap, align 8, !tbaa !69 ; 3 uses
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #21
  %i.cx = icmp ult i64 %i.cw, 4096
  br i1 %i.cx, label %edit_deep_directories.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cy = call i32 (i32, ptr, i32, ...) @openat(i32 noundef -100, ptr noundef nonnull @.str.20, i32 noundef 2686976) #18 ; 2 uses
  store i32 %i.cy, ptr %i.r, align 8, !tbaa !90
  call void @__archive_ensure_cloexec_flag(i32 noundef %i.cy) #18
  %i.cz = load i32, ptr %i.r, align 8, !tbaa !90
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %edit_deep_directories.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ai
  %i.db = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #21
  %i.dc = icmp ugt i64 %i.db, 4095
  br i1 %i.dc, label %.lr.ph35.preheader.i, label %edit_deep_directories.exit

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !69
  br label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %bb.am, %.lr.ph35.preheader.i
  %i.dd = phi ptr [ %i.do, %bb.am ], [ %.pre.i, %.lr.ph35.preheader.i ] ; 2 uses
  %.034.i = phi ptr [ %i.do, %bb.am ], [ %i.cv, %.lr.ph35.preheader.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.034.i, i64 4088 ; 2 uses
  %i.df = icmp ugt ptr %i.de, %i.dd
  br i1 %i.df, label %.lr.ph.i, label %edit_deep_directories.exit

.lr.ph.i:                                         ; preds = %.lr.ph35.i, %bb.aj
  %.132.i = phi ptr [ %i.dh, %bb.aj ], [ %i.de, %.lr.ph35.i ] ; 6 uses
  %i.dg = load i8, ptr %.132.i, align 1, !tbaa !40
  %.not.i217 = icmp eq i8 %i.dg, 47
  br i1 %.not.i217, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.dh = getelementptr inbounds i8, ptr %.132.i, i64 -1 ; 2 uses
  %i.di = icmp ugt ptr %i.dh, %i.dd
  br i1 %i.di, label %.lr.ph.i, label %edit_deep_directories.exit, !llvm.loop !88

bb.ak:                                            ; preds = %.lr.ph.i
  store i8 0, ptr %.132.i, align 1, !tbaa !40
  %i.dj = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.dk = call fastcc i32 @create_dir(ptr noundef nonnull %0, ptr noundef %i.dj)
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.al, label %.critedge29.i

bb.al:                                            ; preds = %bb.ak
  %i.dm = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.dn = call i32 @chdir(ptr noundef %i.dm) #18
  %.not26.i = icmp eq i32 %i.dn, 0
  store i8 47, ptr %.132.i, align 1, !tbaa !40
  br i1 %.not26.i, label %bb.am, label %edit_deep_directories.exit

.critedge29.i:                                    ; preds = %bb.ak
  store i8 47, ptr %.132.i, align 1, !tbaa !40
  br label %edit_deep_directories.exit

bb.am:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %.132.i, i64 1 ; 4 uses
  store ptr %i.do, ptr %i.ap, align 8, !tbaa !69
  %i.dp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.do) #21
  %i.dq = icmp ugt i64 %i.dp, 4095
  br i1 %i.dq, label %.lr.ph35.i, label %edit_deep_directories.exit, !llvm.loop !89

edit_deep_directories.exit:                       ; preds = %.lr.ph35.i, %bb.al, %bb.am, %bb.aj, %bb.ah, %bb.ai, %.preheader.i, %.critedge29.i
  %i.dr = load i32, ptr %i.ar, align 8, !tbaa !25 ; 2 uses
  %i.ds = and i32 %i.dr, 16
  %.not.i218 = icmp eq i32 %i.ds, 0
  br i1 %.not.i218, label %bb.au, label %bb.an

bb.an:                                            ; preds = %edit_deep_directories.exit
  %i.dt = load i32, ptr %i.w, align 4, !tbaa !67
  %i.du = and i32 %i.dt, 61440
  %i.dv = icmp eq i32 %i.du, 16384
  br i1 %i.dv, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dw = and i32 %i.dr, 131072
  %.not94.i = icmp eq i32 %i.dw, 0
  br i1 %.not94.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dx = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.dy = call i32 @archive_entry_mode(ptr noundef %i.dx) #18
  %i.dz = load i32, ptr %i.p, align 4, !tbaa !65
  %i.ea = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.eb = call fastcc range(i32 -20, 1) i32 @set_fflags_platform(ptr noundef nonnull %0, i32 noundef %i.dz, ptr noundef %i.ea, i32 noundef %i.dy, i64 noundef 0, i64 noundef 48) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ec = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ed = call i32 @unlink(ptr noundef %i.ec) #18
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.sink.split.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = tail call ptr @__errno_location() #20   ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !57
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ej = call i32 @rmdir(ptr noundef %i.ei) #18
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.sink.split.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.el = load i32, ptr %i.ef, align 4, !tbaa !57
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.el, ptr noundef nonnull @.str.32) #18
  br label %restore_entry.exit

.sink.split.i:                                    ; preds = %bb.as, %bb.aq
  store ptr null, ptr %i.j, align 8, !tbaa !42
  br label %bb.au

bb.au:                                            ; preds = %.sink.split.i, %bb.ar, %bb.an, %edit_deep_directories.exit
  %i.em = call fastcc i32 @create_filesystem_object(ptr noundef nonnull %0) ; 3 uses
  switch i32 %i.em, label %.thread.i [
    i32 20, label %bb.av
    i32 2, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.en = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.eo = and i32 %i.en, 1024
  %.not95.i = icmp eq i32 %i.eo, 0
  br i1 %.not95.i, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ep = load ptr, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %i.eq = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.ep, i32 noundef 47) #21 ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %create_parent_dir.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 0, ptr %i.eq, align 1, !tbaa !40
  %i.es = call fastcc i32 @create_dir(ptr noundef nonnull %0, ptr noundef nonnull %i.ep) ; 0 uses
  store i8 47, ptr %i.eq, align 1, !tbaa !40
  br label %create_parent_dir.exit.i

create_parent_dir.exit.i:                         ; preds = %bb.ax, %bb.aw
  %i.et = call fastcc i32 @create_filesystem_object(ptr noundef nonnull %0)
  br label %bb.ay

bb.ay:                                            ; preds = %create_parent_dir.exit.i, %bb.av
  %.089.i = phi i32 [ %i.em, %bb.av ], [ %i.et, %create_parent_dir.exit.i ] ; 2 uses
  %4 = icmp eq i32 %.089.i, 2
  br i1 %4, label %bb.az, label %.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.eu = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.ev = call ptr @archive_entry_hardlink(ptr noundef %i.eu) #18
  %.not96.i = icmp eq ptr %i.ev, null
  br i1 %.not96.i, label %.thread123.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ew = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.ex = call ptr @archive_entry_hardlink(ptr noundef %i.ew) #18
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef %i.ex) #18
  br label %restore_entry.exit

.thread.i:                                        ; preds = %bb.ay, %bb.au
  %.089115.i = phi i32 [ %.089.i, %bb.ay ], [ %i.em, %bb.au ] ; 4 uses
  switch i32 %.089115.i, label %.thread118.i.a [
    i32 21, label %bb.bb
    i32 17, label %bb.bb
  ]

bb.bb:                                            ; preds = %.thread.i, %.thread.i
  %i.ey = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.ez = and i32 %i.ey, 8
  %.not97.i = icmp eq i32 %i.ez, 0
  br i1 %.not97.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fa = load i32, ptr %i.w, align 4, !tbaa !67
  %i.fb = and i32 %i.fa, 61440
  %i.fc = icmp eq i32 %i.fb, 16384
  br i1 %i.fc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.be, align 8, !tbaa !71
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fd = load ptr, ptr %i.m, align 8, !tbaa !62
  call void @archive_entry_unset_size(ptr noundef %i.fd) #18
  br label %restore_entry.exit

bb.bf:                                            ; preds = %bb.bb
  switch i32 %.089115.i, label %.thread123.i [
    i32 21, label %bb.bg
    i32 17, label %bb.bi
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.fe = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ff = call i32 @rmdir(ptr noundef %i.fe) #18
  %.not110.i = icmp eq i32 %i.ff, 0
  br i1 %.not110.i, label %.thread118.sink.split.sink.split.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fg = tail call ptr @__errno_location() #20
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !57
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.fh, ptr noundef nonnull @.str.34) #18
  br label %restore_entry.exit

bb.bi:                                            ; preds = %bb.bf
  %i.fi = load i32, ptr %i.w, align 4, !tbaa !67
  %i.fj = and i32 %i.fi, 61440
  %i.fk = icmp eq i32 %i.fj, 16384
  br i1 %i.fk, label %bb.bj, label %.critedge.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.fl = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fn = call i32 @stat(ptr noundef %i.fl, ptr noundef nonnull %i.fm) #18
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.critedge.i, label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.bj
  %.pre.i219 = load i32, ptr %i.w, align 4, !tbaa !67
  %.pre130.i = and i32 %.pre.i219, 61440
  %i.fp = icmp eq i32 %.pre130.i, 16384
  br i1 %i.fp, label %.critedge113.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.bj, %bb.bi
  %i.fq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fs = call i32 @lstat(ptr noundef %i.fq, ptr noundef nonnull %i.fr) #18
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.critedge113.i, label %bb.bk

bb.bk:                                            ; preds = %.critedge.thread.i
  %i.fu = tail call ptr @__errno_location() #20
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !57
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.fv, ptr noundef nonnull @.str.35) #18
  br label %restore_entry.exit

.critedge113.i:                                   ; preds = %.critedge.thread.i, %.critedge.i
  %i.fw = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.fx = and i32 %i.fw, 2048
  %.not100.i = icmp eq i32 %i.fx, 0
  br i1 %.not100.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %.critedge113.i
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !93
  %i.ga = and i32 %i.fz, 61440
  %i.gb = icmp eq i32 %i.ga, 16384
  br i1 %i.gb, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gd = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.ge = call fastcc i32 @older(ptr noundef nonnull %i.gc, ptr noundef %i.gd)
  %.not101.i = icmp eq i32 %i.ge, 0
  br i1 %.not101.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gf = load ptr, ptr %i.m, align 8, !tbaa !62
  call void @archive_entry_unset_size(ptr noundef %i.gf) #18
  br label %restore_entry.exit

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %.critedge113.i
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !26
  %.not102.i = icmp eq i32 %i.gh, 0
  br i1 %.not102.i, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !94
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !27
  %i.gm = icmp eq i64 %i.gj, %i.gl
  br i1 %i.gm, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !95
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !28
  %i.gr = icmp eq i64 %i.go, %i.gq
  br i1 %i.gr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.36) #18
  br label %restore_entry.exit

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !93 ; 2 uses
  %i.gu = and i32 %i.gt, 61440
  %i.gv = icmp eq i32 %i.gu, 16384
  br i1 %i.gv, label %bb.cb, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gw = load i32, ptr %i.ar, align 8, !tbaa !25 ; 2 uses
  %i.gx = and i32 %i.gw, 131072
  %.not103.i = icmp eq i32 %i.gx, 0
  br i1 %.not103.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call fastcc void @clear_nochange_fflags(ptr noundef nonnull %0)
  %.pre129.i = load i32, ptr %i.ar, align 8, !tbaa !25
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.gy = phi i32 [ %.pre129.i, %bb.bu ], [ %i.gw, %bb.bt ]
  %i.gz = and i32 %i.gy, 262144
  %.not104.i = icmp eq i32 %i.gz, 0
  br i1 %.not104.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ha = load i32, ptr %i.w, align 4, !tbaa !67
  %i.hb = and i32 %i.ha, 61440
  %i.hc = icmp eq i32 %i.hb, 32768
  br i1 %i.hc, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.hd = call fastcc i32 @la_mktemp(ptr noundef nonnull %0) ; 2 uses
  store i32 %i.hd, ptr %i.p, align 4, !tbaa !65
  %i.he = icmp eq i32 %i.hd, -1
  br i1 %i.he, label %bb.by, label %.thread118.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.hf = tail call ptr @__errno_location() #20
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !57
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.hg, ptr noundef nonnull @.str.37) #18
  br label %restore_entry.exit

bb.bz:                                            ; preds = %bb.bw, %bb.bv
  %i.hh = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.hi = call i32 @unlink(ptr noundef %i.hh) #18
  %.not105.i = icmp eq i32 %i.hi, 0
  br i1 %.not105.i, label %.thread118.sink.split.sink.split.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hj = tail call ptr @__errno_location() #20
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !57
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.hk, ptr noundef nonnull @.str.38) #18
  br label %restore_entry.exit

bb.cb:                                            ; preds = %bb.bs
  %i.hl = load i32, ptr %i.w, align 4, !tbaa !67  ; 2 uses
  %i.hm = and i32 %i.hl, 61440
  %i.hn = icmp eq i32 %i.hm, 16384
  br i1 %i.hn, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ho = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.hp = and i32 %i.ho, 131072
  %.not106.i = icmp eq i32 %i.hp, 0
  br i1 %.not106.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call fastcc void @clear_nochange_fflags(ptr noundef nonnull %0)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.hq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.hr = call i32 @rmdir(ptr noundef %i.hq) #18
  %.not107.i = icmp eq i32 %i.hr, 0
  br i1 %.not107.i, label %.thread118.sink.split.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hs = tail call ptr @__errno_location() #20
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !57
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.ht, ptr noundef nonnull @.str.39) #18
  br label %restore_entry.exit

bb.cg:                                            ; preds = %bb.cb
  %.not108.i = icmp eq i32 %i.hl, %i.gt
  br i1 %.not108.i, label %.thread118.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hu = load i32, ptr %i.be, align 8, !tbaa !71 ; 2 uses
  %i.hv = and i32 %i.hu, 1073741824
  %.not109.i = icmp eq i32 %i.hv, 0
  br i1 %.not109.i, label %.thread118.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hw = and i32 %i.hu, 872415232
  %i.hx = load i32, ptr %i.l, align 4, !tbaa !64
  %i.hy = or i32 %i.hx, %i.hw
  store i32 %i.hy, ptr %i.l, align 4, !tbaa !64
  br label %.thread118.thread.i

.thread118.sink.split.sink.split.i:               ; preds = %bb.bz, %bb.bg
  store ptr null, ptr %i.j, align 8, !tbaa !42
  br label %.thread118.sink.split.i

.thread118.sink.split.i:                          ; preds = %.thread118.sink.split.sink.split.i, %bb.ce
  %i.hz = call fastcc i32 @create_filesystem_object(ptr noundef nonnull %0)
  br label %.thread118.i.a

.thread118.i.a:                                   ; preds = %.thread118.sink.split.i, %.thread.i
  %.3.i = phi i32 [ %.089115.i, %.thread.i ], [ %i.hz, %.thread118.sink.split.i ] ; 2 uses
  %.not111.i = icmp eq i32 %.3.i, 0
  br i1 %.not111.i, label %.thread118.thread.i, label %.thread123.i

.thread123.i:                                     ; preds = %.thread118.i.a, %bb.bf, %bb.az
  %.3126.i = phi i32 [ %.3.i, %.thread118.i.a ], [ %.089115.i, %bb.bf ], [ 2, %bb.az ]
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !96
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.cj, label %restore_entry.exit

bb.cj:                                            ; preds = %.thread123.i
  %i.id = load ptr, ptr %i.ap, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %.3126.i, ptr noundef nonnull @.str.40, ptr noundef %i.id) #18
  br label %restore_entry.exit

.thread118.thread.i:                              ; preds = %.thread118.i.a, %bb.ci, %bb.ch, %bb.cg, %bb.bx
  store ptr null, ptr %i.j, align 8, !tbaa !42
  br label %restore_entry.exit

restore_entry.exit:                               ; preds = %bb.at, %bb.ba, %bb.be, %bb.bh, %bb.bk, %bb.bn, %bb.br, %bb.by, %bb.ca, %bb.cf, %.thread123.i, %bb.cj, %.thread118.thread.i
  %.192.i = phi i32 [ -25, %bb.ba ], [ 0, %bb.be ], [ -25, %bb.bh ], [ -25, %bb.at ], [ 0, %.thread118.thread.i ], [ -25, %.thread123.i ], [ -25, %bb.cj ], [ -25, %bb.bk ], [ -25, %bb.br ], [ 0, %bb.bn ], [ -25, %bb.cf ], [ -25, %bb.by ], [ -25, %bb.ca ] ; 2 uses
  %i.ie = load i32, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %i.if = icmp sgt i32 %i.ie, -1
  br i1 %i.if, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %restore_entry.exit
  %i.ig = call i32 @fchdir(i32 noundef %i.ie) #18
  %.not204 = icmp eq i32 %i.ig, 0
  br i1 %.not204, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ih = tail call ptr @__errno_location() #20
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !57
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.ii, ptr noundef nonnull @.str.11) #18
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.0171 = phi i32 [ -30, %bb.cl ], [ %.192.i, %bb.ck ]
  %i.ij = load i32, ptr %i.r, align 8, !tbaa !90
  %i.ik = call i32 @close(i32 noundef %i.ij) #18  ; 0 uses
  store i32 -1, ptr %i.r, align 8, !tbaa !90
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %restore_entry.exit
  %.1172 = phi i32 [ %.0171, %bb.cm ], [ %.192.i, %restore_entry.exit ] ; 3 uses
  %i.il = load i32, ptr %i.l, align 4, !tbaa !64  ; 2 uses
  %i.im = and i32 %i.il, 872415232
  %.not205 = icmp eq i32 %i.im, 0
  br i1 %.not205, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.in = call ptr @archive_entry_pathname(ptr noundef %1) #18
  %i.io = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.cp, label %current_fixup.exit.thread

bb.cp:                                            ; preds = %bb.co
  %i.iq = call noalias dereferenceable_or_null(176) ptr @calloc(i64 noundef 1, i64 noundef 176) #19 ; 6 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %current_fixup.exit.thread224, label %current_fixup.exit

current_fixup.exit.thread224:                     ; preds = %bb.cp
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.31) #18
  store ptr null, ptr %i.k, align 8, !tbaa !63
  br label %bb.dt

current_fixup.exit:                               ; preds = %bb.cp
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !41
  store ptr %i.it, ptr %i.iq, align 8, !tbaa !60
  store ptr %i.iq, ptr %i.is, align 8, !tbaa !41
  %i.iu = call noalias ptr @strdup(ptr noundef readonly %i.in) #18
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 168
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !46
  store ptr %i.iq, ptr %i.k, align 8, !tbaa !63
  br label %current_fixup.exit.thread

current_fixup.exit.thread:                        ; preds = %bb.co, %current_fixup.exit
  %i.iw = phi ptr [ %i.iq, %current_fixup.exit ], [ %i.io, %bb.co ] ; 3 uses
  %i.ix = call i32 @archive_entry_filetype(ptr noundef %1) #18
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 68
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !49
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 160 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !48
  %i.jb = or i32 %i.ja, 536870912
  store i32 %i.jb, ptr %i.iz, align 8, !tbaa !48
  %i.jc = load i32, ptr %i.w, align 4, !tbaa !67
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  store i32 %i.jc, ptr %i.jd, align 8, !tbaa !58
  %.pre = load i32, ptr %i.l, align 4, !tbaa !64
  br label %bb.cq

bb.cq:                                            ; preds = %current_fixup.exit.thread, %bb.cn
  %i.je = phi i32 [ %.pre, %current_fixup.exit.thread ], [ %i.il, %bb.cn ]
  %i.jf = and i32 %i.je, 4
  %.not206 = icmp eq i32 %i.jf, 0
  br i1 %.not206, label %bb.dd, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jg = call i32 @archive_entry_mtime_is_set(ptr noundef %1) #18
  %.not207 = icmp eq i32 %i.jg, 0
  br i1 %.not207, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.jh = call i32 @archive_entry_atime_is_set(ptr noundef %1) #18
  %.not208 = icmp eq i32 %i.jh, 0
  br i1 %.not208, label %bb.dd, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ji = call ptr @archive_entry_pathname(ptr noundef %1) #18
  %i.jj = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %bb.cu, label %current_fixup.exit221.thread

bb.cu:                                            ; preds = %bb.ct
  %i.jl = call noalias dereferenceable_or_null(176) ptr @calloc(i64 noundef 1, i64 noundef 176) #19 ; 6 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %current_fixup.exit221.thread225, label %current_fixup.exit221

current_fixup.exit221.thread225:                  ; preds = %bb.cu
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.31) #18
  store ptr null, ptr %i.k, align 8, !tbaa !63
  br label %bb.dt

current_fixup.exit221:                            ; preds = %bb.cu
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !41
  store ptr %i.jo, ptr %i.jl, align 8, !tbaa !60
  store ptr %i.jl, ptr %i.jn, align 8, !tbaa !41
  %i.jp = call noalias ptr @strdup(ptr noundef readonly %i.ji) #18
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 168
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !46
  store ptr %i.jl, ptr %i.k, align 8, !tbaa !63
  br label %current_fixup.exit221.thread

current_fixup.exit221.thread:                     ; preds = %bb.ct, %current_fixup.exit221
  %i.jr = phi ptr [ %i.jl, %current_fixup.exit221 ], [ %i.jj, %bb.ct ] ; 13 uses
  %i.js = call i32 @archive_entry_filetype(ptr noundef %1) #18
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 68
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !49
  %i.ju = load i32, ptr %i.w, align 4, !tbaa !67
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  store i32 %i.ju, ptr %i.jv, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 160 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !48
  %i.jy = or i32 %i.jx, 4
  store i32 %i.jy, ptr %i.jw, align 8, !tbaa !48
  %i.jz = call i32 @archive_entry_atime_is_set(ptr noundef %1) #18
  %.not209 = icmp eq i32 %i.jz, 0
  br i1 %.not209, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %current_fixup.exit221.thread
  %i.ka = call i64 @archive_entry_atime(ptr noundef %1) #18
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  store i64 %i.ka, ptr %i.kb, align 8, !tbaa !51
  %i.kc = call i64 @archive_entry_atime_nsec(ptr noundef %1) #18
  br label %bb.cx

bb.cw:                                            ; preds = %current_fixup.exit221.thread
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !37
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !51
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sink231 = phi i64 [ 0, %bb.cw ], [ %i.kc, %bb.cv ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 104
  store i64 %.sink231, ptr %i.kg, align 8, !tbaa !52
  %i.kh = call i32 @archive_entry_mtime_is_set(ptr noundef %1) #18
  %.not210 = icmp eq i32 %i.kh, 0
  br i1 %.not210, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ki = call i64 @archive_entry_mtime(ptr noundef %1) #18
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jr, i64 88
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !53
  %i.kk = call i64 @archive_entry_mtime_nsec(ptr noundef %1) #18
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !37
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jr, i64 88
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !53
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.sink232 = phi i64 [ 0, %bb.cz ], [ %i.kk, %bb.cy ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jr, i64 120 ; 2 uses
  store i64 %.sink232, ptr %i.ko, align 8, !tbaa !54
  %i.kp = call i32 @archive_entry_birthtime_is_set(ptr noundef %1) #18
  %.not211 = icmp eq i32 %i.kp, 0
  br i1 %.not211, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kq = call i64 @archive_entry_birthtime(ptr noundef %1) #18
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jr, i64 80
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !97
  %i.ks = call i64 @archive_entry_birthtime_nsec(ptr noundef %1) #18
  br label %.sink.split

bb.dc:                                            ; preds = %bb.da
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jr, i64 88
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !53
end_hunk_0
