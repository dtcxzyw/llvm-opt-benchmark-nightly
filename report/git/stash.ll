Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/stash?download=true
inline.NumInlined: 160
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@show_stash:bb.a
  %10 = alloca [3 x %struct.option], align 16     ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %6, ptr noundef nonnull align 8 dereferenceable(360) @__const.do_push_stash.info, i64 360, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.show_stash.revision_args, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.show_stash.revision_args, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i32, ptr @show_include_untracked, align 4, !tbaa !50
  %.not = icmp ne i32 %i.b, 0
  %i.c = zext i1 %.not to i32
  store i32 %i.c, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store i32 9, ptr %10, align 16, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 117, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.92, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.a, ptr %i.f, align 16, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 4, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr null, ptr %i.h, align 16, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr @.str.93, ptr %i.i, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 2, ptr %i.j, align 16, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 52
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr null, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i64 1, ptr %i.m, align 16, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.o, align 16, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 100
  store i32 0, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr @.str.94, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %i.a, ptr %i.r, align 16, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i64 4, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr null, ptr %i.t, align 16, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr @.str.95, ptr %i.u, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 144
  store i32 6, ptr %i.v, align 16, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 148
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr null, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 160
  store i64 2, ptr %i.y, align 16, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.z, i8 0, i64 120, i1 false)
  call void @init_diff_ui_defaults() #15
  %i.aa = load ptr, ptr @the_repository, align 8, !tbaa !22
  call void @repo_config(ptr noundef %i.aa, ptr noundef nonnull @git_diff_ui_config, ptr noundef null) #15
  %i.ab = load ptr, ptr @the_repository, align 8, !tbaa !22
  call void @repo_init_revisions(ptr noundef %i.ab, ptr noundef nonnull %7, ptr noundef %2) #15
  %i.ac = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull @git_stash_show_usage, i32 noundef 13) #15 ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !51
  %i.ae = call ptr @strvec_push(ptr noundef nonnull %9, ptr noundef %i.ad) #15 ; 0 uses
  %i.af = icmp sgt i32 %i.ac, 1
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !64
  %.not25 = icmp eq i8 %i.ai, 45
  %. = select i1 %.not25, ptr %9, ptr %8
  %i.aj = call ptr @strvec_push(ptr noundef nonnull %., ptr noundef nonnull %i.ah) #15 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !183

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.pre30 = load ptr, ptr %8, align 8, !tbaa !49
  %i.ak = trunc i64 %.pre to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.al = phi ptr [ %.pre30, %._crit_edge.loopexit ], [ @empty_strvec, %bb.a ]
  %i.am = phi i32 [ %i.ak, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.an = call fastcc i32 @get_stash_info(ptr noundef %6, i32 noundef %i.am, ptr noundef %i.al)
  %.not18 = icmp eq i32 %i.an, 0
  br i1 %.not18, label %bb.b, label %bb.s

bb.b:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !48
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.c, label %.thread33

bb.c:                                             ; preds = %bb.b
  %i.ar = load i32, ptr @show_stat, align 4, !tbaa !50
  %.not19 = icmp eq i32 %i.ar, 0
  br i1 %.not19, label %bb.d, label %.thread31

bb.d:                                             ; preds = %bb.c
  %i.as = load i32, ptr @show_patch, align 4, !tbaa !50
  %.not20 = icmp eq i32 %i.as, 0
  br i1 %.not20, label %bb.s, label %.thread

.thread31:                                        ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 1800
  store i32 2, ptr %i.at, align 8, !tbaa !107
  %i.au = load i32, ptr @show_patch, align 4, !tbaa !50
  %.not2032 = icmp eq i32 %i.au, 0
  br i1 %.not2032, label %.thread33, label %.thread

.thread:                                          ; preds = %.thread31, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 1800 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !107
  %i.ax = or i32 %i.aw, 16
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !107
  br label %.thread33

.thread33:                                        ; preds = %.thread31, %.thread, %bb.b
  call void @setup_revisions_from_strvec(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef null) #15
  %i.ay = load i64, ptr %i.ao, align 8, !tbaa !48
  %i.az = icmp ugt i64 %i.ay, 1
  br i1 %i.az, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread33
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 1520 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 1800 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !107
  %.not21 = icmp eq i32 %i.bc, 0
  br i1 %.not21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %i.bb, align 8, !tbaa !107
  call void @diff_setup_done(ptr noundef nonnull %i.ba) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 1616
  store i32 1, ptr %i.bd, align 8, !tbaa !184
  call void @setup_diff_pager(ptr noundef nonnull %i.ba) #15
  %i.be = load i32, ptr %i.a, align 4, !tbaa !50
  switch i32 %i.be, label %bb.r [
    i32 0, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 36
  call void @diff_tree_oid(ptr noundef nonnull %i.bf, ptr noundef nonnull %6, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.ba) #15
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 356
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !108
  %.not23 = icmp eq i32 %i.bh, 0
  br i1 %.not23, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 288
  call void @diff_root_tree_oid(ptr noundef nonnull %i.bi, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.ba) #15
  br label %bb.r

bb.k:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 356
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !108
  %.not22 = icmp eq i32 %i.bk, 0
  br i1 %.not22, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %5, i8 0, i64 1120, i1 false)
  %i.bl = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.bm = call ptr @repo_parse_tree_indirect(ptr noundef %i.bl, ptr noundef nonnull %6) #15 ; 4 uses
  %i.bn = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.bo = call i32 @repo_parse_tree_gently(ptr noundef %i.bn, ptr noundef %i.bm, i32 noundef 0) #15
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.bq = call fastcc ptr @_(ptr noundef nonnull @.str.97)
  call void (ptr, ...) @die(ptr noundef %i.bq) #16
  unreachable

bb.n:                                             ; preds = %bb.l
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !111
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !112
  call void @init_tree_desc(ptr noundef nonnull %4, ptr noundef nonnull %i.br, ptr noundef %i.bt, i64 noundef %i.bv) #15
  %i.bw = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.bx = call ptr @repo_parse_tree_indirect(ptr noundef %i.bw, ptr noundef nonnull %11) #15 ; 4 uses
  %i.by = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.bz = call i32 @repo_parse_tree_gently(ptr noundef %i.by, ptr noundef %i.bx, i32 noundef 0) #15
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !111
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !112
  call void @init_tree_desc(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc, ptr noundef %i.ce, i64 noundef %i.cg) #15
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i32 -1, ptr %i.ch, align 8, !tbaa !128
  %i.ci = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 432
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !129 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !130
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !131
  store i32 1, ptr %5, align 8, !tbaa !132
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr @stash_worktree_untracked_merge, ptr %i.cn, align 8, !tbaa !133
  %i.co = call i32 @unpack_trees(i32 noundef 2, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %diff_include_untracked.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = call fastcc ptr @_(ptr noundef nonnull @.str.98)
  call void (ptr, ...) @die(ptr noundef %i.cp) #16
  unreachable

diff_include_untracked.exit:                      ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.cr = call i32 @do_diff_cache(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ba) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 36
  call void @diff_tree_oid(ptr noundef nonnull %i.cs, ptr noundef nonnull %6, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.ba) #15
  br label %bb.r

bb.r:                                             ; preds = %diff_include_untracked.exit, %bb.q, %bb.i, %bb.j, %bb.h, %bb.g
  %i.ct = call i32 @log_tree_diff_flush(ptr noundef nonnull %7) #15 ; 0 uses
  %i.cu = call i32 @diff_result_code(ptr noundef nonnull %7) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %._crit_edge, %bb.r
  %.016 = phi i32 [ -1, %._crit_edge ], [ %i.cu, %bb.r ], [ 0, %bb.d ]
  call void @strvec_clear(ptr noundef nonnull %9) #15
  call void @strvec_clear(ptr noundef nonnull %8) #15
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 328
  call void @strbuf_release(ptr noundef nonnull %i.cv) #15
  call void @release_revisions(ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret i32 %.016

.critedge:                                        ; preds = %.thread33
  call void @strvec_clear(ptr noundef nonnull %9) #15
  call void @strvec_clear(ptr noundef nonnull %8) #15
  call fastcc void @free_stash_info(ptr noundef %6)
  call void @release_revisions(ptr noundef nonnull %7) #15
  call void @usage_with_options(ptr noundef nonnull @git_stash_show_usage, ptr noundef nonnull %10) #16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @store_stash(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.object_id, align 4          ; 4 uses
  %5 = alloca [3 x %struct.option], align 16      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 8, ptr %5, align 16, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 113, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.14, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.e, align 16, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 4, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.g, align 16, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.99, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 2, ptr %i.i, align 16, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.j, i8 0, i64 44, i1 false)
  store i32 10, ptr %i.k, align 16, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 100
  store i32 109, ptr %i.l, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr @.str.100, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 112
  store ptr %i.b, ptr %i.n, align 16, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 0, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr @.str.100, ptr %i.p, align 16, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr @.str.101, ptr %i.q, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.r, i8 0, i64 144, i1 false)
  %i.s = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull @git_stash_store_usage, i32 noundef 8) #15
  %.not = icmp eq i32 %i.s, 1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.a, align 4, !tbaa !50
  %.not11 = icmp eq i32 %i.t, 0
  br i1 %.not11, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !63
  %i.v = load i32, ptr @git_gettext_enabled, align 4, !tbaa !50
  %.not4.i = icmp eq i32 %i.v, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #15
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.w, %bb.d ], [ @.str.102, %bb.c ]
  %i.x = call i32 (ptr, ptr, ...) @fprintf_ln(ptr noundef %i.u, ptr noundef %.0.i) #15 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.y = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.z = load ptr, ptr %1, align 8, !tbaa !51
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !50
  %.not8 = icmp ne i32 %i.aa, 0
  %i.ab = zext i1 %.not8 to i32
  %i.ac = call i32 @repo_get_oid_with_flags(ptr noundef %i.y, ptr noundef %i.z, ptr noundef nonnull %4, i32 noundef %i.ab) #15
  %.not9 = icmp eq i32 %i.ac, 0
  br i1 %.not9, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !50
  %.not10 = icmp eq i32 %i.ad, 0
  br i1 %.not10, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !63
  %i.af = load i32, ptr @git_gettext_enabled, align 4, !tbaa !50
  %.not4.i12 = icmp eq i32 %i.af, 0
  br i1 %.not4.i12, label %_.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.103, i32 noundef 5) #15
  br label %_.exit14

_.exit14:                                         ; preds = %bb.g, %bb.h
  %.0.i13 = phi ptr [ %i.ag, %bb.h ], [ @.str.103, %bb.g ]
  %i.ah = load ptr, ptr %1, align 8, !tbaa !51
  %i.ai = call i32 (ptr, ptr, ...) @fprintf_ln(ptr noundef %i.ae, ptr noundef %.0.i13, ptr noundef nonnull @.str.145, ptr noundef %i.ah) #15 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !50
  %i.al = call fastcc i32 @do_store_stash(ptr noundef nonnull %4, ptr noundef %i.aj, i32 noundef %i.ak)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_.exit14, %bb.f, %bb.b, %_.exit
  %.07 = phi i32 [ -1, %bb.b ], [ -1, %_.exit ], [ %i.al, %bb.i ], [ -1, %_.exit14 ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @create_stash(i32 noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  %5 = alloca %struct.stash_info, align 8         ; 6 uses
  %6 = alloca %struct.pathspec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.do_push_stash.out, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
end_hunk_0
