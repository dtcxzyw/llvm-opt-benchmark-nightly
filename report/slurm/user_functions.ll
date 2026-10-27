Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/user_functions?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@sacctmgr_modify_user:bb.a
  %i.ge = load ptr, ptr %i.gd, align 8            ; 3 uses
  %.not149 = icmp eq ptr %i.ge, null
  br i1 %.not149, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gf = load i8, ptr %i.ge, align 1
  %.not150 = icmp eq i8 %i.gf, 0
  br i1 %.not150, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gg = load ptr, ptr %i.j, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call fastcc i32 @_check_default_assocs(ptr noundef %i.ge, ptr noundef %i.gb, ptr noundef %i.gi)
  %.not151 = icmp ne i32 %i.gj, 0
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %.0 = phi i1 [ false, %bb.bk ], [ %.not151, %bb.bm ], [ false, %bb.bl ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %.not152 = icmp eq ptr %i.gl, null
  br i1 %.not152, label %select.unfold, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gm = load ptr, ptr %i.j, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call fastcc i32 @_check_default_wckeys(ptr noundef %i.gl, ptr noundef %i.gb, ptr noundef %i.go)
  %.not153 = icmp ne i32 %i.gp, 0
  %or.cond = select i1 %.not153, i1 true, i1 %.0
  br i1 %or.cond, label %.split, label %bb.bp

select.unfold:                                    ; preds = %bb.bn
  br i1 %.0, label %.split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %select.unfold
  %i.gq = call ptr @list_iterator_create(ptr noundef nonnull %i.gb) #9 ; 3 uses
  %i.gr = call ptr @list_next(ptr noundef %i.gq) #9 ; 2 uses
  %.not155221 = icmp eq ptr %i.gr, null
  br i1 %.not155221, label %.thread260, label %.lr.ph223

.lr.ph223:                                        ; preds = %bb.bp, %.lr.ph223
  %i.gs = phi ptr [ %i.gu, %.lr.ph223 ], [ %i.gr, %bb.bp ]
  %i.gt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %i.gs) ; 0 uses
  %i.gu = call ptr @list_next(ptr noundef %i.gq) #9 ; 2 uses
  %.not155 = icmp eq ptr %i.gu, null
  br i1 %.not155, label %.thread260, label %.lr.ph223, !llvm.loop !32

.thread260:                                       ; preds = %.lr.ph223, %bb.bp
  call void @list_iterator_destroy(ptr noundef %i.gq) #9
  br label %.split

.critedge:                                        ; preds = %bb.bi
  %i.gv = tail call ptr @__errno_location() #13   ; 3 uses
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = icmp eq i32 %i.gw, 1900
  br i1 %i.gx, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %.critedge
  store i32 1, ptr @exit_code, align 4
  %i.gy = load ptr, ptr @stderr, align 8
  %i.gz = load i32, ptr %i.gv, align 4
  %i.ha = call ptr @slurm_strerror(i32 noundef %i.gz) #9
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gy, ptr noundef nonnull @.str.35, ptr noundef %i.ha) #11 ; 0 uses
  %i.hc = load i32, ptr %i.gv, align 4
  %i.hd = icmp eq i32 %i.hc, 7003
  br i1 %i.hd, label %bb.br, label %.thread196

bb.br:                                            ; preds = %bb.bq
  %i.he = load ptr, ptr @stderr, align 8
  %fwrite147 = call i64 @fwrite(ptr nonnull @.str.36, i64 73, i64 1, ptr %i.he) #12 ; 0 uses
  br label %.thread196

.thread196:                                       ; preds = %bb.br, %bb.bq
  call void @notice_thread_fini() #9
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bj
  %puts148 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.bs, %.thread260, %bb.bo, %select.unfold
  %.not156195 = phi i1 [ true, %bb.bs ], [ true, %select.unfold ], [ true, %bb.bo ], [ false, %.thread260 ]
  %.1110194 = phi i32 [ -1, %bb.bs ], [ 0, %select.unfold ], [ 0, %bb.bo ], [ 0, %.thread260 ]
  call void @list_destroy(ptr noundef nonnull %i.gb) #9
  call void @notice_thread_fini() #9
  br i1 %.not156195, label %bb.bz, label %bb.bu

bb.bt:                                            ; preds = %.critedge
  %puts148264 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  call void @notice_thread_fini() #9
  br label %bb.bz

bb.bu:                                            ; preds = %.split
  %i.hf = call i32 @commit_check(ptr noundef nonnull @.str.6) #9
  %.not157 = icmp eq i32 %i.hf, 0
  br i1 %.not157, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hg = load ptr, ptr @db_conn, align 8
  %i.hh = call i32 @slurmdb_connection_commit(ptr noundef %i.hg, i1 noundef zeroext true) #9 ; 3 uses
  %.not160 = icmp eq i32 %i.hh, 0
  br i1 %.not160, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hi = load ptr, ptr @stderr, align 8
  %i.hj = call ptr @slurm_strerror(i32 noundef %i.hh) #9
  %i.hk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hi, ptr noundef nonnull @.str.7, ptr noundef %i.hj) #11 ; 0 uses
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bu
  %puts158 = call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  %i.hl = load ptr, ptr @db_conn, align 8
  %i.hm = call i32 @slurmdb_connection_commit(ptr noundef %i.hl, i1 noundef zeroext false) #9 ; 3 uses
  %.not159 = icmp eq i32 %i.hm, 0
  br i1 %.not159, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hn = load ptr, ptr @stderr, align 8
  %i.ho = call ptr @slurm_strerror(i32 noundef %i.hm) #9
  %i.hp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.9, ptr noundef %i.ho) #11 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bt, %.split, %.thread196, %bb.bw, %bb.bv, %bb.by, %bb.bx, %_check_and_set_cluster_list.exit
  %.3112 = phi i32 [ %.1110194, %.split ], [ 0, %_check_and_set_cluster_list.exit ], [ -1, %bb.bt ], [ %i.hh, %bb.bw ], [ 0, %bb.bv ], [ %i.hm, %bb.by ], [ 0, %bb.bx ], [ -1, %.thread196 ] ; 3 uses
  %i.hq = and i32 %.1106, 2
  %.not162 = icmp eq i32 %i.hq, 0
  br i1 %.not162, label %bb.cm, label %bb.ca

.thread199:                                       ; preds = %bb.ba
  store i32 1, ptr @exit_code, align 4
  %i.hr = load ptr, ptr @stderr, align 8
  %fwrite161 = call i64 @fwrite(ptr nonnull @.str.31, i64 48, i64 1, ptr %i.hr) #12 ; 0 uses
  %i.hs = and i32 %.1106, 2
  %.not162201 = icmp eq i32 %i.hs, 0
  br i1 %.not162201, label %bb.cm, label %.thread203

bb.ca:                                            ; preds = %bb.bz
  %i.ht = icmp eq i32 %.1108, 1
  br i1 %i.ht, label %bb.cb, label %.thread203

bb.cb:                                            ; preds = %bb.ca
  %i.hu = load ptr, ptr %i.j, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 88
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call i32 @list_count(ptr noundef %i.hw) #9
  %.not163 = icmp eq i32 %i.hx, 0
  br i1 %.not163, label %bb.cc, label %.thread203

bb.cc:                                            ; preds = %bb.cb
  store i32 1, ptr @exit_code, align 4
  %i.hy = load ptr, ptr @stderr, align 8
  %fwrite164 = call i64 @fwrite(ptr nonnull @.str.31, i64 48, i64 1, ptr %i.hy) #12 ; 0 uses
  br label %bb.cm

.thread203:                                       ; preds = %.thread199, %bb.cb, %bb.ca
  %.3112202205 = phi i32 [ %.3112, %bb.ca ], [ %.3112, %bb.cb ], [ -1, %.thread199 ]
  call void @notice_thread_init() #9
  %i.hz = load ptr, ptr @db_conn, align 8
  %i.ia = load ptr, ptr %i.j, align 8
  %i.ib = call ptr @slurmdb_associations_modify(ptr noundef %i.hz, ptr noundef %i.ia, ptr noundef %i.h) #9 ; 4 uses
  %puts165 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %.not166 = icmp eq ptr %i.ib, null
  br i1 %.not166, label %.critedge180, label %bb.cd

bb.cd:                                            ; preds = %.thread203
  %i.ic = call i32 @list_count(ptr noundef nonnull %i.ib) #9
  %.not167 = icmp eq i32 %i.ic, 0                 ; 2 uses
  br i1 %.not167, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.id = call ptr @list_iterator_create(ptr noundef nonnull %i.ib) #9 ; 3 uses
  %i.ie = call ptr @list_next(ptr noundef %i.id) #9 ; 2 uses
  %.not169225 = icmp eq ptr %i.ie, null
  br i1 %.not169225, label %.thread265, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.ce, %.lr.ph227
  %i.if = phi ptr [ %i.ih, %.lr.ph227 ], [ %i.ie, %bb.ce ]
  %i.ig = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %i.if) ; 0 uses
  %i.ih = call ptr @list_next(ptr noundef %i.id) #9 ; 2 uses
  %.not169 = icmp eq ptr %i.ih, null
  br i1 %.not169, label %.thread265, label %.lr.ph227, !llvm.loop !33

.thread265:                                       ; preds = %.lr.ph227, %bb.ce
  call void @list_iterator_destroy(ptr noundef %i.id) #9
  br label %.split214

.critedge180:                                     ; preds = %.thread203
  %i.ii = tail call ptr @__errno_location() #13   ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = icmp eq i32 %i.ij, 1900
  br i1 %i.ik, label %bb.cg, label %.thread211

.thread211:                                       ; preds = %.critedge180
  store i32 1, ptr @exit_code, align 4
  %i.il = load ptr, ptr @stderr, align 8
  %i.im = load i32, ptr %i.ii, align 4
  %i.in = call ptr @slurm_strerror(i32 noundef %i.im) #9
  %i.io = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.35, ptr noundef %i.in) #11 ; 0 uses
  br label %.sink.split

bb.cf:                                            ; preds = %bb.cd
  %puts168 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %.split214

.split214:                                        ; preds = %bb.cf, %.thread265
  %.4113268 = phi i32 [ %.3112202205, %.thread265 ], [ -1, %bb.cf ]
  call void @list_destroy(ptr noundef nonnull %i.ib) #9
  call void @notice_thread_fini() #9
  br i1 %.not167, label %bb.cm, label %bb.ch

bb.cg:                                            ; preds = %.critedge180
  %puts168271 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %.sink.split

bb.ch:                                            ; preds = %.split214
  %i.ip = call i32 @commit_check(ptr noundef nonnull @.str.6) #9
  %.not171 = icmp eq i32 %i.ip, 0
  br i1 %.not171, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iq = load ptr, ptr @db_conn, align 8
  %i.ir = call i32 @slurmdb_connection_commit(ptr noundef %i.iq, i1 noundef zeroext true) #9 ; 3 uses
  %.not174 = icmp eq i32 %i.ir, 0
  br i1 %.not174, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.is = load ptr, ptr @stderr, align 8
  %i.it = call ptr @slurm_strerror(i32 noundef %i.ir) #9
  %i.iu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.is, ptr noundef nonnull @.str.7, ptr noundef %i.it) #11 ; 0 uses
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ch
  %puts172 = call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  %i.iv = load ptr, ptr @db_conn, align 8
  %i.iw = call i32 @slurmdb_connection_commit(ptr noundef %i.iv, i1 noundef zeroext false) #9 ; 3 uses
  %.not173 = icmp eq i32 %i.iw, 0
  br i1 %.not173, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ix = load ptr, ptr @stderr, align 8
  %i.iy = call ptr @slurm_strerror(i32 noundef %i.iw) #9
  %i.iz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ix, ptr noundef nonnull @.str.9, ptr noundef %i.iy) #11 ; 0 uses
  br label %bb.cm

.sink.split:                                      ; preds = %.thread211, %bb.cg
  call void @notice_thread_fini() #9
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cc, %bb.ck, %bb.cl, %bb.ci, %bb.cj, %bb.bz, %.thread199, %.split214, %.sink.split, %bb.at, %bb.as, %bb.ar, %._crit_edge, %._crit_edge.thread, %bb.an, %.thread
  %.0114 = phi i32 [ -1, %.thread ], [ -1, %._crit_edge ], [ -1, %bb.at ], [ 0, %bb.an ], [ -1, %._crit_edge.thread ], [ %i.et, %bb.ar ], [ -1, %bb.as ], [ %i.ir, %bb.cj ], [ 0, %bb.ci ], [ %i.iw, %bb.cl ], [ 0, %bb.ck ], [ %.4113268, %.split214 ], [ -1, %bb.cc ], [ %.3112, %bb.bz ], [ -1, %.thread199 ], [ -1, %.sink.split ]
  call void @slurmdb_destroy_user_cond(ptr noundef %i.f) #9
  call void @slurmdb_destroy_user_rec(ptr noundef %i.g) #9
  call void @slurmdb_destroy_assoc_rec(ptr noundef %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret i32 %.0114
}

declare void @slurmdb_init_assoc_rec(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @slurmdb_destroy_user_rec(ptr noundef) local_unnamed_addr #2

declare void @slurmdb_destroy_assoc_rec(ptr noundef) local_unnamed_addr #2

declare i32 @sacctmgr_remove_assoc_usage(ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare i32 @list_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurmdb_users_modify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_check_default_assocs(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.slurmdb_assoc_cond_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = tail call i32 @list_count(ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @list_count(ptr noundef %2) #9
  %.not44 = icmp eq i32 %i.b, 0
  br i1 %.not44, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = tail call ptr @list_create(ptr noundef null) #9 ; 2 uses
  store ptr %i.f, ptr %3, align 8
  tail call void @list_append(ptr noundef %i.f, ptr noundef nonnull %0) #9
  %i.g = load ptr, ptr @db_conn, align 8
  %i.h = call ptr @slurmdb_associations_get(ptr noundef %i.g, ptr noundef nonnull %3) #9 ; 3 uses
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %.not45 = icmp eq ptr %i.i, null
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @list_destroy(ptr noundef nonnull %i.i) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %3, align 8
  %i.j = call ptr @list_iterator_create(ptr noundef nonnull %1) #9 ; 3 uses
  %i.k = call ptr @list_iterator_create(ptr noundef %2) #9 ; 3 uses
  %i.l = call ptr @list_next(ptr noundef %i.j) #9 ; 2 uses
  %.not4654 = icmp eq ptr %i.l, null
  br i1 %.not4654, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.k
  %i.m = phi ptr [ %i.s, %bb.k ], [ %i.l, %bb.e ] ; 2 uses
  %.03755 = phi ptr [ %.1.ph, %bb.k ], [ null, %bb.e ]
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.j
  %.1.ph = phi ptr [ %.03755, %.preheader ], [ %.2, %bb.j ] ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %i.n = call ptr @list_next(ptr noundef %i.k) #9 ; 3 uses
  %.not50 = icmp eq ptr %i.n, null
  br i1 %.not50, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call ptr @sacctmgr_find_assoc_from_list(ptr noundef %i.h, ptr noundef nonnull %i.m, ptr noundef nonnull %0, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.95) #9
  %.not51 = icmp eq ptr %i.o, null
  br i1 %.not51, label %bb.h, label %bb.f, !llvm.loop !34

bb.h:                                             ; preds = %bb.g
  %i.p = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.13, i32 noundef 493, ptr noundef nonnull @__func__._check_default_assocs) #9 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.m, ptr %i.q, align 8
  store ptr %i.n, ptr %i.p, align 8
  %.not52 = icmp eq ptr %.1.ph, null
  br i1 %.not52, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @list_create(ptr noundef nonnull @xfree_ptr) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi ptr [ %.1.ph, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  call void @list_append(ptr noundef %.2, ptr noundef nonnull %i.p) #9
  br label %.outer, !llvm.loop !34

bb.k:                                             ; preds = %bb.f
  call void @list_iterator_reset(ptr noundef %i.k) #9
  %i.s = call ptr @list_next(ptr noundef %i.j) #9 ; 2 uses
  %.not46 = icmp eq ptr %i.s, null
  br i1 %.not46, label %._crit_edge, label %.preheader, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.k, %bb.e
  %.037.lcssa = phi ptr [ null, %bb.e ], [ %.1.ph, %bb.k ] ; 3 uses
  call void @list_iterator_destroy(ptr noundef %i.j) #9
  call void @list_iterator_destroy(ptr noundef %i.k) #9
  %.not47 = icmp eq ptr %i.h, null
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  call void @list_destroy(ptr noundef nonnull %i.h) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.not48 = icmp eq ptr %.037.lcssa, null
  br i1 %.not48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = call ptr @list_iterator_create(ptr noundef nonnull %.037.lcssa) #9 ; 3 uses
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull %0) ; 0 uses
  %i.v = call ptr @list_next(ptr noundef %i.t) #9 ; 2 uses
  %.not4956 = icmp eq ptr %i.v, null
  br i1 %.not4956, label %._crit_edge58, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %i.w = phi ptr [ %i.ab, %.lr.ph ], [ %i.v, %bb.n ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.97, ptr noundef %i.y, ptr noundef %i.z) ; 0 uses
  %i.ab = call ptr @list_next(ptr noundef %i.t) #9 ; 2 uses
  %.not49 = icmp eq ptr %i.ab, null
  br i1 %.not49, label %._crit_edge58, label %.lr.ph, !llvm.loop !36

._crit_edge58:                                    ; preds = %.lr.ph, %bb.n
  call void @list_iterator_destroy(ptr noundef %i.t) #9
  store i32 1, ptr @exit_code, align 4
  call void @list_destroy(ptr noundef nonnull %.037.lcssa) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %._crit_edge58, %bb.a, %bb.b
  %.038 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %._crit_edge58 ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_check_default_wckeys(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.slurmdb_wckey_cond_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = tail call i32 @list_count(ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @list_count(ptr noundef %2) #9
  %.not44 = icmp eq i32 %i.b, 0
  br i1 %.not44, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %1, ptr %i.d, align 8
  store ptr %2, ptr %3, align 8
  %i.e = tail call ptr @list_create(ptr noundef null) #9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8
  tail call void @list_append(ptr noundef %i.e, ptr noundef nonnull %0) #9
  %i.g = load ptr, ptr @db_conn, align 8
  %i.h = call ptr @slurmdb_wckeys_get(ptr noundef %i.g, ptr noundef nonnull %3) #9 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not45 = icmp eq ptr %i.i, null
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @list_destroy(ptr noundef nonnull %i.i) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.f, align 8
  %i.j = call ptr @list_iterator_create(ptr noundef nonnull %1) #9 ; 3 uses
  %i.k = call ptr @list_iterator_create(ptr noundef %2) #9 ; 3 uses
  %i.l = call ptr @list_next(ptr noundef %i.j) #9 ; 2 uses
  %.not4654 = icmp eq ptr %i.l, null
  br i1 %.not4654, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.k
  %i.m = phi ptr [ %i.s, %bb.k ], [ %i.l, %bb.e ] ; 2 uses
  %.03755 = phi ptr [ %.1.ph, %bb.k ], [ null, %bb.e ]
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.j
  %.1.ph = phi ptr [ %.03755, %.preheader ], [ %.2, %bb.j ] ; 4 uses
  br label %bb.f

end_hunk_0
