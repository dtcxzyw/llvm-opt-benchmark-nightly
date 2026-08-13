inline.NumInlined: 186
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@setup_git_directory_gently_1:bb.a
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !22 ; 5 uses
  %i.an = trunc i64 %i.am to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !13
  %i.ao = icmp slt i32 %.079, %i.an               ; 2 uses
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr %0, align 8, !tbaa !24    ; 2 uses
  %.not.i.i112 = icmp eq i64 %i.ap, 0
  %.neg.i114 = add i64 %i.am, 1                   ; 2 uses
  %.not.i115 = icmp eq i64 %i.ap, %.neg.i114
  %or.cond8 = or i1 %.not.i.i112, %.not.i115
  br i1 %or.cond8, label %strbuf_avail.exit.thread.i117, label %strbuf_addch.exit121

strbuf_avail.exit.thread.i117:                    ; preds = %bb.n
  call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #20
  %.pre.i119 = load i64, ptr %i.ak, align 8, !tbaa !22 ; 2 uses
  %.pre7.i120 = add i64 %.pre.i119, 1
  br label %strbuf_addch.exit121

strbuf_addch.exit121:                             ; preds = %bb.n, %strbuf_avail.exit.thread.i117
  %.pre-phi.i116 = phi i64 [ %.pre7.i120, %strbuf_avail.exit.thread.i117 ], [ %.neg.i114, %bb.n ]
  %i.aq = phi i64 [ %.pre.i119, %strbuf_avail.exit.thread.i117 ], [ %i.am, %bb.n ]
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !16
  store i64 %.pre-phi.i116, ptr %i.ak, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 47, ptr %i.as, align 1, !tbaa !12
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.au = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %strbuf_addch.exit121, %bb.m
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, i64 noundef 4) #20
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ax = call ptr @read_gitfile_gently(ptr noundef %i.aw, ptr noundef nonnull %i.c) ; 2 uses
  %.not96 = icmp eq ptr %i.ax, null
  br i1 %.not96, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !13  ; 2 uses
  switch i32 %i.ay, label %bb.w [
    i32 9, label %bb.z
    i32 10, label %bb.q
    i32 1, label %bb.s
    i32 2, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ba = call i32 @is_git_directory(ptr noundef %i.az)
  %.not99 = icmp eq i32 %i.ba, 0
  br i1 %.not99, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.bc = call ptr @xstrdup(ptr noundef %i.bb) #20
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  br i1 %.not100, label %.critedge.thread5, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = call fastcc ptr @_(ptr noundef nonnull @.str.125)
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !16
  call void (ptr, ...) @die(ptr noundef %i.bd, ptr noundef %i.be) #21
  unreachable

bb.u:                                             ; preds = %bb.p
  br i1 %.not100, label %.critedge.thread5, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = call fastcc ptr @_(ptr noundef nonnull @.str.126)
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !16
  call void (ptr, ...) @die(ptr noundef %i.bf, ptr noundef %i.bg) #21
  unreachable

bb.w:                                             ; preds = %bb.p
  br i1 %.not100, label %.critedge.thread5, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !16
  call void @read_gitfile_error_die(i32 noundef %i.ay, ptr noundef %i.bh, ptr noundef null)
  br label %bb.z

bb.y:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.bj = call ptr @xstrdup(ptr noundef %i.bi) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.p, %bb.x, %bb.r, %bb.q, %bb.y
  %.082 = phi ptr [ %i.ax, %bb.y ], [ null, %bb.x ], [ null, %bb.p ], [ @.str.19, %bb.r ], [ null, %bb.q ] ; 4 uses
  %.075 = phi ptr [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.p ], [ %i.bc, %bb.r ], [ null, %bb.q ] ; 3 uses
  %.074 = phi ptr [ %i.bj, %bb.y ], [ null, %bb.x ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.q ] ; 2 uses
  %sext = shl i64 %i.am, 32
  %i.bk = ashr exact i64 %sext, 32                ; 3 uses
  %i.bl = load i64, ptr %0, align 8, !tbaa !24
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 1)
  %i.bm = icmp ugt i64 %i.bk, %spec.select.i
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.96, i32 noundef 167, ptr noundef nonnull @.str.97) #21
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i64 %i.bk, ptr %i.ak, align 8, !tbaa !22
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %.not9.i = icmp eq ptr %i.bn, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  store i8 0, ptr %i.bo, align 1, !tbaa !12
  br label %strbuf_setlen.exit

bb.ad:                                            ; preds = %bb.ab
  %i.bp = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i = icmp eq i8 %i.bp, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.ac, %bb.ad
  %.not101 = icmp eq ptr %.082, null
  br i1 %.not101, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %strbuf_setlen.exit
  %.not109 = icmp eq ptr %.075, null
  %i.bq = select i1 %.not109, ptr %.082, ptr %.075
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.bs = call fastcc i32 @ensure_valid_ownership(ptr noundef %.074, ptr noundef %i.br, ptr noundef nonnull %i.bq)
  %.not110 = icmp eq i32 %i.bs, 0
  br i1 %.not110, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.082) #19
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %.082, i64 noundef %i.bt) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.073 = phi i32 [ 2, %bb.ag ], [ -4, %bb.af ]
  call void @free(ptr noundef %.075) #20
  call void @free(ptr noundef %.074) #20
  br label %.critedge.thread5

bb.ai:                                            ; preds = %strbuf_setlen.exit
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.bv = call i32 @is_git_directory(ptr noundef %i.bu)
  %.not102 = icmp eq i32 %i.bv, 0
  br i1 %.not102, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !16
  call void @trace2_data_string_fl(ptr noundef nonnull @.str.18, i32 noundef 1675, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef %i.bw) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1, ptr %i.a, align 4, !tbaa !13
  call void @git_protected_config(ptr noundef nonnull @allowed_bare_repo_cb, ptr noundef nonnull %i.a) #20
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ak, label %is_implicit_bare_repo.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bz = load ptr, ptr %i.f, align 8, !tbaa !16  ; 3 uses
  %i.ca = call i32 @ends_with_path_components(ptr noundef %i.bz, ptr noundef nonnull @.str.19) #20
  %.not.i122 = icmp eq i32 %i.ca, 0
  br i1 %.not.i122, label %bb.al, label %is_implicit_bare_repo.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.cb = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(1) @.str.130) #19
  %.not3.i = icmp eq ptr %i.cb, null
  br i1 %.not3.i, label %is_implicit_bare_repo.exit, label %is_implicit_bare_repo.exit.thread

is_implicit_bare_repo.exit:                       ; preds = %bb.al
  %i.cc = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(1) @.str.131) #19
  %.not4.i.not = icmp eq ptr %i.cc, null
  br i1 %.not4.i.not, label %.critedge.thread5, label %is_implicit_bare_repo.exit.thread

is_implicit_bare_repo.exit.thread:                ; preds = %bb.ak, %bb.al, %is_implicit_bare_repo.exit, %bb.aj
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ce = call fastcc i32 @ensure_valid_ownership(ptr noundef null, ptr noundef null, ptr noundef %i.cd)
  %.not108 = icmp eq i32 %i.ce, 0
  br i1 %.not108, label %.critedge.thread5, label %bb.am

bb.am:                                            ; preds = %is_implicit_bare_repo.exit.thread
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull @.str.23, i64 noundef 1) #20
  br label %.critedge.thread5

bb.an:                                            ; preds = %bb.ai
  br i1 %i.ao, label %.preheader.preheader, label %.critedge.thread5

.preheader.preheader:                             ; preds = %bb.an
  %i.cf = and i64 %i.am, 4294967295               ; 2 uses
  %indvars.iv.next123 = add nsw i64 %i.cf, -1     ; 2 uses
  %i.cg = icmp sgt i64 %indvars.iv.next123, %i.al
  br i1 %i.cg, label %.lr.ph.preheader, label %.critedge.thread5

.lr.ph.preheader:                                 ; preds = %.preheader.preheader
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !16  ; 3 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next124, -1 ; 2 uses
  %i.ci = icmp sgt i64 %indvars.iv.next, %i.al
  br i1 %i.ci, label %.lr.ph, label %.critedge.thread5, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader
  %indvars.iv.next124 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next123, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv124 = phi i64 [ %indvars.iv.next124, %.preheader ], [ %i.cf, %.lr.ph.preheader ]
  %6 = getelementptr i8, ptr %i.ch, i64 %indvars.iv124
  %i.cj = getelementptr i8, ptr %6, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !12
  %.not10 = icmp eq i8 %i.ck, 47
  br i1 %.not10, label %bb.ao, label %.preheader, !llvm.loop !90

bb.ao:                                            ; preds = %.lr.ph
  %i.cl = trunc nsw i64 %indvars.iv.next124 to i32 ; 2 uses
  %i.cm = call i32 @llvm.smax.i32(i32 %i.cl, i32 %.079)
  %i.cn = zext nneg i32 %i.cm to i64              ; 3 uses
  %i.co = load i64, ptr %0, align 8, !tbaa !24
  %spec.select.i123 = call i64 @llvm.usub.sat.i64(i64 %i.co, i64 1)
  %i.cp = icmp ult i64 %spec.select.i123, %i.cn
  br i1 %i.cp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.96, i32 noundef 167, ptr noundef nonnull @.str.97) #21
  unreachable

bb.aq:                                            ; preds = %bb.ao
  store i64 %i.cn, ptr %i.ak, align 8, !tbaa !22
  %.not9.i124 = icmp eq ptr %i.ch, @strbuf_slopbuf
  br i1 %.not9.i124, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  store i8 0, ptr %i.cq, align 1, !tbaa !12
  br label %strbuf_setlen.exit126

bb.as:                                            ; preds = %bb.aq
  %i.cr = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i125 = icmp eq i8 %i.cr, 0
  br i1 %.not10.i125, label %strbuf_setlen.exit126, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit126:                            ; preds = %bb.ar, %bb.as
  br i1 %.not95, label %bb.au, label %.critedge

bb.au:                                            ; preds = %strbuf_setlen.exit126
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ct = call i32 @stat64(ptr noundef %i.cs, ptr noundef nonnull %3) #20
  %.not.i127 = icmp eq i32 %i.ct, 0
  br i1 %.not.i127, label %get_device_or_die.exit128, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cu = call fastcc ptr @_(ptr noundef nonnull @.str.129)
  call void (ptr, ...) @die_errno(ptr noundef %i.cu, i32 noundef range(i32 -1, 2147483647) %i.cl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef %i.cs) #21
  unreachable

get_device_or_die.exit128:                        ; preds = %bb.au
  %i.cv = load i64, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not106 = icmp eq i64 %.078, %i.cv
  br i1 %.not106, label %.critedge, label %.critedge.thread5

.critedge.thread5:                                ; preds = %bb.w, %bb.an, %get_device_or_die.exit128, %.preheader.preheader, %.preheader, %bb.ah, %bb.am, %is_implicit_bare_repo.exit, %is_implicit_bare_repo.exit.thread, %bb.u, %bb.s
  %.1.ph = phi i32 [ %.073, %bb.ah ], [ -3, %bb.s ], [ -3, %bb.u ], [ -5, %is_implicit_bare_repo.exit ], [ 3, %bb.am ], [ -4, %is_implicit_bare_repo.exit.thread ], [ -1, %.preheader ], [ -3, %bb.w ], [ -1, %bb.an ], [ -2, %get_device_or_die.exit128 ], [ -1, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.aw

.critedge:                                        ; preds = %strbuf_setlen.exit126, %get_device_or_die.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.m

bb.aw:                                            ; preds = %.critedge.thread5, %bb.b
  %.2 = phi i32 [ 1, %bb.b ], [ %.1.ph, %.critedge.thread5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @strbuf_insert(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @warning(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @apply_repository_format(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @verify_repository_format(ptr noundef %1, ptr noundef %3)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %xstrdup_or_null.exit29, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.14) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %xstrdup_or_null.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @xstrdup(ptr noundef nonnull %i.d) #20
  br label %xstrdup_or_null.exit

xstrdup_or_null.exit:                             ; preds = %bb.c, %bb.d
  %i.f = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str.47) #20 ; 2 uses
  %.not.i28 = icmp eq ptr %i.g, null
  br i1 %.not.i28, label %xstrdup_or_null.exit29, label %bb.e

bb.e:                                             ; preds = %xstrdup_or_null.exit
  %i.h = tail call ptr @xstrdup(ptr noundef nonnull %i.g) #20
  br label %xstrdup_or_null.exit29

xstrdup_or_null.exit29:                           ; preds = %bb.e, %xstrdup_or_null.exit, %bb.b
  %.026 = phi ptr [ null, %bb.b ], [ %i.f, %xstrdup_or_null.exit ], [ %i.f, %bb.e ] ; 2 uses
  %.0 = phi ptr [ null, %bb.b ], [ null, %xstrdup_or_null.exit ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  tail call void @repo_set_hash_algo(ptr noundef %0, i32 noundef %i.j) #20
  %i.k = tail call ptr @odb_new(ptr noundef %0, ptr noundef %.026, ptr noundef %.0) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !76
  tail call void @repo_set_compat_hash_algo(ptr noundef %0, i32 noundef %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  tail call void @repo_set_ref_storage_format(ptr noundef %0, i32 noundef %i.p, ptr noundef %i.r) #20
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 %i.v, ptr %i.w, align 4, !tbaa !92
  %i.x = load <2 x i32>, ptr %i.s, align 8, !tbaa !13
  store <2 x i32> %i.x, ptr %i.t, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %.not.i30 = icmp eq ptr %i.z, null
  br i1 %.not.i30, label %xstrdup_or_null.exit31, label %bb.f

bb.f:                                             ; preds = %xstrdup_or_null.exit29
  %i.aa = tail call ptr @xstrdup(ptr noundef nonnull %i.z) #20
  br label %xstrdup_or_null.exit31

xstrdup_or_null.exit31:                           ; preds = %xstrdup_or_null.exit29, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %xstrdup_or_null.exit29 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !94
  tail call void @free(ptr noundef %.0) #20
  tail call void @free(ptr noundef %.026) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %xstrdup_or_null.exit31
  %.027 = phi i32 [ 0, %xstrdup_or_null.exit31 ], [ -1, %bb.a ]
  ret i32 %.027
}

declare void @repo_set_hash_algo(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @odb_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @repo_set_compat_hash_algo(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @repo_set_ref_storage_format(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @enter_repo(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 4 uses
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %5 = alloca %struct.strbuf, align 8             ; 5 uses
  %6 = alloca %struct.stat, align 8               ; 14 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge67.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %2, 1
  %.not53 = icmp eq i32 %i.a, 0
  br i1 %.not53, label %bb.c, label %bb.av

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.04385 = phi i32 [ %i.j, %bb.d ], [ %i.c, %bb.c ] ; 5 uses
  %i.e = zext nneg i32 %.04385 to i64
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
end_hunk_0
