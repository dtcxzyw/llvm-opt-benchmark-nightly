Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/bloom?download=true
inline.NumInlined: 43
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@get_or_compute_bloom_filter:bb.a
  %i.x = icmp eq i32 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader194

.lr.ph.i.i.preheader194:                          ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block
  %.0302.i.i.ph = phi i32 [ %i.j, %vector.scevcheck ], [ %i.j, %.lr.ph.i.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader194, %.lr.ph.i.i
  %.0302.i.i = phi i32 [ %i.aa, %.lr.ph.i.i ], [ %.0302.i.i.ph, %.lr.ph.i.i.preheader194 ] ; 2 uses
  %i.y = zext i32 %.0302.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  store ptr null, ptr %i.z, align 8, !tbaa !53
  %i.aa = add i32 %.0302.i.i, 1                   ; 2 uses
  %.not33.i.i = icmp ugt i32 %i.aa, %i.c
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !93

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  store i32 %i.f, ptr @bloom_filters.2, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.d
  %i.ab = phi ptr [ %i.i, %._crit_edge.i.i ], [ %.pre.i.i, %bb.d ]
  %i.ac = zext nneg i32 %i.c to i64               ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.ae, null
  br i1 %.not34.i.i, label %bb.g, label %bloom_filter_slab_at.exit

bb.g:                                             ; preds = %bb.f
  %.b = load i1, ptr @bloom_filters.0, align 8
  %i.af = select i1 %.b, i64 16383, i64 0
  %.b184 = load i1, ptr @bloom_filters.1, align 4
  %i.ag = select i1 %.b184, i64 32, i64 0
  %i.ah = tail call ptr @xcalloc(i64 noundef %i.af, i64 noundef %i.ag) #16 ; 2 uses
  %i.ai = load ptr, ptr @bloom_filters.3, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ac
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !53
  br label %bloom_filter_slab_at.exit

bloom_filter_slab_at.exit:                        ; preds = %bb.f, %bb.g
  %i.ak = phi ptr [ %i.ae, %bb.f ], [ %i.ah, %bb.g ]
  %.b185 = load i1, ptr @bloom_filters.1, align 4
  %i.al = zext nneg i32 %i.d to i64
  %i.am = select i1 %.b185, i64 %i.al, i64 0
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.am ; 23 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %.not95 = icmp eq ptr %i.ao, null
  br i1 %.not95, label %bb.h, label %.thread

bb.h:                                             ; preds = %bloom_filter_slab_at.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ap = call ptr @repo_find_commit_pos_in_graph(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not96 = icmp eq ptr %i.ap, null
  br i1 %.not96, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !44
  %i.ar = call i32 @load_bloom_filter_from_graph(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, i32 noundef %i.aq) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.pr = load ptr, ptr %i.an, align 8, !tbaa !34
  %.not97 = icmp eq ptr %.pr, null
  br i1 %.not97, label %.thread126, label %.thread

.thread:                                          ; preds = %bloom_filter_slab_at.exit, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !31
  %.not98 = icmp eq i64 %i.at, 0
  br i1 %.not98, label %.thread126, label %bb.k

bb.k:                                             ; preds = %.thread
  %.not99 = icmp eq ptr %3, null
  br i1 %.not99, label %.thread130, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load i32, ptr %3, align 4, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %.thread130, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not100 = icmp eq i32 %2, 0
  br i1 %.not100, label %.thread130, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = call i32 @git_env_bool(ptr noundef nonnull @.str.3, i32 noundef 1) #16
  %.not101 = icmp eq i32 %i.ay, 0
  br i1 %.not101, label %.thread133, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %3, align 4, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !94 ; 2 uses
  %i.bc = call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #16
  %.not.i.i116 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i116, label %bb.p, label %.thread133

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @repo_get_commit_tree(ptr noundef %0, ptr noundef nonnull %1) #16 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bd, null
  br i1 %.not8.i.i, label %.thread133, label %commit_tree_has_high_bit_paths.exit.i

commit_tree_has_high_bit_paths.exit.i:            ; preds = %bb.p
  %i.be = call fastcc i32 @has_entries_with_high_bit(ptr noundef %0, ptr noundef %i.bd)
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.q, label %.thread133

bb.q:                                             ; preds = %commit_tree_has_high_bit_paths.exit.i
  %.not10.i = icmp eq ptr %i.bb, null
  br i1 %.not10.i, label %upgrade_filter.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !95 ; 2 uses
  %i.bg = call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef %i.bf, i32 noundef 0) #16
  %.not.i12.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i12.i, label %bb.s, label %.thread133

bb.s:                                             ; preds = %bb.r
  %i.bh = call ptr @repo_get_commit_tree(ptr noundef %0, ptr noundef %i.bf) #16 ; 2 uses
  %.not8.i14.i = icmp eq ptr %i.bh, null
  br i1 %.not8.i14.i, label %.thread133, label %commit_tree_has_high_bit_paths.exit15.i

commit_tree_has_high_bit_paths.exit15.i:          ; preds = %bb.s
  %i.bi = call fastcc i32 @has_entries_with_high_bit(ptr noundef %0, ptr noundef %i.bh)
  %.not11.i = icmp eq i32 %i.bi, 0
  br i1 %.not11.i, label %upgrade_filter.exit, label %.thread133

upgrade_filter.exit:                              ; preds = %bb.q, %commit_tree_has_high_bit_paths.exit15.i
  store i32 %i.az, ptr %i.av, align 8, !tbaa !38
  br i1 %.not, label %.thread130, label %bb.t

bb.t:                                             ; preds = %upgrade_filter.exit
  %i.bj = load i32, ptr %4, align 4, !tbaa !44
  %i.bk = or i32 %i.bj, 16
  store i32 %i.bk, ptr %4, align 4, !tbaa !44
  br label %.thread130

.thread126:                                       ; preds = %.thread, %bb.j
  %.not103 = icmp eq i32 %2, 0
  br i1 %.not103, label %.thread130, label %.thread133

.thread133:                                       ; preds = %bb.n, %commit_tree_has_high_bit_paths.exit.i, %commit_tree_has_high_bit_paths.exit15.i, %bb.p, %bb.o, %bb.r, %bb.s, %.thread126
  call void @repo_diff_setup(ptr noundef %0, ptr noundef nonnull %5) #16
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 1, ptr %i.bl, align 8, !tbaa !98
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 264
  store i32 0, ptr %i.bm, align 8, !tbaa !109
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !110
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 316
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !111
  call void @diff_setup_done(ptr noundef nonnull %5) #16
  %i.bq = call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #16 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !94 ; 2 uses
  %.not104 = icmp eq ptr %i.bs, null
  br i1 %.not104, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread133
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !95
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.thread133, %bb.u
  %.sink = phi ptr [ %i.bu, %bb.u ], [ null, %.thread133 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @diff_tree_oid(ptr noundef %.sink, ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #16
  call void @diffcore_std(ptr noundef nonnull %5) #16
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !112 ; 2 uses
  %i.bx = load i32, ptr %i.bn, align 4, !tbaa !110
  %.not105 = icmp ugt i32 %i.bw, %i.bx
  br i1 %.not105, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @__const.get_or_compute_bloom_filter.pathmap, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.lr.ph, label %hashmap_get_size.exit120

.lr.ph:                                           ; preds = %bb.w, %bb.ad
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ 0, %bb.w ] ; 2 uses
  %i.bz = load ptr, ptr @diff_queued_diff, align 8, !tbaa !115
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !118
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !123 ; 6 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph
  %i.cg = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.cf, i32 noundef 47) #18 ; 2 uses
  %i.ch = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cf) #18 ; 3 uses
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ch, i64 16) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 1
  br i1 %10, label %bb.y, label %st_add.exit

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @die(ptr noundef nonnull @.str.8, i64 noundef 16, i64 noundef %i.ch) #17
  unreachable

st_add.exit:                                      ; preds = %bb.x
  %11 = extractvalue { i64, i1 } %9, 0            ; 2 uses
  %12 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 1) ; 2 uses
  %13 = extractvalue { i64, i1 } %12, 1
  br i1 %13, label %bb.z, label %st_add.exit117

bb.z:                                             ; preds = %st_add.exit
  call void (ptr, ...) @die(ptr noundef nonnull @.str.8, i64 noundef %11, i64 noundef 1) #17
  unreachable

st_add.exit117:                                   ; preds = %st_add.exit
  %14 = extractvalue { i64, i1 } %12, 0
  %i.ci = call ptr @xcalloc(i64 noundef 1, i64 noundef %14) #16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 1 %i.cf, i64 %i.ch, i1 false)
  %i.ck = call i32 @strhash(ptr noundef nonnull %i.cf) #16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !126
  store ptr null, ptr %i.ci, align 8, !tbaa !129
  %i.cm = call ptr @hashmap_get(ptr noundef nonnull %6, ptr noundef nonnull %i.ci, ptr noundef null) #16
  %.not108 = icmp eq ptr %i.cm, null
  br i1 %.not108, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %st_add.exit117
  call void @hashmap_add(ptr noundef nonnull %6, ptr noundef nonnull %i.ci) #16
  br label %bb.ac

bb.ab:                                            ; preds = %st_add.exit117
  call void @free(ptr noundef nonnull %i.ci) #16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not109 = icmp eq ptr %i.cg, null
  %spec.select = select i1 %.not109, ptr %i.cf, ptr %i.cg
  store i8 0, ptr %spec.select, align 1, !tbaa !28
  %i.cn = load i8, ptr %i.cf, align 1, !tbaa !28
  %.not110 = icmp eq i8 %i.cn, 0
  br i1 %.not110, label %bb.ad, label %bb.x, !llvm.loop !130

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !112
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.ad
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.val115.pre = load i8, ptr %.phi.trans.insert157, align 8
  %i.cr = and i8 %.val115.pre, 1
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.ae, label %hashmap_get_size.exit

bb.ae:                                            ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 308, ptr noundef nonnull @.str.10) #17
  unreachable

hashmap_get_size.exit:                            ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.val114.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.ct = load i32, ptr %i.bn, align 4, !tbaa !110
  %i.cu = icmp ugt i32 %.val114.pre, %i.ct
  br i1 %i.cu, label %bb.af, label %hashmap_get_size.exit120

bb.af:                                            ; preds = %hashmap_get_size.exit
  %i.cv = load i32, ptr %3, align 4, !tbaa !36
  %i.cw = call ptr @xmalloc(i64 noundef 1) #16    ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !39
  store ptr %i.cw, ptr %i.an, align 8, !tbaa !34
  store i8 -1, ptr %i.cw, align 1, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.cy, align 8, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.cv, ptr %i.cz, align 8, !tbaa !38
  br i1 %.not, label %.thread136, label %.thread137

.thread136:                                       ; preds = %bb.af
  call void @hashmap_clear_(ptr noundef nonnull %6, i64 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.critedge

.thread137:                                       ; preds = %bb.af
  %i.da = load i32, ptr %4, align 4, !tbaa !44
  %i.db = or i32 %i.da, 4
  store i32 %i.db, ptr %4, align 4, !tbaa !44
  call void @hashmap_clear_(ptr noundef nonnull %6, i64 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.am

hashmap_get_size.exit120:                         ; preds = %bb.w, %hashmap_get_size.exit
  %.val114175177 = phi i32 [ %.val114.pre, %hashmap_get_size.exit ], [ 0, %bb.w ]
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !132
  %i.de = mul i32 %i.dd, %.val114175177
  %i.df = add i32 %i.de, 7
  %i.dg = lshr i32 %i.df, 3                       ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !31
  %i.dj = load i32, ptr %3, align 4, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !38
  %.not106 = icmp eq i32 %i.dg, 0
  br i1 %.not106, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %hashmap_get_size.exit120
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = load i32, ptr %4, align 4, !tbaa !44
  %i.dm = or i32 %i.dl, 8
  store i32 %i.dm, ptr %4, align 4, !tbaa !44
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i64 1, ptr %i.di, align 8, !tbaa !31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %hashmap_get_size.exit120
  %i.dn = phi i64 [ 1, %bb.ai ], [ %i.dh, %hashmap_get_size.exit120 ]
  %i.do = call ptr @xcalloc(i64 noundef %i.dn, i64 noundef 1) #16 ; 2 uses
  store ptr %i.do, ptr %i.an, align 8, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !39
  call void @hashmap_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %i.dq = call ptr @hashmap_iter_next(ptr noundef nonnull %7) #16 ; 2 uses
  %.not107146 = icmp eq ptr %i.dq, null
  br i1 %.not107146, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.aj
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph149, %add_key_to_filter.exit
  %.084147 = phi ptr [ %i.dq, %.lr.ph149 ], [ %i.em, %add_key_to_filter.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ds = getelementptr inbounds nuw i8, ptr %.084147, i64 16 ; 2 uses
  %i.dt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #18
  call void @bloom_key_fill(ptr noundef nonnull %8, ptr noundef nonnull %i.ds, i64 noundef %i.dt, ptr noundef nonnull %3)
  %i.du = load i64, ptr %i.di, align 8, !tbaa !31
  %i.dv = shl i64 %i.du, 3
  %i.dw = load i32, ptr %i.dr, align 4, !tbaa !41
  %.not.i121 = icmp eq i32 %i.dw, 0
  %.pre = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  br i1 %.not.i121, label %add_key_to_filter.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.ak ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !44
  %i.dz = zext i32 %i.dy to i64
  %i.ea = urem i64 %i.dz, %i.dv                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = trunc i64 %i.ea to i8
  %i.ed = and i8 %i.ec, 7
  %i.ee = shl nuw i8 1, %i.ed
  %i.ef = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eb ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !28
  %i.ei = or i8 %i.ee, %i.eh
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ej = load i32, ptr %i.dr, align 4, !tbaa !41
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next.i, %i.ek
  br i1 %i.el, label %.lr.ph.i, label %add_key_to_filter.exit, !llvm.loop !47

add_key_to_filter.exit:                           ; preds = %.lr.ph.i, %bb.ak
  call void @free(ptr noundef %.pre) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.em = call ptr @hashmap_iter_next(ptr noundef nonnull %7) #16 ; 2 uses
  %.not107 = icmp eq ptr %i.em, null
  br i1 %.not107, label %._crit_edge150, label %bb.ak, !llvm.loop !133

bb.al:                                            ; preds = %bb.v
  %i.en = load i32, ptr %3, align 4, !tbaa !36
  %i.eo = call ptr @xmalloc(i64 noundef 1) #16    ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !39
  store ptr %i.eo, ptr %i.an, align 8, !tbaa !34
  store i8 -1, ptr %i.eo, align 1, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.eq, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.en, ptr %i.er, align 8, !tbaa !38
  br i1 %.not, label %.critedge, label %.thread135

.thread135:                                       ; preds = %bb.al
  %i.es = load i32, ptr %4, align 4, !tbaa !44
  %i.et = or i32 %i.es, 4
  store i32 %i.et, ptr %4, align 4, !tbaa !44
  br label %bb.am

._crit_edge150:                                   ; preds = %add_key_to_filter.exit, %bb.aj
  call void @hashmap_clear_(ptr noundef nonnull %6, i64 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %.not, label %.critedge, label %bb.am

bb.am:                                            ; preds = %.thread137, %.thread135, %._crit_edge150
  %i.eu = load i32, ptr %4, align 4, !tbaa !44
  %i.ev = or i32 %i.eu, 2
  store i32 %i.ev, ptr %4, align 4, !tbaa !44
  br label %.critedge

.critedge:                                        ; preds = %.thread136, %bb.al, %bb.am, %._crit_edge150
  call void @diff_queue_clear(ptr noundef nonnull @diff_queued_diff) #16
  br label %.thread130

.thread130:                                       ; preds = %upgrade_filter.exit, %bb.m, %bb.t, %bb.l, %bb.k, %.thread126, %bb.c, %.critedge
end_hunk_0
begin_hunk_1_@test_bloom_murmur3_seeded:bb.a
  %i.al = lshr i32 %i.aj, 17
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = mul i32 %i.am, 461845907
  %i.ao = xor i32 %i.an, %.051.i.epil.init        ; 2 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 13)
  %i.aq = mul i32 %i.ap, 5
  %i.ar = add i32 %i.aq, -430675100
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.d
  %.0.lcssa.i = phi i32 [ %0, %bb.d ], [ %i.ae, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ] ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.as = ashr exact i64 %sext.i, 30
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as ; 3 uses
  %i.au = and i64 %2, 3
  switch i64 %i.au, label %default.unreachable [
    i64 3, label %bb.e
    i64 2, label %bb.f
    i64 1, label %bb.g
    i64 0, label %murmur3_seeded_v2.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !28
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.046.i = phi i32 [ %i.ay, %bb.e ], [ 0, %._crit_edge.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = or disjoint i32 %i.bc, %.046.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.147.i = phi i32 [ %i.bd, %bb.f ], [ 0, %._crit_edge.i ]
  %i.be = load i8, ptr %i.at, align 1, !tbaa !28
  %i.bf = zext i8 %i.be to i32
  %i.bg = xor i32 %.147.i, %i.bf                  ; 2 uses
  %i.bh = mul i32 %i.bg, -862048943
  %i.bi = mul i32 %i.bg, 380141568
  %i.bj = lshr i32 %i.bh, 17
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %i.bl = mul i32 %i.bk, 461845907
  %i.bm = xor i32 %i.bl, %.0.lcssa.i
  br label %murmur3_seeded_v2.exit

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

murmur3_seeded_v2.exit:                           ; preds = %._crit_edge.i, %bb.g
  %.1.i = phi i32 [ %i.bm, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.bn = trunc i64 %2 to i32
  %i.bo = xor i32 %.1.i, %i.bn                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = mul i32 %i.bq, -2048144789              ; 2 uses
  %i.bs = lshr i32 %i.br, 13
  %i.bt = xor i32 %i.bs, %i.br
  %i.bu = mul i32 %i.bt, -1028477387              ; 2 uses
  %i.bv = lshr i32 %i.bu, 16
  %i.bw = xor i32 %i.bv, %i.bu
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.bx = tail call fastcc i32 @murmur3_seeded_v1(i32 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %murmur3_seeded_v2.exit
  %.0 = phi i32 [ %i.bw, %murmur3_seeded_v2.exit ], [ %i.bx, %bb.h ]
  ret i32 %.0
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #13

declare ptr @repo_get_commit_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @has_entries_with_high_bit(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tree_desc, align 8          ; 5 uses
  %3 = alloca %struct.name_entry, align 8         ; 8 uses
  %i.a = tail call i32 @repo_parse_tree_gently(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = and i64 %i.b, 9007199254740992
  %.not22 = icmp eq i64 %i.c, 0
  br i1 %.not22, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !137
  call void @init_tree_desc(ptr noundef nonnull %2, ptr noundef nonnull %i.d, ptr noundef %i.f, i64 noundef %i.h) #16
  %i.i = call i32 @tree_entry(ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %.not2333 = icmp eq i32 %i.i, 0
  br i1 %.not2333, label %.thread30, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 52
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread
  %i.m = load i32, ptr %i.j, align 8, !tbaa !138  ; 2 uses
  %i.n = sext i32 %i.m to i64
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !140
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.p = add nuw i64 %.01932, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !141

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.01932 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.01932
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %.not26 = icmp sgt i8 %i.r, -1
  br i1 %.not26, label %bb.d, label %.thread30.sink.split

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.s = load i32, ptr %i.l, align 4, !tbaa !142
  %i.t = and i32 %i.s, 61440
  %i.u = icmp eq i32 %i.t, 16384
  br i1 %i.u, label %bb.f, label %.thread

bb.f:                                             ; preds = %._crit_edge
  %i.v = call ptr @lookup_tree(ptr noundef %0, ptr noundef nonnull %3) #16 ; 2 uses
  %.not24 = icmp eq ptr %i.v, null
  br i1 %.not24, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call fastcc i32 @has_entries_with_high_bit(ptr noundef %0, ptr noundef %i.v)
  %.not25 = icmp eq i32 %i.w, 0
  br i1 %.not25, label %.thread, label %.thread30.sink.split

.thread:                                          ; preds = %bb.f, %bb.g, %._crit_edge
  %i.x = call i32 @tree_entry(ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %.not23 = icmp eq i32 %i.x, 0
  br i1 %.not23, label %.thread30, label %.preheader

.thread30.sink.split:                             ; preds = %bb.g, %bb.e
  %i.y = load i64, ptr %1, align 8
  %i.z = or i64 %i.y, 18014398509481984
  store i64 %i.z, ptr %1, align 8
  br label %.thread30

.thread30:                                        ; preds = %.thread, %.thread30.sink.split, %bb.c
  %i.aa = load i64, ptr %1, align 8
  %i.ab = or i64 %i.aa, 9007199254740992          ; 2 uses
  store i64 %i.ab, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.h

bb.h:                                             ; preds = %.thread30, %bb.b
  %i.ac = phi i64 [ %i.ab, %.thread30 ], [ %i.b, %bb.b ]
  %i.ad = lshr i64 %i.ac, 54
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.020 = phi i32 [ %i.af, %bb.h ], [ 1, %bb.a ]
  ret i32 %.020
}

declare void @init_tree_desc(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @tree_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lookup_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_parse_tree_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @repo_parse_commit_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #14

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #13

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

declare void @hashmap_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 88}
!13 = !{!"commit_graph", !14, i64 0, !16, i64 8, !17, i64 16, !10, i64 24, !9, i64 28, !18, i64 32, !14, i64 72, !19, i64 80, !9, i64 88, !9, i64 92, !20, i64 96, !21, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !16, i64 144, !14, i64 152, !16, i64 160, !14, i64 168, !16, i64 176, !14, i64 184, !14, i64 192, !16, i64 200, !22, i64 208, !23, i64 216}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"p1 _ZTS13git_hash_algo", !15, i64 0}
!18 = !{!"object_id", !10, i64 0, !9, i64 32}
!19 = !{!"p1 _ZTS10odb_source", !15, i64 0}
!20 = !{!"p1 _ZTS12commit_graph", !15, i64 0}
!21 = !{!"p1 int", !15, i64 0}
!22 = !{!"p1 _ZTS15topo_level_slab", !15, i64 0}
!23 = !{!"p1 _ZTS21bloom_filter_settings", !15, i64 0}
!24 = !{!13, !20, i64 96}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!13, !14, i64 184}
!28 = !{!10, !10, i64 0}
!29 = !{!13, !16, i64 200}
!30 = !{!13, !14, i64 72}
!31 = !{!32, !16, i64 8}
!32 = !{!"bloom_filter", !14, i64 0, !16, i64 8, !9, i64 16, !15, i64 24}
!33 = !{!13, !14, i64 192}
!34 = !{!32, !14, i64 0}
!35 = !{!13, !23, i64 216}
!36 = !{!37, !9, i64 0}
!37 = !{!"bloom_filter_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!38 = !{!32, !9, i64 16}
!39 = !{!32, !15, i64 24}
!40 = distinct !{!40, !26}
!41 = !{!37, !9, i64 4}
!42 = !{!43, !21, i64 0}
!43 = !{!"bloom_key", !21, i64 0}
!44 = !{!9, !9, i64 0}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = !{!49, !9, i64 8}
!49 = !{!"bloom_filter_slab", !9, i64 0, !9, i64 4, !9, i64 8, !50, i64 16}
!50 = !{!"p2 _ZTS12bloom_filter", !51, i64 0}
!51 = !{!"any p2 pointer", !15, i64 0}
!52 = !{!49, !50, i64 16}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS12bloom_filter", !15, i64 0}
!55 = distinct !{!55, !26, !56}
!56 = !{!"llvm.loop.unswitch.partial.disable"}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !26}
!59 = distinct !{!59, !26}
!60 = !{!16, !16, i64 0}
!61 = distinct !{!61, !26}
!62 = distinct !{!62, !26}
!63 = !{!64, !9, i64 284}
!64 = !{!"repository", !14, i64 0, !14, i64 8, !65, i64 16, !66, i64 24, !67, i64 32, !68, i64 40, !69, i64 48, !69, i64 112, !73, i64 176, !14, i64 232, !14, i64 240, !14, i64 248, !68, i64 256, !68, i64 257, !14, i64 264, !74, i64 272, !76, i64 416, !77, i64 424, !78, i64 432, !79, i64 440, !17, i64 448, !17, i64 456, !80, i64 464, !9, i64 512, !14, i64 520, !9, i64 528, !9, i64 532, !81, i64 536, !9, i64 544, !69, i64 552, !82, i64 616, !14, i64 656, !84, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !68, i64 689, !68, i64 690}
!65 = !{!"p1 _ZTS15object_database", !15, i64 0}
!66 = !{!"p1 _ZTS18parsed_object_pool", !15, i64 0}
!67 = !{!"p1 _ZTS9ref_store", !15, i64 0}
!68 = !{!"_Bool", !10, i64 0}
!69 = !{!"strmap", !70, i64 0, !72, i64 48, !9, i64 56}
!70 = !{!"hashmap", !71, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!71 = !{!"p2 _ZTS13hashmap_entry", !51, i64 0}
!72 = !{!"p1 _ZTS8mem_pool", !15, i64 0}
!73 = !{!"repo_path_cache", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!74 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !75, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !9, i64 128, !14, i64 136}
!75 = !{!"p1 _ZTS18fsmonitor_settings", !15, i64 0}
!76 = !{!"p1 _ZTS10config_set", !15, i64 0}
!77 = !{!"p1 _ZTS15submodule_cache", !15, i64 0}
!78 = !{!"p1 _ZTS11index_state", !15, i64 0}
!79 = !{!"p1 _ZTS12remote_state", !15, i64 0}
!80 = !{!"repo_config_values", !14, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!81 = !{!"p1 _ZTS6strmap", !15, i64 0}
!82 = !{!"string_list", !83, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !15, i64 32}
!83 = !{!"p1 _ZTS16string_list_item", !15, i64 0}
!84 = !{!"p1 _ZTS22promisor_remote_config", !15, i64 0}
!85 = !{!86, !9, i64 72}
!86 = !{!"commit", !87, i64 0, !16, i64 48, !88, i64 56, !89, i64 64, !9, i64 72}
!87 = !{!"object", !9, i64 0, !9, i64 0, !9, i64 4, !18, i64 8}
!88 = !{!"p1 _ZTS11commit_list", !15, i64 0}
!89 = !{!"p1 _ZTS4tree", !15, i64 0}
!90 = distinct !{!90, !26, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = distinct !{!93, !26, !91}
!94 = !{!86, !88, i64 56}
!95 = !{!96, !97, i64 0}
!96 = !{!"commit_list", !97, i64 0, !88, i64 8}
!97 = !{!"p1 _ZTS6commit", !15, i64 0}
!98 = !{!99, !9, i64 96}
!99 = !{!"diff_options", !14, i64 0, !14, i64 8, !9, i64 16, !9, i64 20, !14, i64 24, !9, i64 32, !100, i64 40, !16, i64 48, !16, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !101, i64 96, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !14, i64 328, !9, i64 336, !14, i64 344, !9, i64 352, !9, i64 356, !102, i64 360, !16, i64 368, !16, i64 376, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !14, i64 400, !9, i64 408, !9, i64 412, !103, i64 416, !9, i64 424, !9, i64 428, !9, i64 432, !15, i64 440, !104, i64 448, !9, i64 456, !10, i64 460, !105, i64 464, !15, i64 488, !15, i64 496, !15, i64 504, !15, i64 512, !15, i64 520, !15, i64 528, !15, i64 536, !15, i64 544, !9, i64 552, !107, i64 560, !9, i64 568, !9, i64 572, !108, i64 576, !81, i64 584, !9, i64 592, !9, i64 596, !9, i64 600}
!100 = !{!"p2 _ZTS17re_pattern_buffer", !51, i64 0}
!101 = !{!"diff_flags", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140}
!102 = !{!"p2 omnipotent char", !51, i64 0}
!103 = !{!"p1 _ZTS6oidset", !15, i64 0}
!104 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!105 = !{!"pathspec", !9, i64 0, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 8, !9, i64 12, !106, i64 16}
!106 = !{!"p1 _ZTS13pathspec_item", !15, i64 0}
!107 = !{!"p1 _ZTS20emitted_diff_symbols", !15, i64 0}
!108 = !{!"p1 _ZTS10repository", !15, i64 0}
!109 = !{!99, !9, i64 264}
!110 = !{!37, !9, i64 12}
!111 = !{!99, !9, i64 316}
!112 = !{!113, !9, i64 12}
!113 = !{!"diff_queue_struct", !114, i64 0, !9, i64 8, !9, i64 12}
!114 = !{!"p2 _ZTS13diff_filepair", !51, i64 0}
!115 = !{!113, !114, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTS13diff_filepair", !15, i64 0}
!118 = !{!119, !120, i64 8}
!119 = !{!"diff_filepair", !120, i64 0, !120, i64 8, !121, i64 16, !122, i64 24, !10, i64 26, !9, i64 27, !9, i64 27, !9, i64 27, !9, i64 27, !9, i64 27}
!120 = !{!"p1 _ZTS13diff_filespec", !15, i64 0}
!121 = !{!"p1 _ZTS9range_set", !15, i64 0}
!122 = !{!"short", !10, i64 0}
!123 = !{!124, !14, i64 40}
!124 = !{!"diff_filespec", !18, i64 0, !14, i64 40, !15, i64 48, !15, i64 56, !16, i64 64, !9, i64 72, !9, i64 76, !122, i64 80, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !125, i64 88}
!125 = !{!"p1 _ZTS15userdiff_driver", !15, i64 0}
!126 = !{!127, !9, i64 8}
!127 = !{!"hashmap_entry", !128, i64 0, !9, i64 8}
!128 = !{!"p1 _ZTS13hashmap_entry", !15, i64 0}
!129 = !{!127, !128, i64 0}
!130 = distinct !{!130, !26}
!131 = distinct !{!131, !26}
!132 = !{!37, !9, i64 8}
!133 = distinct !{!133, !26}
!134 = distinct !{!134, !26}
!135 = !{!136, !15, i64 48}
!136 = !{!"tree", !87, i64 0, !15, i64 48, !16, i64 56}
!137 = !{!136, !16, i64 56}
!138 = !{!139, !9, i64 48}
!139 = !{!"name_entry", !18, i64 0, !14, i64 40, !9, i64 48, !9, i64 52}
!140 = !{!139, !14, i64 40}
!141 = distinct !{!141, !26}
!142 = !{!139, !9, i64 52}
end_hunk_1
