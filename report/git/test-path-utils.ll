Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-path-utils?download=true
inline.NumInlined: 26
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cmd__path_utils:bb.a
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
  %i.ed = phi ptr [ %i.et, %bb.au ], [ %i.ec, %bb.an ] ; 2 uses
  %.028.i = phi i32 [ %.1.i251, %bb.au ], [ 1, %bb.an ] ; 6 uses
  %.01527.i = phi i32 [ %.116.i, %bb.au ], [ 0, %bb.an ] ; 2 uses
  %.01726.i = phi ptr [ %i.es, %bb.au ], [ %i.eb, %bb.an ] ; 4 uses
  %i.ee = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.ed) #14
  %.not19.i = icmp eq i32 %i.ee, 0
  br i1 %.not19.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i250
  %.not20.i = icmp eq i32 %.028.i, 0
  %11 = zext i1 %.not20.i to i32
  br label %bb.au

bb.ap:                                            ; preds = %.lr.ph.i250
  %i.ef = tail call i32 @is_hfs_dotgitmodules(ptr noundef nonnull %i.ed) #15, !callees !49, !inline_history !28
  %.not21.i = icmp eq i32 %i.ef, 0
  br i1 %.not21.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eg = load ptr, ptr %.01726.i, align 8, !tbaa !43
  %i.eh = tail call i32 @is_ntfs_dotgitmodules(ptr noundef %i.eg) #15, !callees !50, !inline_history !28
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ek = phi i32 [ 1, %bb.ap ], [ %i.ej, %bb.aq ]
  %.not22.i = icmp eq i32 %.028.i, %i.ek
  br i1 %.not22.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.el = load ptr, ptr %.01726.i, align 8, !tbaa !43
  %.not24.i = icmp eq i32 %.028.i, 0
  %i.em = select i1 %.not24.i, ptr @.str.42, ptr @.str.72
  %i.en = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.71, ptr noundef %i.el, ptr noundef nonnull %i.em, ptr noundef nonnull @.str.19) #15 ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.ep = load ptr, ptr %.01726.i, align 8, !tbaa !43
  %.not23.i = icmp eq i32 %.028.i, 0
  %i.eq = select i1 %.not23.i, ptr @.str.72, ptr @.str.42
  %i.er = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eo, ptr noundef nonnull @.str.73, ptr noundef %i.ep, ptr noundef nonnull %i.eq, ptr noundef nonnull @.str.19) #17 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ao
  %.116.i = phi i32 [ -1, %bb.as ], [ %.01527.i, %bb.at ], [ %.01527.i, %bb.ao ] ; 2 uses
  %.1.i251 = phi i32 [ %.028.i, %bb.as ], [ %.028.i, %bb.at ], [ %11, %bb.ao ]
  %i.es = getelementptr inbounds nuw i8, ptr %.01726.i, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !43 ; 2 uses
  %.not.i252 = icmp eq ptr %i.et, null
  br i1 %.not.i252, label %._crit_edge.loopexit.i, label %.lr.ph.i250, !llvm.loop !29

._crit_edge.loopexit.i:                           ; preds = %bb.au
  %i.eu = icmp ne i32 %.116.i, 0
  %i.ev = zext i1 %i.eu to i32
  br label %check_dotfile.exit

bb.av:                                            ; preds = %.critedge236.thread332
  %i.ew = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(16) @.str.20) #14
  %.not217 = icmp eq i32 %i.ew, 0
  br i1 %.not217, label %bb.aw, label %.critedge238

bb.aw:                                            ; preds = %bb.av
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !43 ; 2 uses
  %.not25.i253 = icmp eq ptr %i.ey, null
  br i1 %.not25.i253, label %check_dotfile.exit, label %.lr.ph.i254

.lr.ph.i254:                                      ; preds = %bb.aw, %bb.bd
  %i.ez = phi ptr [ %i.fp, %bb.bd ], [ %i.ey, %bb.aw ] ; 2 uses
  %.028.i255 = phi i32 [ %.1.i263, %bb.bd ], [ 1, %bb.aw ] ; 6 uses
  %.01527.i256 = phi i32 [ %.116.i262, %bb.bd ], [ 0, %bb.aw ] ; 2 uses
  %.01726.i257 = phi ptr [ %i.fo, %bb.bd ], [ %i.ex, %bb.aw ] ; 4 uses
  %i.fa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.ez) #14
  %.not19.i258 = icmp eq i32 %i.fa, 0
  br i1 %.not19.i258, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i254
  %.not20.i268 = icmp eq i32 %.028.i255, 0
  %12 = zext i1 %.not20.i268 to i32
  br label %bb.bd

bb.ay:                                            ; preds = %.lr.ph.i254
  %i.fb = tail call i32 @is_hfs_dotgitignore(ptr noundef nonnull %i.ez) #15, !callees !49, !inline_history !28
  %.not21.i259 = icmp eq i32 %i.fb, 0
  br i1 %.not21.i259, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fc = load ptr, ptr %.01726.i257, align 8, !tbaa !43
  %i.fd = tail call i32 @is_ntfs_dotgitignore(ptr noundef %i.fc) #15, !callees !50, !inline_history !28
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fg = phi i32 [ 1, %bb.ay ], [ %i.ff, %bb.az ]
  %.not22.i260 = icmp eq i32 %.028.i255, %i.fg
  br i1 %.not22.i260, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fh = load ptr, ptr %.01726.i257, align 8, !tbaa !43
  %.not24.i261 = icmp eq i32 %.028.i255, 0
  %i.fi = select i1 %.not24.i261, ptr @.str.42, ptr @.str.72
  %i.fj = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.71, ptr noundef %i.fh, ptr noundef nonnull %i.fi, ptr noundef nonnull @.str.21) #15 ; 0 uses
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.fl = load ptr, ptr %.01726.i257, align 8, !tbaa !43
  %.not23.i267 = icmp eq i32 %.028.i255, 0
  %i.fm = select i1 %.not23.i267, ptr @.str.72, ptr @.str.42
  %i.fn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.73, ptr noundef %i.fl, ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.21) #17 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ax
  %.116.i262 = phi i32 [ -1, %bb.bb ], [ %.01527.i256, %bb.bc ], [ %.01527.i256, %bb.ax ] ; 2 uses
  %.1.i263 = phi i32 [ %.028.i255, %bb.bb ], [ %.028.i255, %bb.bc ], [ %12, %bb.ax ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.01726.i257, i64 8 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !43 ; 2 uses
  %.not.i264 = icmp eq ptr %i.fp, null
  br i1 %.not.i264, label %._crit_edge.loopexit.i265, label %.lr.ph.i254, !llvm.loop !29

._crit_edge.loopexit.i265:                        ; preds = %bb.bd
  %i.fq = icmp ne i32 %.116.i262, 0
  %i.fr = zext i1 %i.fq to i32
  br label %check_dotfile.exit

.critedge238:                                     ; preds = %bb.av
  %i.fs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(20) @.str.22) #14
  %.not218 = icmp eq i32 %i.fs, 0
  br i1 %.not218, label %bb.be, label %.critedge239

bb.be:                                            ; preds = %.critedge238
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !43 ; 2 uses
  %.not25.i270 = icmp eq ptr %i.fu, null
  br i1 %.not25.i270, label %check_dotfile.exit, label %.lr.ph.i271

.lr.ph.i271:                                      ; preds = %bb.be, %bb.bl
  %i.fv = phi ptr [ %i.gl, %bb.bl ], [ %i.fu, %bb.be ] ; 2 uses
  %.028.i272 = phi i32 [ %.1.i280, %bb.bl ], [ 1, %bb.be ] ; 6 uses
  %.01527.i273 = phi i32 [ %.116.i279, %bb.bl ], [ 0, %bb.be ] ; 2 uses
  %.01726.i274 = phi ptr [ %i.gk, %bb.bl ], [ %i.ft, %bb.be ] ; 4 uses
  %i.fw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.fv) #14
  %.not19.i275 = icmp eq i32 %i.fw, 0
  br i1 %.not19.i275, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i271
  %.not20.i285 = icmp eq i32 %.028.i272, 0
  %13 = zext i1 %.not20.i285 to i32
  br label %bb.bl

bb.bg:                                            ; preds = %.lr.ph.i271
  %i.fx = tail call i32 @is_hfs_dotgitattributes(ptr noundef nonnull %i.fv) #15, !callees !49, !inline_history !28
  %.not21.i276 = icmp eq i32 %i.fx, 0
  br i1 %.not21.i276, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fy = load ptr, ptr %.01726.i274, align 8, !tbaa !43
  %i.fz = tail call i32 @is_ntfs_dotgitattributes(ptr noundef %i.fy) #15, !callees !50, !inline_history !28
  %i.ga = icmp ne i32 %i.fz, 0
  %i.gb = zext i1 %i.ga to i32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.gc = phi i32 [ 1, %bb.bg ], [ %i.gb, %bb.bh ]
  %.not22.i277 = icmp eq i32 %.028.i272, %i.gc
  br i1 %.not22.i277, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gd = load ptr, ptr %.01726.i274, align 8, !tbaa !43
  %.not24.i278 = icmp eq i32 %.028.i272, 0
  %i.ge = select i1 %.not24.i278, ptr @.str.42, ptr @.str.72
  %i.gf = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.71, ptr noundef %i.gd, ptr noundef nonnull %i.ge, ptr noundef nonnull @.str.23) #15 ; 0 uses
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.gh = load ptr, ptr %.01726.i274, align 8, !tbaa !43
  %.not23.i284 = icmp eq i32 %.028.i272, 0
  %i.gi = select i1 %.not23.i284, ptr @.str.72, ptr @.str.42
  %i.gj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gg, ptr noundef nonnull @.str.73, ptr noundef %i.gh, ptr noundef nonnull %i.gi, ptr noundef nonnull @.str.23) #17 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bf
  %.116.i279 = phi i32 [ -1, %bb.bj ], [ %.01527.i273, %bb.bk ], [ %.01527.i273, %bb.bf ] ; 2 uses
  %.1.i280 = phi i32 [ %.028.i272, %bb.bj ], [ %.028.i272, %bb.bk ], [ %13, %bb.bf ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.01726.i274, i64 8 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !43 ; 2 uses
  %.not.i281 = icmp eq ptr %i.gl, null
  br i1 %.not.i281, label %._crit_edge.loopexit.i282, label %.lr.ph.i271, !llvm.loop !29

._crit_edge.loopexit.i282:                        ; preds = %bb.bl
  %i.gm = icmp ne i32 %.116.i279, 0
  %i.gn = zext i1 %i.gm to i32
  br label %check_dotfile.exit

.critedge239:                                     ; preds = %.critedge238
  %i.go = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(14) @.str.24) #14
  %.not219 = icmp eq i32 %i.go, 0
  br i1 %.not219, label %bb.bm, label %.critedge240

bb.bm:                                            ; preds = %.critedge239
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !43 ; 2 uses
  %.not25.i287 = icmp eq ptr %i.gq, null
  br i1 %.not25.i287, label %check_dotfile.exit, label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %bb.bm, %bb.bt
  %i.gr = phi ptr [ %i.hh, %bb.bt ], [ %i.gq, %bb.bm ] ; 2 uses
  %.028.i289 = phi i32 [ %.1.i297, %bb.bt ], [ 1, %bb.bm ] ; 6 uses
  %.01527.i290 = phi i32 [ %.116.i296, %bb.bt ], [ 0, %bb.bm ] ; 2 uses
  %.01726.i291 = phi ptr [ %i.hg, %bb.bt ], [ %i.gp, %bb.bm ] ; 4 uses
  %i.gs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.gr) #14
  %.not19.i292 = icmp eq i32 %i.gs, 0
  br i1 %.not19.i292, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i288
  %.not20.i302 = icmp eq i32 %.028.i289, 0
  %14 = zext i1 %.not20.i302 to i32
  br label %bb.bt

bb.bo:                                            ; preds = %.lr.ph.i288
  %i.gt = tail call i32 @is_hfs_dotmailmap(ptr noundef nonnull %i.gr) #15, !callees !49, !inline_history !28
  %.not21.i293 = icmp eq i32 %i.gt, 0
  br i1 %.not21.i293, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gu = load ptr, ptr %.01726.i291, align 8, !tbaa !43
  %i.gv = tail call i32 @is_ntfs_dotmailmap(ptr noundef %i.gu) #15, !callees !50, !inline_history !28
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.gy = phi i32 [ 1, %bb.bo ], [ %i.gx, %bb.bp ]
  %.not22.i294 = icmp eq i32 %.028.i289, %i.gy
  br i1 %.not22.i294, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gz = load ptr, ptr %.01726.i291, align 8, !tbaa !43
  %.not24.i295 = icmp eq i32 %.028.i289, 0
  %i.ha = select i1 %.not24.i295, ptr @.str.42, ptr @.str.72
  %i.hb = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.71, ptr noundef %i.gz, ptr noundef nonnull %i.ha, ptr noundef nonnull @.str.25) #15 ; 0 uses
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.hd = load ptr, ptr %.01726.i291, align 8, !tbaa !43
  %.not23.i301 = icmp eq i32 %.028.i289, 0
  %i.he = select i1 %.not23.i301, ptr @.str.72, ptr @.str.42
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.73, ptr noundef %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull @.str.25) #17 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bn
  %.116.i296 = phi i32 [ -1, %bb.br ], [ %.01527.i290, %bb.bs ], [ %.01527.i290, %bb.bn ] ; 2 uses
  %.1.i297 = phi i32 [ %.028.i289, %bb.br ], [ %.028.i289, %bb.bs ], [ %14, %bb.bn ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.01726.i291, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !43 ; 2 uses
  %.not.i298 = icmp eq ptr %i.hh, null
  br i1 %.not.i298, label %._crit_edge.loopexit.i299, label %.lr.ph.i288, !llvm.loop !29

._crit_edge.loopexit.i299:                        ; preds = %bb.bt
  %i.hi = icmp ne i32 %.116.i296, 0
  %i.hj = zext i1 %i.hi to i32
  br label %check_dotfile.exit

.critedge240:                                     ; preds = %.critedge239
  %i.hk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(10) @.str.26) #14
  %.not220 = icmp eq i32 %i.hk, 0
  br i1 %.not220, label %.lr.ph379, label %.critedge241

.lr.ph379:                                        ; preds = %.critedge240
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %wide.trip.count417 = zext nneg i32 %0 to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph379, %bb.bx
  %indvars.iv414 = phi i64 [ 2, %.lr.ph379 ], [ %indvars.iv.next415, %bb.bx ] ; 2 uses
  %.0182376 = phi i32 [ 0, %.lr.ph379 ], [ %.1183, %bb.bx ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv414 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.ho = call i32 @stat64(ptr noundef %i.hn, ptr noundef nonnull %7) #15
  %.not221 = icmp eq i32 %i.ho, 0
  br i1 %.not221, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.hq = tail call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.27, ptr noundef %i.hp) #15 ; 0 uses
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.hr = load i64, ptr %i.hl, align 8, !tbaa !55
  %i.hs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i64 noundef %i.hr) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.1183 = phi i32 [ -1, %bb.bv ], [ %.0182376, %bb.bw ] ; 2 uses
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond418.not = icmp eq i64 %indvars.iv.next415, %wide.trip.count417
  br i1 %exitcond418.not, label %._crit_edge380, label %bb.bu, !llvm.loop !30

._crit_edge380:                                   ; preds = %bb.bx
  %i.ht = icmp ne i32 %.1183, 0
  %i.hu = zext i1 %i.ht to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %check_dotfile.exit

.critedge241:                                     ; preds = %.critedge240
  br i1 %i.bd, label %bb.by, label %bb.ci

bb.by:                                            ; preds = %.critedge241
  %i.hv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(13) @.str.29) #14
  %.not222 = icmp eq i32 %i.hv, 0
  br i1 %.not222, label %bb.bz, label %bb.ci

bb.bz:                                            ; preds = %bb.by
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !43
  %i.hy = tail call i32 (ptr, i32, ...) @open64(ptr noundef %i.hx, i32 noundef 0) #15 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !43
  %i.ib = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ia, ptr noundef null, i32 noundef 10) #15, !inline_history !31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.ic = icmp slt i32 %i.hy, 0
  br i1 %i.ic, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.id = load ptr, ptr %i.hw, align 8, !tbaa !43
  tail call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.30, ptr noundef %i.id) #16
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %sext = shl i64 %i.ib, 32
  %i.ie = ashr exact i64 %sext, 32
  %i.if = tail call i64 @lseek64(i32 noundef %i.hy, i64 noundef %i.ie, i32 noundef 0) #15
  %i.ig = icmp slt i64 %i.if, 0
  br i1 %i.ig, label %bb.cc, label %.preheader350.a

bb.cc:                                            ; preds = %bb.cb
  %i.ih = trunc i64 %i.ib to i32
  tail call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.31, i32 noundef %i.ih) #16
  unreachable

.preheader350.a:                                  ; preds = %bb.cb, %bb.cf
  %i.ii = call i64 @read(i32 noundef %i.hy, ptr noundef nonnull %i.f, i64 noundef 65536) #15 ; 3 uses
  %i.ij = icmp slt i64 %i.ii, 0
  br i1 %i.ij, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.preheader350.a
  %i.ik = load ptr, ptr %i.hw, align 8, !tbaa !43
  tail call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.32, ptr noundef %i.ik) #16
  unreachable

bb.ce:                                            ; preds = %.preheader350.a
  %.not223 = icmp eq i64 %i.ii, 0
  br i1 %.not223, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.il = call i64 @write(i32 noundef 1, ptr noundef nonnull %i.f, i64 noundef %i.ii) #15
  %i.im = icmp slt i64 %i.il, 0
  br i1 %i.im, label %bb.cg, label %.preheader350.a

bb.cg:                                            ; preds = %bb.cf
  tail call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.33) #16
  unreachable

bb.ch:                                            ; preds = %bb.ce
  %i.in = tail call i32 @close(i32 noundef %i.hy) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %check_dotfile.exit

bb.ci:                                            ; preds = %bb.by, %.critedge241
  %i.io = icmp samesign ugt i32 %0, 5
  br i1 %i.io, label %bb.cj, label %.thread339

bb.cj:                                            ; preds = %bb.ci
  %i.ip = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(12) @.str.34) #14
  %.not224 = icmp eq i32 %i.ip, 0
  br i1 %.not224, label %bb.ck, label %.thread339

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !43
  %i.is = tail call i64 @__isoc23_strtol(ptr noundef %i.ir, ptr noundef null, i32 noundef 10) #15 ; 4 uses
  %i.it = icmp slt i64 %i.is, 1
  br i1 %i.it, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.iu = load ptr, ptr %i.iq, align 8, !tbaa !43
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.35, ptr noundef %i.iu) #16
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !43
  %i.ix = tail call i64 @__isoc23_strtol(ptr noundef %i.iw, ptr noundef null, i32 noundef 10) #15 ; 3 uses
  %i.iy = icmp slt i64 %i.ix, 1
  %i.iz = icmp sgt i64 %i.ix, %i.is
  %or.cond = or i1 %i.iy, %i.iz
  br i1 %or.cond, label %bb.cn, label %.lr.ph370

.lr.ph370:                                        ; preds = %bb.cm
  %i.ja = zext nneg i32 %0 to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 48
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.jc = load ptr, ptr %i.iv, align 8, !tbaa !43
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.36, i64 noundef %i.is, ptr noundef %i.jc) #16
  unreachable

bb.co:                                            ; preds = %.lr.ph370, %bb.cr
  %.0176369 = phi i64 [ 4, %.lr.ph370 ], [ %i.jn, %bb.cr ] ; 2 uses
  %.0178368 = phi i32 [ 0, %.lr.ph370 ], [ %.1179, %bb.cr ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0176369 ; 3 uses
end_hunk_0
begin_hunk_1_@cmd__path_utils:bb.a
  %i.qs = tail call i64 @getnanotime() #15
  %i.qt = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.qu = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.qv = sub i64 %i.qs, %i.qr                    ; 4 uses
  %i.qw = uitofp i64 %i.qv to double
  %i.qx = fdiv double %i.qw, 1.000000e+06
  %i.qy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.qt, i32 noundef %i.qu, double noundef %i.qx) ; 0 uses
  %i.qz = add i64 %i.qn, %i.qv
  %i.ra = mul i64 %i.qv, %i.qv
  %i.rb = uitofp i64 %i.ra to double
  %i.rc = fadd double %i.qq, %i.rb
  %i.rd = tail call i64 @getnanotime() #15
  %i.re = tail call i64 @getnanotime() #15
  %i.rf = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.rg = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.rh = sub i64 %i.re, %i.rd                    ; 4 uses
  %i.ri = uitofp i64 %i.rh to double
  %i.rj = fdiv double %i.ri, 1.000000e+06
  %i.rk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.rf, i32 noundef %i.rg, double noundef %i.rj) ; 0 uses
  %i.rl = add i64 %i.qz, %i.rh
  %i.rm = mul i64 %i.rh, %i.rh
  %i.rn = uitofp i64 %i.rm to double
  %i.ro = fadd double %i.rc, %i.rn
  %i.rp = tail call i64 @getnanotime() #15
  %i.rq = tail call i64 @getnanotime() #15
  %i.rr = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.rs = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.rt = sub i64 %i.rq, %i.rp                    ; 4 uses
  %i.ru = uitofp i64 %i.rt to double
  %i.rv = fdiv double %i.ru, 1.000000e+06
  %i.rw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.rr, i32 noundef %i.rs, double noundef %i.rv) ; 0 uses
  %i.rx = add i64 %i.rl, %i.rt
  %i.ry = mul i64 %i.rt, %i.rt
  %i.rz = uitofp i64 %i.ry to double
  %i.sa = fadd double %i.ro, %i.rz
  %i.sb = tail call i64 @getnanotime() #15
  %i.sc = tail call i64 @getnanotime() #15
  %i.sd = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.se = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.sf = sub i64 %i.sc, %i.sb                    ; 4 uses
  %i.sg = uitofp i64 %i.sf to double
  %i.sh = fdiv double %i.sg, 1.000000e+06
  %i.si = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.sd, i32 noundef %i.se, double noundef %i.sh) ; 0 uses
  %i.sj = add i64 %i.rx, %i.sf
  %i.sk = mul i64 %i.sf, %i.sf
  %i.sl = uitofp i64 %i.sk to double
  %i.sm = fadd double %i.sa, %i.sl
  %i.sn = tail call i64 @getnanotime() #15
  %i.so = tail call i64 @getnanotime() #15
  %i.sp = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.sq = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.sr = sub i64 %i.so, %i.sn                    ; 4 uses
  %i.ss = uitofp i64 %i.sr to double
  %i.st = fdiv double %i.ss, 1.000000e+06
  %i.su = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.sp, i32 noundef %i.sq, double noundef %i.st) ; 0 uses
  %i.sv = add i64 %i.sj, %i.sr
  %i.sw = mul i64 %i.sr, %i.sr
  %i.sx = uitofp i64 %i.sw to double
  %i.sy = fadd double %i.sm, %i.sx
  %i.sz = tail call i64 @getnanotime() #15
  %i.ta = tail call i64 @getnanotime() #15
  %i.tb = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.tc = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.td = sub i64 %i.ta, %i.sz                    ; 4 uses
  %i.te = uitofp i64 %i.td to double
  %i.tf = fdiv double %i.te, 1.000000e+06
  %i.tg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.tb, i32 noundef %i.tc, double noundef %i.tf) ; 0 uses
  %i.th = add i64 %i.sv, %i.td
  %i.ti = mul i64 %i.td, %i.td
  %i.tj = uitofp i64 %i.ti to double
  %i.tk = fadd double %i.sy, %i.tj
  %i.tl = tail call i64 @getnanotime() #15
  %i.tm = tail call i64 @getnanotime() #15
  %i.tn = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.to = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.tp = sub i64 %i.tm, %i.tl                    ; 4 uses
  %i.tq = uitofp i64 %i.tp to double
  %i.tr = fdiv double %i.tq, 1.000000e+06
  %i.ts = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.tn, i32 noundef %i.to, double noundef %i.tr) ; 0 uses
  %i.tt = add i64 %i.th, %i.tp
  %i.tu = mul i64 %i.tp, %i.tp
  %i.tv = uitofp i64 %i.tu to double
  %i.tw = fadd double %i.tk, %i.tv
  %i.tx = tail call i64 @getnanotime() #15
  %i.ty = tail call i64 @getnanotime() #15
  %i.tz = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.ua = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.ub = sub i64 %i.ty, %i.tx                    ; 4 uses
  %i.uc = add i64 %i.tt, %i.ub
  %i.ud = mul i64 %i.ub, %i.ub
  %i.ue = uitofp i64 %i.ud to double
  %i.uf = fadd double %i.tw, %i.ue
  %i.ug = insertelement <2 x i64> poison, i64 %i.ub, i64 0
  %i.uh = insertelement <2 x i64> %i.ug, i64 %i.uc, i64 1
  %i.ui = uitofp <2 x i64> %i.uh to <2 x double>
  %i.uj = fdiv <2 x double> %i.ui, <double 1.000000e+06, double 1.500000e+01> ; 3 uses
  %i.uk = extractelement <2 x double> %i.uj, i64 0
  %i.ul = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.tz, i32 noundef %i.ua, double noundef %i.uk) ; 0 uses
  %i.um = load i32, ptr @protect_ntfs, align 4, !tbaa !60
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.un
  %i.up = load i32, ptr @protect_hfs, align 4, !tbaa !60
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.uo, i64 %i.uq
  %i.us = extractelement <2 x double> %i.uj, i64 1 ; 3 uses
  store double %i.us, ptr %i.ur, align 8, !tbaa !63
  %i.ut = fdiv double %i.uf, 1.500000e+01
  %i.uu = fneg double %i.us
  %i.uv = tail call double @llvm.fmuladd.f64(double %i.uu, double %i.us, double %i.ut) ; 3 uses
  %i.uw = fcmp oeq double %i.uv, 0.000000e+00
  br i1 %i.uw, label %my_sqrt.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader94.i, %.preheader.i.i
  %.013.i.i = phi double [ %i.vb, %.preheader.i.i ], [ %i.uv, %.preheader94.i ] ; 3 uses
  %i.ux = fdiv double %i.uv, %.013.i.i
  %i.uy = fsub double %i.ux, %.013.i.i
  %i.uz = fmul double %i.uy, 5.000000e-01         ; 2 uses
  %i.va = tail call double @llvm.fabs.f64(double %i.uz)
  %or.cond.i.i = fcmp uge double %i.va, f0x3EB0C6F7A0B5ED8D
  %i.vb = fadd double %.013.i.i, %i.uz            ; 2 uses
  br i1 %or.cond.i.i, label %.preheader.i.i, label %my_sqrt.exit.i

my_sqrt.exit.i:                                   ; preds = %.preheader.i.i, %.preheader94.i
  %.2.i.i = phi double [ 0.000000e+00, %.preheader94.i ], [ %i.vb, %.preheader.i.i ]
  %i.vc = shufflevector <2 x double> %i.uj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vd = insertelement <2 x double> %i.vc, double %.2.i.i, i64 1
  %i.ve = fdiv <2 x double> %i.vd, splat (double 1.000000e+06) ; 2 uses
  %i.vf = extractelement <2 x double> %i.ve, i64 0
  %i.vg = extractelement <2 x double> %i.ve, i64 1
  %i.vh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, double noundef %i.vf, double noundef %i.vg) ; 0 uses
  %i.vi = load i32, ptr @protect_hfs, align 4, !tbaa !60 ; 2 uses
  %i.vj = add nsw i32 %i.vi, 1
  store i32 %i.vj, ptr @protect_hfs, align 4, !tbaa !60
  %i.vk = icmp slt i32 %i.vi, 1
  br i1 %i.vk, label %.preheader94.i, label %.split112.i, !llvm.loop !35

.split112.i:                                      ; preds = %my_sqrt.exit.i
  %i.vl = load i32, ptr @protect_ntfs, align 4, !tbaa !60 ; 2 uses
  %i.vm = add nsw i32 %i.vl, 1
  store i32 %i.vm, ptr @protect_ntfs, align 4, !tbaa !60
  %i.vn = icmp slt i32 %i.vl, 1
  br i1 %i.vn, label %.preheader95.i, label %.preheader93.i, !llvm.loop !36

.preheader.i:                                     ; preds = %bb.dg, %.preheader93.i
  store i32 0, ptr @protect_hfs, align 4, !tbaa !60
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.preheader.i
  %storemerge65113.i = phi i32 [ 0, %.preheader.i ], [ %i.vz, %bb.df ] ; 2 uses
  %i.vo = load i32, ptr @protect_ntfs, align 4, !tbaa !60 ; 2 uses
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.vp
  %i.vr = sext i32 %storemerge65113.i to i64
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %i.vr
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !63
  %i.vu = fsub double %i.vt, %i.nm
  %i.vv = fmul double %i.vu, 1.000000e+02
  %i.vw = fdiv double %i.vv, %i.nm
  %i.vx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %i.vo, i32 noundef %storemerge65113.i, double noundef %i.vw) ; 0 uses
  %i.vy = load i32, ptr @protect_hfs, align 4, !tbaa !60 ; 2 uses
  %i.vz = add nsw i32 %i.vy, 1                    ; 2 uses
  store i32 %i.vz, ptr @protect_hfs, align 4, !tbaa !60
  %i.wa = icmp slt i32 %i.vy, 1
  br i1 %i.wa, label %bb.df, label %bb.dg, !llvm.loop !39

bb.dg:                                            ; preds = %bb.df
  %i.wb = load i32, ptr @protect_ntfs, align 4, !tbaa !60 ; 2 uses
  %i.wc = add nsw i32 %i.wb, 1
  store i32 %i.wc, ptr @protect_ntfs, align 4, !tbaa !60
  %i.wd = icmp slt i32 %i.wb, 1
  br i1 %i.wd, label %.preheader.i, label %protect_ntfs_hfs_benchmark.exit, !llvm.loop !40

protect_ntfs_hfs_benchmark.exit:                  ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %check_dotfile.exit

bb.dh:                                            ; preds = %.thread339
  %i.we = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(14) @.str.38) #14
  %.not228 = icmp eq i32 %i.we, 0
  br i1 %.not228, label %.preheader353, label %.critedge243

.preheader353:                                    ; preds = %bb.dh
  %i.wf = icmp samesign ugt i32 %0, 2
  br i1 %i.wf, label %.lr.ph366.preheader, label %check_dotfile.exit

.lr.ph366.preheader:                              ; preds = %.preheader353
  %wide.trip.count411 = zext nneg i32 %0 to i64
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader, %bb.dl
  %indvars.iv408 = phi i64 [ 2, %.lr.ph366.preheader ], [ %indvars.iv.next409, %bb.dl ] ; 2 uses
  %.0172364 = phi i32 [ 1, %.lr.ph366.preheader ], [ %.1173, %bb.dl ]
  %.0174363 = phi i32 [ 0, %.lr.ph366.preheader ], [ %.1175, %bb.dl ] ; 2 uses
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv408
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !43 ; 3 uses
  %i.wi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.wh) #14
  %.not229 = icmp eq i32 %i.wi, 0
  br i1 %.not229, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %.lr.ph366
  %.not230 = icmp eq i32 %.0172364, 1
  br i1 %.not230, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wj = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.wh, ptr noundef nonnull @.str.42) #15 ; 0 uses
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.wk = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.wl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wk, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.wh, ptr noundef nonnull @.str.42) #17 ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %.lr.ph366, %bb.dk, %bb.dj
  %.1175 = phi i32 [ -1, %bb.dj ], [ %.0174363, %bb.dk ], [ %.0174363, %.lr.ph366 ] ; 2 uses
  %.1173 = phi i32 [ 0, %bb.dj ], [ 1, %bb.dk ], [ 0, %.lr.ph366 ]
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count411
  br i1 %exitcond412.not, label %._crit_edge.loopexit, label %.lr.ph366, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %bb.dl
  %i.wm = icmp ne i32 %.1175, 0
  %i.wn = zext i1 %i.wm to i32
  br label %check_dotfile.exit

.critedge243:                                     ; preds = %bb.dh
  %i.wo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(30) @.str.44) #14
  %.not231 = icmp eq i32 %i.wo, 0
  br i1 %.not231, label %.preheader354, label %.critedge244

.preheader354:                                    ; preds = %.critedge243
  %i.wp = icmp samesign ugt i32 %0, 2
  br i1 %i.wp, label %.lr.ph, label %check_dotfile.exit

.lr.ph:                                           ; preds = %.preheader354
  %i.wq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.wr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph, %bb.dw
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.dw ] ; 2 uses
  %.0170361 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.dw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd__path_utils.buf, i64 24, i1 false)
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.wu = call i32 @lstat64(ptr noundef readonly %i.wt, ptr noundef nonnull %2) #15
  %.not.i307 = icmp eq i32 %i.wu, 0
  br i1 %.not.i307, label %bb.dn, label %.sink.split

bb.dn:                                            ; preds = %bb.dm
  %i.wv = call i32 @geteuid() #15                 ; 2 uses
  %i.ww = icmp eq i32 %i.wv, 0
  %i.wx = load i32, ptr %i.wq, align 4, !tbaa !64 ; 2 uses
  br i1 %i.ww, label %bb.do, label %is_path_owned_by_current_uid.exit

bb.do:                                            ; preds = %bb.dn
  %i.wy = icmp eq i32 %i.wx, 0
  br i1 %i.wy, label %is_path_owned_by_current_uid.exit.thread342, label %bb.dp

is_path_owned_by_current_uid.exit.thread342:      ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.wz = call ptr @getenv(ptr noundef nonnull @.str.80) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.wz, null
  br i1 %.not.i.i, label %.sink.split, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !16
  %.not5.i.i = icmp eq i8 %i.xa, 0
  br i1 %.not5.i.i, label %.sink.split, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.xb = tail call ptr @__errno_location() #18   ; 2 uses
  store i32 0, ptr %i.xb, align 4, !tbaa !60
  %i.xc = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.wz, ptr noundef nonnull %i.a, i32 noundef 10) #15
  %i.xd = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !16
  %.not6.i.i = icmp eq i8 %i.xe, 0
  br i1 %.not6.i.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.xf = load i32, ptr %i.xb, align 4, !tbaa !60
  %.not7.i.i = icmp eq i32 %i.xf, 0
  %i.xg = trunc i64 %i.xc to i32
  %spec.select.i = select i1 %.not7.i.i, i32 %i.xg, i32 0
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.01.i = phi i32 [ 0, %bb.dr ], [ %spec.select.i, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %is_path_owned_by_current_uid.exit

is_path_owned_by_current_uid.exit:                ; preds = %bb.dn, %bb.dt
  %.2.i = phi i32 [ %.01.i, %bb.dt ], [ %i.wv, %bb.dn ]
  %.not349 = icmp eq i32 %i.wx, %.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not349, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %is_path_owned_by_current_uid.exit.thread342, %is_path_owned_by_current_uid.exit
  %i.xh = load ptr, ptr %i.ws, align 8, !tbaa !43
  %i.xi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef %i.xh) ; 0 uses
  br label %bb.dw

.sink.split:                                      ; preds = %bb.dq, %bb.dp, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split, %is_path_owned_by_current_uid.exit
  %i.xj = load ptr, ptr %i.ws, align 8, !tbaa !43
  %i.xk = load ptr, ptr %i.wr, align 8, !tbaa !46
  %i.xl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, ptr noundef %i.xj, ptr noundef %i.xk) ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.1 = phi i32 [ %.0170361, %bb.du ], [ 1, %bb.dv ] ; 2 uses
  call void @strbuf_release(ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %check_dotfile.exit, label %bb.dm, !llvm.loop !42

.critedge244:                                     ; preds = %bb.d, %.critedge243
  %i.xm = phi ptr [ %i.t, %.critedge243 ], [ %.pre, %bb.d ] ; 2 uses
  %i.xn = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.xo = load ptr, ptr %1, align 8, !tbaa !43
  %.not233 = icmp eq ptr %i.xm, null
  %spec.select = select i1 %.not233, ptr @.str.48, ptr %i.xm
  %i.xp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xn, ptr noundef nonnull @.str.47, ptr noundef %i.xo, ptr noundef nonnull %spec.select) #17 ; 0 uses
  br label %check_dotfile.exit

check_dotfile.exit:                               ; preds = %bb.dw, %.lr.ph389, %.preheader353, %._crit_edge.loopexit, %.preheader354, %.preheader, %._crit_edge.loopexit.i299, %bb.bm, %._crit_edge.loopexit.i282, %bb.be, %._crit_edge.loopexit.i265, %bb.aw, %._crit_edge.loopexit.i, %bb.an, %.critedge244, %protect_ntfs_hfs_benchmark.exit, %._crit_edge375, %bb.ch, %._crit_edge380, %bb.am, %test_function.exit, %bb.ac, %bb.u, %bb.r, %._crit_edge386, %bb.o, %._crit_edge394, %._crit_edge399, %bb.c
  %.0184 = phi i32 [ 1, %.critedge244 ], [ %i.hj, %._crit_edge.loopexit.i299 ], [ 0, %.lr.ph389 ], [ 0, %protect_ntfs_hfs_benchmark.exit ], [ %i.kb, %._crit_edge375 ], [ 0, %bb.ch ], [ %i.hu, %._crit_edge380 ], [ %i.gn, %._crit_edge.loopexit.i282 ], [ %i.fr, %._crit_edge.loopexit.i265 ], [ %i.ev, %._crit_edge.loopexit.i ], [ 0, %.preheader ], [ %i.dz, %bb.am ], [ %.1.i, %test_function.exit ], [ 0, %bb.ac ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %._crit_edge386 ], [ 0, %bb.o ], [ 0, %bb.c ], [ 0, %._crit_edge394 ], [ 0, %._crit_edge399 ], [ 0, %bb.an ], [ 0, %bb.aw ], [ 0, %bb.be ], [ 0, %bb.bm ], [ %i.wn, %._crit_edge.loopexit ], [ 0, %.preheader354 ], [ 0, %.preheader353 ], [ %.1, %bb.dw ]
  ret i32 %.0184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @xmallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare i32 @normalize_path_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @strbuf_realpath(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare i32 @strbuf_readlink(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #6

declare ptr @absolute_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #6

declare i32 @string_list_split(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @filter_string_list(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @normalize_ceiling_entry(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  switch i8 %i.b, label %bb.c [
    i8 0, label %bb.b
    i8 47, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.49) #16
  unreachable
end_hunk_1
