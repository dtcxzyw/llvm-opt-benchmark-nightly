Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/sparse-checkout?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@update_working_directory:bb.a
bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr %2, align 8, !tbaa !83    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  %.neg.i.i.i = add i64 %i.am, 1                  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, %.neg.i.i.i
  %or.cond.i.i = or i1 %.not.i.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i, label %strbuf_avail.exit.thread.i.i.i, label %strbuf_addch.exit.i.i

strbuf_avail.exit.thread.i.i.i:                   ; preds = %bb.m
  call void @strbuf_grow(ptr noundef nonnull %2, i64 noundef 1) #14
  %.pre.i.i.i = load i64, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %.pre7.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !85
  br label %strbuf_addch.exit.i.i

strbuf_addch.exit.i.i:                            ; preds = %strbuf_avail.exit.thread.i.i.i, %bb.m
  %i.at = phi ptr [ %.pre.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %i.ao, %bb.m ]
  %.pre-phi.i.i.i = phi i64 [ %.pre7.i.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %.neg.i.i.i, %bb.m ]
  %i.au = phi i64 [ %.pre.i.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %i.am, %bb.m ]
  store i64 %.pre-phi.i.i.i, ptr %i.al, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  store i8 47, ptr %i.av, align 1, !tbaa !86
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !85
  %i.ax = load i64, ptr %i.al, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !86
  %.pre.i = load i64, ptr %i.al, align 8, !tbaa !84
  br label %strbuf_complete.exit.i

strbuf_complete.exit.i:                           ; preds = %strbuf_addch.exit.i.i, %bb.l, %bb.k
  %i.az = phi i64 [ 0, %bb.k ], [ %i.am, %bb.l ], [ %.pre.i, %strbuf_addch.exit.i.i ] ; 3 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !87
  %.not50.i = icmp eq i32 %i.bc, 0
  br i1 %.not50.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %strbuf_complete.exit.i, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %strbuf_complete.exit.i ] ; 2 uses
  %i.bd = phi ptr [ %i.bn, %bb.p ], [ %i.ba, %strbuf_complete.exit.i ]
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !51
  %i.bj = icmp eq i32 %i.bi, 16384
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 108 ; 2 uses
  %i.bl = call i32 @repo_file_exists(ptr noundef nonnull %0, ptr noundef nonnull %i.bk) #14
  %.not40.i = icmp eq i32 %i.bl, 0
  br i1 %.not40.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = call ptr @string_list_append(ptr noundef nonnull %3, ptr noundef nonnull %i.bk) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !87
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next.i, %i.bq
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !132

._crit_edge.i:                                    ; preds = %bb.p
  %.pre52.i = load ptr, ptr %3, align 8, !tbaa !58 ; 2 uses
  %.not3545.i = icmp eq ptr %.pre52.i, null
  br i1 %.not3545.i, label %.critedge.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !57
  %.not29 = icmp eq i64 %i.bv, 0
  br i1 %.not29, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph48.i, %bb.y
  %.046.i22 = phi ptr [ %i.cq, %bb.y ], [ %.pre52.i, %.lr.ph48.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %4, i8 0, i64 312, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.sparse_checkout_add.patterns, i64 24, i1 false)
  %i.bw = load i64, ptr %2, align 8, !tbaa !83
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %i.bw, i64 1)
  %i.bx = icmp ugt i64 %i.az, %spec.select.i.i
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.37, i32 noundef 167, ptr noundef nonnull @.str.38) #15
  unreachable

bb.r:                                             ; preds = %.lr.ph
  store i64 %i.az, ptr %i.al, align 8, !tbaa !84
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !85 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.by, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.az
  store i8 0, ptr %i.bz, align 1, !tbaa !86
  br label %strbuf_setlen.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ca = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !86
  %.not10.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.t, %bb.s
  %i.cb = load ptr, ptr %.046.i22, align 8, !tbaa !60 ; 2 uses
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #16
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull %i.cb, i64 noundef %i.cc) #14
  %i.cd = load i32, ptr %4, align 8, !tbaa !150
  %i.ce = or i32 %i.cd, 32
  store i32 %i.ce, ptr %4, align 8, !tbaa !150
  call void @setup_standard_excludes(ptr noundef nonnull %4) #14
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !85
  %i.cg = call ptr @strvec_push(ptr noundef nonnull %6, ptr noundef %i.cf) #14 ; 0 uses
  %i.ch = load ptr, ptr %6, align 8, !tbaa !94
  call void @parse_pathspec(ptr noundef nonnull %5, i32 noundef 8, i32 noundef 0, ptr noundef null, ptr noundef %i.ch) #14
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.cj = call i32 @fill_directory(ptr noundef nonnull %4, ptr noundef %i.ci, ptr noundef nonnull %5) #14 ; 0 uses
  %i.ck = load i32, ptr %i.bu, align 4, !tbaa !151
  %.not38.i = icmp eq i32 %i.ck, 0
  br i1 %.not38.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %strbuf_setlen.exit.i
  %i.cl = load i32, ptr @git_gettext_enabled, align 4, !tbaa !51
  %.not4.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not4.i.i, label %.sink.split.i, label %.sink.split.sink.split.i

bb.w:                                             ; preds = %strbuf_setlen.exit.i
  %i.cm = call i32 @remove_dir_recursively(ptr noundef nonnull %2, i32 noundef 0) #14
  %.not39.i = icmp eq i32 %i.cm, 0
  br i1 %.not39.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = load i32, ptr @git_gettext_enabled, align 4, !tbaa !51
  %.not4.i41.i = icmp eq i32 %i.cn, 0
  br i1 %.not4.i41.i, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.x, %bb.v
  %.str.36.sink.i = phi ptr [ @.str.35, %bb.v ], [ @.str.36, %bb.x ]
  %i.co = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.36.sink.i, i32 noundef 5) #14
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.x, %bb.v
  %.0.i42.sink.i = phi ptr [ @.str.35, %bb.v ], [ @.str.36, %bb.x ], [ %i.co, %.sink.split.sink.split.i ]
  %i.cp = load ptr, ptr %.046.i22, align 8, !tbaa !60
  call void (ptr, ...) @warning(ptr noundef %.0.i42.sink.i, ptr noundef %i.cp) #14
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.w
  call void @strvec_clear(ptr noundef nonnull %6) #14
  call void @clear_pathspec(ptr noundef nonnull %5) #14
  call void @dir_clear(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.cq = getelementptr inbounds nuw i8, ptr %.046.i22, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !58
  %i.cs = load i64, ptr %i.bs, align 8, !tbaa !57
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = icmp ult ptr %i.cq, %i.ct
  br i1 %i.cu, label %.lr.ph, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y, %.lr.ph48.i, %._crit_edge.i, %strbuf_complete.exit.i
  call void @string_list_clear(ptr noundef nonnull %3, i32 noundef 0) #14
  call void @strbuf_release(ptr noundef nonnull %2) #14
  br i1 %.not37.i, label %bb.z, label %clean_tracked_sparse_directories.exit

bb.z:                                             ; preds = %.critedge.i
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !68
  call void @ensure_full_index(ptr noundef %i.cv) #14
  br label %clean_tracked_sparse_directories.exit

clean_tracked_sparse_directories.exit:            ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %.critedge.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 248
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !91 ; 2 uses
  %.not21 = icmp eq ptr %i.cy, %1
  br i1 %.not21, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %clean_tracked_sparse_directories.exit
  call void @clear_pattern_list(ptr noundef %i.cy) #14
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 248
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !91
  call void @free(ptr noundef %i.db) #14
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.dc, i64 248
  store ptr null, ptr %9, align 8, !tbaa !91
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %clean_tracked_sparse_directories.exit
  %i.dd = phi ptr [ %i.dc, %bb.aa ], [ %i.cw, %clean_tracked_sparse_directories.exit ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 248
  store ptr %i.f, ptr %i.de, align 8, !tbaa !91
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  %.0 = phi i32 [ %spec.store.select, %bb.ab ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret i32 %.0
}

declare i32 @repo_get_oid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @safe_create_leading_directories(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xfopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

declare void @add_pattern(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_patterns_and_update(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hashmap_iter, align 8       ; 8 uses
  %3 = alloca %struct.string_list, align 8        ; 13 uses
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  %5 = alloca %struct.lock_file, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.b = tail call ptr @repo_config_values(ptr noundef %i.a) #14
  %i.c = tail call ptr @get_sparse_checkout_filename() #14 ; 4 uses
  %i.d = tail call i32 @safe_create_leading_directories(ptr noundef %0, ptr noundef %i.c) #14
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @_(ptr noundef nonnull @.str.40)
  tail call void (ptr, ...) @die(ptr noundef %i.e) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %5, ptr noundef %i.c, i32 noundef 1, i64 noundef 0, i32 noundef 438) #14 ; 0 uses
  %i.g = call fastcc i32 @update_working_directory(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @rollback_lock_file(ptr noundef nonnull %5) #14 ; 0 uses
  %i.i = call fastcc i32 @update_working_directory(ptr noundef %0, ptr noundef null) ; 0 uses
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %5, align 8, !tbaa !158
  %i.j = call ptr @fdopen_tempfile(ptr noundef %.val, ptr noundef nonnull @.str.22) #14 ; 8 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = call fastcc ptr @_(ptr noundef nonnull @.str.41)
  %.val20 = load ptr, ptr %5, align 8, !tbaa !158
  %i.l = call fastcc ptr @get_lock_file_path(ptr %.val20)
  call void (ptr, ...) @die_errno(ptr noundef %i.k, ptr noundef %i.l) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47
  %.not18 = icmp eq i32 %i.n, 0
  br i1 %.not18, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.check_rules.unquoted, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @hashmap_iter_init(ptr noundef nonnull %i.p, ptr noundef nonnull %2) #14
  %i.q = call ptr @hashmap_iter_next(ptr noundef nonnull %2) #14 ; 2 uses
  %.not35.i = icmp eq ptr %i.q, null
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i
  %.02636.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.y, %bb.l ] ; 2 uses
  %i.s = call ptr @hashmap_get(ptr noundef nonnull %i.r, ptr noundef nonnull %.02636.i, ptr noundef null) #14
  %.not33.i = icmp eq ptr %i.s, null
  br i1 %.not33.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.02636.i, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.v = call i32 @hashmap_contains_parent(ptr noundef nonnull %i.r, ptr noundef %i.u, ptr noundef nonnull %4) #14
  %.not34.i = icmp eq i32 %i.v, 0
  br i1 %.not34.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.x = call ptr @string_list_append(ptr noundef nonnull %3, ptr noundef %i.w) #14 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.y = call ptr @hashmap_iter_next(ptr noundef nonnull %2) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !152

._crit_edge.i:                                    ; preds = %bb.l, %bb.h
  call void @string_list_sort_u(ptr noundef nonnull %3, i32 noundef 0) #14
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.24, i64 8, i64 1, ptr nonnull %i.j) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57
  %.not50.i = icmp eq i64 %i.aa, 0
  br i1 %.not50.i, label %._crit_edge40.i, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %._crit_edge.i, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60
  %i.ae = call fastcc ptr @escaped_pattern(ptr noundef %i.ad) ; 4 uses
  %char0.i = load i8, ptr %i.ae, align 1
  %.not32.i = icmp eq i8 %char0.i, 0
  br i1 %.not32.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph39.i
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ae) #14 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph39.i
  call void @free(ptr noundef nonnull %i.ae) #14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = load i64, ptr %i.z, align 8, !tbaa !57
  %i.ah = icmp ugt i64 %i.ag, %indvars.iv.next.i
  br i1 %i.ah, label %.lr.ph39.i, label %._crit_edge40.i, !llvm.loop !153

._crit_edge40.i:                                  ; preds = %bb.n, %._crit_edge.i
  call void @string_list_clear(ptr noundef nonnull %3, i32 noundef 0) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @hashmap_iter_init(ptr noundef nonnull %i.ai, ptr noundef nonnull %2) #14
  %i.aj = call ptr @hashmap_iter_next(ptr noundef nonnull %2) #14 ; 2 uses
  %.not3041.i = icmp eq ptr %i.aj, null
  br i1 %.not3041.i, label %._crit_edge45.i, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %._crit_edge40.i, %bb.p
  %.12742.i = phi ptr [ %i.ap, %bb.p ], [ %i.aj, %._crit_edge40.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.12742.i, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55
  %i.am = call i32 @hashmap_contains_parent(ptr noundef nonnull %i.ai, ptr noundef %i.al, ptr noundef nonnull %4) #14
  %.not31.i = icmp eq i32 %i.am, 0
  br i1 %.not31.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph44.i
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !55
  %i.ao = call ptr @string_list_append(ptr noundef nonnull %3, ptr noundef %i.an) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph44.i
  %i.ap = call ptr @hashmap_iter_next(ptr noundef nonnull %2) #14 ; 2 uses
  %.not30.i = icmp eq ptr %i.ap, null
  br i1 %.not30.i, label %._crit_edge45.i, label %.lr.ph44.i, !llvm.loop !154

._crit_edge45.i:                                  ; preds = %bb.p, %._crit_edge40.i
  call void @strbuf_release(ptr noundef nonnull %4) #14
  call void @string_list_sort_u(ptr noundef nonnull %3, i32 noundef 0) #14
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !57
  %.not51.i = icmp eq i64 %i.aq, 0
  br i1 %.not51.i, label %write_cone_to_file.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %._crit_edge45.i, %.lr.ph48.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %.lr.ph48.i ], [ 0, %._crit_edge45.i ] ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv53.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60
  %i.au = call fastcc ptr @escaped_pattern(ptr noundef %i.at) ; 2 uses
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.44, ptr noundef %i.au) #14 ; 0 uses
  call void @free(ptr noundef %i.au) #14
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %i.aw = load i64, ptr %i.z, align 8, !tbaa !57
  %i.ax = icmp ugt i64 %i.aw, %indvars.iv.next54.i
  br i1 %i.ax, label %.lr.ph48.i, label %write_cone_to_file.exit, !llvm.loop !155

write_cone_to_file.exit:                          ; preds = %.lr.ph48.i, %._crit_edge45.i
  call void @string_list_clear(ptr noundef nonnull %3, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %write_patterns_to_file.exit

end_hunk_0
