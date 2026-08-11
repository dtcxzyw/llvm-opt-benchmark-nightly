inline.NumInlined: 52
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cmd_name_rev:bb.a
  %.not4471 = icmp eq i32 %i.dz, 0
  br i1 %.not4471, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.s
  %.03573 = phi i32 [ %i.fq, %bb.s ], [ %i.dz, %bb.g ]
  %.03672 = phi ptr [ %i.fr, %bb.s ], [ %1, %bb.g ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.em = load ptr, ptr @the_repository, align 8, !tbaa !32
  %i.en = load ptr, ptr %.03672, align 8, !tbaa !42
  %i.eo = call i32 @repo_get_oid(ptr noundef %i.em, ptr noundef %i.en, ptr noundef nonnull %11) #16
  %.not50 = icmp eq i32 %i.eo, 0
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.eq = load ptr, ptr %.03672, align 8, !tbaa !42
  %i.er = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.24, ptr noundef %i.eq) #18 ; 0 uses
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph
  %i.es = load ptr, ptr @the_repository, align 8, !tbaa !32
  %i.et = call ptr @parse_object(ptr noundef %i.es, ptr noundef nonnull %11) #16 ; 4 uses
  %.not51 = icmp eq ptr %i.et, null
  %i.eu = load ptr, ptr %.03672, align 8, !tbaa !42 ; 2 uses
  br i1 %.not51, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ev = load ptr, ptr @the_repository, align 8, !tbaa !32
  %i.ew = call ptr @deref_tag(ptr noundef %i.ev, ptr noundef nonnull %i.et, ptr noundef %i.eu, i32 noundef 0) #16 ; 5 uses
  %.not52 = icmp eq ptr %i.ew, null
  br i1 %.not52, label %set_commit_cutoff.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ex = load i64, ptr %i.ew, align 4
  %i.ey = and i64 %i.ex, 14
  %i.ez = icmp eq i64 %i.ey, 2
  br i1 %i.ez, label %bb.l, label %set_commit_cutoff.exit

.critedge:                                        ; preds = %bb.i
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.fb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fa, ptr noundef nonnull @.str.25, ptr noundef %i.eu) #18 ; 0 uses
  br label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.fc = load i64, ptr @cutoff, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !45 ; 2 uses
  %i.ff = icmp ugt i64 %i.fc, %i.fe
  br i1 %i.ff, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.fe, ptr @cutoff, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fg = load i64, ptr @generation_cutoff, align 8, !tbaa !41
  %.not.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i, label %set_commit_cutoff.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fh = call i64 @commit_graph_generation(ptr noundef nonnull %i.ew) #16 ; 2 uses
  %i.fi = load i64, ptr @generation_cutoff, align 8, !tbaa !41
  %i.fj = icmp ugt i64 %i.fi, %i.fh
  br i1 %i.fj, label %bb.p, label %set_commit_cutoff.exit.thread

bb.p:                                             ; preds = %bb.o
  store i64 %i.fh, ptr @generation_cutoff, align 8, !tbaa !41
  br label %set_commit_cutoff.exit.thread

set_commit_cutoff.exit.thread:                    ; preds = %bb.n, %bb.o, %bb.p
  %i.fk = load i32, ptr %i.f, align 4, !tbaa !12
  %.not5465 = icmp eq i32 %i.fk, 0
  %.mux68 = select i1 %.not5465, ptr %i.et, ptr %i.ew
  br label %bb.r

set_commit_cutoff.exit:                           ; preds = %bb.k, %bb.j
  %i.fl = load i32, ptr %i.f, align 4, !tbaa !12
  %.not54 = icmp eq i32 %i.fl, 0
  br i1 %.not54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %set_commit_cutoff.exit
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.fn = load ptr, ptr %.03672, align 8, !tbaa !42
  %i.fo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fm, ptr noundef nonnull @.str.26, ptr noundef %i.fn) #18 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %set_commit_cutoff.exit.thread, %set_commit_cutoff.exit
  %.mux69 = phi ptr [ %.mux68, %set_commit_cutoff.exit.thread ], [ %i.et, %set_commit_cutoff.exit ]
  %i.fp = load ptr, ptr %.03672, align 8, !tbaa !42
  call void @add_object_array(ptr noundef nonnull %.mux69, ptr noundef %i.fp, ptr noundef nonnull %7) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.critedge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.fq = add nsw i32 %.03573, -1                 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.03672, i64 8
  %.not44 = icmp eq i32 %i.fq, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.s, %bb.g
  %i.fs = load i64, ptr @cutoff, align 8, !tbaa !41 ; 2 uses
  %.not.i55 = icmp eq i64 %i.fs, 0
  br i1 %.not.i55, label %adjust_cutoff_timestamp_for_slop.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge
  %.sink.i = call i64 @llvm.usub.sat.i64(i64 %i.fs, i64 86400)
  store i64 %.sink.i, ptr @cutoff, align 8, !tbaa !41
  br label %adjust_cutoff_timestamp_for_slop.exit

adjust_cutoff_timestamp_for_slop.exit:            ; preds = %._crit_edge, %.sink.split.i
  %i.ft = load ptr, ptr @the_repository, align 8, !tbaa !32
  %i.fu = call ptr @get_main_ref_store(ptr noundef %i.ft) #16
  %i.fv = call i32 @refs_for_each_ref(ptr noundef %i.fu, ptr noundef nonnull @name_ref, ptr noundef nonnull %8) #16 ; 0 uses
  %i.fw = load i32, ptr @tip_table.1, align 8, !tbaa !53 ; 3 uses
  %i.fx = icmp ugt i32 %i.fw, 1
  br i1 %i.fx, label %bb.t, label %sane_qsort.exit.i

bb.t:                                             ; preds = %adjust_cutoff_timestamp_for_slop.exit
  %i.fy = sext i32 %i.fw to i64
  %i.fz = load ptr, ptr @tip_table.0, align 8, !tbaa !56
  call void @qsort(ptr noundef %i.fz, i64 noundef range(i64 -2147483648, 2147483648) %i.fy, i64 noundef 72, ptr noundef nonnull @cmp_by_tag_and_age) #16
  %.pre.i = load i32, ptr @tip_table.1, align 8, !tbaa !53
  br label %sane_qsort.exit.i

sane_qsort.exit.i:                                ; preds = %bb.t, %adjust_cutoff_timestamp_for_slop.exit
  %i.ga = phi i32 [ %i.fw, %adjust_cutoff_timestamp_for_slop.exit ], [ %.pre.i, %bb.t ] ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i, label %name_tips.exit

.lr.ph.i:                                         ; preds = %sane_qsort.exit.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.ay, %.lr.ph.i
  %i.gd = phi i32 [ %i.ga, %.lr.ph.i ], [ %i.nr, %bb.ay ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ay ] ; 2 uses
  %i.ge = load ptr, ptr @tip_table.0, align 8, !tbaa !56
  %i.gf = getelementptr inbounds nuw [72 x i8], ptr %i.ge, i64 %indvars.iv.i ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !57 ; 6 uses
  %.not.i56 = icmp eq ptr %i.gh, null
  br i1 %.not.i56, label %bb.ay, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !60 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !61 ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gn = load i8, ptr %i.gm, align 8             ; 2 uses
  %i.go = and i8 %i.gn, 1                         ; 3 uses
  %i.gp = zext nneg i8 %i.go to i32               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.gq = load ptr, ptr @the_repository, align 8, !tbaa !32
  %i.gr = call i32 @repo_parse_commit_gently(ptr noundef %i.gq, ptr noundef nonnull %i.gh, i32 noundef 0) #16 ; 0 uses
  %i.gs = load i64, ptr @generation_cutoff, align 8, !tbaa !41 ; 2 uses
  %i.gt = icmp ult i64 %i.gs, 9223372036854775807
  br i1 %i.gt, label %bb.w, label %.split.i.i

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i, label %commit_is_before_cutoff.exit.thread.i.i, label %commit_is_before_cutoff.exit.i.i

.split.i.i:                                       ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !45
  %i.gw = load i64, ptr @cutoff, align 8, !tbaa !41
  %i.gx = icmp ult i64 %i.gv, %i.gw
  br i1 %i.gx, label %name_rev.exit.i, label %commit_is_before_cutoff.exit.thread.i.i

commit_is_before_cutoff.exit.i.i:                 ; preds = %bb.w
  %i.gy = call i64 @commit_graph_generation(ptr noundef nonnull %i.gh) #16
  %i.gz = load i64, ptr @generation_cutoff, align 8, !tbaa !41
  %i.ha = icmp ult i64 %i.gy, %i.gz
  br i1 %i.ha, label %name_rev.exit.i, label %commit_is_before_cutoff.exit.thread.i.i

commit_is_before_cutoff.exit.thread.i.i:          ; preds = %commit_is_before_cutoff.exit.i.i, %.split.i.i, %bb.w
  %i.hb = getelementptr i8, ptr %i.gh, i64 72
  %.val53.i.i = load i32, ptr %i.hb, align 8, !tbaa !62 ; 3 uses
  %i.hc = udiv i32 %.val53.i.i, 16383             ; 7 uses
  %i.hd = urem i32 %.val53.i.i, 16383
  %i.he = load i32, ptr @rev_names.2, align 8, !tbaa !27
  %.not.i.i.i10.i = icmp ugt i32 %i.he, %i.hc
  br i1 %.not.i.i.i10.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %commit_is_before_cutoff.exit.thread.i.i
  %i.hf = add nuw nsw i32 %i.hc, 1                ; 2 uses
  %i.hg = load ptr, ptr @rev_names.3, align 8, !tbaa !31
  %i.hh = shl nuw nsw i32 %i.hf, 3
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = call ptr @xrealloc(ptr noundef %i.hg, i64 noundef %i.hi) #16 ; 4 uses
  store ptr %i.hj, ptr @rev_names.3, align 8, !tbaa !31
  %i.hk = load i32, ptr @rev_names.2, align 8, !tbaa !27 ; 5 uses
  %.not342.i.i.i.i = icmp ugt i32 %i.hk, %i.hc
  br i1 %.not342.i.i.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.x
  %13 = add nuw nsw i32 %i.hc, 1
  %14 = sub nuw i32 %13, %i.hk                    ; 3 uses
  %min.iters.check125 = icmp samesign ult i32 %14, 4
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.preheader136, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec127 = and i32 %14, 1048572                ; 3 uses
  %i.hl = add i32 %i.hk, %n.vec127
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i32 [ 0, %vector.ph126 ], [ %index.next130, %vector.body128 ] ; 2 uses
  %i.hm = add i32 %i.hk, %index129
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ho, align 8, !tbaa !63
  store <2 x ptr> splat (ptr null), ptr %i.hp, align 8, !tbaa !63
  %index.next130 = add nuw i32 %index129, 4       ; 2 uses
  %i.hq = icmp eq i32 %index.next130, %n.vec127
  br i1 %i.hq, label %middle.block131, label %vector.body128, !llvm.loop !65

middle.block131:                                  ; preds = %vector.body128
  %cmp.n132 = icmp eq i32 %14, %n.vec127
  br i1 %cmp.n132, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader136

.lr.ph.i.i.i.i.preheader136:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block131
  %.0303.i.i.i.i.ph = phi i32 [ %i.hk, %.lr.ph.i.i.i.i.preheader ], [ %i.hl, %middle.block131 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader136, %.lr.ph.i.i.i.i
  %.0303.i.i.i.i = phi i32 [ %i.ht, %.lr.ph.i.i.i.i ], [ %.0303.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader136 ] ; 2 uses
  %i.hr = zext i32 %.0303.i.i.i.i to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hr
  store ptr null, ptr %i.hs, align 8, !tbaa !63
  %i.ht = add i32 %.0303.i.i.i.i, 1               ; 2 uses
  %.not34.i.i.i.i = icmp ugt i32 %i.ht, %i.hc
  br i1 %.not34.i.i.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !68

bb.y:                                             ; preds = %commit_is_before_cutoff.exit.thread.i.i
  %.pre.i.i.i12.i = load ptr, ptr @rev_names.3, align 8, !tbaa !31
  %i.hu = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i12.i, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !63 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not35.i.i.i.i, label %commit_rev_name_at.exit.i.i, label %commit_rev_name_at.exit.thread.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %middle.block131, %bb.x
  store i32 %i.hf, ptr @rev_names.2, align 8, !tbaa !27
  %i.hx = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !63 ; 2 uses
  %.not357.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not357.i.i.i.i, label %commit_rev_name_at.exit.i.i, label %commit_rev_name_at.exit.thread.i.i

commit_rev_name_at.exit.thread.i.i:               ; preds = %.thread.i.i.i.i, %bb.y
  %.ph.i.i = phi ptr [ %i.hz, %.thread.i.i.i.i ], [ %i.hw, %bb.y ]
  %i.ia = urem i32 %.val53.i.i, 16383
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %.ph.i.i, i64 %i.ib
  br label %is_valid_rev_name.exit.i.i

commit_rev_name_at.exit.i.i:                      ; preds = %.thread.i.i.i.i, %bb.y
  %i.id = phi i64 [ %i.hu, %bb.y ], [ %i.hx, %.thread.i.i.i.i ]
  %i.ie = call ptr @xcalloc(i64 noundef 16383, i64 noundef 32) #16 ; 3 uses
  %i.if = load ptr, ptr @rev_names.3, align 8, !tbaa !31
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.id
  store ptr %i.ie, ptr %i.ig, align 8, !tbaa !63
  %i.ih = zext nneg i32 %i.hd to i64
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %i.ih ; 5 uses
  %.not.i.i11.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i11.i, label %create_or_update_name.exit.i, label %is_valid_rev_name.exit.i.i

is_valid_rev_name.exit.i.i:                       ; preds = %commit_rev_name_at.exit.i.i, %commit_rev_name_at.exit.thread.i.i
  %i.ij = phi ptr [ %i.ic, %commit_rev_name_at.exit.thread.i.i ], [ %i.ii, %commit_rev_name_at.exit.i.i ] ; 10 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !69
  %.not9.i.i = icmp eq ptr %i.ik, null
  br i1 %.not9.i.i, label %create_or_update_name.exit.thread16.i, label %bb.z

bb.z:                                             ; preds = %is_valid_rev_name.exit.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  %i.im = load i32, ptr %i.il, align 4, !tbaa !71
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.io = load i32, ptr %i.in, align 8, !tbaa !72
  %i.ip = icmp sgt i32 %i.io, 0
  %i.iq = select i1 %i.ip, i32 65535, i32 0
  %i.ir = add nsw i32 %i.iq, %i.im                ; 3 uses
  %.not.i17.i.i = icmp eq i8 %i.go, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %.pre.i18.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !73
  %i.is = icmp eq i32 %.pre.i18.i.i, 0            ; 2 uses
  br i1 %.not.i17.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.it = icmp sgt i32 %i.ir, 0
  %or.cond.i.i = select i1 %i.is, i1 true, i1 %i.it
  br i1 %or.cond.i.i, label %create_or_update_name.exit.thread16.i, label %name_rev.exit.i

bb.ab:                                            ; preds = %bb.z
  br i1 %i.is, label %bb.ac, label %name_rev.exit.i

bb.ac:                                            ; preds = %bb.ab
  %.not26.i.i.i = icmp eq i32 %i.ir, 0
  br i1 %.not26.i.i.i, label %bb.ad, label %.split19.i.i

.split19.i.i:                                     ; preds = %bb.ac
  %i.iu = icmp sgt i32 %i.ir, 0
  br i1 %i.iu, label %create_or_update_name.exit.thread16.i, label %name_rev.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !74
  %i.ix = icmp ugt i64 %i.iw, %i.gl
  br i1 %i.ix, label %create_or_update_name.exit.thread16.i, label %name_rev.exit.i

create_or_update_name.exit.thread16.i:            ; preds = %bb.ad, %.split19.i.i, %bb.aa, %is_valid_rev_name.exit.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %i.gl, ptr %i.iy, align 8, !tbaa !74
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store i32 0, ptr %i.iz, align 8, !tbaa !72
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  store i32 0, ptr %i.ja, align 4, !tbaa !71
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store i32 %i.gp, ptr %i.jb, align 8, !tbaa !73
  %i.jc = and i8 %i.gn, 2
  %.not46.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not46.i.i, label %bb.af, label %bb.ae

create_or_update_name.exit.i:                     ; preds = %commit_rev_name_at.exit.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 %i.gl, ptr %i.jd, align 8, !tbaa !74
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i32 0, ptr %i.je, align 8, !tbaa !72
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  store i32 0, ptr %i.jf, align 4, !tbaa !71
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store i32 %i.gp, ptr %i.jg, align 8, !tbaa !73
  br label %name_rev.exit.i

bb.ae:                                            ; preds = %create_or_update_name.exit.thread16.i
  %i.jh = call ptr (ptr, ptr, ...) @mem_pool_strfmt(ptr noundef nonnull %6, ptr noundef nonnull @.str.57, ptr noundef %i.gj) #16
  br label %bb.ag

bb.af:                                            ; preds = %create_or_update_name.exit.thread16.i
  %i.ji = call ptr @mem_pool_strdup(ptr noundef nonnull %6, ptr noundef %i.gj) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge.i.i = phi ptr [ %i.ji, %bb.af ], [ %i.jh, %bb.ae ]
  store ptr %storemerge.i.i, ptr %i.ij, align 8, !tbaa !69
  call void @commit_stack_push(ptr noundef nonnull %4, ptr noundef nonnull %i.gh) #16
  %i.jj = call ptr @commit_stack_pop(ptr noundef nonnull %4) #16 ; 2 uses
  %.not4785.i.i = icmp eq ptr %i.jj, null
  br i1 %.not4785.i.i, label %._crit_edge.i.i, label %.lr.ph86.i.i

.lr.ph86.i.i:                                     ; preds = %bb.ag
  %.not.i17.i.i.i = icmp eq i8 %i.go, 0
  br label %bb.ah

.loopexit.i.i:                                    ; preds = %.lr.ph84.i.i, %.preheader.i.i, %get_commit_rev_name.exit.i.i
  %i.jk = call ptr @commit_stack_pop(ptr noundef nonnull %4) #16 ; 2 uses
  %.not47.i.i = icmp eq ptr %i.jk, null
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %bb.ah, !llvm.loop !75

bb.ah:                                            ; preds = %.loopexit.i.i, %.lr.ph86.i.i
  %i.jl = phi ptr [ %i.jj, %.lr.ph86.i.i ], [ %i.jk, %.loopexit.i.i ] ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 72
  %.val54.i.i = load i32, ptr %i.jm, align 8, !tbaa !62 ; 2 uses
  %i.jn = udiv i32 %.val54.i.i, 16383             ; 2 uses
  %i.jo = urem i32 %.val54.i.i, 16383
  %i.jp = load i32, ptr @rev_names.2, align 8, !tbaa !27
  %.not.i.i.i.i.i = icmp ugt i32 %i.jp, %i.jn
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %is_valid_rev_name.exit.thread.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %.pre.i.i.i.i.i = load ptr, ptr @rev_names.3, align 8, !tbaa !31
  %i.jq = zext nneg i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !63 ; 2 uses
  %.not35.i.i.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not35.i.i.i.i.i, label %is_valid_rev_name.exit.thread.i.i.i, label %is_valid_rev_name.exit.i.i.i

is_valid_rev_name.exit.i.i.i:                     ; preds = %bb.ai
  %i.jt = zext nneg i32 %i.jo to i64
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.js, i64 %i.jt ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !69
  %.fr.i.i.i = freeze ptr %i.jv
  %.not7.i.i.i = icmp eq ptr %.fr.i.i.i, null
  br i1 %.not7.i.i.i, label %is_valid_rev_name.exit.thread.i.i.i, label %get_commit_rev_name.exit.i.i

is_valid_rev_name.exit.thread.i.i.i:              ; preds = %is_valid_rev_name.exit.i.i.i, %bb.ai, %bb.ah
  br label %get_commit_rev_name.exit.i.i

get_commit_rev_name.exit.i.i:                     ; preds = %is_valid_rev_name.exit.thread.i.i.i, %is_valid_rev_name.exit.i.i.i
  %i.jw = phi ptr [ null, %is_valid_rev_name.exit.thread.i.i.i ], [ %i.ju, %is_valid_rev_name.exit.i.i.i ] ; 3 uses
  store i64 0, ptr %i.gc, align 8, !tbaa !76
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %.04078.i.i = load ptr, ptr %i.jx, align 8, !tbaa !79 ; 2 uses
  %.not4879.i.i = icmp eq ptr %.04078.i.i, null
  br i1 %.not4879.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %get_commit_rev_name.exit.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  br label %bb.aj

.preheader.i.i:                                   ; preds = %create_or_update_name.exit.thread.i.i
  %.pre.i.i = load i64, ptr %i.gc, align 8, !tbaa !76
  %i.ka = icmp eq i64 %.pre.i.i, 0
  br i1 %i.ka, label %.loopexit.i.i, label %.lr.ph84.i.i

bb.aj:                                            ; preds = %create_or_update_name.exit.thread.i.i, %.lr.ph.i.i
  %.04082.i.i = phi ptr [ %.04078.i.i, %.lr.ph.i.i ], [ %.040.i.i, %create_or_update_name.exit.thread.i.i ] ; 2 uses
  %.04180.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %i.no, %create_or_update_name.exit.thread.i.i ] ; 4 uses
  %i.kb = load ptr, ptr %.04082.i.i, align 8, !tbaa !80 ; 5 uses
  %i.kc = load ptr, ptr @the_repository, align 8, !tbaa !32
  %i.kd = call i32 @repo_parse_commit_gently(ptr noundef %i.kc, ptr noundef %i.kb, i32 noundef 0) #16 ; 0 uses
  %i.ke = load i64, ptr @generation_cutoff, align 8, !tbaa !41 ; 2 uses
  %i.kf = icmp ult i64 %i.ke, 9223372036854775807
  br i1 %i.kf, label %bb.ak, label %.split104.i.i

bb.ak:                                            ; preds = %bb.aj
  %.not.i57.i.i = icmp eq i64 %i.ke, 0
  br i1 %.not.i57.i.i, label %commit_is_before_cutoff.exit58.thread.i.i, label %commit_is_before_cutoff.exit58.i.i

.split104.i.i:                                    ; preds = %bb.aj
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !45
  %i.ki = load i64, ptr @cutoff, align 8, !tbaa !41
  %i.kj = icmp ult i64 %i.kh, %i.ki
  br i1 %i.kj, label %create_or_update_name.exit.thread.i.i, label %commit_is_before_cutoff.exit58.thread.i.i

commit_is_before_cutoff.exit58.i.i:               ; preds = %bb.ak
  %i.kk = call i64 @commit_graph_generation(ptr noundef %i.kb) #16
  %i.kl = load i64, ptr @generation_cutoff, align 8, !tbaa !41
  %i.km = icmp ult i64 %i.kk, %i.kl
  br i1 %i.km, label %create_or_update_name.exit.thread.i.i, label %commit_is_before_cutoff.exit58.thread.i.i

commit_is_before_cutoff.exit58.thread.i.i:        ; preds = %commit_is_before_cutoff.exit58.i.i, %.split104.i.i, %bb.ak
  %i.kn = icmp samesign ugt i32 %.04180.i.i, 1    ; 2 uses
  br i1 %i.kn, label %bb.am, label %bb.al

bb.al:                                            ; preds = %commit_is_before_cutoff.exit58.thread.i.i
  %i.ko = load i32, ptr %i.jy, align 8, !tbaa !72
  %i.kp = add nsw i32 %i.ko, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %commit_is_before_cutoff.exit58.thread.i.i
  %.sink105.i.i = phi i32 [ 1, %bb.al ], [ 65535, %commit_is_before_cutoff.exit58.thread.i.i ]
  %.039.i.i = phi i32 [ %i.kp, %bb.al ], [ 0, %commit_is_before_cutoff.exit58.thread.i.i ] ; 3 uses
  %i.kq = load i32, ptr %i.jz, align 4, !tbaa !71
  %i.kr = add nsw i32 %i.kq, %.sink105.i.i        ; 3 uses
  %i.ks = getelementptr i8, ptr %i.kb, i64 72
  %.val.i.i = load i32, ptr %i.ks, align 8, !tbaa !62 ; 3 uses
  %i.kt = udiv i32 %.val.i.i, 16383               ; 7 uses
  %i.ku = urem i32 %.val.i.i, 16383
  %i.kv = load i32, ptr @rev_names.2, align 8, !tbaa !27
  %.not.i.i.i59.i.i = icmp ugt i32 %i.kv, %i.kt
  br i1 %.not.i.i.i59.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kw = add nuw nsw i32 %i.kt, 1                ; 2 uses
  %i.kx = load ptr, ptr @rev_names.3, align 8, !tbaa !31
  %i.ky = shl nuw nsw i32 %i.kw, 3
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = call ptr @xrealloc(ptr noundef %i.kx, i64 noundef %i.kz) #16 ; 4 uses
  store ptr %i.la, ptr @rev_names.3, align 8, !tbaa !31
  %i.lb = load i32, ptr @rev_names.2, align 8, !tbaa !27 ; 5 uses
  %.not342.i.i.i.i.i = icmp ugt i32 %i.lb, %i.kt
  br i1 %.not342.i.i.i.i.i, label %.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.an
  %15 = add nuw nsw i32 %i.kt, 1
  %16 = sub nuw i32 %15, %i.lb                    ; 3 uses
  %min.iters.check = icmp samesign ult i32 %16, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader135, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i32 %16, 1048572                   ; 3 uses
  %i.lc = add i32 %i.lb, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ld = add i32 %i.lb, %index
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.lf, align 8, !tbaa !63
  store <2 x ptr> splat (ptr null), ptr %i.lg, align 8, !tbaa !63
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.lh = icmp eq i32 %index.next, %n.vec
  br i1 %i.lh, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %16, %n.vec
  br i1 %cmp.n, label %.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader135

.lr.ph.i.i.i.i.i.preheader135:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.0303.i.i.i.i.i.ph = phi i32 [ %i.lb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.lc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader135, %.lr.ph.i.i.i.i.i
  %.0303.i.i.i.i.i = phi i32 [ %i.lk, %.lr.ph.i.i.i.i.i ], [ %.0303.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader135 ] ; 2 uses
  %i.li = zext i32 %.0303.i.i.i.i.i to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.li
  store ptr null, ptr %i.lj, align 8, !tbaa !63
  %i.lk = add i32 %.0303.i.i.i.i.i, 1             ; 2 uses
  %.not34.i.i.i.i.i = icmp ugt i32 %i.lk, %i.kt
  br i1 %.not34.i.i.i.i.i, label %.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !83

bb.ao:                                            ; preds = %bb.am
  %.pre.i.i.i63.i.i = load ptr, ptr @rev_names.3, align 8, !tbaa !31
  %i.ll = zext nneg i32 %i.kt to i64              ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i63.i.i, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !63 ; 2 uses
  %.not35.i.i.i64.i.i = icmp eq ptr %i.ln, null
  br i1 %.not35.i.i.i64.i.i, label %commit_rev_name_at.exit.i.i.i, label %commit_rev_name_at.exit.thread.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.an
  store i32 %i.kw, ptr @rev_names.2, align 8, !tbaa !27
  %i.lo = zext nneg i32 %i.kt to i64              ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !63 ; 2 uses
  %.not357.i.i.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not357.i.i.i.i.i, label %commit_rev_name_at.exit.i.i.i, label %commit_rev_name_at.exit.thread.i.i.i

commit_rev_name_at.exit.thread.i.i.i:             ; preds = %.thread.i.i.i.i.i, %bb.ao
  %.ph.i.i.i = phi ptr [ %i.lq, %.thread.i.i.i.i.i ], [ %i.ln, %bb.ao ]
  %i.lr = urem i32 %.val.i.i, 16383
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [32 x i8], ptr %.ph.i.i.i, i64 %i.ls
  br label %is_valid_rev_name.exit.i60.i.i

commit_rev_name_at.exit.i.i.i:                    ; preds = %.thread.i.i.i.i.i, %bb.ao
  %i.lu = phi i64 [ %i.ll, %bb.ao ], [ %i.lo, %.thread.i.i.i.i.i ]
  %i.lv = call ptr @xcalloc(i64 noundef 16383, i64 noundef 32) #16 ; 3 uses
  %i.lw = load ptr, ptr @rev_names.3, align 8, !tbaa !31
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lu
  store ptr %i.lv, ptr %i.lx, align 8, !tbaa !63
  %i.ly = zext nneg i32 %i.ku to i64
  %i.lz = getelementptr inbounds nuw [32 x i8], ptr %i.lv, i64 %i.ly ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i.i, label %create_or_update_name.exit.i.i, label %is_valid_rev_name.exit.i60.i.i

is_valid_rev_name.exit.i60.i.i:                   ; preds = %commit_rev_name_at.exit.i.i.i, %commit_rev_name_at.exit.thread.i.i.i
  %i.ma = phi ptr [ %i.lt, %commit_rev_name_at.exit.thread.i.i.i ], [ %i.lz, %commit_rev_name_at.exit.i.i.i ] ; 10 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !69
  %.not9.i.i.i = icmp eq ptr %i.mb, null
  br i1 %.not9.i.i.i, label %create_or_update_name.exit.thread76.i.i, label %bb.ap

bb.ap:                                            ; preds = %is_valid_rev_name.exit.i60.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 20
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !71
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !72
  %i.mg = icmp sgt i32 %i.mf, 0
  %i.mh = select i1 %i.mg, i32 65535, i32 0
  %i.mi = add nsw i32 %i.mh, %i.md                ; 3 uses
  %i.mj = icmp sgt i32 %.039.i.i, 0
  %i.mk = select i1 %i.mj, i32 65535, i32 0
  %i.ml = add nsw i32 %i.mk, %i.kr                ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %.pre.i18.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !73
  %i.mm = icmp eq i32 %.pre.i18.i.i.i, 0          ; 2 uses
  br i1 %.not.i17.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mn = icmp sgt i32 %i.mi, %i.ml
  %or.cond.i.i.i = select i1 %i.mm, i1 true, i1 %i.mn
  br i1 %or.cond.i.i.i, label %create_or_update_name.exit.thread76.i.i, label %create_or_update_name.exit.thread.i.i

bb.ar:                                            ; preds = %bb.ap
  br i1 %i.mm, label %bb.as, label %create_or_update_name.exit.thread.i.i

bb.as:                                            ; preds = %bb.ar
  %.not26.i.i.i.i = icmp eq i32 %i.mi, %i.ml
  br i1 %.not26.i.i.i.i, label %bb.at, label %.split19.i.i.i

.split19.i.i.i:                                   ; preds = %bb.as
  %i.mo = icmp sgt i32 %i.mi, %i.ml
  br i1 %i.mo, label %create_or_update_name.exit.thread76.i.i, label %create_or_update_name.exit.thread.i.i

bb.at:                                            ; preds = %bb.as
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !74
  %i.mr = icmp ugt i64 %i.mq, %i.gl
  br i1 %i.mr, label %create_or_update_name.exit.thread76.i.i, label %create_or_update_name.exit.thread.i.i

create_or_update_name.exit.thread76.i.i:          ; preds = %bb.at, %.split19.i.i.i, %bb.aq, %is_valid_rev_name.exit.i60.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.gl, ptr %i.ms, align 8, !tbaa !74
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store i32 %.039.i.i, ptr %i.mt, align 8, !tbaa !72
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ma, i64 20
  store i32 %i.kr, ptr %i.mu, align 4, !tbaa !71
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store i32 %i.gp, ptr %i.mv, align 8, !tbaa !73
  %i.mw = load ptr, ptr %i.jw, align 8, !tbaa !69 ; 5 uses
  br i1 %i.kn, label %bb.au, label %get_parent_name.exit.i.i

create_or_update_name.exit.i.i:                   ; preds = %commit_rev_name_at.exit.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i64 %i.gl, ptr %i.mx, align 8, !tbaa !74
  %i.my = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store i32 %.039.i.i, ptr %i.my, align 8, !tbaa !72
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lz, i64 20
  store i32 %i.kr, ptr %i.mz, align 4, !tbaa !71
  %i.na = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  store i32 %i.gp, ptr %i.na, align 8, !tbaa !73
  br label %create_or_update_name.exit.thread.i.i

bb.au:                                            ; preds = %create_or_update_name.exit.thread76.i.i
  %i.nb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.mw) #19 ; 4 uses
  %i.nc = icmp ult i64 %i.nb, 2
  br i1 %i.nc, label %strip_suffix.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nd = add i64 %i.nb, -2                       ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.nd
  %i.nf = load i16, ptr %i.ne, align 1
  %i.ng = icmp ne i16 %i.nf, 12382
  %i.nh = zext i1 %i.ng to i32
  %.not.i.i.i65.i.i = icmp eq i32 %i.nh, 0
  %spec.select.i.i.i = select i1 %.not.i.i.i65.i.i, i64 %i.nd, i64 %i.nb
  br label %strip_suffix.exit.i.i.i

strip_suffix.exit.i.i.i:                          ; preds = %bb.av, %bb.au
  %.011.i.i.i = phi i64 [ %i.nb, %bb.au ], [ %spec.select.i.i.i, %bb.av ]
  %i.ni = load i32, ptr %i.jy, align 8, !tbaa !72 ; 2 uses
  %i.nj = icmp sgt i32 %i.ni, 0
  %i.nk = trunc i64 %.011.i.i.i to i32            ; 2 uses
  br i1 %i.nj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %strip_suffix.exit.i.i.i
  %i.nl = call ptr (ptr, ptr, ...) @mem_pool_strfmt(ptr noundef nonnull %6, ptr noundef nonnull @.str.59, i32 noundef %i.nk, ptr noundef nonnull %i.mw, i32 noundef %i.ni, i32 noundef range(i32 2, -2147483648) %.04180.i.i) #16
  br label %get_parent_name.exit.i.i

bb.ax:                                            ; preds = %strip_suffix.exit.i.i.i
  %i.nm = call ptr (ptr, ptr, ...) @mem_pool_strfmt(ptr noundef nonnull %6, ptr noundef nonnull @.str.60, i32 noundef %i.nk, ptr noundef nonnull %i.mw, i32 noundef range(i32 2, -2147483648) %.04180.i.i) #16
  br label %get_parent_name.exit.i.i

get_parent_name.exit.i.i:                         ; preds = %bb.ax, %bb.aw, %create_or_update_name.exit.thread76.i.i
  %storemerge52.i.i = phi ptr [ %i.nm, %bb.ax ], [ %i.nl, %bb.aw ], [ %i.mw, %create_or_update_name.exit.thread76.i.i ]
  store ptr %storemerge52.i.i, ptr %i.ma, align 8, !tbaa !69
  call void @commit_stack_push(ptr noundef nonnull %5, ptr noundef nonnull %i.kb) #16
  br label %create_or_update_name.exit.thread.i.i

create_or_update_name.exit.thread.i.i:            ; preds = %get_parent_name.exit.i.i, %create_or_update_name.exit.i.i, %bb.at, %.split19.i.i.i, %bb.ar, %bb.aq, %commit_is_before_cutoff.exit58.i.i, %.split104.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %.04082.i.i, i64 8
  %i.no = add nuw nsw i32 %.04180.i.i, 1
  %.040.i.i = load ptr, ptr %i.nn, align 8, !tbaa !79 ; 2 uses
  %.not48.i.i = icmp eq ptr %.040.i.i, null
  br i1 %.not48.i.i, label %.preheader.i.i, label %bb.aj, !llvm.loop !84

.lr.ph84.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph84.i.i
  %i.np = call ptr @commit_stack_pop(ptr noundef nonnull %5) #16
  call void @commit_stack_push(ptr noundef nonnull %4, ptr noundef %i.np) #16
  %i.nq = load i64, ptr %i.gc, align 8, !tbaa !76
  %.not49.i.i = icmp eq i64 %i.nq, 0
  br i1 %.not49.i.i, label %.loopexit.i.i, label %.lr.ph84.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %bb.ag
  call void @commit_stack_clear(ptr noundef nonnull %4) #16
  call void @commit_stack_clear(ptr noundef nonnull %5) #16
  br label %name_rev.exit.i

name_rev.exit.i:                                  ; preds = %._crit_edge.i.i, %create_or_update_name.exit.i, %bb.ad, %.split19.i.i, %bb.ab, %bb.aa, %commit_is_before_cutoff.exit.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.pre20.i = load i32, ptr @tip_table.1, align 8, !tbaa !53
  br label %bb.ay

bb.ay:                                            ; preds = %name_rev.exit.i, %bb.u
  %i.nr = phi i32 [ %.pre20.i, %name_rev.exit.i ], [ %i.gd, %bb.u ] ; 2 uses
end_hunk_0
