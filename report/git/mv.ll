Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/mv?download=true
inline.NumInlined: 41
inline.NumDeleted: 12
begin_hunk_0_@cmd_mv:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 432
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !43
  %i.fi = call i32 @path_in_sparse_checkout(ptr noundef %.0.i341, ptr noundef %i.fh) #13
  %.not308 = icmp eq i32 %i.fi, 0
  br i1 %.not308, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %add_slash.exit342
  %i.fj = call fastcc i32 @empty_dir_has_sparse_contents(ptr noundef nonnull %i.ed)
  %.not309 = icmp eq i32 %i.fj, 0
  br i1 %.not309, label %bb.ah, label %_.exit345

bb.ah:                                            ; preds = %bb.ag, %add_slash.exit342
  call void @free(ptr noundef %.0.i341) #13
  %i.fk = getelementptr inbounds [4 x i8], ptr %.0255510, i64 %i.eb
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !12
  %i.fm = and i32 %i.fl, 8
  %.not310 = icmp eq i32 %i.fm, 0
  br i1 %.not310, label %bb.ai, label %_.exit354.thread426

bb.ai:                                            ; preds = %bb.ah
  %i.fn = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i343 = icmp eq i32 %i.fn, 0
  br i1 %.not4.i343, label %_.exit354.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fo = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #13
  br label %_.exit354

bb.ak:                                            ; preds = %bb.aa
  %i.fp = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 432
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !43 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !55
  %i.ft = zext nneg i32 %i.es to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !57
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !12
  %i.fy = and i32 %i.fx, 1073741824
  %.not305 = icmp eq i32 %i.fy, 0
  br i1 %.not305, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i346 = icmp eq i32 %i.fz, 0
  br i1 %.not4.i346, label %_.exit354.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ga = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #13
  br label %_.exit354

bb.an:                                            ; preds = %bb.ak
  %i.gb = load i32, ptr %i.f, align 4, !tbaa !12
  %.not306 = icmp eq i32 %i.gb, 0
  br i1 %.not306, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gc = call ptr @string_list_append(ptr noundef nonnull %16, ptr noundef nonnull %i.ed) #13 ; 0 uses
  br label %_.exit354.thread426

bb.ap:                                            ; preds = %bb.an
  %i.gd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #15
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = call i32 @index_name_pos(ptr noundef nonnull %i.fr, ptr noundef nonnull %i.eg, i32 noundef %i.ge) #13
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gh = getelementptr inbounds [4 x i8], ptr %.0255510, i64 %i.eb ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12
  %i.gj = or i32 %i.gi, 8
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !12
  br label %_.exit354.thread426

bb.ar:                                            ; preds = %bb.ap
  %i.gk = load i32, ptr %i.d, align 4, !tbaa !12
  %.not307 = icmp eq i32 %i.gk, 0
  br i1 %.not307, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gl = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i349 = icmp eq i32 %i.gl, 0
  br i1 %.not4.i349, label %_.exit354.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #13
  br label %_.exit354

bb.au:                                            ; preds = %bb.ar
  %i.gn = getelementptr inbounds [4 x i8], ptr %.0255510, i64 %i.eb ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !12
  %i.gp = or i32 %i.go, 8
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !12
  br label %_.exit354.thread426

_.exit345:                                        ; preds = %bb.ag
  call void @free(ptr noundef %.0.i341) #13
  %i.gq = getelementptr inbounds [4 x i8], ptr %.0255510, i64 %i.eb ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !12
  %i.gs = or i32 %i.gr, 16
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !12
  br label %bb.bd

bb.av:                                            ; preds = %bb.z
  %sext = shl i64 %i.el, 32
  %i.gt = ashr exact i64 %sext, 32                ; 2 uses
  %i.gu = call i32 @strncmp(ptr noundef nonnull %i.ed, ptr noundef %i.eg, i64 noundef %i.gt) #15
  %.not304 = icmp eq i32 %i.gu, 0
  br i1 %.not304, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gv = getelementptr inbounds i8, ptr %i.eg, i64 %i.gt
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !20
  switch i8 %i.gw, label %bb.az [
    i8 0, label %bb.ax
    i8 47, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.gx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i352 = icmp eq i32 %i.gx, 0
  br i1 %.not4.i352, label %_.exit354.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #13
  br label %_.exit354

bb.az:                                            ; preds = %bb.aw, %bb.av
  %i.gz = load i32, ptr %i.dt, align 8, !tbaa !86
  %i.ha = and i32 %i.gz, 61440
  %i.hb = icmp eq i32 %i.ha, 16384
  br i1 %i.hb, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.hc = call i32 @lstat64(ptr noundef %i.eg, ptr noundef nonnull %13) #13
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.he = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i355 = icmp eq i32 %i.he, 0
  br i1 %.not4.i355, label %_.exit354.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #13
  br label %_.exit354

bb.bd:                                            ; preds = %_.exit345, %bb.az, %bb.ba
  %i.hg = load i32, ptr %i.dt, align 8, !tbaa !86
  %i.hh = and i32 %i.hg, 61440
  %i.hi = icmp eq i32 %i.hh, 16384
  br i1 %i.hi, label %bb.be, label %bb.bv

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.hj = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 432
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !43
  %i.hm = call i32 @index_name_pos(ptr noundef %i.hl, ptr noundef nonnull %i.ed, i32 noundef %i.em) #13 ; 3 uses
  store i32 %i.hm, ptr %i.g, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.hn = icmp sgt i32 %i.hm, -1
  br i1 %i.hn, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.remove_empty_src_dirs.a_src_dir, i64 24, i1 false)
  %i.ho = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 432
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !43 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !55
  %i.hs = zext nneg i32 %i.hm to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !57
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 52
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !12
  %i.hx = and i32 %i.hw, 61440
  %i.hy = icmp eq i32 %i.hx, 57344
  br i1 %i.hy, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hz = call fastcc ptr @_(ptr noundef nonnull @.str.36)
  call void (ptr, ...) @die(ptr noundef %i.hz, ptr noundef nonnull %i.ed) #14
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.ia = call i32 @is_staging_gitmodules_ok(ptr noundef nonnull %i.hq) #13
  %.not.i358 = icmp eq i32 %i.ia, 0
  br i1 %.not.i358, label %bb.bi, label %submodule_gitfile_path.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ib = call fastcc ptr @_(ptr noundef nonnull @.str.37)
  call void (ptr, ...) @die(ptr noundef %i.ib) #14
  unreachable

submodule_gitfile_path.exit:                      ; preds = %bb.bh
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.ed) #13
  %i.ic = load ptr, ptr %i.du, align 8, !tbaa !88
  %i.id = call ptr @read_gitfile_gently(ptr noundef %i.ic, ptr noundef null) #13 ; 2 uses
  call void @strbuf_release(ptr noundef nonnull %5) #13
  %.not6.i = icmp eq ptr %i.id, null
  %..i = select i1 %.not6.i, ptr inttoptr (i64 1 to ptr), ptr %i.id ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.not330 = icmp eq ptr %..i, inttoptr (i64 1 to ptr)
  br i1 %.not330, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %submodule_gitfile_path.exit
  %i.ie = call ptr @strvec_push(ptr noundef nonnull %10, ptr noundef nonnull %..i) #13
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %submodule_gitfile_path.exit
  %.0241 = phi ptr [ %i.ie, %bb.bj ], [ %..i, %submodule_gitfile_path.exit ]
  %i.if = getelementptr inbounds [8 x i8], ptr %.0236511, i64 %i.eb
  store ptr %.0241, ptr %i.if, align 8, !tbaa !18
  br label %_.exit361

bb.bl:                                            ; preds = %bb.be
  %i.ig = call fastcc i32 @index_range_of_same_dir(ptr noundef nonnull %i.ed, i32 noundef %i.em, ptr noundef %i.g, ptr noundef %i.h)
  %i.ih = icmp slt i32 %i.ig, 1
  br i1 %i.ih, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ii = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i359 = icmp eq i32 %i.ii, 0
  br i1 %.not4.i359, label %_.exit361, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ij = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #13
  br label %_.exit361

bb.bo:                                            ; preds = %bb.bl
  %i.ik = call ptr @xmalloc(i64 noundef 24) #13   ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store ptr %i.ed, ptr %i.il, align 8, !tbaa !61
  %i.im = call i32 @fspathhash(ptr noundef nonnull %i.ed) #13
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i32 %i.im, ptr %i.in, align 8, !tbaa !89
  store ptr null, ptr %i.ik, align 8, !tbaa !90
  call void @hashmap_add(ptr noundef nonnull %18, ptr noundef nonnull %i.ik) #13
  %i.io = getelementptr inbounds [4 x i8], ptr %.0255510, i64 %i.eb ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !12
  %i.iq = or i32 %i.ip, 2
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !12
  %i.ir = call ptr @strvec_push(ptr noundef nonnull %11, ptr noundef nonnull %i.ed) #13 ; 0 uses
  %i.is = load i32, ptr %i.h, align 4, !tbaa !12
  %i.it = add nsw i32 %i.is, %.0513
  %i.iu = load i32, ptr %i.g, align 4, !tbaa !12
  %i.iv = sub i32 %i.it, %i.iu                    ; 2 uses
  %i.iw = sext i32 %i.iv to i64                   ; 3 uses
  %mul.ov.i = icmp slt i32 %i.iv, 0
  br i1 %mul.ov.i, label %bb.bp, label %st_mult.exit

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @die(ptr noundef nonnull @.str.40, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.iw) #14
  unreachable

st_mult.exit:                                     ; preds = %bb.bo
  %i.ix = shl nuw nsw i64 %i.iw, 2
  %i.iy = call ptr @xrealloc(ptr noundef nonnull %.0255510, i64 noundef %i.ix) #13 ; 2 uses
  %i.iz = shl nuw nsw i64 %i.iw, 3
  %i.ja = call ptr @xrealloc(ptr noundef %.0236511, i64 noundef %i.iz) #13 ; 2 uses
  %i.jb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #15 ; 6 uses
  %.not.i365 = icmp eq i64 %i.jb, 0
  br i1 %.not.i365, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %st_mult.exit
  %i.jc = getelementptr i8, ptr %i.eg, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.jc, i64 -1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !20
  %.not15.i366 = icmp eq i8 %i.je, 47
  br i1 %.not15.i366, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jf = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 1, 0) %i.jb, i64 2) ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.jf, 1
  br i1 %i.jg, label %bb.bs, label %st_add.exit.i367

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @die(ptr noundef nonnull @.str.35, i64 noundef range(i64 1, 0) %i.jb, i64 noundef 2) #14
  unreachable

st_add.exit.i367:                                 ; preds = %bb.br
  %i.jh = extractvalue { i64, i1 } %i.jf, 0
  %i.ji = call ptr @xmalloc(i64 noundef %i.jh) #13 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr nonnull align 1 %i.eg, i64 %i.jb, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jb ; 2 uses
  store i8 47, ptr %i.jj, align 1, !tbaa !20
  %i.jk = getelementptr i8, ptr %i.jj, i64 1
  store i8 0, ptr %i.jk, align 1, !tbaa !20
  br label %add_slash.exit369

bb.bt:                                            ; preds = %bb.bq, %st_mult.exit
  %i.jl = call ptr @xstrdup(ptr noundef nonnull %i.eg) #13
  br label %add_slash.exit369

add_slash.exit369:                                ; preds = %st_add.exit.i367, %bb.bt
  %.0.i368 = phi ptr [ %i.ji, %st_add.exit.i367 ], [ %i.jl, %bb.bt ] ; 3 uses
  %i.jm = load i32, ptr %i.h, align 4, !tbaa !12
  %i.jn = load i32, ptr %i.g, align 4, !tbaa !12  ; 2 uses
  %i.jo = sub nsw i32 %i.jm, %i.jn                ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %add_slash.exit369
  %i.jq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i368) #15
  %i.jr = trunc i64 %i.jq to i32
  %sext328 = shl i64 %i.el, 32
  %i.js = ashr exact i64 %sext328, 32
  %i.jt = sext i32 %i.jn to i64
  %i.ju = sext i32 %.0513 to i64
  %wide.trip.count = zext nneg i32 %i.jo to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph, %bb.bu
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bu ] ; 3 uses
  %i.jv = load ptr, ptr @the_repository, align 8, !tbaa !17 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 432
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !43
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !55
  %i.jz = getelementptr [8 x i8], ptr %i.jy, i64 %indvars.iv
  %i.ka = getelementptr [8 x i8], ptr %i.jz, i64 %i.jt
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !57 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 108 ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.js
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.kf = call ptr @prefix_path(ptr noundef %i.jv, ptr noundef nonnull %.0.i368, i32 noundef %i.jr, ptr noundef nonnull %i.ke) #13 ; 2 uses
  %i.kg = call ptr @strvec_push(ptr noundef nonnull %7, ptr noundef nonnull %i.kc) #13 ; 0 uses
  %i.kh = call ptr @strvec_push(ptr noundef nonnull %9, ptr noundef %i.kf) #13 ; 0 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !12
  %i.kk = and i32 %i.kj, 1073741824
  %.not329 = icmp eq i32 %i.kk, 0
  %i.kl = select i1 %.not329, i32 36, i32 40
  %i.km = add nsw i64 %indvars.iv, %i.ju          ; 2 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.km
  store i32 %i.kl, ptr %i.kn, align 4, !tbaa !12
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.km
  store ptr null, ptr %i.ko, align 8, !tbaa !18
  call void @free(ptr noundef %i.kf) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bu, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.bu, %add_slash.exit369
  call void @free(ptr noundef nonnull %.0.i368) #13
  %i.kp = add nsw i32 %i.jo, %.0513
  br label %_.exit361

_.exit361:                                        ; preds = %bb.bn, %bb.bm, %._crit_edge, %bb.bk
  %.1256 = phi ptr [ %.0255510, %bb.bk ], [ %i.iy, %._crit_edge ], [ %.0255510, %bb.bm ], [ %.0255510, %bb.bn ]
  %.4252 = phi ptr [ null, %bb.bk ], [ null, %._crit_edge ], [ @.str.16, %bb.bm ], [ %i.ij, %bb.bn ]
  %.1237 = phi ptr [ %.0236511, %bb.bk ], [ %i.ja, %._crit_edge ], [ %.0236511, %bb.bm ], [ %.0236511, %bb.bn ]
  %.1 = phi i32 [ %.0513, %bb.bk ], [ %i.kp, %._crit_edge ], [ %.0513, %bb.bm ], [ %.0513, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %_.exit354

bb.bv:                                            ; preds = %bb.bd
  %i.kq = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 432
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !43
  %i.kt = call ptr @index_file_exists(ptr noundef %i.ks, ptr noundef nonnull %i.ed, i32 noundef %i.em, i32 noundef 0) #13 ; 2 uses
  %.not311 = icmp eq ptr %i.kt, null
  br i1 %.not311, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ku = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i370 = icmp eq i32 %i.ku, 0
  br i1 %.not4.i370, label %_.exit354.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #13
  br label %_.exit354

bb.by:                                            ; preds = %bb.bv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 56
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !12
  %i.ky = and i32 %i.kx, 12288
  %.not312 = icmp eq i32 %i.ky, 0
  br i1 %.not312, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i373 = icmp eq i32 %i.kz, 0
  br i1 %.not4.i373, label %_.exit354.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.la = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #13
  br label %_.exit354

bb.cb:                                            ; preds = %bb.by
  %i.lb = call i32 @lstat64(ptr noundef %i.eg, ptr noundef nonnull %12) #13
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.cc, label %bb.cm

bb.cc:                                            ; preds = %bb.cb
  %i.ld = load i32, ptr @ignore_case, align 4, !tbaa !12
  %.not313 = icmp eq i32 %i.ld, 0
  br i1 %.not313, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.le = call i32 @strcasecmp(ptr noundef nonnull %i.ed, ptr noundef %i.eg) #15
  %.not314 = icmp eq i32 %i.le, 0
  br i1 %.not314, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.lf = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i376 = icmp eq i32 %i.lf, 0
  br i1 %.not4.i376, label %_.exit378, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #13
end_hunk_0
begin_hunk_1_@cmd_mv:bb.a

bb.ct:                                            ; preds = %bb.cs
  %i.lz = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 432
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !43
  %i.mc = trunc i64 %i.ls to i32
  %i.md = call i32 @index_entry_exists(ptr noundef %i.mb, ptr noundef nonnull %i.eg, i32 noundef %i.mc) #13
  %.not318 = icmp eq i32 %i.md, 0
  br i1 %.not318, label %thread-pre-split, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.me = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i391 = icmp eq i32 %i.me, 0
  br i1 %.not4.i391, label %_.exit393, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #13
  br label %_.exit393

_.exit393:                                        ; preds = %bb.cu, %bb.cv
  %.0.i392 = phi ptr [ %i.mf, %bb.cv ], [ @.str.23, %bb.cu ]
  %i.mg = load i32, ptr %i.d, align 4, !tbaa !12
  %.not319 = icmp eq i32 %i.mg, 0
  br i1 %.not319, label %_.exit354, label %bb.cw

bb.cw:                                            ; preds = %_.exit393
  %i.mh = load i32, ptr %i.b, align 4, !tbaa !12
  %.not320 = icmp eq i32 %i.mh, 0
  br i1 %.not320, label %thread-pre-split, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mi = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i394 = icmp eq i32 %i.mi, 0
  br i1 %.not4.i394, label %_.exit396, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #13
  br label %_.exit396

_.exit396:                                        ; preds = %bb.cx, %bb.cy
  %.0.i395 = phi ptr [ %i.mj, %bb.cy ], [ @.str.19, %bb.cx ]
  call void (ptr, ...) @warning(ptr noundef %.0.i395, ptr noundef nonnull %i.eg) #13
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ct, %_.exit396, %bb.cw
  %.pr = load i32, ptr %i.f, align 4, !tbaa !12
  br label %bb.cz

bb.cz:                                            ; preds = %thread-pre-split, %bb.cs
  %i.mk = phi i32 [ %.pr, %thread-pre-split ], [ %i.ly, %bb.cs ]
  %.not321 = icmp eq i32 %i.mk, 0
  br i1 %.not321, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.ml = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 432
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !43
  %i.mo = call i32 @path_in_sparse_checkout(ptr noundef nonnull %i.ed, ptr noundef %i.mn) #13
  %.not322 = icmp eq i32 %i.mo, 0
  br i1 %.not322, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.mp = call ptr @string_list_append(ptr noundef nonnull %16, ptr noundef nonnull %i.ed) #13 ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %.not325 = phi i1 [ true, %bb.cz ], [ true, %bb.da ], [ false, %bb.db ]
  %i.mq = load i32, ptr %i.f, align 4, !tbaa !12
  %.not323 = icmp eq i32 %i.mq, 0
  br i1 %.not323, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.mr = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 432
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !43
  %i.mu = call i32 @path_in_sparse_checkout(ptr noundef nonnull %i.eg, ptr noundef %i.mt) #13
  %.not324 = icmp eq i32 %i.mu, 0
  br i1 %.not324, label %.thread, label %bb.de

.thread:                                          ; preds = %bb.dd
  %i.mv = call ptr @string_list_append(ptr noundef nonnull %16, ptr noundef nonnull %i.eg) #13 ; 0 uses
  br label %bb.dh

bb.de:                                            ; preds = %bb.dd, %bb.dc
  br i1 %.not325, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.mw = call ptr @string_list_insert(ptr noundef nonnull %14, ptr noundef nonnull %i.eg) #13 ; 0 uses
  br label %_.exit354.thread426

_.exit354:                                        ; preds = %bb.at, %bb.am, %bb.aj, %bb.cr, %bb.co, %bb.cl, %bb.ca, %bb.bx, %bb.bc, %bb.ay, %_.exit361, %_.exit393, %_.exit378
  %.2257 = phi ptr [ %.1256, %_.exit361 ], [ %.0255510, %bb.bx ], [ %.0255510, %bb.ay ], [ %.0255510, %bb.ca ], [ %.0255510, %_.exit378 ], [ %.0255510, %bb.cl ], [ %.0255510, %bb.co ], [ %.0255510, %bb.cr ], [ %.0255510, %_.exit393 ], [ %.0255510, %bb.bc ], [ %.0255510, %bb.aj ], [ %.0255510, %bb.am ], [ %.0255510, %bb.at ] ; 2 uses
  %.6 = phi ptr [ %.4252, %_.exit361 ], [ %i.kv, %bb.bx ], [ %i.gy, %bb.ay ], [ %i.la, %bb.ca ], [ %.0.i377, %_.exit378 ], [ %i.lo, %bb.cl ], [ %i.lr, %bb.co ], [ %i.lx, %bb.cr ], [ %.0.i392, %_.exit393 ], [ %i.hf, %bb.bc ], [ %i.fo, %bb.aj ], [ %i.ga, %bb.am ], [ %i.gm, %bb.at ] ; 2 uses
  %.2238 = phi ptr [ %.1237, %_.exit361 ], [ %.0236511, %bb.bx ], [ %.0236511, %bb.ay ], [ %.0236511, %bb.ca ], [ %.0236511, %_.exit378 ], [ %.0236511, %bb.cl ], [ %.0236511, %bb.co ], [ %.0236511, %bb.cr ], [ %.0236511, %_.exit393 ], [ %.0236511, %bb.bc ], [ %.0236511, %bb.aj ], [ %.0236511, %bb.am ], [ %.0236511, %bb.at ] ; 2 uses
  %.2 = phi i32 [ %.1, %_.exit361 ], [ %.0513, %bb.bx ], [ %.0513, %bb.ay ], [ %.0513, %bb.ca ], [ %.0513, %_.exit378 ], [ %.0513, %bb.cl ], [ %.0513, %bb.co ], [ %.0513, %bb.cr ], [ %.0513, %_.exit393 ], [ %.0513, %bb.bc ], [ %.0513, %bb.aj ], [ %.0513, %bb.am ], [ %.0513, %bb.at ] ; 2 uses
  %.not331 = icmp eq ptr %.6, null
  br i1 %.not331, label %_.exit354.thread426, label %_.exit354.thread

_.exit354.thread:                                 ; preds = %bb.ai, %bb.al, %bb.as, %bb.cq, %bb.ax, %bb.bb, %bb.cn, %bb.ck, %bb.bz, %bb.bw, %_.exit354
  %.2423 = phi i32 [ %.2, %_.exit354 ], [ %.0513, %bb.bw ], [ %.0513, %bb.bz ], [ %.0513, %bb.ck ], [ %.0513, %bb.cn ], [ %.0513, %bb.bb ], [ %.0513, %bb.ax ], [ %.0513, %bb.cq ], [ %.0513, %bb.as ], [ %.0513, %bb.al ], [ %.0513, %bb.ai ]
  %.2238422 = phi ptr [ %.2238, %_.exit354 ], [ %.0236511, %bb.bw ], [ %.0236511, %bb.bz ], [ %.0236511, %bb.ck ], [ %.0236511, %bb.cn ], [ %.0236511, %bb.bb ], [ %.0236511, %bb.ax ], [ %.0236511, %bb.cq ], [ %.0236511, %bb.as ], [ %.0236511, %bb.al ], [ %.0236511, %bb.ai ]
  %.6421 = phi ptr [ %.6, %_.exit354 ], [ @.str.17, %bb.bw ], [ @.str.18, %bb.bz ], [ @.str.20, %bb.ck ], [ @.str.21, %bb.cn ], [ @.str.15, %bb.bb ], [ @.str.14, %bb.ax ], [ @.str.22, %bb.cq ], [ @.str.13, %bb.as ], [ @.str.12, %bb.al ], [ @.str.12, %bb.ai ]
  %.2257420 = phi ptr [ %.2257, %_.exit354 ], [ %.0255510, %bb.bw ], [ %.0255510, %bb.bz ], [ %.0255510, %bb.ck ], [ %.0255510, %bb.cn ], [ %.0255510, %bb.bb ], [ %.0255510, %bb.ax ], [ %.0255510, %bb.cq ], [ %.0255510, %bb.as ], [ %.0255510, %bb.al ], [ %.0255510, %bb.ai ]
  %i.mx = load i32, ptr %i.e, align 4, !tbaa !12
  %.not332 = icmp eq i32 %i.mx, 0
  br i1 %.not332, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_.exit354.thread
  %i.my = call fastcc ptr @_(ptr noundef nonnull @.str.24)
  call void (ptr, ...) @die(ptr noundef %i.my, ptr noundef nonnull %.6421, ptr noundef nonnull %i.ed, ptr noundef %i.eg) #14
  unreachable

bb.dh:                                            ; preds = %.thread, %_.exit354.thread, %bb.de
  %.3258 = phi ptr [ %.2257420, %_.exit354.thread ], [ %.0255510, %bb.de ], [ %.0255510, %.thread ] ; 3 uses
  %.3239 = phi ptr [ %.2238422, %_.exit354.thread ], [ %.0236511, %bb.de ], [ %.0236511, %.thread ] ; 3 uses
  %.3 = phi i32 [ %.2423, %_.exit354.thread ], [ %.0513, %bb.de ], [ %.0513, %.thread ] ; 2 uses
  %i.mz = add nsw i32 %.3, -1                     ; 4 uses
  %i.na = icmp sgt i32 %.3, 1
  br i1 %i.na, label %bb.di, label %_.exit354.thread426

bb.di:                                            ; preds = %bb.dh
  %i.nb = sub nsw i32 %i.mz, %.0226512            ; 2 uses
  call void @strvec_remove(ptr noundef nonnull %7, i64 noundef %i.eb) #13
  call void @strvec_remove(ptr noundef nonnull %9, i64 noundef %i.eb) #13
  %i.nc = getelementptr inbounds [4 x i8], ptr %.3258, i64 %i.eb ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = sext i32 %i.nb to i64                   ; 3 uses
  %.not.i397 = icmp eq i32 %i.mz, %.0226512
  br i1 %.not.i397, label %move_array.exit402, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %mul.ov.i.i = icmp slt i32 %i.nb, 0
  br i1 %mul.ov.i.i, label %bb.dk, label %st_mult.exit.i401

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, ...) @die(ptr noundef nonnull @.str.40, i64 noundef range(i64 4, 9) 4, i64 noundef range(i64 -2147483646, 2147483648) %i.ne) #14
  unreachable

st_mult.exit.i401:                                ; preds = %bb.dj
  %i.nf = shl nuw nsw i64 %i.ne, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.nc, ptr nonnull readonly align 1 %i.nd, i64 %i.nf, i1 false)
  %i.ng = getelementptr inbounds [8 x i8], ptr %.3239, i64 %i.eb ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = shl nuw nsw i64 %i.ne, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ng, ptr nonnull readonly align 1 %i.nh, i64 %i.ni, i1 false)
  br label %move_array.exit402

move_array.exit402:                               ; preds = %bb.di, %st_mult.exit.i401
  %i.nj = add nsw i32 %.0226512, -1
  br label %_.exit354.thread426

_.exit354.thread426:                              ; preds = %bb.aq, %bb.au, %bb.ao, %bb.ah, %_.exit381, %bb.df, %bb.ch, %bb.dh, %move_array.exit402, %_.exit354
  %.4259 = phi ptr [ %.2257, %_.exit354 ], [ %.3258, %move_array.exit402 ], [ %.3258, %bb.dh ], [ %.0255510, %bb.ch ], [ %.0255510, %bb.df ], [ %.0255510, %_.exit381 ], [ %.0255510, %bb.ah ], [ %.0255510, %bb.ao ], [ %.0255510, %bb.au ], [ %.0255510, %bb.aq ] ; 4 uses
  %.4240 = phi ptr [ %.2238, %_.exit354 ], [ %.3239, %move_array.exit402 ], [ %.3239, %bb.dh ], [ %.0236511, %bb.ch ], [ %.0236511, %bb.df ], [ %.0236511, %_.exit381 ], [ %.0236511, %bb.ah ], [ %.0236511, %bb.ao ], [ %.0236511, %bb.au ], [ %.0236511, %bb.aq ] ; 3 uses
  %.2228 = phi i32 [ %.0226512, %_.exit354 ], [ %i.nj, %move_array.exit402 ], [ %.0226512, %bb.dh ], [ %.0226512, %bb.ch ], [ %.0226512, %bb.df ], [ %.0226512, %_.exit381 ], [ %.0226512, %bb.ah ], [ %.0226512, %bb.ao ], [ %.0226512, %bb.au ], [ %.0226512, %bb.aq ]
  %.4 = phi i32 [ %.2, %_.exit354 ], [ %i.mz, %move_array.exit402 ], [ %i.mz, %bb.dh ], [ %.0513, %bb.ch ], [ %.0513, %bb.df ], [ %.0513, %_.exit381 ], [ %.0513, %bb.ah ], [ %.0513, %bb.ao ], [ %.0513, %bb.au ], [ %.0513, %bb.aq ] ; 5 uses
  %i.nk = add nsw i32 %.2228, 1                   ; 2 uses
  %i.nl = icmp slt i32 %i.nk, %.4
  br i1 %i.nl, label %bb.w, label %.preheader, !llvm.loop !65

bb.dl:                                            ; preds = %.lr.ph521, %.loopexit
  %indvars.iv560 = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next561, %.loopexit ] ; 4 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.4259, i64 %indvars.iv560
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !12
  %i.no = and i32 %i.nn, 32
  %.not301 = icmp eq i32 %i.no, 0
  br i1 %.not301, label %bb.dm, label %.loopexit

bb.dm:                                            ; preds = %bb.dl
  store i64 0, ptr %i.dw, align 8, !tbaa !91
  %i.np = load ptr, ptr %i.dx, align 8, !tbaa !88 ; 2 uses
  %.not9.i = icmp eq ptr %i.np, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i8 0, ptr %i.np, align 1, !tbaa !20
  br label %strbuf_setlen.exit

bb.do:                                            ; preds = %bb.dm
  %i.nq = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !20
  %.not10.i = icmp eq i8 %i.nq, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.dn, %bb.do
  %i.nr = load ptr, ptr %7, align 8, !tbaa !83
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv560
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !18 ; 2 uses
  %i.nu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nt) #15
  call void @strbuf_add(ptr noundef nonnull %19, ptr noundef nonnull %i.nt, i64 noundef %i.nu) #13
  %i.nv = load ptr, ptr %i.dx, align 8, !tbaa !88 ; 3 uses
  %i.nw = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.nv, i32 noundef 47) #15 ; 2 uses
  %i.nx = icmp ugt ptr %i.nw, %i.nv
  br i1 %i.nx, label %.lr.ph519, label %.loopexit

.lr.ph519:                                        ; preds = %strbuf_setlen.exit, %bb.dw
  %.0225518 = phi ptr [ %i.op, %bb.dw ], [ %i.nw, %strbuf_setlen.exit ]
  %i.ny = phi ptr [ %i.oo, %bb.dw ], [ %i.nv, %strbuf_setlen.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.nz = ptrtoint ptr %.0225518 to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa                    ; 3 uses
  %i.oc = load i64, ptr %19, align 8, !tbaa !92
  %spec.select.i403 = call i64 @llvm.usub.sat.i64(i64 %i.oc, i64 1)
  %i.od = icmp ugt i64 %i.ob, %spec.select.i403
  br i1 %i.od, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph519
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.41, i32 noundef 167, ptr noundef nonnull @.str.42) #14
  unreachable

bb.dr:                                            ; preds = %.lr.ph519
  store i64 %i.ob, ptr %i.dw, align 8, !tbaa !91
  %.not9.i404 = icmp eq ptr %i.ny, @strbuf_slopbuf
  br i1 %.not9.i404, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.ob
  store i8 0, ptr %i.oe, align 1, !tbaa !20
  %.pre = load ptr, ptr %i.dx, align 8, !tbaa !88
  br label %strbuf_setlen.exit406

bb.dt:                                            ; preds = %bb.dr
  %i.of = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !20
  %.not10.i405 = icmp eq i8 %i.of, 0
  br i1 %.not10.i405, label %strbuf_setlen.exit406, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

strbuf_setlen.exit406:                            ; preds = %bb.ds, %bb.dt
  %i.og = phi ptr [ %.pre, %bb.ds ], [ %i.ny, %bb.dt ] ; 2 uses
  store ptr %i.og, ptr %i.dy, align 8, !tbaa !61
  %i.oh = call i32 @fspathhash(ptr noundef %i.og) #13
  store i32 %i.oh, ptr %i.dz, align 8, !tbaa !89
  store ptr null, ptr %20, align 8, !tbaa !90
  %i.oi = call ptr @hashmap_get(ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef null) #13
  %.not302 = icmp eq ptr %i.oi, null
  br i1 %.not302, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %strbuf_setlen.exit406
  %i.oj = call fastcc ptr @_(ptr noundef nonnull @.str.25)
  %i.ok = load ptr, ptr %7, align 8, !tbaa !83
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %indvars.iv560
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !18
  %i.on = load ptr, ptr %i.dx, align 8, !tbaa !88
  call void (ptr, ...) @die(ptr noundef %i.oj, ptr noundef %i.om, ptr noundef %i.on) #14
  unreachable

bb.dw:                                            ; preds = %strbuf_setlen.exit406
  %i.oo = load ptr, ptr %i.dx, align 8, !tbaa !88 ; 3 uses
  %i.op = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.oo, i32 noundef 47) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  %i.oq = icmp ugt ptr %i.op, %i.oo
  br i1 %i.oq, label %.lr.ph519, label %.loopexit, !llvm.loop !66

.loopexit:                                        ; preds = %bb.dw, %strbuf_setlen.exit, %bb.dl
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 1 ; 2 uses
  %exitcond564.not = icmp eq i64 %indvars.iv.next561, %wide.trip.count563
  br i1 %exitcond564.not, label %._crit_edge522, label %bb.dl, !llvm.loop !67

._crit_edge522:                                   ; preds = %.loopexit, %.preheader
  %i.or = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.os = load i64, ptr %i.or, align 8, !tbaa !93
  %.not277 = icmp eq i64 %i.os, 0
  br i1 %.not277, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge522
  call void @advise_on_updating_sparse_paths(ptr noundef nonnull %16) #13
  %i.ot = load i32, ptr %i.e, align 4, !tbaa !12
  %.not278 = icmp eq i32 %i.ot, 0
  br i1 %.not278, label %bb.fo, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %._crit_edge522
  br i1 %i.dv, label %.lr.ph526, label %._crit_edge527

.lr.ph526:                                        ; preds = %bb.dy
  %i.ou = getelementptr inbounds nuw i8, ptr %21, i64 120
  %i.ov = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %wide.trip.count568 = zext nneg i32 %.4 to i64
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph526, %.thread435
  %indvars.iv565 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next566, %.thread435 ] ; 5 uses
  %.0232523 = phi i32 [ 0, %.lr.ph526 ], [ %.3235, %.thread435 ] ; 4 uses
  %i.ox = load ptr, ptr %7, align 8, !tbaa !83
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv565
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !18 ; 10 uses
  %i.pa = load ptr, ptr %9, align 8, !tbaa !83
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv565
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !18 ; 14 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.4259, i64 %indvars.iv565
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %21, ptr noundef nonnull align 8 dereferenceable(128) @__const.cmd_mv.state, i64 128, i1 false)
  %i.pf = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 432
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !43
  store ptr %i.ph, ptr %21, align 8, !tbaa !97
  %i.pi = load i32, ptr %i.d, align 4, !tbaa !12
  %.not282 = icmp eq i32 %i.pi, 0
  br i1 %.not282, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store i8 1, ptr %i.ou, align 8
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.pj = load i32, ptr %i.c, align 4, !tbaa !12
  %i.pk = icmp ne i32 %i.pj, 0
  %i.pl = load i32, ptr %i.b, align 4
  %i.pm = icmp ne i32 %i.pl, 0
  %or.cond = select i1 %i.pk, i1 true, i1 %i.pm
  br i1 %or.cond, label %bb.ec, label %.thread433

bb.ec:                                            ; preds = %bb.eb
  %i.pn = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i407 = icmp eq i32 %i.pn, 0
  br i1 %.not4.i407, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.po = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #13
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.0.i408 = phi ptr [ %i.po, %bb.ed ], [ @.str.27, %bb.ec ]
  %i.pp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i408, ptr noundef %i.oz, ptr noundef %i.pc) ; 0 uses
  %.pr432 = load i32, ptr %i.c, align 4, !tbaa !12
  %.not283 = icmp eq i32 %.pr432, 0
  br i1 %.not283, label %.thread433, label %.thread435

.thread433:                                       ; preds = %bb.eb, %bb.ee
  %i.pq = and i32 %i.pe, 28
  %.not284 = icmp eq i32 %i.pq, 0
  %brmerge334.not = and i1 %.not285, %.not284
  br i1 %brmerge334.not, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %.thread433
  %i.pr = call i32 @rename(ptr noundef %i.oz, ptr noundef %i.pc) #13
  %i.ps = icmp slt i32 %i.pr, 0
  br i1 %i.ps, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.pt = load i32, ptr %i.e, align 4, !tbaa !12
  %.not286 = icmp eq i32 %i.pt, 0
  br i1 %.not286, label %bb.eh, label %.thread435

bb.eh:                                            ; preds = %bb.eg
  %i.pu = call fastcc ptr @_(ptr noundef nonnull @.str.28)
  call void (ptr, ...) @die_errno(ptr noundef %i.pu, ptr noundef %i.oz) #14
  unreachable

bb.ei:                                            ; preds = %.thread433, %bb.ef
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %.4240, i64 %indvars.iv565 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !18
  %.not287 = icmp eq ptr %i.pw, null
  br i1 %.not287, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.px = call i32 @update_path_in_gitmodules(ptr noundef %i.oz, ptr noundef %i.pc) #13
  %.not288 = icmp eq i32 %i.px, 0
  %spec.select335 = select i1 %.not288, i32 1, i32 %.0232523 ; 2 uses
  %i.py = load ptr, ptr %i.pv, align 8, !tbaa !18 ; 2 uses
  %.not289 = icmp eq ptr %i.py, inttoptr (i64 1 to ptr)
  br i1 %.not289, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @connect_work_tree_and_git_dir(ptr noundef %i.pc, ptr noundef %i.py, i32 noundef 1) #13
  br label %bb.el

bb.el:                                            ; preds = %bb.ej, %bb.ek, %bb.ei
  %.2234 = phi i32 [ %spec.select335, %bb.ek ], [ %spec.select335, %bb.ej ], [ %.0232523, %bb.ei ] ; 10 uses
  %i.pz = and i32 %i.pe, 18
  %.not290 = icmp eq i32 %i.pz, 0
  br i1 %.not290, label %bb.em, label %.thread435

bb.em:                                            ; preds = %bb.el
  %i.qa = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 432
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !43
  %i.qd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oz) #15
  %i.qe = trunc i64 %i.qd to i32
  %i.qf = call i32 @index_name_pos(ptr noundef %i.qc, ptr noundef nonnull %i.oz, i32 noundef %i.qe) #13 ; 3 uses
  %i.qg = icmp slt i32 %i.qf, 0
  br i1 %i.qg, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.29, i32 noundef 568, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.oz) #14
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.qh = and i32 %i.pe, 8
  %.not291 = icmp eq i32 %i.qh, 0                 ; 2 uses
  br i1 %.not291, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.qi = call i32 @lstat64(ptr noundef nonnull %i.oz, ptr noundef nonnull %12) #13
  %.not292 = icmp eq i32 %i.qi, 0
  br i1 %.not292, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.qj = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 432
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !43 ; 2 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !55
  %i.qn = zext nneg i32 %i.qf to i64
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qn
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !57
  %i.qq = call i32 @ie_modified(ptr noundef nonnull %i.ql, ptr noundef %i.qp, ptr noundef nonnull %12, i32 noundef 0) #13
  %i.qr = icmp eq i32 %i.qq, 0
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo
  %.0224 = phi i1 [ true, %bb.eo ], [ true, %bb.ep ], [ %i.qr, %bb.eq ]
  %i.qs = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 432
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !43
  call void @rename_index_entry_at(ptr noundef %i.qu, i32 noundef %i.qf, ptr noundef %i.pc) #13
  %i.qv = load i32, ptr %i.f, align 4, !tbaa !12
  %.not293 = icmp eq i32 %i.qv, 0
  br i1 %.not293, label %.thread435, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qw = load i32, ptr %i.ov, align 8, !tbaa !98
  %.not294 = icmp eq i32 %i.qw, 0
  br i1 %.not294, label %.thread435, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qx = load i32, ptr %i.ow, align 8, !tbaa !99
  %.not295 = icmp eq i32 %i.qx, 0
  br i1 %.not295, label %.thread435, label %bb.eu
end_hunk_1
