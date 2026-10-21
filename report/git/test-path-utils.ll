Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-path-utils?download=true
inline.NumInlined: 26
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cmd__path_utils:bb.a
  br label %check_dotfile.exit

bb.p:                                             ; preds = %.critedge234
  %i.bq = icmp samesign ugt i32 %0, 3
  br i1 %i.bq, label %.thread311.thread, label %bb.s

.thread311:                                       ; preds = %bb.l
  %i.br = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(12) @.str.9) #14
  %.not207 = icmp eq i32 %i.br, 0
  br i1 %.not207, label %.lr.ph385.preheader, label %bb.q

.thread311.thread:                                ; preds = %bb.p
  %i.bs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(12) @.str.9) #14
  %.not207450 = icmp eq i32 %i.bs, 0
  br i1 %.not207450, label %.lr.ph385.preheader, label %.critedge236.thread332

.lr.ph385.preheader:                              ; preds = %.thread311.thread, %.thread311
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43 ; 2 uses
  %i.bv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #14
  %i.bw = trunc i64 %i.bv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.bx = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.by = call ptr @setup_git_directory_gently(ptr noundef %i.bx, ptr noundef nonnull %i.e) #15 ; 0 uses
  br label %.lr.ph385

.lr.ph385:                                        ; preds = %.lr.ph385.preheader, %.lr.ph385
  %.3383 = phi i32 [ %i.ce, %.lr.ph385 ], [ %0, %.lr.ph385.preheader ] ; 2 uses
  %.3190382 = phi ptr [ %i.cf, %.lr.ph385 ], [ %1, %.lr.ph385.preheader ] ; 2 uses
  %i.bz = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %.3190382, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = call ptr @prefix_path(ptr noundef %i.bz, ptr noundef nonnull %i.bu, i32 noundef %i.bw, ptr noundef %i.cb) #15 ; 2 uses
  %i.cd = call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.cc) ; 0 uses
  call void @free(ptr noundef %i.cc) #15
  %i.ce = add nsw i32 %.3383, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %.3190382, i64 8
  %i.cg = icmp samesign ugt i32 %.3383, 4
  br i1 %i.cg, label %.lr.ph385, label %._crit_edge386, !llvm.loop !27

._crit_edge386:                                   ; preds = %.lr.ph385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %check_dotfile.exit

bb.q:                                             ; preds = %.thread311
  %i.ch = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(18) @.str.10) #14
  %.not208 = icmp eq i32 %i.ch, 0
  br i1 %.not208, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !43
  %i.cm = tail call ptr @strip_path_suffix(ptr noundef %i.cj, ptr noundef %i.cl) #15 ; 3 uses
  %.not209 = icmp eq ptr %i.cm, null
  %i.cn = select i1 %.not209, ptr @.str.12, ptr %i.cm
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.cn) ; 0 uses
  tail call void @free(ptr noundef %i.cm) #15
  br label %check_dotfile.exit

bb.s:                                             ; preds = %bb.p
  br i1 %i.g, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.co = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.13) #14
  %.not210 = icmp eq i32 %i.co, 0
  br i1 %.not210, label %bb.u, label %.critedge236.thread332

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  %i.cr = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.cq) ; 0 uses
  br label %check_dotfile.exit

bb.v:                                             ; preds = %bb.q
  %i.cs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(14) @.str.14) #14
  %.not211 = icmp eq i32 %i.cs, 0
  br i1 %.not211, label %bb.w, label %.critedge236.thread332

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd__path_utils.buf, i64 24, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !43 ; 4 uses
  %i.cv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(7) @.str.51) #14
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %normalize_argv_string.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(8) @.str.52) #14
  %.not11.i = icmp eq i32 %i.cw, 0
  %.str.42..i = select i1 %.not11.i, ptr @.str.42, ptr %i.cu ; 2 uses
  %i.cx = load i8, ptr %.str.42..i, align 1, !tbaa !16
  switch i8 %i.cx, label %normalize_argv_string.exit [
    i8 60, label %bb.y
    i8 40, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.53, ptr noundef nonnull %i.cu) #16
  unreachable

normalize_argv_string.exit:                       ; preds = %bb.w, %bb.x
  %.0310 = phi ptr [ %.str.42..i, %bb.x ], [ null, %bb.w ]
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !43 ; 4 uses
  %i.da = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(7) @.str.51) #14
  %.not.i245 = icmp eq i32 %i.da, 0
  br i1 %.not.i245, label %normalize_argv_string.exit248, label %bb.z

bb.z:                                             ; preds = %normalize_argv_string.exit
  %i.db = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(8) @.str.52) #14
  %.not11.i246 = icmp eq i32 %i.db, 0
  %.str.42..i247 = select i1 %.not11.i246, ptr @.str.42, ptr %i.cz ; 2 uses
  %i.dc = load i8, ptr %.str.42..i247, align 1, !tbaa !16
  switch i8 %i.dc, label %normalize_argv_string.exit248 [
    i8 60, label %bb.aa
    i8 40, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.53, ptr noundef nonnull %i.cz) #16
  unreachable

normalize_argv_string.exit248:                    ; preds = %normalize_argv_string.exit, %bb.z
  %.0309 = phi ptr [ %.str.42..i247, %bb.z ], [ null, %normalize_argv_string.exit ]
  %i.dd = call ptr @relative_path(ptr noundef %.0310, ptr noundef %.0309, ptr noundef nonnull %6) #15 ; 3 uses
  %.not212 = icmp eq ptr %i.dd, null
  br i1 %.not212, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %normalize_argv_string.exit248
  %char0 = load i8, ptr %i.dd, align 1
  %.not213 = icmp eq i8 %char0, 0
  %i.de = select i1 %.not213, ptr @.str.15, ptr %i.dd
  br label %bb.ac

bb.ac:                                            ; preds = %normalize_argv_string.exit248, %bb.ab
  %.sink = phi ptr [ %i.de, %bb.ab ], [ @.str.12, %normalize_argv_string.exit248 ]
  %i.df = call i32 @puts(ptr noundef nonnull dereferenceable(1) %.sink) ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %check_dotfile.exit

bb.ad:                                            ; preds = %bb.s
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(9) @.str.16) #14
  %.not214 = icmp eq i32 %i.dg, 0
  br i1 %.not214, label %.lr.ph.i.preheader, label %bb.al

.lr.ph.i.preheader:                               ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ak
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ak ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.dh = phi ptr [ %i.dx, %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @basename_data, i64 8), %.lr.ph.i.preheader ]
  %.03240.i = phi i32 [ %.1.i, %bb.ak ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [24 x i8], ptr @basename_data, i64 %indvars.iv.i ; 4 uses
  switch i64 %indvars.iv.i, label %bb.ae [
    i64 15, label %bb.af
    i64 0, label %bb.af
  ]

bb.ae:                                            ; preds = %.lr.ph.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !18
  %i.dk = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.c, i64 noundef 1024, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.dj) #15 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph.i, %.lr.ph.i, %bb.ae
  %.sink.i = phi ptr [ %i.c, %bb.ae ], [ null, %.lr.ph.i ], [ null, %.lr.ph.i ]
  %i.dl = call ptr @__xpg_basename(ptr noundef %.sink.i) #15 ; 4 uses
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !19 ; 3 uses
  %i.dn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dl, ptr noundef nonnull dereferenceable(1) %i.dm) #14
  %.not36.i = icmp eq i32 %i.dn, 0
  br i1 %.not36.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20 ; 2 uses
  %i.dq = add nsw i64 %indvars.iv.i, -8
  %.not37.i = icmp ult i64 %i.dq, -3
  br i1 %.not37.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !18
  %i.ds = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.55, ptr noundef nonnull %i.t, ptr noundef %i.dr, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dm) #15 ; 0 uses
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.dt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dl, ptr noundef nonnull dereferenceable(1) %i.dp) #14
  %.not38.i = icmp eq i32 %i.dt, 0
  br i1 %.not38.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = load ptr, ptr %i.di, align 8, !tbaa !18
  %i.dv = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.56, ptr noundef nonnull %i.t, ptr noundef %i.du, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dp) #15 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.1.i = phi i32 [ %.03240.i, %bb.af ], [ %.03240.i, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ah ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr @basename_data, i64 %indvars.iv.next.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.not.i249 = icmp eq i64 %indvars.iv.next.i, 15
  br i1 %.not.i249, label %test_function.exit, label %.lr.ph.i, !llvm.loop !0

test_function.exit:                               ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %check_dotfile.exit

bb.al:                                            ; preds = %bb.ad
  %i.dy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(8) @.str.17) #14
  %.not215 = icmp eq i32 %i.dy, 0
  br i1 %.not215, label %bb.am, label %.thread339

bb.am:                                            ; preds = %bb.al
  %i.dz = tail call fastcc i32 @test_function(ptr noundef nonnull @dirname_data, ptr noundef nonnull @posix_dirname, ptr noundef nonnull %i.t)
  br label %check_dotfile.exit

.critedge236.thread332:                           ; preds = %.thread311.thread, %bb.v, %bb.t
  %i.ea = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(17) @.str.18) #14
  %.not216 = icmp eq i32 %i.ea, 0
  br i1 %.not216, label %bb.an, label %bb.av

bb.an:                                            ; preds = %.critedge236.thread332
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !43 ; 2 uses
  %.not25.i = icmp eq ptr %i.ec, null
  br i1 %.not25.i, label %check_dotfile.exit, label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.an, %bb.au
  %i.ed = phi ptr [ %i.eu, %bb.au ], [ %i.ec, %bb.an ] ; 2 uses
  %.028.i = phi i32 [ %.1.i251, %bb.au ], [ 1, %bb.an ] ; 6 uses
  %.01527.i = phi i32 [ %.116.i, %bb.au ], [ 0, %bb.an ] ; 2 uses
  %.01726.i = phi ptr [ %i.et, %bb.au ], [ %i.eb, %bb.an ] ; 4 uses
  %i.ee = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.ed) #14
  %.not19.i = icmp eq i32 %i.ee, 0
  br i1 %.not19.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i250
  %.not20.i = icmp eq i32 %.028.i, 0
  %i.ef = zext i1 %.not20.i to i32
  br label %bb.au

bb.ap:                                            ; preds = %.lr.ph.i250
  %i.eg = tail call i32 @is_hfs_dotgitmodules(ptr noundef nonnull %i.ed) #15, !callees !49, !inline_history !28
  %.not21.i = icmp eq i32 %i.eg, 0
  br i1 %.not21.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eh = load ptr, ptr %.01726.i, align 8, !tbaa !43
  %i.ei = tail call i32 @is_ntfs_dotgitmodules(ptr noundef %i.eh) #15, !callees !50, !inline_history !28
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.el = phi i32 [ 1, %bb.ap ], [ %i.ek, %bb.aq ]
  %.not22.i = icmp eq i32 %.028.i, %i.el
  br i1 %.not22.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.em = load ptr, ptr %.01726.i, align 8, !tbaa !43
  %.not24.i = icmp eq i32 %.028.i, 0
  %i.en = select i1 %.not24.i, ptr @.str.42, ptr @.str.72
  %i.eo = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.71, ptr noundef %i.em, ptr noundef nonnull %i.en, ptr noundef nonnull @.str.19) #15 ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.eq = load ptr, ptr %.01726.i, align 8, !tbaa !43
  %.not23.i = icmp eq i32 %.028.i, 0
  %i.er = select i1 %.not23.i, ptr @.str.72, ptr @.str.42
  %i.es = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.73, ptr noundef %i.eq, ptr noundef nonnull %i.er, ptr noundef nonnull @.str.19) #17 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ao
  %.116.i = phi i32 [ -1, %bb.as ], [ %.01527.i, %bb.at ], [ %.01527.i, %bb.ao ] ; 2 uses
  %.1.i251 = phi i32 [ %.028.i, %bb.as ], [ %.028.i, %bb.at ], [ %i.ef, %bb.ao ]
  %i.et = getelementptr inbounds nuw i8, ptr %.01726.i, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !43 ; 2 uses
  %.not.i252 = icmp eq ptr %i.eu, null
  br i1 %.not.i252, label %._crit_edge.loopexit.i, label %.lr.ph.i250, !llvm.loop !29

._crit_edge.loopexit.i:                           ; preds = %bb.au
  %i.ev = icmp ne i32 %.116.i, 0
  %i.ew = zext i1 %i.ev to i32
  br label %check_dotfile.exit

bb.av:                                            ; preds = %.critedge236.thread332
  %i.ex = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(16) @.str.20) #14
  %.not217 = icmp eq i32 %i.ex, 0
  br i1 %.not217, label %bb.aw, label %.critedge238

bb.aw:                                            ; preds = %bb.av
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !43 ; 2 uses
  %.not25.i253 = icmp eq ptr %i.ez, null
  br i1 %.not25.i253, label %check_dotfile.exit, label %.lr.ph.i254

.lr.ph.i254:                                      ; preds = %bb.aw, %bb.bd
  %i.fa = phi ptr [ %i.fr, %bb.bd ], [ %i.ez, %bb.aw ] ; 2 uses
  %.028.i255 = phi i32 [ %.1.i263, %bb.bd ], [ 1, %bb.aw ] ; 6 uses
  %.01527.i256 = phi i32 [ %.116.i262, %bb.bd ], [ 0, %bb.aw ] ; 2 uses
  %.01726.i257 = phi ptr [ %i.fq, %bb.bd ], [ %i.ey, %bb.aw ] ; 4 uses
  %i.fb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.fa) #14
  %.not19.i258 = icmp eq i32 %i.fb, 0
  br i1 %.not19.i258, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i254
  %.not20.i268 = icmp eq i32 %.028.i255, 0
  %i.fc = zext i1 %.not20.i268 to i32
  br label %bb.bd

bb.ay:                                            ; preds = %.lr.ph.i254
  %i.fd = tail call i32 @is_hfs_dotgitignore(ptr noundef nonnull %i.fa) #15, !callees !49, !inline_history !28
  %.not21.i259 = icmp eq i32 %i.fd, 0
  br i1 %.not21.i259, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fe = load ptr, ptr %.01726.i257, align 8, !tbaa !43
  %i.ff = tail call i32 @is_ntfs_dotgitignore(ptr noundef %i.fe) #15, !callees !50, !inline_history !28
  %i.fg = icmp ne i32 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fi = phi i32 [ 1, %bb.ay ], [ %i.fh, %bb.az ]
  %.not22.i260 = icmp eq i32 %.028.i255, %i.fi
  br i1 %.not22.i260, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fj = load ptr, ptr %.01726.i257, align 8, !tbaa !43
  %.not24.i261 = icmp eq i32 %.028.i255, 0
  %i.fk = select i1 %.not24.i261, ptr @.str.42, ptr @.str.72
  %i.fl = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.71, ptr noundef %i.fj, ptr noundef nonnull %i.fk, ptr noundef nonnull @.str.21) #15 ; 0 uses
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.fn = load ptr, ptr %.01726.i257, align 8, !tbaa !43
  %.not23.i267 = icmp eq i32 %.028.i255, 0
  %i.fo = select i1 %.not23.i267, ptr @.str.72, ptr @.str.42
  %i.fp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fm, ptr noundef nonnull @.str.73, ptr noundef %i.fn, ptr noundef nonnull %i.fo, ptr noundef nonnull @.str.21) #17 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ax
  %.116.i262 = phi i32 [ -1, %bb.bb ], [ %.01527.i256, %bb.bc ], [ %.01527.i256, %bb.ax ] ; 2 uses
  %.1.i263 = phi i32 [ %.028.i255, %bb.bb ], [ %.028.i255, %bb.bc ], [ %i.fc, %bb.ax ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.01726.i257, i64 8 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !43 ; 2 uses
  %.not.i264 = icmp eq ptr %i.fr, null
  br i1 %.not.i264, label %._crit_edge.loopexit.i265, label %.lr.ph.i254, !llvm.loop !29

._crit_edge.loopexit.i265:                        ; preds = %bb.bd
  %i.fs = icmp ne i32 %.116.i262, 0
  %i.ft = zext i1 %i.fs to i32
  br label %check_dotfile.exit

.critedge238:                                     ; preds = %bb.av
  %i.fu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(20) @.str.22) #14
  %.not218 = icmp eq i32 %i.fu, 0
  br i1 %.not218, label %bb.be, label %.critedge239

bb.be:                                            ; preds = %.critedge238
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !43 ; 2 uses
  %.not25.i270 = icmp eq ptr %i.fw, null
  br i1 %.not25.i270, label %check_dotfile.exit, label %.lr.ph.i271

.lr.ph.i271:                                      ; preds = %bb.be, %bb.bl
  %i.fx = phi ptr [ %i.go, %bb.bl ], [ %i.fw, %bb.be ] ; 2 uses
  %.028.i272 = phi i32 [ %.1.i280, %bb.bl ], [ 1, %bb.be ] ; 6 uses
  %.01527.i273 = phi i32 [ %.116.i279, %bb.bl ], [ 0, %bb.be ] ; 2 uses
  %.01726.i274 = phi ptr [ %i.gn, %bb.bl ], [ %i.fv, %bb.be ] ; 4 uses
  %i.fy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.fx) #14
  %.not19.i275 = icmp eq i32 %i.fy, 0
  br i1 %.not19.i275, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i271
  %.not20.i285 = icmp eq i32 %.028.i272, 0
  %i.fz = zext i1 %.not20.i285 to i32
  br label %bb.bl

bb.bg:                                            ; preds = %.lr.ph.i271
  %i.ga = tail call i32 @is_hfs_dotgitattributes(ptr noundef nonnull %i.fx) #15, !callees !49, !inline_history !28
  %.not21.i276 = icmp eq i32 %i.ga, 0
  br i1 %.not21.i276, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gb = load ptr, ptr %.01726.i274, align 8, !tbaa !43
  %i.gc = tail call i32 @is_ntfs_dotgitattributes(ptr noundef %i.gb) #15, !callees !50, !inline_history !28
  %i.gd = icmp ne i32 %i.gc, 0
  %i.ge = zext i1 %i.gd to i32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.gf = phi i32 [ 1, %bb.bg ], [ %i.ge, %bb.bh ]
  %.not22.i277 = icmp eq i32 %.028.i272, %i.gf
  br i1 %.not22.i277, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gg = load ptr, ptr %.01726.i274, align 8, !tbaa !43
  %.not24.i278 = icmp eq i32 %.028.i272, 0
end_hunk_0
