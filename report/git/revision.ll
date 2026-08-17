inline.NumInlined: 268
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@mark_trees_uninteresting_sparse
define dso_local void @mark_trees_uninteresting_sparse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.hashmap_iter, align 8       ; 5 uses
  %3 = alloca %struct.path_and_oids_entry, align 8 ; 7 uses
  %4 = alloca %struct.tree_desc, align 8          ; 5 uses
  %5 = alloca %struct.name_entry, align 8         ; 9 uses
  %6 = alloca %struct.hashmap, align 8            ; 8 uses
  %7 = alloca %struct.hashmap_iter, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @__const.mark_trees_uninteresting_sparse.map, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %i.c = phi i1 [ false, %bb.a ], [ %i.y, %bb.g ] ; 3 uses
  %i.d = phi i1 [ false, %bb.a ], [ %i.x, %bb.g ] ; 3 uses
  %.061 = phi i32 [ 0, %bb.a ], [ %.2, %bb.g ]    ; 2 uses
  %.01960 = phi i32 [ 0, %bb.a ], [ %.221, %bb.g ] ; 2 uses
  %.sroa.6.059 = phi i32 [ 0, %bb.a ], [ %i.r, %bb.g ] ; 2 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !50     ; 2 uses
  %.not16.i = icmp eq i32 %.sroa.6.059, %i.e
  br i1 %.not16.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi i32 [ %.sroa.6.059, %.lr.ph.i ], [ %i.p, %bb.d ] ; 5 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %i.l = shl i32 %i.g, 1
  %i.m = and i32 %i.l, 30
  %i.n = shl nuw i32 3, %i.m
  %i.o = and i32 %i.n, %i.k
  %.not10.i = icmp eq i32 %i.o, 0
  br i1 %.not10.i, label %oidset_iter_next.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i32 %i.g, 1                          ; 2 uses
  %.not.i = icmp eq i32 %i.p, %i.e
  br i1 %.not.i, label %.critedge, label %bb.c, !llvm.loop !56

oidset_iter_next.exit:                            ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.r = add i32 %i.g, 1
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %oidset_iter_next.exit
  %i.s = zext i32 %i.g to i64
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.q, i64 %i.s
  %i.u = tail call ptr @lookup_tree(ptr noundef %0, ptr noundef nonnull %i.t) #24 ; 2 uses
  %.not26 = icmp eq ptr %i.u, null
  br i1 %.not26, label %bb.g, label %bb.f, !llvm.loop !58

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 8589934592
  %.not27 = icmp eq i64 %i.w, 0                   ; 2 uses
  %.019. = select i1 %.not27, i32 %.01960, i32 1
  %..0 = select i1 %.not27, i32 1, i32 %.061
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.221 = phi i32 [ %.019., %bb.f ], [ %.01960, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %..0, %bb.f ], [ %.061, %bb.e ] ; 2 uses
  %i.x = icmp ne i32 %.2, 0                       ; 2 uses
  %i.y = icmp ne i32 %.221, 0                     ; 2 uses
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.g, %oidset_iter_next.exit, %bb.d
  %i.z = phi i1 [ %i.d, %bb.d ], [ %i.d, %oidset_iter_next.exit ], [ true, %bb.g ], [ %i.d, %bb.b ]
  %i.aa = phi i1 [ %i.c, %bb.d ], [ %i.c, %oidset_iter_next.exit ], [ true, %bb.g ], [ %i.c, %bb.b ]
  %or.cond3 = and i1 %i.aa, %i.z
  br i1 %or.cond3, label %.preheader, label %bb.t

.preheader:                                       ; preds = %.critedge
  %i.ab = load i32, ptr %1, align 8, !tbaa !50    ; 2 uses
  %.not16.i3162 = icmp eq i32 %i.ab, 0
  br i1 %.not16.i3162, label %oidset_iter_next.exit36.thread, label %.lr.ph.i32.lr.ph

.lr.ph.i32.lr.ph:                                 ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.lr.ph, %add_children_by_path.exit
  %i.ah = phi i32 [ %i.ab, %.lr.ph.i32.lr.ph ], [ %i.ci, %add_children_by_path.exit ]
  %.sroa.6.163 = phi i32 [ 0, %.lr.ph.i32.lr.ph ], [ %i.au, %add_children_by_path.exit ]
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i32
  %i.aj = phi i32 [ %.sroa.6.163, %.lr.ph.i32 ], [ %i.as, %bb.i ] ; 5 uses
  %i.ak = lshr i32 %i.aj, 4
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !55
  %i.ao = shl i32 %i.aj, 1
  %i.ap = and i32 %i.ao, 30
  %i.aq = shl nuw i32 3, %i.ap
  %i.ar = and i32 %i.aq, %i.an
  %.not10.i33 = icmp eq i32 %i.ar, 0
  br i1 %.not10.i33, label %oidset_iter_next.exit36, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = add i32 %i.aj, 1                        ; 2 uses
  %.not.i34 = icmp eq i32 %i.as, %i.ah
  br i1 %.not.i34, label %oidset_iter_next.exit36.thread, label %bb.h, !llvm.loop !56

oidset_iter_next.exit36:                          ; preds = %bb.h
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  %i.au = add i32 %i.aj, 1                        ; 2 uses
  %.not28 = icmp eq ptr %i.at, null
  br i1 %.not28, label %oidset_iter_next.exit36.thread, label %bb.j

bb.j:                                             ; preds = %oidset_iter_next.exit36
  %i.av = zext i32 %i.aj to i64
  %i.aw = getelementptr inbounds nuw [36 x i8], ptr %i.at, i64 %i.av
  %i.ax = call ptr @lookup_tree(ptr noundef %0, ptr noundef nonnull %i.aw) #24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %.not.i37 = icmp eq ptr %i.ax, null
  br i1 %.not.i37, label %add_children_by_path.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.az = call i32 @repo_parse_tree_gently(ptr noundef %i.ay, ptr noundef nonnull %i.ax, i32 noundef 1) #24
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %add_children_by_path.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !44
  call void @init_tree_desc(ptr noundef nonnull %4, ptr noundef nonnull %i.bb, ptr noundef %i.bd, i64 noundef %i.bf) #24
  %i.bg = call i32 @tree_entry(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %.not1722.i = icmp eq i32 %i.bg, 0
  br i1 %.not1722.i, label %._crit_edge.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.l, %bb.s
  %i.bh = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.bi = and i32 %i.bh, 61440                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 16384
  %i.bk = icmp eq i32 %i.bi, 57344
  %i.bl = select i1 %i.bk, i32 1, i32 3
  %i.bm = select i1 %i.bj, i32 2, i32 %i.bl
  switch i32 %i.bm, label %bb.s [
    i32 2, label %bb.m
    i32 3, label %bb.p
  ]

bb.m:                                             ; preds = %.lr.ph.i38
  %i.bn = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.bo = call i32 @strhash(ptr noundef %i.bn) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 %i.bo, ptr %i.ae, align 8, !tbaa !60
  store ptr null, ptr %3, align 8, !tbaa !63
  store ptr %i.bn, ptr %i.af, align 8, !tbaa !64
  call void @oidset_init(ptr noundef nonnull %i.ag, i64 noundef 0) #24
  %i.bp = call ptr @hashmap_get(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef null) #24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %bb.n, label %paths_and_oids_insert.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bq = call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #24 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.bo, ptr %i.br, align 8, !tbaa !60
  store ptr null, ptr %i.bq, align 8, !tbaa !63
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.bt = call ptr @xstrdup(ptr noundef %i.bs) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  call void @oidset_init(ptr noundef nonnull %i.bv, i64 noundef 16) #24
  %i.bw = call ptr @hashmap_put(ptr noundef nonnull %6, ptr noundef nonnull %i.bq) #24 ; 0 uses
  br label %paths_and_oids_insert.exit.i

paths_and_oids_insert.exit.i:                     ; preds = %bb.n, %bb.m
  %.0.i.i = phi ptr [ %i.bp, %bb.m ], [ %i.bq, %bb.n ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.by = call i32 @oidset_insert(ptr noundef nonnull %i.bx, ptr noundef nonnull %5) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bz = load i64, ptr %i.ax, align 8
  %i.ca = and i64 %i.bz, 8589934592
  %.not20.i = icmp eq i64 %i.ca, 0
  br i1 %.not20.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %paths_and_oids_insert.exit.i
  %i.cb = call ptr @lookup_tree(ptr noundef %0, ptr noundef nonnull %5) #24 ; 2 uses
  %.not21.i = icmp eq ptr %i.cb, null
  br i1 %.not21.i, label %bb.s, label %bb.r

bb.p:                                             ; preds = %.lr.ph.i38
  %i.cc = load i64, ptr %i.ax, align 8
  %i.cd = and i64 %i.cc, 8589934592
  %.not18.i = icmp eq i64 %i.cd, 0
  br i1 %.not18.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = call ptr @lookup_blob(ptr noundef %0, ptr noundef nonnull %5) #24 ; 2 uses
  %.not19.i = icmp eq ptr %i.ce, null
  br i1 %.not19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sink.i = phi ptr [ %i.cb, %bb.o ], [ %i.ce, %bb.q ] ; 2 uses
  %i.cf = load i64, ptr %.sink.i, align 4
  %i.cg = or i64 %i.cf, 8589934592
  store i64 %i.cg, ptr %.sink.i, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %paths_and_oids_insert.exit.i, %.lr.ph.i38
  %i.ch = call i32 @tree_entry(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %.not17.i = icmp eq i32 %i.ch, 0
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i38, !llvm.loop !67

._crit_edge.i:                                    ; preds = %bb.s, %bb.l
  call void @free_tree_buffer(ptr noundef nonnull %i.ax) #24
  br label %add_children_by_path.exit

add_children_by_path.exit:                        ; preds = %bb.j, %bb.k, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ci = load i32, ptr %1, align 8, !tbaa !50    ; 2 uses
  %.not16.i31 = icmp eq i32 %i.au, %i.ci
  br i1 %.not16.i31, label %oidset_iter_next.exit36.thread, label %.lr.ph.i32, !llvm.loop !68

oidset_iter_next.exit36.thread:                   ; preds = %oidset_iter_next.exit36, %add_children_by_path.exit, %bb.i, %.preheader
  call void @hashmap_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %i.cj = call ptr @hashmap_iter_next(ptr noundef nonnull %7) #24 ; 2 uses
  %.not2964 = icmp eq ptr %i.cj, null
  br i1 %.not2964, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %oidset_iter_next.exit36.thread, %.lr.ph
  %.02265 = phi ptr [ %i.cl, %.lr.ph ], [ %i.cj, %oidset_iter_next.exit36.thread ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.02265, i64 24
  call void @mark_trees_uninteresting_sparse(ptr noundef %0, ptr noundef nonnull %i.ck)
  %i.cl = call ptr @hashmap_iter_next(ptr noundef nonnull %7) #24 ; 2 uses
  %.not29 = icmp eq ptr %i.cl, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %oidset_iter_next.exit36.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @hashmap_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %2) #24
  %i.cm = call ptr @hashmap_iter_next(ptr noundef nonnull %2) #24 ; 2 uses
  %.not5.i = icmp eq ptr %i.cm, null
  br i1 %.not5.i, label %paths_and_oids_clear.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %._crit_edge, %.lr.ph.i39
  %.06.i = phi ptr [ %i.cq, %.lr.ph.i39 ], [ %i.cm, %._crit_edge ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  call void @oidset_clear(ptr noundef nonnull %i.cn) #24
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !64
  call void @free(ptr noundef %i.cp) #24
  %i.cq = call ptr @hashmap_iter_next(ptr noundef nonnull %2) #24 ; 2 uses
  %.not.i40 = icmp eq ptr %i.cq, null
  br i1 %.not.i40, label %paths_and_oids_clear.exit, label %.lr.ph.i39, !llvm.loop !70

paths_and_oids_clear.exit:                        ; preds = %.lr.ph.i39, %._crit_edge
  call void @hashmap_clear_(ptr noundef nonnull %6, i64 noundef 0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %paths_and_oids_clear.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @path_and_oids_cmp(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.d) #25
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @lookup_tree(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @hashmap_iter_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @mark_parents_uninteresting(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.commit_stack, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.031 = load ptr, ptr %i.a, align 8, !tbaa !71  ; 3 uses
  %.not32 = icmp eq ptr %.031, null
  br i1 %.not32, label %mark_one_parent_uninteresting.exit.thread28._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %.not11.i = icmp eq ptr %0, null
  br i1 %.not11.i, label %.lr.ph.split.us.split.us, label %.lr.ph.split.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %mark_one_parent_uninteresting.exit.thread.us.us
  %.033.us.us = phi ptr [ %.0.us.us, %mark_one_parent_uninteresting.exit.thread.us.us ], [ %.031, %.lr.ph ] ; 2 uses
  %i.c = load ptr, ptr %.033.us.us, align 8, !tbaa !72 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = and i64 %i.d, 8589934592
  %.not.i.us.us = icmp eq i64 %i.e, 0
  br i1 %.not.i.us.us, label %bb.b, label %mark_one_parent_uninteresting.exit.thread.us.us

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.f = or disjoint i64 %i.d, 8589934592
  store i64 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.013.i.us.us = load ptr, ptr %i.g, align 8, !tbaa !71 ; 2 uses
  %.not1014.i.us.us = icmp eq ptr %.013.i.us.us, null
  br i1 %.not1014.i.us.us, label %mark_one_parent_uninteresting.exit.thread.us.us, label %.lr.ph.split.us.i.us.us

.lr.ph.split.us.i.us.us:                          ; preds = %bb.b, %.lr.ph.split.us.i.us.us
  %.015.us.i.us.us = phi ptr [ %.0.us.i.us.us, %.lr.ph.split.us.i.us.us ], [ %.013.i.us.us, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.015.us.i.us.us, align 8, !tbaa !72
  call void @commit_stack_push(ptr noundef nonnull %2, ptr noundef %i.h) #24
  %i.i = getelementptr inbounds nuw i8, ptr %.015.us.i.us.us, i64 8
  %.0.us.i.us.us = load ptr, ptr %i.i, align 8, !tbaa !71 ; 2 uses
  %.not10.us.i.us.us = icmp eq ptr %.0.us.i.us.us, null
  br i1 %.not10.us.i.us.us, label %mark_one_parent_uninteresting.exit.thread.us.us, label %.lr.ph.split.us.i.us.us, !llvm.loop !75

mark_one_parent_uninteresting.exit.thread.us.us:  ; preds = %.lr.ph.split.us.i.us.us, %.lr.ph.split.us.split.us, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.033.us.us, i64 8
  %.0.us.us = load ptr, ptr %i.j, align 8, !tbaa !71 ; 2 uses
  %.not.us.us = icmp eq ptr %.0.us.us, null
  br i1 %.not.us.us, label %mark_one_parent_uninteresting.exit.thread28._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !76

.lr.ph.split.split:                               ; preds = %.lr.ph, %mark_one_parent_uninteresting.exit.thread
  %.033 = phi ptr [ %.0, %mark_one_parent_uninteresting.exit.thread ], [ %.031, %.lr.ph ] ; 2 uses
  %i.k = load ptr, ptr %.033, align 8, !tbaa !72  ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 8589934592
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.c, label %mark_one_parent_uninteresting.exit.thread28

bb.c:                                             ; preds = %.lr.ph.split.split
  %i.n = or disjoint i64 %i.l, 8589934592
  store i64 %i.n, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.013.i = load ptr, ptr %i.o, align 8, !tbaa !71 ; 2 uses
  %.not1014.i = icmp eq ptr %.013.i, null
  br i1 %.not1014.i, label %mark_one_parent_uninteresting.exit.thread28, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.c, %bb.d
  %.015.i = phi ptr [ %.0.i, %bb.d ], [ %.013.i, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.015.i, align 8, !tbaa !72
  call void @commit_stack_push(ptr noundef nonnull %2, ptr noundef %i.p) #24
  %i.q = load i64, ptr %i.b, align 4
  %i.r = and i64 %i.q, 1099511627776
  %.not12.i = icmp eq i64 %i.r, 0
  br i1 %.not12.i, label %bb.d, label %mark_one_parent_uninteresting.exit.thread28

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.0.i = load ptr, ptr %i.s, align 8, !tbaa !71  ; 2 uses
  %.not10.i = icmp eq ptr %.0.i, null
  br i1 %.not10.i, label %mark_one_parent_uninteresting.exit.thread28, label %.lr.ph.split.i, !llvm.loop !75

mark_one_parent_uninteresting.exit.thread28:      ; preds = %.lr.ph.split.i, %bb.d, %bb.c, %.lr.ph.split.split
  %i.t = load i64, ptr %i.b, align 4
  %i.u = and i64 %i.t, 1099511627776
  %.not10 = icmp eq i64 %i.u, 0
  br i1 %.not10, label %mark_one_parent_uninteresting.exit.thread, label %mark_one_parent_uninteresting.exit.thread28._crit_edge

mark_one_parent_uninteresting.exit.thread:        ; preds = %mark_one_parent_uninteresting.exit.thread28
  %i.v = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %.0 = load ptr, ptr %i.v, align 8, !tbaa !71    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %mark_one_parent_uninteresting.exit.thread28._crit_edge, label %.lr.ph.split.split, !llvm.loop !76

mark_one_parent_uninteresting.exit.thread28._crit_edge: ; preds = %mark_one_parent_uninteresting.exit.thread, %mark_one_parent_uninteresting.exit.thread28, %mark_one_parent_uninteresting.exit.thread.us.us, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !77
  %.not1145 = icmp eq i64 %i.x, 0
  br i1 %.not1145, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %mark_one_parent_uninteresting.exit.thread28._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 332
  %.not11.i16 = icmp eq ptr %0, null
  br i1 %.not11.i16, label %.lr.ph47.split.us, label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47, %mark_one_parent_uninteresting.exit26.us
  %i.z = call ptr @commit_stack_pop(ptr noundef nonnull %2) #24 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = and i64 %i.aa, 8589934592
  %.not.i12.us = icmp eq i64 %i.ab, 0
  br i1 %.not.i12.us, label %bb.e, label %mark_one_parent_uninteresting.exit26.us

bb.e:                                             ; preds = %.lr.ph47.split.us
  %i.ac = or disjoint i64 %i.aa, 8589934592
  store i64 %i.ac, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.013.i13.us = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %.not1014.i14.us = icmp eq ptr %.013.i13.us, null
  br i1 %.not1014.i14.us, label %mark_one_parent_uninteresting.exit26.us, label %.lr.ph.split.us.i22.us

.lr.ph.split.us.i22.us:                           ; preds = %bb.e, %.lr.ph.split.us.i22.us
  %.015.us.i23.us = phi ptr [ %.0.us.i24.us, %.lr.ph.split.us.i22.us ], [ %.013.i13.us, %bb.e ] ; 2 uses
  %i.ae = load ptr, ptr %.015.us.i23.us, align 8, !tbaa !72
  call void @commit_stack_push(ptr noundef nonnull %2, ptr noundef %i.ae) #24
  %i.af = getelementptr inbounds nuw i8, ptr %.015.us.i23.us, i64 8
  %.0.us.i24.us = load ptr, ptr %i.af, align 8, !tbaa !71 ; 2 uses
  %.not10.us.i25.us = icmp eq ptr %.0.us.i24.us, null
  br i1 %.not10.us.i25.us, label %mark_one_parent_uninteresting.exit26.us, label %.lr.ph.split.us.i22.us, !llvm.loop !75
end_hunk_0
