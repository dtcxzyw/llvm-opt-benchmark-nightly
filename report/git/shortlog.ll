Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/shortlog?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cmd_shortlog:bb.a
  br i1 %.not16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @repo_set_hash_algo(ptr noundef nonnull %.pre36, i32 noundef 1) #17
  %.pre = load ptr, ptr @the_repository, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.bz = phi ptr [ %.pre, %bb.c ], [ %.pre36, %bb.b ], [ %.pre36, %bb.a ]
  call void @repo_config(ptr noundef %i.bz, ptr noundef nonnull @git_default_config, ptr noundef null) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %7, i8 0, i64 232, i1 false)
  %i.ca = load ptr, ptr @the_repository, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 184
  %i.cc = call i32 @read_mailmap(ptr noundef %i.ca, ptr noundef nonnull %i.cb) #17 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8
  %i.cf = or i8 %i.ce, 1
  store i8 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 76, ptr %i.cg, align 4, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 6, ptr %i.ch, align 8, !tbaa !39
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 9, ptr %i.ci, align 4, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8
  %i.cl = or i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr @strcasecmp, ptr %i.cm, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8
  %i.cp = or i8 %i.co, 1
  store i8 %i.cp, ptr %i.cn, align 8
  %i.cq = load ptr, ptr @the_repository, align 8, !tbaa !29
  call void @repo_init_revisions(ptr noundef %i.cq, ptr noundef nonnull %8, ptr noundef %2) #17
  call void @parse_options_start(ptr noundef nonnull %10, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i32 noundef 5) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.cr = call i32 @parse_options_step(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull @shortlog_usage) #17
  switch i32 %i.cr, label %bb.h [
    i32 0, label %bb.i
    i32 -3, label %bb.g
    i32 -2, label %bb.f
    i32 -1, label %bb.f
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.cs = call i32 @common_exit(ptr noundef nonnull @.str.19, i32 noundef 438, i32 noundef 129) #17
  call void @exit(i32 noundef %i.cs) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ct = call i32 @common_exit(ptr noundef nonnull @.str.19, i32 noundef 440, i32 noundef 0) #17
  call void @exit(i32 noundef %i.ct) #19
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @parse_revision_opt(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull @shortlog_usage) #17
  br label %bb.e

bb.i:                                             ; preds = %bb.e
  call void @revision_opts_finish(ptr noundef nonnull %8) #17
  %i.cu = call i32 @parse_options_end(ptr noundef nonnull %10) #17 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  %or.cond = select i1 %.not, i1 %i.cv, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cw = call fastcc ptr @_(ptr noundef nonnull @.str.20)
  %i.cx = call i32 (ptr, ...) @error(ptr noundef %i.cw) #17 ; 0 uses
  call void @usage_with_options(ptr noundef nonnull @shortlog_usage, ptr noundef nonnull %9) #19
  unreachable

bb.k:                                             ; preds = %bb.i
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = call i32 @setup_revisions(i32 noundef %i.cu, ptr noundef %1, ptr noundef nonnull %8, ptr noundef null) #17
  %.not17 = icmp eq i32 %i.cy, 1
  br i1 %.not17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = call fastcc ptr @_(ptr noundef nonnull @.str.21)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !24
  %i.dc = call i32 (ptr, ...) @error(ptr noundef %i.cz, ptr noundef %i.db) #17 ; 0 uses
  call void @usage_with_options(ptr noundef nonnull @shortlog_usage, ptr noundef nonnull %9) #19
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 380
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !145
  %i.df = icmp eq i32 %i.de, 8
  %i.dg = zext i1 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !27
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !146
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !22
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 1968
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !147
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 224
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !46
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false), !tbaa.struct !25
  %i.dq = load i32, ptr %i.f, align 8, !tbaa !37  ; 3 uses
  %.not18 = icmp eq i32 %i.dq, 0
  br i1 %.not18, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  store i32 1, ptr %i.f, align 8, !tbaa !37
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dr = and i32 %i.dq, 1
  %.not.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.dt = load i32, ptr %i.as, align 8, !tbaa !42
  %.not7.i = icmp eq i32 %i.dt, 0
  %i.du = select i1 %.not7.i, ptr @.str.3, ptr @.str.2
  %i.dv = call ptr @string_list_append(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.du) #17 ; 0 uses
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dw = phi i32 [ %.pre.i, %bb.p ], [ %i.dq, %bb.o ]
  %i.dx = and i32 %i.dw, 2
  %.not8.i = icmp eq i32 %i.dx, 0
  br i1 %.not8.i, label %shortlog_finish_setup.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.dz = load i32, ptr %i.as, align 8, !tbaa !42
  %.not9.i = icmp eq i32 %i.dz, 0
  %i.ea = select i1 %.not9.i, ptr @.str.5, ptr @.str.4
  %i.eb = call ptr @string_list_append(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.ea) #17 ; 0 uses
  br label %shortlog_finish_setup.exit

shortlog_finish_setup.exit:                       ; preds = %bb.q, %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @string_list_sort(ptr noundef nonnull %i.ec) #17
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8            ; 2 uses
  %i.ef = icmp ne i32 %i.ee, 0
  %or.cond5 = select i1 %.not, i1 true, i1 %i.ef
  br i1 %or.cond5, label %bb.u, label %bb.s

bb.s:                                             ; preds = %shortlog_finish_setup.exit
  %i.eg = call i32 @isatty(i32 noundef 0) #17
  %.not19 = icmp eq i32 %i.eg, 0
  br i1 %.not19, label %thread-pre-split, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @add_head_to_pending(ptr noundef nonnull %8) #17
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.s, %bb.t
  %.pr = load i32, ptr %i.ed, align 8, !tbaa !148
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %shortlog_finish_setup.exit
  %i.eh = phi i32 [ %.pr, %thread-pre-split ], [ %i.ee, %shortlog_finish_setup.exit ]
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.v, label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.ej = call i32 @isatty(i32 noundef 0) #17
  %.not20 = icmp eq i32 %i.ej, 0
  br i1 %.not20, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !149
  %i.el = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i = icmp eq i32 %i.el, 0
  br i1 %.not4.i, label %_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %bb.w, %bb.x
  %.0.i = phi ptr [ %i.em, %bb.x ], [ @.str.22, %bb.w ]
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ek, ptr noundef %.0.i) #20 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %_.exit, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_from_stdin.oneline, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_from_stdin.oneline, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_from_stdin.oneline, i64 24, i1 false)
  %i.eo = load i32, ptr %i.f, align 8, !tbaa !37  ; 2 uses
  %i.ep = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.eo) ; 2 uses
  %.not.i21 = icmp samesign ult i32 %i.ep, 2
  br i1 %.not.i21, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = call fastcc ptr @_(ptr noundef nonnull @.str.41)
  call void (ptr, ...) @die(ptr noundef %i.eq) #19
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.er = icmp eq i32 %i.ep, 1
  br i1 %i.er, label %.split.i, label %bb.ae

.split.i:                                         ; preds = %bb.aa
  %i.es = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.eo, i1 true)
  switch i32 %i.es, label %bb.ae [
    i32 0, label %bb.af
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
  ]

bb.ab:                                            ; preds = %.split.i
  br label %bb.af

bb.ac:                                            ; preds = %.split.i
  %i.et = call fastcc ptr @_(ptr noundef nonnull @.str.42)
  call void (ptr, ...) @die(ptr noundef %i.et, ptr noundef nonnull @.str.43) #19
  unreachable

bb.ad:                                            ; preds = %.split.i
  %i.eu = call fastcc ptr @_(ptr noundef nonnull @.str.42)
  call void (ptr, ...) @die(ptr noundef %i.eu, ptr noundef nonnull @.str.44) #19
  unreachable

bb.ae:                                            ; preds = %.split.i, %bb.aa
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.19, i32 noundef 143, ptr noundef nonnull @.str.45) #19
  unreachable

bb.af:                                            ; preds = %bb.ab, %.split.i
  %.0.i22 = phi ptr [ @read_from_stdin.committer_match, %bb.ab ], [ @read_from_stdin.author_match, %.split.i ] ; 2 uses
  %i.ev = load ptr, ptr @stdin, align 8, !tbaa !149
  %i.ew = call i32 @strbuf_getline_lf(ptr noundef nonnull %4, ptr noundef %i.ev) #17
  %.not720.i = icmp eq i32 %i.ew, -1
  br i1 %.not720.i, label %read_from_stdin.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ey = load ptr, ptr %.0.i22, align 16, !tbaa !24
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i22, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aq, %.lr.ph.i
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !33 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %.07.i.i = phi ptr [ %i.fe, %bb.ag ], [ %i.fg, %bb.ai ] ; 3 uses
  %.06.i.i = phi ptr [ %i.ey, %bb.ag ], [ %i.fi, %bb.ai ] ; 2 uses
  %i.ff = load i8, ptr %.06.i.i, align 1, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i, label %skip_prefix_impl.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.fh = load i8, ptr %.07.i.i, align 1, !tbaa !34
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1
  %i.fj = icmp eq i8 %i.fh, %i.ff
  br i1 %i.fj, label %bb.ah, label %skip_prefix_impl.exit.i, !llvm.loop !66

skip_prefix_impl.exit.i:                          ; preds = %bb.ai
  %i.fk = load ptr, ptr %i.ez, align 8, !tbaa !24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %skip_prefix_impl.exit.i
  %.07.i10.i = phi ptr [ %i.fe, %skip_prefix_impl.exit.i ], [ %i.fm, %bb.ak ] ; 3 uses
  %.06.i11.i = phi ptr [ %i.fk, %skip_prefix_impl.exit.i ], [ %i.fo, %bb.ak ] ; 2 uses
  %i.fl = load i8, ptr %.06.i11.i, align 1, !tbaa !34 ; 2 uses
  %.not.i12.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i12.i, label %skip_prefix_impl.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fm = getelementptr inbounds nuw i8, ptr %.07.i10.i, i64 1
  %i.fn = load i8, ptr %.07.i10.i, align 1, !tbaa !34
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i11.i, i64 1
  %i.fp = icmp eq i8 %i.fn, %i.fl
  br i1 %i.fp, label %bb.aj, label %skip_prefix_impl.exit13.i, !llvm.loop !66

skip_prefix_impl.exit13.i:                        ; preds = %bb.ak
  br label %bb.aq, !llvm.loop !67

skip_prefix_impl.exit.thread.i:                   ; preds = %bb.ah, %bb.aj
  %.014.i = phi ptr [ %.07.i10.i, %bb.aj ], [ %.07.i.i, %bb.ah ]
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %skip_prefix_impl.exit.thread.i
  %i.fq = load ptr, ptr @stdin, align 8, !tbaa !149
  %i.fr = call i32 @strbuf_getline_lf(ptr noundef nonnull %6, ptr noundef %i.fq) #17
  %i.fs = icmp ne i32 %i.fr, -1
  %i.ft = load i64, ptr %i.fa, align 8
  %i.fu = icmp ne i64 %i.ft, 0
  %i.fv = select i1 %i.fs, i1 %i.fu, i1 false
  br i1 %i.fv, label %bb.al, label %.preheader.i, !llvm.loop !68

.preheader.i:                                     ; preds = %bb.al, %.preheader.i
  %i.fw = load ptr, ptr @stdin, align 8, !tbaa !149
  %i.fx = call i32 @strbuf_getline_lf(ptr noundef nonnull %6, ptr noundef %i.fw) #17
  %.not8.i24 = icmp ne i32 %i.fx, -1
  %i.fy = load i64, ptr %i.fa, align 8
  %.not9.i25 = icmp eq i64 %i.fy, 0
  %or.cond.i = select i1 %.not8.i24, i1 %.not9.i25, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !69

.critedge.i:                                      ; preds = %.preheader.i
  store i64 0, ptr %i.fb, align 8, !tbaa !31
  %i.fz = load ptr, ptr %i.fc, align 8, !tbaa !33 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.fz, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.critedge.i
  store i8 0, ptr %i.fz, align 1, !tbaa !34
  br label %strbuf_setlen.exit.i

bb.an:                                            ; preds = %.critedge.i
  %i.ga = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !34
  %.not10.i.i = icmp eq i8 %i.ga, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.an, %bb.am
  %i.gb = call fastcc i32 @parse_ident(ptr noundef nonnull %7, ptr noundef %5, ptr noundef %.014.i)
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %bb.aq, label %bb.ap, !llvm.loop !67

bb.ap:                                            ; preds = %strbuf_setlen.exit.i
  %i.gd = load ptr, ptr %i.fc, align 8, !tbaa !33
  %i.ge = load ptr, ptr %i.fd, align 8, !tbaa !33
  call fastcc void @insert_one_record(ptr noundef nonnull %7, ptr noundef %i.gd, ptr noundef %i.ge)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %strbuf_setlen.exit.i, %skip_prefix_impl.exit13.i
  %i.gf = load ptr, ptr @stdin, align 8, !tbaa !149
  %i.gg = call i32 @strbuf_getline_lf(ptr noundef nonnull %4, ptr noundef %i.gf) #17
  %.not7.i23 = icmp eq i32 %i.gg, -1
  br i1 %.not7.i23, label %read_from_stdin.exit, label %bb.ag

read_from_stdin.exit:                             ; preds = %bb.aq, %bb.af
  call void @strbuf_release(ptr noundef nonnull %4) #17
  call void @strbuf_release(ptr noundef nonnull %5) #17
  call void @strbuf_release(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %get_from_rev.exit

bb.ar:                                            ; preds = %bb.u
  %i.gh = call i32 @prepare_revision_walk(ptr noundef nonnull %8) #17
  %.not.i26 = icmp eq i32 %i.gh, 0
  br i1 %.not.i26, label %.preheader.i27, label %bb.as

.preheader.i27:                                   ; preds = %bb.ar
  %i.gi = call ptr @get_revision(ptr noundef nonnull %8) #17 ; 2 uses
  %.not45.i = icmp eq ptr %i.gi, null
  br i1 %.not45.i, label %get_from_rev.exit, label %.lr.ph.i28

bb.as:                                            ; preds = %bb.ar
  %i.gj = call fastcc ptr @_(ptr noundef nonnull @.str.46)
  call void (ptr, ...) @die(ptr noundef %i.gj) #19
  unreachable

.lr.ph.i28:                                       ; preds = %.preheader.i27, %.lr.ph.i28
  %i.gk = phi ptr [ %i.gl, %.lr.ph.i28 ], [ %i.gi, %.preheader.i27 ]
  call void @shortlog_add_commit(ptr noundef nonnull %7, ptr noundef nonnull %i.gk)
  %i.gl = call ptr @get_revision(ptr noundef nonnull %8) #17 ; 2 uses
  %.not4.i29 = icmp eq ptr %i.gl, null
  br i1 %.not4.i29, label %get_from_rev.exit, label %.lr.ph.i28, !llvm.loop !70

get_from_rev.exit:                                ; preds = %.lr.ph.i28, %.preheader.i27, %read_from_stdin.exit
  call void @shortlog_output(ptr noundef nonnull %7)
  call void @release_revisions(ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @parse_wrap_args(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 7 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.f = zext i1 %.not to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %i.f, ptr %i.g, align 4, !tbaa !47
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.c, label %parse_uint.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 76, ptr %i.h, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 6, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 9, ptr %i.j, align 4, !tbaa !40
  br label %bb.j

parse_uint.exit:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.k = call i64 @__isoc23_strtoul(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i32 noundef 10) #17 ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34    ; 2 uses
  %.not.i = icmp ne i8 %i.m, 0                    ; 2 uses
  %.not10.i = icmp ne i8 %i.m, 44
  %or.cond.not13.i = and i1 %.not.i, %.not10.i
  %i.n = icmp ugt i64 %i.k, 2147483647
  %or.cond12.i = select i1 %or.cond.not13.i, i1 true, i1 %i.n ; 2 uses
  %i.o = icmp eq ptr %1, %i.l
  %i.p = trunc nuw nsw i64 %i.k to i32
  %i.q = select i1 %i.o, i32 76, i32 %i.p
  %.idx.i = zext i1 %.not.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  %.050 = select i1 %or.cond12.i, ptr %1, ptr %i.r ; 3 uses
  %.0.i = select i1 %or.cond12.i, i32 -1, i32 %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  store i32 %.0.i, ptr %i.s, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.t = call i64 @__isoc23_strtoul(ptr noundef nonnull %.050, ptr noundef nonnull %i.b, i32 noundef 10) #17 ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34    ; 2 uses
  %.not.i30 = icmp ne i8 %i.v, 0                  ; 2 uses
  %.not10.i31 = icmp ne i8 %i.v, 44
  %or.cond.not13.i32 = and i1 %.not.i30, %.not10.i31
  %i.w = icmp ugt i64 %i.t, 2147483647
  %or.cond12.i33 = select i1 %or.cond.not13.i32, i1 true, i1 %i.w ; 2 uses
  %i.x = icmp eq ptr %.050, %i.u
  %i.y = trunc nuw nsw i64 %i.t to i32
  %i.z = select i1 %i.x, i32 6, i32 %i.y
  %.idx.i34 = zext i1 %.not.i30 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i34
  %.1 = select i1 %or.cond12.i33, ptr %.050, ptr %i.aa ; 2 uses
  %.0.i35 = select i1 %or.cond12.i33, i32 -1, i32 %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  store i32 %.0.i35, ptr %i.ab, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ac = call i64 @__isoc23_strtoul(ptr noundef nonnull %.1, ptr noundef nonnull %i.a, i32 noundef 10) #17 ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !34
  %.not10.i38 = icmp ne i8 %i.ae, 0
  %i.af = icmp ugt i64 %i.ac, 2147483647
  %or.cond12.i40 = select i1 %.not10.i38, i1 true, i1 %i.af
  %i.ag = icmp eq ptr %.1, %i.ad
  %i.ah = trunc nuw nsw i64 %i.ac to i32
  %i.ai = select i1 %i.ag, i32 9, i32 %i.ah
  %.0.i42 = select i1 %or.cond12.i40, i32 -1, i32 %i.ai ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %.0.i42, ptr %i.aj, align 4, !tbaa !40
  %i.ak = load i32, ptr %i.s, align 4, !tbaa !38  ; 4 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %parse_uint.exit
  %i.am = load i32, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %3 = icmp slt i32 %i.am, 0
  %i.an = icmp slt i32 %.0.i42, 0
  %or.cond = select i1 %3, i1 true, i1 %i.an
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %parse_uint.exit
  %i.ao = call i32 (ptr, ...) @error(ptr noundef nonnull @wrap_arg_usage) #17 ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not24 = icmp eq i32 %i.ak, 0
  br i1 %.not24, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not26 = icmp samesign ugt i32 %i.ak, %i.am
  br i1 %.not26, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not27 = icmp eq i32 %.0.i42, 0
  %.not28 = icmp samesign ugt i32 %i.ak, %.0.i42
  %or.cond51 = select i1 %.not27, i1 true, i1 %.not28
  br i1 %or.cond51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = call i32 (ptr, ...) @error(ptr noundef nonnull @wrap_arg_usage) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.a, %bb.i, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.e ], [ -1, %bb.i ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @parse_group_option(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 11 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @string_list_clear(ptr noundef nonnull %i.d, i32 noundef 0) #17
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @string_list_clear(ptr noundef nonnull %i.e, i32 noundef 0) #17
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.30) #18
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = or i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !37
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.6) #18
  %.not21 = icmp eq i32 %i.j, 0
  br i1 %.not21, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.l = load i8, ptr %1, align 1, !tbaa !34      ; 2 uses
  %i.m = icmp eq i8 %i.l, 116
  br i1 %i.m, label %.preheader.1, label %skip_prefix_impl.exit.preheader

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37
  %i.p = or i32 %i.o, 2
  store i32 %i.p, ptr %i.n, align 8, !tbaa !37
  br label %bb.j

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.q = load i8, ptr %i.k, align 1, !tbaa !34
  %i.r = icmp eq i8 %i.q, 114
  br i1 %i.r, label %.preheader.2, label %skip_prefix_impl.exit26

.preheader.2:                                     ; preds = %.preheader.1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34
  %i.u = icmp eq i8 %i.t, 97
  br i1 %i.u, label %.preheader.3, label %skip_prefix_impl.exit26

.preheader.3:                                     ; preds = %.preheader.2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !34
  %i.x = icmp eq i8 %i.w, 105
  br i1 %i.x, label %.preheader.4, label %skip_prefix_impl.exit26

.preheader.4:                                     ; preds = %.preheader.3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = icmp eq i8 %i.z, 108
  br i1 %i.aa, label %.preheader.5, label %skip_prefix_impl.exit26

.preheader.5:                                     ; preds = %.preheader.4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %i.ad = icmp eq i8 %i.ac, 101
  br i1 %i.ad, label %.preheader.6, label %skip_prefix_impl.exit26

.preheader.6:                                     ; preds = %.preheader.5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %i.ag = icmp eq i8 %i.af, 114
  br i1 %i.ag, label %.preheader.7, label %skip_prefix_impl.exit26

.preheader.7:                                     ; preds = %.preheader.6
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !34
  %i.aj = icmp eq i8 %i.ai, 58
  br i1 %i.aj, label %.preheader.8, label %skip_prefix_impl.exit26

skip_prefix_impl.exit.preheader:                  ; preds = %.preheader.preheader
  %scevgep37 = getelementptr i8, ptr %1, i64 7
  %i.ak = icmp eq i8 %i.l, 102
  br i1 %i.ak, label %skip_prefix_impl.exit.1, label %skip_prefix_impl.exit26

.preheader.8:                                     ; preds = %.preheader.7
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !37
  %i.an = or i32 %i.am, 4
  store i32 %i.an, ptr %i.al, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ap = tail call ptr @string_list_append(ptr noundef nonnull %i.ao, ptr noundef %scevgep) #17 ; 0 uses
  br label %bb.j

skip_prefix_impl.exit.1:                          ; preds = %skip_prefix_impl.exit.preheader
  %i.aq = load i8, ptr %i.k, align 1, !tbaa !34
  %i.ar = icmp eq i8 %i.aq, 111
  br i1 %i.ar, label %skip_prefix_impl.exit.2, label %skip_prefix_impl.exit26

skip_prefix_impl.exit.2:                          ; preds = %skip_prefix_impl.exit.1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = icmp eq i8 %i.at, 114
  br i1 %i.au, label %skip_prefix_impl.exit.3, label %skip_prefix_impl.exit26

skip_prefix_impl.exit.3:                          ; preds = %skip_prefix_impl.exit.2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  %i.ax = icmp eq i8 %i.aw, 109
  br i1 %i.ax, label %skip_prefix_impl.exit.4, label %skip_prefix_impl.exit26

skip_prefix_impl.exit.4:                          ; preds = %skip_prefix_impl.exit.3
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !34
  %i.ba = icmp eq i8 %i.az, 97
  br i1 %i.ba, label %skip_prefix_impl.exit.5, label %skip_prefix_impl.exit26

skip_prefix_impl.exit.5:                          ; preds = %skip_prefix_impl.exit.4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !34
  %i.bd = icmp eq i8 %i.bc, 116
  br i1 %i.bd, label %skip_prefix_impl.exit.6, label %skip_prefix_impl.exit26

skip_prefix_impl.exit.6:                          ; preds = %skip_prefix_impl.exit.5
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !34
  %i.bg = icmp eq i8 %i.bf, 58
  br i1 %i.bg, label %skip_prefix_impl.exit.7, label %skip_prefix_impl.exit26

skip_prefix_impl.exit.7:                          ; preds = %skip_prefix_impl.exit.6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !37
  %i.bj = or i32 %i.bi, 8
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bl = tail call ptr @string_list_append(ptr noundef nonnull %i.bk, ptr noundef %scevgep37) #17 ; 0 uses
  br label %bb.j

skip_prefix_impl.exit26:                          ; preds = %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %skip_prefix_impl.exit.6, %skip_prefix_impl.exit.5, %skip_prefix_impl.exit.4, %skip_prefix_impl.exit.3, %skip_prefix_impl.exit.2, %skip_prefix_impl.exit.1, %skip_prefix_impl.exit.preheader
  %i.bm = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 37) #18
  %.not22 = icmp eq ptr %i.bm, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %skip_prefix_impl.exit26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !37
  %i.bp = or i32 %i.bo, 8
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.br = tail call ptr @string_list_append(ptr noundef nonnull %i.bq, ptr noundef nonnull %1) #17 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %skip_prefix_impl.exit26
  %i.bs = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i = icmp eq i32 %i.bs, 0
  br i1 %.not4.i, label %_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %bb.h, %bb.i
end_hunk_0
