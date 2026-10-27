Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/wt-status?download=true
inline.NumInlined: 301
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@wt_status_get_state:bb.a
  %wide.trip.count.i = zext i32 %i.fi to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.fn = icmp ult i32 %i.fi, 4
  br i1 %i.fn, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.an ] ; 5 uses
  %.01418.i = phi i32 [ 0, %.preheader.i.new ], [ %spec.select.i41.3, %bb.an ]
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.3, %bb.an ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !116
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !44
  %i.fs = lshr i32 %i.fr, 30
  %i.ft = and i32 %i.fs, 1
  %spec.select.i41 = add nuw nsw i32 %i.ft, %.01418.i
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !116
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !44
  %i.fz = lshr i32 %i.fy, 30
  %i.ga = and i32 %i.fz, 1
  %spec.select.i41.1 = add nuw nsw i32 %i.ga, %spec.select.i41
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !116
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !44
  %i.gg = lshr i32 %i.gf, 30
  %i.gh = and i32 %i.gg, 1
  %spec.select.i41.2 = add nuw nsw i32 %i.gh, %spec.select.i41.1
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !116
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !44
  %i.gn = lshr i32 %i.gm, 30
  %i.go = and i32 %i.gn, 1
  %spec.select.i41.3 = add nuw nsw i32 %i.go, %spec.select.i41.2 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.an, !llvm.loop !213

.unr-lcssa:                                       ; preds = %bb.an
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.01418.i.epil.init = phi i32 [ 0, %.preheader.i ], [ %spec.select.i41.3, %.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ao ] ; 2 uses
  %.01418.i.epil = phi i32 [ %.01418.i.epil.init, %.epil.preheader ], [ %spec.select.i41.epil, %bb.ao ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ao ]
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i.epil
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !116
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !44
  %i.gt = lshr i32 %i.gs, 30
  %i.gu = and i32 %i.gt, 1
  %spec.select.i41.epil = add nuw nsw i32 %i.gu, %.01418.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ao, !llvm.loop !214

.epilog-lcssa:                                    ; preds = %bb.ao, %.unr-lcssa
  %spec.select.i41.lcssa = phi i32 [ %spec.select.i41.3, %.unr-lcssa ], [ %spec.select.i41.epil, %bb.ao ]
  %i.gv = mul nuw nsw i32 %spec.select.i41.lcssa, 100
  %i.gw = udiv i32 %i.gv, %i.fi
  %i.gx = sub nsw i32 100, %i.gw
  br label %wt_status_check_sparse_checkout.exit

wt_status_check_sparse_checkout.exit:             ; preds = %bb.ak, %bb.al, %bb.am, %.epilog-lcssa
  %.sink.i = phi i32 [ %i.gx, %.epilog-lcssa ], [ -1, %bb.ak ], [ -1, %bb.al ], [ -2, %bb.am ]
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.sink.i, ptr %i.gy, align 4, !tbaa !128
  call void @free_worktree(ptr noundef nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void
}

declare void @diff_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @wt_status_collect(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dir_struct, align 8         ; 14 uses
  %2 = alloca %struct.rev_info, align 8           ; 16 uses
  %3 = alloca %struct.setup_revision_opt, align 8 ; 5 uses
  %4 = alloca %struct.strbuf, align 8             ; 8 uses
  %5 = alloca %struct.pathspec, align 8           ; 6 uses
  %6 = alloca %struct.rev_info, align 8           ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.3, i32 noundef 865, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.b = load ptr, ptr %0, align 8, !tbaa !34
  call void @repo_init_revisions(ptr noundef %i.b, ptr noundef nonnull %6, ptr noundef null) #19
  %i.c = call i32 @setup_revisions(i32 noundef 0, ptr noundef null, ptr noundef nonnull %6, ptr noundef null) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 1520
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 1800 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !163
  %i.g = or i32 %i.f, 4096
  store i32 %i.g, ptr %i.e, align 8, !tbaa !163
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 1712
  store i32 1, ptr %i.h, align 8, !tbaa !223
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 1840
  store i32 1, ptr %i.i, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35
  %.not.i = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1716
  store i32 1, ptr %i.l, align 4, !tbaa !224
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !165  ; 2 uses
  %.not15.i = icmp eq ptr %i.n, null
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 1728
  store i32 1, ptr %i.o, align 8, !tbaa !166
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 1720
  %i.q = load i32, ptr %i.p, align 8, !tbaa !225
  %.not16.i = icmp ne i32 %i.q, 0
  %brmerge.i = or i1 %.not.i, %.not16.i
  br i1 %brmerge.i, label %wt_status_collect_changes_worktree.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.str.41.sink.i = phi ptr [ %i.n, %bb.d ], [ @.str.41, %bb.e ]
  call void @handle_ignore_submodules_arg(ptr noundef nonnull %i.d, ptr noundef nonnull %.str.41.sink.i) #19
  br label %wt_status_collect_changes_worktree.exit

wt_status_collect_changes_worktree.exit:          ; preds = %bb.e, %.sink.split.i
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 2040
  store ptr @wt_status_collect_changed_cb, ptr %i.r, align 8, !tbaa !226
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 2048
  store ptr %0, ptr %i.s, align 8, !tbaa !227
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !53   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 1784 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp slt i32 %i.u, 0
  %i.y = select i1 %i.x, i32 %i.w, i32 %i.u
  store i32 %i.y, ptr %i.v, align 8, !tbaa !167
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 1804 ; 2 uses
  %i.ab = load <2 x i32>, ptr %i.z, align 4, !tbaa !44 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.aa, align 4
  %i.ad = icmp slt <2 x i32> %i.ab, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x i32> %i.ac, <2 x i32> %i.ab
  store <2 x i32> %i.ae, ptr %i.aa, align 4, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @copy_pathspec(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag) #19
  call void @run_diff_files(ptr noundef nonnull %6, i32 noundef 0) #19
  call void @release_revisions(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ah = load ptr, ptr %0, align 8, !tbaa !34
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.3, i32 noundef 867, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %i.ah) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !168
  %.not = icmp eq i32 %i.aj, 0
  %i.ak = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  br i1 %.not, label %bb.t, label %bb.f

bb.f:                                             ; preds = %wt_status_collect_changes_worktree.exit
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.3, i32 noundef 870, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef %i.ak) #19
  %i.al = load ptr, ptr %0, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 432
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !102 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.wt_longstatus_print_other.buf, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !113
  %.not40.i = icmp eq i32 %i.ap, 0
  br i1 %.not40.i, label %wt_status_collect_changes_initial.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 240 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !116 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 52 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !44
  %i.be = and i32 %i.bd, 61440                    ; 2 uses
  %i.bf = icmp eq i32 %i.be, 16384
  %i.bg = icmp eq i32 %i.be, 57344
  %narrow.i.i = or i1 %i.bf, %i.bg
  %i.bh = zext i1 %narrow.i.i to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 108 ; 3 uses
  %i.bj = call i32 @match_pathspec(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.bi, i32 noundef %i.bb, i32 noundef 0, ptr noundef null, i32 noundef %i.bh) #19
  %.not.i24 = icmp eq i32 %i.bj, 0
  br i1 %.not.i24, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !44
  %i.bm = and i32 %i.bl, 536870912
  %.not36.i = icmp eq i32 %i.bm, 0
  br i1 %.not36.i, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.bc, align 4, !tbaa !44
  %i.bo = icmp eq i32 %i.bn, 16384
  br i1 %i.bo, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !228
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.br = call ptr @lookup_tree(ptr noundef %i.bp, ptr noundef nonnull %i.bq) #19
  %i.bs = load i8, ptr %i.at, align 4
  %i.bt = or i8 %i.bs, 3
  store i8 %i.bt, ptr %i.at, align 4
  store i32 -1, ptr %i.au, align 4, !tbaa !229
  store i64 0, ptr %i.av, align 8, !tbaa !17
  %i.bu = load ptr, ptr %i.aw, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bu, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.bu, align 1, !tbaa !32
  br label %strbuf_setlen.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bv = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !32
  %.not10.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.l, %bb.k
  %i.bw = load i32, ptr %i.ba, align 8, !tbaa !44
  %i.bx = zext i32 %i.bw to i64
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.bi, i64 noundef %i.bx) #19
  %i.by = load ptr, ptr %i.as, align 8, !tbaa !228
  %i.bz = call i32 @read_tree_at(ptr noundef %i.by, ptr noundef %i.br, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull @add_file_to_list, ptr noundef nonnull %0) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.s

bb.n:                                             ; preds = %bb.i
  %i.ca = call ptr @string_list_insert(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bi) #19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !69 ; 2 uses
  %.not37.i = icmp eq ptr %i.cc, null
  br i1 %.not37.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = call ptr @xcalloc(i64 noundef 1, i64 noundef 120) #19 ; 2 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !69
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi ptr [ %i.cc, %bb.n ], [ %i.cd, %bb.o ] ; 5 uses
  %i.ce = load i32, ptr %i.bk, align 8, !tbaa !44
  %i.cf = and i32 %i.ce, 12288
  %.not38.i = icmp eq i32 %i.cf, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  br i1 %.not38.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 85, ptr %i.cg, align 4, !tbaa !71
  %i.ch = load i32, ptr %i.bk, align 8, !tbaa !44
  %i.ci = lshr i32 %i.ch, 12
  %i.cj = and i32 %i.ci, 3
  %i.ck = add nsw i32 %i.cj, -1
  %i.cl = shl nuw nsw i32 1, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !117
  %i.co = or i32 %i.cl, %i.cn
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !117
  store i32 1, ptr %i.ar, align 4, !tbaa !76
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i32 65, ptr %i.cg, align 4, !tbaa !71
  %i.cp = load i32, ptr %i.bc, align 4, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !74
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 60
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cs, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !75
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 92
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !75
  store i32 1, ptr %i.ar, align 4, !tbaa !76
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %strbuf_setlen.exit.i, %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cw = load i32, ptr %i.ao, align 4, !tbaa !113
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next.i, %i.cx
  br i1 %i.cy, label %bb.g, label %wt_status_collect_changes_initial.exit, !llvm.loop !220

wt_status_collect_changes_initial.exit:           ; preds = %bb.s, %bb.f
  call void @strbuf_release(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cz = load ptr, ptr %0, align 8, !tbaa !34
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.3, i32 noundef 872, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef %i.cz) #19
  br label %bb.w

bb.t:                                             ; preds = %wt_status_collect_changes_worktree.exit
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.3, i32 noundef 874, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, ptr noundef %i.ak) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.da = load ptr, ptr %0, align 8, !tbaa !34
  call void @repo_init_revisions(ptr noundef %i.da, ptr noundef nonnull %2, ptr noundef null) #19
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !168
  %.not.i25 = icmp eq i32 %i.dc, 0
  br i1 %.not.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = load ptr, ptr %0, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 448
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !123
  %i.dg = call ptr @empty_tree_oid_hex(ptr noundef %i.df) #19
  br label %wt_status_collect_changes_index.exit

bb.v:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !39
  br label %wt_status_collect_changes_index.exit

wt_status_collect_changes_index.exit:             ; preds = %bb.u, %bb.v
  %i.dj = phi ptr [ %i.dg, %bb.u ], [ %i.di, %bb.v ]
  store ptr %i.dj, ptr %3, align 8, !tbaa !170
  %i.dk = call i32 @setup_revisions(i32 noundef 0, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3) #19 ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 1520
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 1728
  store i32 1, ptr %i.dm, align 8, !tbaa !166
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 1840
  store i32 1, ptr %i.dn, align 8, !tbaa !164
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !165 ; 2 uses
  %.not17.i = icmp eq ptr %i.do, null
  %.str.43..i = select i1 %.not17.i, ptr @.str.43, ptr %i.do
  call void @handle_ignore_submodules_arg(ptr noundef nonnull %i.dl, ptr noundef nonnull %.str.43..i) #19
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !163
  %i.dr = or i32 %i.dq, 4096
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !163
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 2040
  store ptr @wt_status_collect_updated_cb, ptr %i.ds, align 8, !tbaa !226
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 2048
  store ptr %0, ptr %i.dt, align 8, !tbaa !227
  %i.du = load i32, ptr %i.t, align 8, !tbaa !53  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 1784 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = icmp slt i32 %i.du, 0
  %i.dy = select i1 %i.dx, i32 %i.dw, i32 %i.du
  store i32 %i.dy, ptr %i.dv, align 8, !tbaa !167
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 1804 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 1616
  %i.eb = load <2 x i32>, ptr %i.z, align 4, !tbaa !44 ; 2 uses
  %i.ec = load <2 x i32>, ptr %i.dz, align 4
  %i.ed = icmp slt <2 x i32> %i.eb, zeroinitializer
  %i.ee = select <2 x i1> %i.ed, <2 x i32> %i.ec, <2 x i32> %i.eb
  store <2 x i32> %i.ee, ptr %i.dz, align 4, !tbaa !44
  store i32 1, ptr %i.ea, align 8, !tbaa !230
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 296
  call void @copy_pathspec(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ag) #19
  call void @run_diff_index(ptr noundef nonnull %2, i32 noundef 1) #19
  call void @release_revisions(ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.eg = load ptr, ptr %0, align 8, !tbaa !34
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.3, i32 noundef 876, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, ptr noundef %i.eg) #19
  br label %bb.w

bb.w:                                             ; preds = %wt_status_collect_changes_index.exit, %wt_status_collect_changes_initial.exit
  %i.eh = load ptr, ptr %0, align 8, !tbaa !34
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.3, i32 noundef 879, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, ptr noundef %i.eh) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %1, i8 0, i64 312, i1 false)
  %i.ei = call i64 @getnanotime() #19
  %i.ej = load ptr, ptr %0, align 8, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 432
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !102 ; 4 uses
  %i.em = load i32, ptr %i.j, align 8, !tbaa !35
  switch i32 %i.em, label %bb.x [
    i32 0, label %wt_status_collect_untracked.exit
    i32 2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  store i32 6, ptr %1, align 8, !tbaa !238
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.en = phi i32 [ 0, %bb.w ], [ 6, %bb.x ]      ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !171 ; 2 uses
  %.not27.i = icmp eq i32 %i.ep, 0
  br i1 %.not27.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = or disjoint i32 %i.en, 32
  store i32 %i.eq, ptr %1, align 8, !tbaa !238
  %i.er = icmp eq i32 %i.ep, 2
  br i1 %i.er, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.es = or disjoint i32 %i.en, 288
  store i32 %i.es, ptr %1, align 8, !tbaa !238
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 200
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !239
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !240
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  call void @setup_standard_excludes(ptr noundef nonnull %1) #19
  %i.ew = call i32 @fill_directory(ptr noundef nonnull %1, ptr noundef %i.el, ptr noundef nonnull %i.ag) #19 ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !241
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph.i26, label %.preheader.i

.lr.ph.i26:                                       ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1136
  br label %bb.ad

.preheader.i:                                     ; preds = %bb.af, %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !242
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph33.i, label %._crit_edge.i

.lr.ph33.i:                                       ; preds = %.preheader.i
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1176
  br label %bb.ag

bb.ad:                                            ; preds = %bb.af, %.lr.ph.i26
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i28, %bb.af ] ; 2 uses
  %i.fh = load ptr, ptr %i.fa, align 8, !tbaa !243
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i27
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !245 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !44
  %i.fm = call i32 @index_name_is_other(ptr noundef %i.el, ptr noundef nonnull %i.fk, i32 noundef %i.fl) #19
  %.not30.i = icmp eq i32 %i.fm, 0
  br i1 %.not30.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fn = call ptr @string_list_insert(ptr noundef nonnull %i.fb, ptr noundef nonnull %i.fk) #19 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %i.fo = load i32, ptr %i.ex, align 4, !tbaa !241
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next.i28, %i.fp
  br i1 %i.fq, label %bb.ad, label %.preheader.i, !llvm.loop !221

bb.ag:                                            ; preds = %bb.ai, %.lr.ph33.i
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph33.i ], [ %indvars.iv.next36.i, %bb.ai ] ; 2 uses
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !246
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv35.i
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !245 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !44
  %i.fw = call i32 @index_name_is_other(ptr noundef %i.el, ptr noundef nonnull %i.fu, i32 noundef %i.fv) #19
  %.not29.i = icmp eq i32 %i.fw, 0
  br i1 %.not29.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fx = call ptr @string_list_insert(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fu) #19 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.fy = load i32, ptr %i.fc, align 8, !tbaa !242
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %indvars.iv.next36.i, %i.fz
  br i1 %i.ga, label %bb.ag, label %._crit_edge.i, !llvm.loop !222

._crit_edge.i:                                    ; preds = %bb.ai, %.preheader.i
  call void @dir_clear(ptr noundef nonnull %1) #19
  %i.gb = call i32 @advice_enabled(i32 noundef 39) #19
  %.not28.i = icmp eq i32 %i.gb, 0
  br i1 %.not28.i, label %wt_status_collect_untracked.exit, label %bb.aj

end_hunk_0
