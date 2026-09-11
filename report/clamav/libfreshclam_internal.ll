Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/libfreshclam_internal?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@updatedb:bb.a
  %i.ep = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.eo) #23 ; 25 uses
  %.not219 = icmp eq ptr %i.ep, null
  br i1 %.not219, label %.thread354, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.eq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ek) #24
  %i.er = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3293) #24
  %i.es = add i64 %i.eq, 2
  %i.et = add i64 %i.es, %i.er
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ep, i64 noundef %i.et, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.ek, ptr noundef nonnull %.3293) #20 ; 0 uses
  %i.ev = icmp ne i32 %.1302, 0
  %i.ew = icmp ne i32 %5, 0
  %or.cond10 = and i1 %i.ew, %i.ev
  br i1 %or.cond10, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ex = call fastcc i32 @getcvd(ptr noundef %0, ptr noundef nonnull %.3293, ptr noundef %i.ep, ptr noundef %2, i32 noundef %.0303, i32 noundef %.1299, ptr noundef %i.k, ptr noundef %i.l, i32 noundef %6) ; 2 uses
  switch i32 %i.ex, label %.thread354 [
    i32 1, label %bb.bs
    i32 12, label %bb.bu
    i32 0, label %bb.bv
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ey = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.40, ptr noundef nonnull %0, i32 noundef %.1302) #20 ; 0 uses
  br i1 %.not218, label %.thread354.thread395.thread413, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ez = call ptr @cli_safer_strdup(ptr noundef nonnull %.2297) #20
  store ptr %i.ez, ptr %8, align 8, !tbaa !11
  br label %.thread354.thread

bb.bu:                                            ; preds = %bb.br
  %i.fa = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.br, %bb.bu
  %.3182 = phi i32 [ 12, %bb.bu ], [ 16, %bb.br ]
  %i.fb = call ptr @cli_safer_strdup(ptr noundef nonnull %.3293) #20
  br label %.thread322

bb.bw:                                            ; preds = %bb.bq
  %i.fc = load ptr, ptr @g_tempDirectory, align 8, !tbaa !11
  %i.fd = call ptr @cli_gentemp_with_prefix(ptr noundef %i.fc, ptr noundef nonnull @.str.42) #20 ; 16 uses
  %.not222 = icmp eq ptr %i.fd, null
  br i1 %.not222, label %.thread354, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fe = load i16, ptr @mprintf_quiet, align 2, !tbaa !27
  %.not223 = icmp eq i16 %i.fe, 0
  br i1 %.not223, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.ff = load i16, ptr @mprintf_progress, align 2, !tbaa !27
  %.not224 = icmp eq i16 %i.ff, 0
  br i1 %.not224, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fg = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.fh = call i32 @fileno(ptr noundef %i.fg) #20
  %i.fi = call i32 @isatty(i32 noundef %i.fh) #20
  %.not225 = icmp eq i32 %i.fi, 0
  br i1 %.not225, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.fj = sub i32 %.1299, %.1302                  ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.43) #20
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.44, i32 noundef %i.fj) #20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bz, %bb.bx
  %.0166454 = add i32 %.1302, 1                   ; 5 uses
  %.not226455 = icmp ugt i32 %.0166454, %.1299
  br i1 %.not226455, label %.thread332, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.cd
  %.not228 = icmp ne i32 %6, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  %i.fm = load i32, ptr @g_maxAttempts, align 4, !tbaa !8 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.fo = zext i32 %.1299 to i64
  %i.fp = add nuw nsw i64 %i.fo, 1
  %i.fq = add i32 %.1302, 2
  %i.fr = zext i32 %i.fq to i64
  %i.fs = call i64 @llvm.umax.i64(i64 %i.fp, i64 %i.fr)
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = xor i32 %.1302, -1
  %i.fv = add i32 %i.fu, %i.ft                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.fv, 28
  br i1 %min.iters.check, label %.preheader.us.preheader536, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.preheader
  %i.fw = zext i32 %.1299 to i64
  %i.fx = add nuw nsw i64 %i.fw, 1
  %i.fy = add i32 %.1302, 2
  %i.fz = zext i32 %i.fy to i64
  %i.ga = call i64 @llvm.usub.sat.i64(i64 %i.fx, i64 %i.fz) ; 2 uses
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = sub i32 -3, %.1302
  %i.gd = icmp ult i32 %i.gc, %i.gb
  %i.ge = icmp samesign ugt i64 %i.ga, 4294967295
  %i.gf = or i1 %i.gd, %i.ge
  br i1 %i.gf, label %.preheader.us.preheader536, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.fv, -8                      ; 3 uses
  %i.gg = add i32 %.0166454, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = add <4 x i32> %reduced.phi, splat (i32 2) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.gh = icmp eq i32 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %i.gi = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.fv, %n.vec
  br i1 %cmp.n, label %.thread317, label %.preheader.us.preheader536

.preheader.us.preheader536:                       ; preds = %vector.scevcheck, %.preheader.us.preheader, %middle.block
  %.0166457.us.ph = phi i32 [ %.0166454, %vector.scevcheck ], [ %.0166454, %.preheader.us.preheader ], [ %i.gg, %middle.block ]
  %.0163456.us.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.preheader ], [ %i.gi, %middle.block ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader536, %.preheader.us
  %.0166457.us = phi i32 [ %.0166.us, %.preheader.us ], [ %.0166457.us.ph, %.preheader.us.preheader536 ]
  %.0163456.us = phi i32 [ %i.gj, %.preheader.us ], [ %.0163456.us.ph, %.preheader.us.preheader536 ]
  %i.gj = add i32 %.0163456.us, 1                 ; 2 uses
  %.0166.us = add i32 %.0166457.us, 1             ; 2 uses
  %.not226.us = icmp ugt i32 %.0166.us, %.1299
  br i1 %.not226.us, label %.thread317, label %.preheader.us, !llvm.loop !47

.preheaderthread-pre-split:                       ; preds = %downloadPatchAndApply.exit._crit_edge.thread503
  %.pr = load i32, ptr @g_maxAttempts, align 4, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheaderthread-pre-split
  %i.gk = phi i32 [ %.pr, %.preheaderthread-pre-split ], [ %i.fm, %.preheader.lr.ph ] ; 2 uses
  %.0166457 = phi i32 [ %.0166, %.preheaderthread-pre-split ], [ %.0166454, %.preheader.lr.ph ] ; 4 uses
  %.0163456 = phi i32 [ %i.jm, %.preheaderthread-pre-split ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %.not227450 = icmp eq i32 %i.gk, 0
  br i1 %.not227450, label %downloadPatchAndApply.exit._crit_edge.thread503, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.gl = icmp eq i32 %.0166457, 0
  br i1 %i.gl, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.gm = load i16, ptr @mprintf_quiet, align 2, !tbaa !27
  %.not229.us = icmp eq i16 %i.gm, 0
  br i1 %.not229.us, label %bb.ce, label %.thread68.thread.thread.i.us

bb.ce:                                            ; preds = %.lr.ph.split.us
  %i.gn = load i16, ptr @mprintf_progress, align 2, !tbaa !27
  %.not230.us = icmp eq i16 %i.gn, 0
  br i1 %.not230.us, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.go = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.gp = call i32 @fileno(ptr noundef %i.go) #20
  %i.gq = call i32 @isatty(i32 noundef %i.gp) #20
  %.not231.us = icmp eq i32 %i.gq, 0
  br i1 %.not231.us, label %.thread68.thread.thread.i.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.45, i32 noundef 0) #20
  br label %.thread68.thread.thread.i.us

.thread68.thread.thread.i.us:                     ; preds = %bb.cg, %bb.cf, %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store ptr null, ptr %i.e, align 8, !tbaa !50
  store i8 0, ptr %i.d, align 16, !tbaa !18
  %i.gr = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.235) #20 ; 0 uses
  br label %.thread506

.thread317:                                       ; preds = %downloadPatchAndApply.exit._crit_edge.thread503, %.preheader.us, %middle.block
  %.0163.lcssa = phi i32 [ %i.gj, %.preheader.us ], [ %i.gi, %middle.block ], [ %i.jm, %downloadPatchAndApply.exit._crit_edge.thread503 ] ; 2 uses
  %i.gs = icmp eq i32 %.0163.lcssa, 0
  br i1 %i.gs, label %.thread332, label %bb.dw

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.do
  %i.gt = phi i32 [ %i.jl, %bb.do ], [ %i.gk, %.lr.ph ]
  %.0165451 = phi i32 [ %i.jk, %bb.do ], [ 1, %.lr.ph ] ; 2 uses
  %i.gu = icmp eq i32 %.0165451, %i.gt
  %narrow = and i1 %.not228, %i.gu
  %.0162 = zext i1 %narrow to i32                 ; 3 uses
  %i.gv = load i16, ptr @mprintf_quiet, align 2, !tbaa !27
  %.not229 = icmp eq i16 %i.gv, 0
  br i1 %.not229, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %.lr.ph.split
  %i.gw = load i16, ptr @mprintf_progress, align 2, !tbaa !27
  %.not230 = icmp eq i16 %i.gw, 0
  br i1 %.not230, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.gx = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.gy = call i32 @fileno(ptr noundef %i.gx) #20
  %i.gz = call i32 @isatty(i32 noundef %i.gy) #20
  %.not231 = icmp eq i32 %i.gz, 0
  br i1 %.not231, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.45, i32 noundef %.0166457) #20
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store ptr null, ptr %i.e, align 8, !tbaa !50
  store i8 0, ptr %i.d, align 16, !tbaa !18
  %i.ha = call ptr @getcwd(ptr noundef nonnull %i.d, i64 noundef 4096) #20
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hc = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.236) #20 ; 0 uses
  br label %.thread68.thread.i

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.hd = call i32 @access(ptr noundef nonnull %i.fd, i32 noundef 6) #20
  %i.he = icmp eq i32 %i.hd, -1
  br i1 %i.he, label %bb.cn, label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  %i.hf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 60, ptr noundef nonnull @.str.100, ptr noundef nonnull %0) #20 ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 59
  %i.hh = icmp eq i32 %i.hf, -1
  %or.cond3.i.i = or i1 %i.hg, %i.hh
  br i1 %or.cond3.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.hi = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.247, ptr noundef nonnull %0) #20 ; 0 uses
  br label %mkdir_and_chdir_for_cdiff_tmp.exit.thread.i

bb.cp:                                            ; preds = %bb.cn
  %i.hj = call i32 @access(ptr noundef nonnull %i.a, i32 noundef 4) #20
  %i.hk = icmp eq i32 %i.hj, -1                   ; 2 uses
  br i1 %i.hk, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.hl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 60, ptr noundef nonnull @.str.52, ptr noundef nonnull %0) #20 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 59
  %i.hn = icmp eq i32 %i.hl, -1
  %or.cond5.i.i = or i1 %i.hm, %i.hn
  br i1 %or.cond5.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ho = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.248, ptr noundef nonnull %0) #20 ; 0 uses
  br label %mkdir_and_chdir_for_cdiff_tmp.exit.thread.i

bb.cs:                                            ; preds = %bb.cq
  %i.hp = call i32 @access(ptr noundef nonnull %i.a, i32 noundef 4) #20
  %i.hq = icmp eq i32 %i.hp, -1
  br i1 %i.hq, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.hr = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.249, ptr noundef nonnull %0) #20 ; 0 uses
  br label %mkdir_and_chdir_for_cdiff_tmp.exit.thread.i

bb.cu:                                            ; preds = %bb.cs, %bb.cp
  %i.hs = call i32 @mkdir(ptr noundef nonnull %i.fd, i32 noundef 493) #20
  %i.ht = icmp eq i32 %i.hs, -1
  br i1 %i.ht, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.hu = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.250, ptr noundef nonnull %i.fd) #20 ; 0 uses
  br label %mkdir_and_chdir_for_cdiff_tmp.exit.thread.i

bb.cw:                                            ; preds = %bb.cu
  %i.hv = load i8, ptr @g_bFipsLimits, align 1, !tbaa !31, !range !32, !noundef !33
  %i.hw = trunc nuw i8 %i.hv to i1
  %i.hx = load ptr, ptr @g_signVerifier, align 8, !tbaa !34
  %i.hy = call i32 @cli_cvdunpack_and_verify(ptr noundef nonnull %i.a, ptr noundef nonnull %i.fd, i1 noundef zeroext %i.hk, i1 noundef zeroext %i.hw, ptr noundef %i.hx) #20
  %.not.i.i258 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i258, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hz = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.251, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fd) #20 ; 0 uses
  %i.ia = call i32 @cli_rmdirs(ptr noundef nonnull %i.fd) #20 ; 0 uses
  br label %mkdir_and_chdir_for_cdiff_tmp.exit.thread.i

bb.cy:                                            ; preds = %bb.cw, %bb.cm
  %i.ib = call i32 @chdir(ptr noundef nonnull %i.fd) #20
  %i.ic = icmp eq i32 %i.ib, -1
  br i1 %i.ic, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.id = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.252, ptr noundef nonnull %i.fd) #20 ; 0 uses
  br label %mkdir_and_chdir_for_cdiff_tmp.exit.thread.i

mkdir_and_chdir_for_cdiff_tmp.exit.thread.i:      ; preds = %bb.cz, %bb.cx, %bb.cv, %bb.ct, %bb.cr, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread68.thread.i

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ie = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 60, ptr noundef nonnull @.str.237, ptr noundef nonnull %0, i32 noundef %.0166457) #20 ; 0 uses
  %i.if = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.ig = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #24
  %i.ih = add i64 %i.if, 2
  %i.ii = add i64 %i.ih, %i.ig                    ; 2 uses
  %i.ij = call noalias ptr @malloc(i64 noundef %i.ii) #22 ; 6 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.il = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.238) #20 ; 0 uses
  br label %.thread68.thread.i

bb.dc:                                            ; preds = %bb.da
  %i.im = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ij, i64 noundef %i.ii, ptr noundef nonnull @.str.36, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.in = call fastcc i32 @downloadFile(ptr noundef nonnull %i.ij, ptr noundef nonnull %i.b, i32 noundef range(i32 0, 2) %.0162, i32 noundef 0, i64 noundef 0) ; 2 uses
  switch i32 %i.in, label %bb.de [
    i32 0, label %bb.df
    i32 6, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.io = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.239, ptr noundef nonnull %i.b) #20 ; 0 uses
  br label %.thread74.i

bb.de:                                            ; preds = %bb.dc
  %10 = or disjoint i32 %.0162, 4
  %i.ip = call i32 (i32, ptr, ...) @logg(i32 noundef %10, ptr noundef nonnull @.str.240, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ij) #20 ; 0 uses
  br label %.thread74.i

bb.df:                                            ; preds = %bb.dc
  %i.iq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 66, ptr noundef nonnull @.str.241, ptr noundef nonnull %i.b) #20 ; 0 uses
  store i8 0, ptr %i.fl, align 1, !tbaa !18
  %i.ir = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.is = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #24
  %i.it = add i64 %i.ir, 2
  %i.iu = add i64 %i.it, %i.is                    ; 2 uses
  %i.iv = call noalias ptr @malloc(i64 noundef %i.iu) #22 ; 4 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ix = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.242) #20 ; 0 uses
  br label %.thread74.i

bb.dh:                                            ; preds = %bb.df
  %i.iy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.iv, i64 noundef %i.iu, ptr noundef nonnull @.str.36, ptr noundef nonnull %2, ptr noundef nonnull %i.c) #20 ; 0 uses
  %i.iz = call fastcc i32 @downloadFile(ptr noundef nonnull %i.iv, ptr noundef nonnull %i.c, i32 noundef range(i32 0, 2) %.0162, i32 noundef 1, i64 noundef 0)
  %.not50.i = icmp eq i32 %i.iz, 0
  br i1 %.not50.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ja = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.243, ptr noundef nonnull %i.b) #20 ; 0 uses
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.jb = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.231, ptr noundef nonnull %i.c) #20 ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.jc = load ptr, ptr @g_signVerifier, align 8, !tbaa !34
  %i.jd = call zeroext i1 @cdiff_apply(ptr noundef nonnull %i.b, ptr noundef %i.jc, i16 noundef zeroext 1, ptr noundef nonnull %i.e) #20
  br i1 %i.jd, label %.thread68.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.je = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.jf = call ptr @ffierror_fmt(ptr noundef %i.je) #20
  %i.jg = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.244, ptr noundef nonnull %i.b, ptr noundef %i.jf) #20 ; 0 uses
  br label %.thread68.i

.thread74.i:                                      ; preds = %bb.dg, %bb.de, %bb.dd
  %.038.ph.ph.i = phi i32 [ 15, %bb.dg ], [ 6, %bb.dd ], [ %i.in, %bb.de ]
  call void @free(ptr noundef nonnull %i.ij) #20
  br label %.thread68.thread.i

.thread68.i:                                      ; preds = %bb.dl, %bb.dk
  %.038.ph.i = phi i32 [ 0, %bb.dk ], [ 14, %bb.dl ] ; 2 uses
  call void @free(ptr noundef nonnull %i.ij) #20
  call void @free(ptr noundef nonnull %i.iv) #20
  %.pre.i257 = load ptr, ptr %i.e, align 8, !tbaa !50 ; 2 uses
  %.not54.i = icmp eq ptr %.pre.i257, null
  br i1 %.not54.i, label %.thread68.thread.i, label %bb.dm

bb.dm:                                            ; preds = %.thread68.i
  call void @ffierror_free(ptr noundef nonnull %.pre.i257) #20
  br label %.thread68.thread.i

.thread68.thread.i:                               ; preds = %bb.dm, %.thread68.i, %.thread74.i, %bb.db, %mkdir_and_chdir_for_cdiff_tmp.exit.thread.i, %bb.cl
  %.038637283.ph.i = phi i32 [ %.038.ph.ph.i, %.thread74.i ], [ 15, %bb.db ], [ 3, %mkdir_and_chdir_for_cdiff_tmp.exit.thread.i ], [ 3, %bb.cl ], [ %.038.ph.i, %bb.dm ], [ %.038.ph.i, %.thread68.i ] ; 3 uses
  %.pr.i = load i8, ptr %i.d, align 16, !tbaa !18
  %.not55.i = icmp eq i8 %.pr.i, 0
  br i1 %.not55.i, label %downloadPatchAndApply.exit, label %bb.dn

bb.dn:                                            ; preds = %.thread68.thread.i
  %i.jh = call i32 @chdir(ptr noundef nonnull %i.d) #20
  %i.ji = icmp eq i32 %i.jh, -1
  br i1 %i.ji, label %downloadPatchAndApply.exit.thread, label %downloadPatchAndApply.exit

downloadPatchAndApply.exit.thread:                ; preds = %bb.dn
  %i.jj = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.245, ptr noundef nonnull %i.d) #20 ; 0 uses
  br label %.thread506

downloadPatchAndApply.exit:                       ; preds = %.thread68.thread.i, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  switch i32 %.038637283.ph.i, label %.split [
    i32 11, label %bb.do
    i32 5, label %bb.do
    i32 0, label %downloadPatchAndApply.exit._crit_edge.thread503
  ]

bb.do:                                            ; preds = %downloadPatchAndApply.exit, %downloadPatchAndApply.exit
  %i.jk = add i32 %.0165451, 1                    ; 2 uses
  %i.jl = load i32, ptr @g_maxAttempts, align 4, !tbaa !8 ; 2 uses
  %.not227 = icmp ugt i32 %i.jk, %i.jl
  br i1 %.not227, label %.split, label %.lr.ph.split

downloadPatchAndApply.exit._crit_edge.thread503:  ; preds = %downloadPatchAndApply.exit, %.preheader
  %i.jm = add i32 %.0163456, 1                    ; 2 uses
  %.0166 = add i32 %.0166457, 1                   ; 2 uses
  %.not226 = icmp ugt i32 %.0166, %.1299
  br i1 %.not226, label %.thread317, label %.preheaderthread-pre-split, !llvm.loop !48

.split:                                           ; preds = %downloadPatchAndApply.exit, %bb.do
  %i.jn = icmp eq i32 %.038637283.ph.i, 6
  switch i32 %.038637283.ph.i, label %bb.dp [
    i32 6, label %bb.dr
    i32 14, label %.thread508
  ]

bb.dp:                                            ; preds = %.split
  %i.jo = icmp eq i32 %.0163456, 0                ; 2 uses
  %i.jp = add i32 %.1299, -1
  %i.jq = icmp ult i32 %.1302, %i.jp
  %or.cond447 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond447, label %bb.dq, label %bb.dv

.thread506:                                       ; preds = %.thread68.thread.thread.i.us, %downloadPatchAndApply.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.jr = icmp eq i32 %.0163456, 0                ; 2 uses
  %i.js = add i32 %.1299, -1
  %i.jt = icmp ult i32 %.1302, %i.js
  %or.cond447507 = select i1 %i.jr, i1 %i.jt, i1 false
  br i1 %or.cond447507, label %.thread508, label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.jn, label %bb.dr, label %.thread508

bb.dr:                                            ; preds = %.split, %bb.dq
  %i.ju = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.46, ptr noundef nonnull %.3293) #20 ; 0 uses
  br label %bb.ds

.thread508:                                       ; preds = %.thread506, %.split, %bb.dq
  %i.jv = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.47, ptr noundef nonnull %.3293) #20 ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %.thread508, %bb.dr
  %i.jw = call fastcc i32 @getcvd(ptr noundef %0, ptr noundef nonnull %.3293, ptr noundef %i.ep, ptr noundef %2, i32 noundef %.0303, i32 noundef %.1299, ptr noundef %i.k, ptr noundef %i.l, i32 noundef %6) ; 2 uses
  switch i32 %i.jw, label %.thread354 [
    i32 0, label %bb.du
    i32 12, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.jx = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.48, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %.4183 = phi i32 [ 0, %bb.dt ], [ 16, %bb.ds ]
  %i.jy = call ptr @cli_safer_strdup(ptr noundef nonnull %.3293) #20
  br label %.thread322

bb.dv:                                            ; preds = %.thread506, %bb.dp
  %i.jz = phi i1 [ %i.jr, %.thread506 ], [ %i.jo, %bb.dp ]
  br i1 %i.jz, label %.thread332, label %bb.dw

.thread332:                                       ; preds = %bb.cd, %bb.dv, %.thread317
  %i.ka = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull %0, i32 noundef %.1299) #20 ; 0 uses
  %i.kb = call ptr @cli_safer_strdup(ptr noundef %.2297) #20
  store ptr %i.kb, ptr %8, align 8, !tbaa !11
  br label %.thread354

bb.dw:                                            ; preds = %.thread317, %bb.dv
  %.0163449 = phi i32 [ %.0163.lcssa, %.thread317 ], [ %.0163456, %bb.dv ] ; 2 uses
  %i.kc = sub i32 %.1299, %.1302                  ; 2 uses
  %i.kd = icmp ult i32 %.0163449, %i.kc
  br i1 %i.kd, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ke = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %.0163449, ptr noundef nonnull %0, i32 noundef %i.kc) #20 ; 0 uses
  %i.kf = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.51) #20 ; 0 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.kg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ep) #24
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.kg
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -3
  store i32 6581347, ptr %i.ki, align 1
  %i.kj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.kk = add i64 %i.kj, 5                        ; 2 uses
  %i.kl = call noalias ptr @malloc(i64 noundef %i.kk) #22 ; 4 uses
  %i.km = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.kl, i64 noundef %i.kk, ptr noundef nonnull @.str.52, ptr noundef nonnull %0) #20 ; 0 uses
  %i.kn = load i32, ptr @g_bCompressLocalDatabase, align 4, !tbaa !8
  %i.ko = call fastcc i32 @buildcld(ptr noundef %i.fd, ptr noundef %0, ptr noundef %i.ep, i32 noundef %i.kn)
  %.not232 = icmp eq i32 %i.ko, 0
  br i1 %.not232, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.kp = load ptr, ptr %i.k, align 8, !tbaa !11  ; 2 uses
  %.not233 = icmp eq ptr %i.kp, null
  br i1 %.not233, label %.thread322, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @free(ptr noundef nonnull %i.kp) #20
  store ptr null, ptr %i.k, align 8, !tbaa !11
  br label %.thread322

bb.eb:                                            ; preds = %bb.dy
  %i.kq = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.53) #20 ; 0 uses
  br label %.thread354

.thread322:                                       ; preds = %bb.ea, %bb.dz, %bb.du, %bb.bv
end_hunk_0
