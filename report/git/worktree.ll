inline.NumInlined: 81
inline.NumDeleted: 29
begin_hunk_0_@add:bb.a
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.kd = call i32 @run_command(ptr noundef nonnull %21) #16
  %.not94 = icmp eq i32 %i.kd, 0
  %i.ke = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br i1 %.not94, label %bb.cg, label %bb.fl

bb.ce:                                            ; preds = %bb.bw
  %i.kf = load ptr, ptr %i.e, align 8, !tbaa !48
  %.not90 = icmp eq ptr %i.kf, null
  br i1 %.not90, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kg = call fastcc ptr @_(ptr noundef nonnull @.str.53)
  call void (ptr, ...) @die(ptr noundef %i.kg) #17
  unreachable

bb.cg:                                            ; preds = %print_preparing_worktree_line.exit, %bb.cd, %bb.ce
  %.4 = phi ptr [ %.2, %bb.ce ], [ %i.ke, %bb.cd ], [ %i.jr, %print_preparing_worktree_line.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.delete_git_work_tree.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.delete_git_work_tree.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) @__const.delete_git_work_tree.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) @__const.add_worktree.child_env, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) @__const.delete_git_work_tree.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) @__const.delete_git_work_tree.sb, i64 24, i1 false)
  %i.kh = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.ki = call ptr @repo_config_values(ptr noundef %i.kh) #16
  %i.kj = call ptr @get_worktrees() #16           ; 2 uses
  %i.kk = load i32, ptr %17, align 8, !tbaa !61
  call fastcc void @check_candidate_path(ptr noundef %i.fq, i32 noundef %i.kk, ptr noundef %i.kj, ptr noundef nonnull @.str)
  call void @free_worktrees(ptr noundef %i.kj) #16
  %i.kl = load i32, ptr %i.aw, align 4, !tbaa !59
  %.not.i106 = icmp eq i32 %i.kl, 0
  br i1 %.not.i106, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  %i.km = call i32 @check_branch_ref(ptr noundef nonnull %13, ptr noundef %.4) #16
  %.not66.i = icmp eq i32 %i.km, 0
  br i1 %.not66.i, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.kn = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.ko = call ptr @get_main_ref_store(ptr noundef %i.kn) #16
  %i.kp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !62
  %i.kr = call i32 @refs_ref_exists(ptr noundef %i.ko, ptr noundef %i.kq) #16
  %.not67.i = icmp eq i32 %i.kr, 0
  br i1 %.not67.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ks = load i32, ptr %17, align 8, !tbaa !61
  %.not68.i = icmp eq i32 %i.ks, 0
  br i1 %.not68.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.kt = load ptr, ptr %i.kp, align 8, !tbaa !62
  call void @die_if_checked_out(ptr noundef %i.kt, i32 noundef 0) #16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg
  %i.ku = phi i1 [ true, %bb.cg ], [ true, %bb.ch ], [ false, %bb.cj ], [ false, %bb.ck ], [ true, %bb.ci ]
  %i.kv = call ptr @lookup_commit_reference_by_name(ptr noundef %.4) #16 ; 3 uses
  %i.kw = icmp ne ptr %i.kv, null                 ; 2 uses
  %i.kx = load i32, ptr %i.aj, align 8
  %.not69.i = icmp ne i32 %i.kx, 0
  %or.cond112.not = select i1 %i.kw, i1 true, i1 %.not69.i
  br i1 %or.cond112.not, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ky = call fastcc ptr @_(ptr noundef nonnull @.str.50)
  call void (ptr, ...) @die(ptr noundef %i.ky, ptr noundef %.4) #17
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.kz = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fq) #18 ; 2 uses
  %i.la = and i64 %i.kz, 4294967295
  %.not19.i.i = icmp eq i64 %i.la, 0
  br i1 %.not19.i.i, label %.critedge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.cn
  %sext.i.i = shl i64 %i.kz, 32
  %i.lb = ashr exact i64 %sext.i.i, 32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.co, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.lb, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.co ] ; 3 uses
  %i.lc = getelementptr i8, ptr %i.fq, i64 %indvars.iv.i.i
  %i.ld = getelementptr i8, ptr %i.lc, i64 -1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !65
  %.not17.i.i = icmp eq i8 %i.le, 47
  br i1 %.not17.i.i, label %bb.co, label %.critedge.i.i

bb.co:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !66

.critedge.i.i:                                    ; preds = %bb.co, %.lr.ph.i.i, %bb.cn
  %.0.lcssa.i.i = phi i64 [ 0, %bb.cn ], [ 0, %bb.co ], [ %indvars.iv.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.fq, i64 %.0.lcssa.i.i ; 3 uses
  %.014.i.i141 = getelementptr inbounds i8, ptr %i.lf, i64 -1 ; 2 uses
  %i.lg = icmp sgt i64 %.0.lcssa.i.i, 1
  br i1 %i.lg, label %.lr.ph144, label %worktree_basename.exit.i

bb.cp:                                            ; preds = %.lr.ph144
  %.014.i.i = getelementptr inbounds i8, ptr %.014.i.i143, i64 -1 ; 3 uses
  %i.lh = icmp ugt ptr %.014.i.i, %i.fq
  br i1 %i.lh, label %.lr.ph144, label %worktree_basename.exit.i, !llvm.loop !68

.lr.ph144:                                        ; preds = %.critedge.i.i, %bb.cp
  %.014.i.i143 = phi ptr [ %.014.i.i, %bb.cp ], [ %.014.i.i141, %.critedge.i.i ] ; 3 uses
  %.pn.i.i142 = phi ptr [ %.014.i.i143, %bb.cp ], [ %i.lf, %.critedge.i.i ]
  %i.li = load i8, ptr %.014.i.i143, align 1, !tbaa !65
  %.not18.i.i = icmp eq i8 %i.li, 47
  br i1 %.not18.i.i, label %.worktree_basename.exit.i_crit_edge, label %bb.cp, !llvm.loop !68

.worktree_basename.exit.i_crit_edge:              ; preds = %.lr.ph144
  br label %worktree_basename.exit.i, !llvm.loop !68

worktree_basename.exit.i:                         ; preds = %bb.cp, %.worktree_basename.exit.i_crit_edge, %.critedge.i.i
  %.1.i.i = phi ptr [ %.014.i.i141, %.critedge.i.i ], [ %.pn.i.i142, %.worktree_basename.exit.i_crit_edge ], [ %.014.i.i, %bb.cp ] ; 2 uses
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = ptrtoint ptr %.1.i.i to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @strbuf_add(ptr noundef nonnull %11, ptr noundef nonnull %.1.i.i, i64 noundef %i.ll) #16
  %i.lm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !62
  call void @sanitize_refname_component(ptr noundef %i.ln, ptr noundef nonnull %14) #16
  %i.lo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !72
  %.not70.i = icmp eq i64 %i.lp, 0
  br i1 %.not70.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %worktree_basename.exit.i
  %i.lq = load ptr, ptr %i.lm, align 8, !tbaa !62
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.61, i32 noundef 498, ptr noundef nonnull @.str.64, ptr noundef %i.lq) #17
  unreachable

bb.cr:                                            ; preds = %worktree_basename.exit.i
  %i.lr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.lr, align 8, !tbaa !72
  %i.ls = load ptr, ptr %i.lm, align 8, !tbaa !62 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ls, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store i8 0, ptr %i.ls, align 1, !tbaa !65
  br label %strbuf_setlen.exit.i

bb.ct:                                            ; preds = %bb.cr
  %i.lt = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !65
  %.not10.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @__assert_fail(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #17
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.ct, %bb.cs
  %i.lu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !62
  %i.lw = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.lx = call ptr (ptr, ptr, ptr, ...) @repo_git_path_replace(ptr noundef %i.lw, ptr noundef nonnull %10, ptr noundef nonnull @.str.65, ptr noundef %i.lv) #16 ; 0 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !72
  %i.ma = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.mb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 15 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !62
  %i.md = call i32 @safe_create_leading_directories_const(ptr noundef %i.ma, ptr noundef %i.mc) #16
  %.not71.i = icmp eq i32 %i.md, 0
  br i1 %.not71.i, label %.preheader.i, label %bb.cv

.preheader.i:                                     ; preds = %strbuf_setlen.exit.i
  %i.me = load ptr, ptr %i.mb, align 8, !tbaa !62
  %i.mf = call i32 @mkdir(ptr noundef %i.me, i32 noundef 511) #16
  %.not72130.i = icmp eq i32 %i.mf, 0
  br i1 %.not72130.i, label %._crit_edge.i, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.preheader.i
  %i.mg = tail call ptr @__errno_location() #19
  %sext.i108 = shl i64 %i.lz, 32
  %i.mh = ashr exact i64 %sext.i108, 32           ; 3 uses
  br label %bb.cw

bb.cv:                                            ; preds = %strbuf_setlen.exit.i
  %i.mi = call fastcc ptr @_(ptr noundef nonnull @.str.66)
  %i.mj = load ptr, ptr %i.mb, align 8, !tbaa !62
  call void (ptr, ...) @die_errno(ptr noundef %i.mi, ptr noundef %i.mj) #17
  unreachable

bb.cw:                                            ; preds = %strbuf_setlen.exit91.i, %.lr.ph.i107
  %.056131.i = phi i32 [ 0, %.lr.ph.i107 ], [ %i.mk, %strbuf_setlen.exit91.i ]
  %i.mk = add nuw i32 %.056131.i, 1               ; 2 uses
  %i.ml = load i32, ptr %i.mg, align 4, !tbaa !49
  %i.mm = icmp eq i32 %i.ml, 17
  br i1 %i.mm, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mn = call fastcc ptr @_(ptr noundef nonnull @.str.67)
  %i.mo = load ptr, ptr %i.mb, align 8, !tbaa !62
  call void (ptr, ...) @die_errno(ptr noundef %i.mn, ptr noundef %i.mo) #17
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.mp = load i64, ptr %10, align 8, !tbaa !73
  %spec.select.i88.i = call i64 @llvm.usub.sat.i64(i64 %i.mp, i64 1)
  %i.mq = icmp ugt i64 %i.mh, %spec.select.i88.i
  br i1 %i.mq, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.87, i32 noundef 167, ptr noundef nonnull @.str.88) #17
  unreachable

bb.da:                                            ; preds = %bb.cy
  store i64 %i.mh, ptr %i.ly, align 8, !tbaa !72
  %i.mr = load ptr, ptr %i.mb, align 8, !tbaa !62 ; 2 uses
  %.not9.i89.i = icmp eq ptr %i.mr, @strbuf_slopbuf
  br i1 %.not9.i89.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mh
  store i8 0, ptr %i.ms, align 1, !tbaa !65
  br label %strbuf_setlen.exit91.i

bb.dc:                                            ; preds = %bb.da
  %i.mt = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !65
  %.not10.i90.i = icmp eq i8 %i.mt, 0
  br i1 %.not10.i90.i, label %strbuf_setlen.exit91.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @__assert_fail(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #17
  unreachable

strbuf_setlen.exit91.i:                           ; preds = %bb.dc, %bb.db
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %10, ptr noundef nonnull @.str.68, i32 noundef %i.mk) #16
  %i.mu = load ptr, ptr %i.mb, align 8, !tbaa !62
  %i.mv = call i32 @mkdir(ptr noundef %i.mu, i32 noundef 511) #16
  %.not72.i = icmp eq i32 %i.mv, 0
  br i1 %.not72.i, label %._crit_edge.i, label %bb.cw, !llvm.loop !74

._crit_edge.i:                                    ; preds = %strbuf_setlen.exit91.i, %.preheader.i
  %i.mw = load ptr, ptr %i.mb, align 8, !tbaa !62
  %i.mx = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.mw, i32 noundef 47) #18
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 1 ; 2 uses
  %i.mz = call i32 @getpid() #16
  store i32 %i.mz, ptr @junk_pid, align 4, !tbaa !49
  %i.na = call i32 @atexit(ptr noundef nonnull @remove_junk) #16 ; 0 uses
  call void @sigchain_push_common(ptr noundef nonnull @remove_junk_on_signal) #16
  %i.nb = load ptr, ptr %i.mb, align 8, !tbaa !62
  %i.nc = call ptr @xstrdup(ptr noundef %i.nb) #16
  store ptr %i.nc, ptr @junk_git_dir, align 8, !tbaa !48
  store i1 true, ptr @is_junk, align 4
  %i.nd = load ptr, ptr %i.mb, align 8, !tbaa !62
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %11, ptr noundef nonnull @.str.69, ptr noundef %i.nd) #16
  %i.ne = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !60 ; 2 uses
  %.not73.i = icmp eq ptr %i.nf, null
  %i.ng = load ptr, ptr %i.lm, align 8, !tbaa !62 ; 2 uses
  br i1 %.not73.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %._crit_edge.i
  call void (ptr, ptr, ...) @write_file(ptr noundef %i.ng, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.nf) #16
  br label %bb.dh

bb.df:                                            ; preds = %._crit_edge.i
  %i.nh = load i32, ptr @git_gettext_enabled, align 4, !tbaa !49
  %.not4.i.i109 = icmp eq i32 %i.nh, 0
  br i1 %.not4.i.i109, label %_.exit.i110, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ni = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.71, i32 noundef 5) #16
  br label %_.exit.i110

_.exit.i110:                                      ; preds = %bb.dg, %bb.df
  %.0.i.i111 = phi ptr [ %i.ni, %bb.dg ], [ @.str.71, %bb.df ]
  call void (ptr, ptr, ...) @write_file(ptr noundef %i.ng, ptr noundef %.0.i.i111) #16
  br label %bb.dh

bb.dh:                                            ; preds = %_.exit.i110, %bb.de
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %9, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.fq) #16
  %i.nj = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.nk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !62
  %i.nm = call i32 @safe_create_leading_directories_const(ptr noundef %i.nj, ptr noundef %i.nl) #16
  %.not74.i = icmp eq i32 %i.nm, 0
  br i1 %.not74.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nn = call fastcc ptr @_(ptr noundef nonnull @.str.66)
  %i.no = load ptr, ptr %i.nk, align 8, !tbaa !62
  call void (ptr, ...) @die_errno(ptr noundef %i.nn, ptr noundef %i.no) #17
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.np = call ptr @xstrdup(ptr noundef nonnull %i.fq) #16
  store ptr %i.np, ptr @junk_work_tree, align 8, !tbaa !48
  store i64 0, ptr %i.lr, align 8, !tbaa !72
  %i.nq = load ptr, ptr %i.lm, align 8, !tbaa !62 ; 2 uses
  %.not9.i93.i = icmp eq ptr %i.nq, @strbuf_slopbuf
  br i1 %.not9.i93.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store i8 0, ptr %i.nq, align 1, !tbaa !65
  br label %strbuf_setlen.exit95.i

bb.dl:                                            ; preds = %bb.dj
  %i.nr = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !65
  %.not10.i94.i = icmp eq i8 %i.nr, 0
  br i1 %.not10.i94.i, label %strbuf_setlen.exit95.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @__assert_fail(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #17
  unreachable

strbuf_setlen.exit95.i:                           ; preds = %bb.dl, %bb.dk
  %i.ns = load ptr, ptr %i.mb, align 8, !tbaa !62
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %11, ptr noundef nonnull @.str.73, ptr noundef %i.ns) #16
  %i.nt = load ptr, ptr %i.nk, align 8, !tbaa !62
  %i.nu = load ptr, ptr %i.lm, align 8, !tbaa !62
  %i.nv = load i32, ptr %i.dw, align 4, !tbaa !58
  call void @write_worktree_linking_files(ptr noundef %i.nt, ptr noundef %i.nu, i32 noundef %i.nv) #16
  store i64 0, ptr %i.lr, align 8, !tbaa !72
  %i.nw = load ptr, ptr %i.lm, align 8, !tbaa !62 ; 2 uses
  %.not9.i97.i = icmp eq ptr %i.nw, @strbuf_slopbuf
  br i1 %.not9.i97.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %strbuf_setlen.exit95.i
  store i8 0, ptr %i.nw, align 1, !tbaa !65
  br label %strbuf_setlen.exit99.i

bb.do:                                            ; preds = %strbuf_setlen.exit95.i
  %i.nx = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !65
  %.not10.i98.i = icmp eq i8 %i.nx, 0
  br i1 %.not10.i98.i, label %strbuf_setlen.exit99.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @__assert_fail(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #17
  unreachable

strbuf_setlen.exit99.i:                           ; preds = %bb.do, %bb.dn
  %i.ny = load ptr, ptr %i.mb, align 8, !tbaa !62
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %11, ptr noundef nonnull @.str.74, ptr noundef %i.ny) #16
  %i.nz = load ptr, ptr %i.lm, align 8, !tbaa !62
  call void (ptr, ptr, ...) @write_file(ptr noundef %i.nz, ptr noundef nonnull @.str.75) #16
  %i.oa = call ptr @get_linked_worktree(ptr noundef nonnull %i.my, i32 noundef 1) #16 ; 8 uses
  %.not75.i = icmp eq ptr %i.oa, null
  br i1 %.not75.i, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %strbuf_setlen.exit99.i
  %i.ob = load i32, ptr @git_gettext_enabled, align 4, !tbaa !49
  %.not4.i100.i = icmp eq i32 %i.ob, 0
  br i1 %.not4.i100.i, label %_.exit102.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.oc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #16
  br label %_.exit102.i

_.exit102.i:                                      ; preds = %bb.dr, %bb.dq
  %.0.i101.i = phi ptr [ %i.oc, %bb.dr ], [ @.str.76, %bb.dq ]
  %i.od = call i32 (ptr, ...) @error(ptr noundef %.0.i101.i, ptr noundef nonnull %i.my) #16 ; 0 uses
  br label %.thread.i

bb.ds:                                            ; preds = %strbuf_setlen.exit99.i
  %i.oe = load ptr, ptr %i.mb, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.delete_git_work_tree.sb, i64 24, i1 false)
  %i.of = load ptr, ptr %i.oa, align 8, !tbaa !75 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 520
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !78 ; 4 uses
  %.not.i103.i = icmp eq ptr %i.oh, null
  br i1 %.not.i103.i, label %setup_alternate_ref_dir.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.val.i.i = load i8, ptr %i.oh, align 1, !tbaa !65
  %.not13.i.i = icmp eq i8 %.val.i.i, 47
  br i1 %.not13.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !79
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %8, ptr noundef nonnull @.str.90, ptr noundef %i.oj) #16
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %8, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.oh) #16
  %i.ok = load ptr, ptr %i.oa, align 8, !tbaa !75
  %i.ol = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !62
  call void @safe_create_dir(ptr noundef %i.ok, ptr noundef %i.om, i32 noundef 1) #16
  %i.on = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !80
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %8, ptr noundef nonnull @.str.92, ptr noundef %i.oo) #16
  %i.op = load ptr, ptr %i.oa, align 8, !tbaa !75
  %i.oq = load ptr, ptr %i.ol, align 8, !tbaa !62
  call void @safe_create_dir(ptr noundef %i.op, ptr noundef %i.oq, i32 noundef 1) #16
  %i.or = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_0
