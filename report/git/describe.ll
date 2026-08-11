inline.NumInlined: 66
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@describe:bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.ag = call fastcc ptr @_(ptr noundef nonnull @.str.77)
  call void (ptr, ...) @die(ptr noundef %i.ag, ptr noundef %0) #16
  unreachable

bb.r:                                             ; preds = %describe_blob.exit, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106
  %i.aj = call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.ai) ; 0 uses
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @clear_commit_marks(ptr noundef %i.j, i32 noundef -1) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @strbuf_release(ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @wildmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reference_get_peeled_oid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hashmap_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare ptr @hashmap_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lookup_tag(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @parse_tag(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @repo_get_oid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lookup_commit_reference_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @describe_commit(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.oidset, align 8             ; 9 uses
  %3 = alloca %struct.hashmap_entry, align 8      ; 5 uses
  %4 = alloca %struct.lazy_queue, align 8         ; 20 uses
  %5 = alloca [28 x %struct.possible_tag], align 16 ; 17 uses
  %6 = alloca %struct.hashmap_iter, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @__const.describe_commit.queue, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.val.i = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.val.i, ptr %i.b, align 8, !tbaa !81
  store ptr null, ptr %3, align 8, !tbaa !84
  %i.c = call ptr @hashmap_get(ptr noundef nonnull @names, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #15 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @tags, align 4, !tbaa !12
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i32, ptr @all, align 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 3
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.b
  call fastcc void @append_name(ptr noundef nonnull %i.c, ptr noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 8
  %i.o = icmp ne i8 %i.n, 0
  %i.p = load i32, ptr @longformat, align 4
  %i.q = icmp ne i32 %i.p, 0
  %or.cond3 = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond3, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 2 uses
  %.not177 = icmp eq ptr %i.s, null
  br i1 %.not177, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call ptr @get_tagged_oid(ptr noundef nonnull %i.s) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.u = phi ptr [ %i.t, %bb.f ], [ %i.a, %bb.e ]
  %i.v = load ptr, ptr @the_repository, align 8, !tbaa !27
  %i.w = load i32, ptr @abbrev, align 4, !tbaa !12
  %i.x = call ptr @repo_find_unique_abbrev(ptr noundef %i.v, ptr noundef %i.u, i32 noundef %i.w) #15
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef %i.x) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %i.y = load ptr, ptr @suffix, align 8, !tbaa !40 ; 3 uses
  %.not178 = icmp eq ptr %i.y, null
  br i1 %.not178, label %bb.cx, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #18
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.y, i64 noundef %i.z) #15
  br label %bb.cx

bb.j:                                             ; preds = %bb.c, %bb.a
  %i.aa = load i32, ptr @max_candidates, align 4, !tbaa !12
  %.not156 = icmp eq i32 %i.aa, 0
  br i1 %.not156, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call fastcc ptr @_(ptr noundef nonnull @.str.78)
  %i.ac = call ptr @oid_to_hex(ptr noundef nonnull %i.a) #15
  call void (ptr, ...) @die(ptr noundef %i.ab, ptr noundef %i.ac) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ad = load i32, ptr @debug, align 4, !tbaa !12
  %.not157 = icmp eq i32 %i.ad, 0
  br i1 %.not157, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !93
  %i.af = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i = icmp eq i32 %i.af, 0
  br i1 %.not4.i, label %_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #15
  br label %_.exit

_.exit:                                           ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ %i.ag, %bb.n ], [ @.str.79, %bb.m ]
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef %.0.i) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_.exit, %bb.l
  %.b = load i1, ptr @have_util, align 4
  br i1 %.b, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i1 true, ptr @commit_names.1, align 4
  store i1 true, ptr @commit_names.0, align 8
  store i32 0, ptr @commit_names.2, align 8, !tbaa !107
  store ptr null, ptr @commit_names.3, align 8, !tbaa !111
  call void @hashmap_iter_init(ptr noundef nonnull @names, ptr noundef nonnull %6) #15
  %i.ai = call ptr @hashmap_iter_next(ptr noundef nonnull %6) #15 ; 2 uses
  %.not158236 = icmp eq ptr %i.ai, null
  br i1 %.not158236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.t
  %.0143237 = phi ptr [ %i.br, %bb.t ], [ %i.ai, %bb.p ] ; 2 uses
  %i.aj = load ptr, ptr @the_repository, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %.0143237, i64 16
  %i.al = call ptr @lookup_commit_reference_gently(ptr noundef %i.aj, ptr noundef nonnull %i.ak, i32 noundef 1) #15 ; 2 uses
  %.not159 = icmp eq ptr %i.al, null
  br i1 %.not159, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.am = getelementptr i8, ptr %i.al, i64 72
  %.val = load i32, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.an = udiv i32 %.val, 65532                   ; 7 uses
  %i.ao = urem i32 %.val, 65532
  %i.ap = load i32, ptr @commit_names.2, align 8, !tbaa !107
  %.not.i.i = icmp ugt i32 %i.ap, %i.an
  %.pre.i.i = load ptr, ptr @commit_names.3, align 8, !tbaa !111 ; 2 uses
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = call ptr @xrealloc(ptr noundef %.pre.i.i, i64 noundef %i.as) #15 ; 4 uses
  store ptr %i.at, ptr @commit_names.3, align 8, !tbaa !111
  %i.au = load i32, ptr @commit_names.2, align 8, !tbaa !107 ; 5 uses
  %.not341.i.i = icmp ugt i32 %i.au, %i.an
  br i1 %.not341.i.i, label %.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.r
  %7 = add nuw nsw i32 %i.an, 1
  %8 = sub nuw i32 %7, %i.au                      ; 3 uses
  %min.iters.check = icmp samesign ult i32 %8, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader390, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i32 %8, 262140                     ; 3 uses
  %i.av = add i32 %i.au, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = add i32 %i.au, %index
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !116
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !116
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ba = icmp eq i32 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %8, %n.vec
  br i1 %cmp.n, label %.thread.i.i, label %.lr.ph.i.i.preheader390

.lr.ph.i.i.preheader390:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.0302.i.i.ph = phi i32 [ %i.au, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader390, %.lr.ph.i.i
  %.0302.i.i = phi i32 [ %i.bd, %.lr.ph.i.i ], [ %.0302.i.i.ph, %.lr.ph.i.i.preheader390 ] ; 2 uses
  %i.bb = zext i32 %.0302.i.i to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bb
  store ptr null, ptr %i.bc, align 8, !tbaa !116
  %i.bd = add i32 %.0302.i.i, 1                   ; 2 uses
  %.not34.i.i = icmp ugt i32 %i.bd, %i.an
  br i1 %.not34.i.i, label %.thread.i.i, label %.lr.ph.i.i, !llvm.loop !119

bb.s:                                             ; preds = %bb.q
  %i.be = zext nneg i32 %i.an to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !116 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.bg, null
  br i1 %.not35.i.i, label %.thread7.i.i, label %commit_names_at.exit

.thread.i.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %bb.r
  store i32 %i.aq, ptr @commit_names.2, align 8, !tbaa !107
  %i.bh = zext nneg i32 %i.an to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 2 uses
  %.not356.i.i = icmp eq ptr %i.bj, null
  br i1 %.not356.i.i, label %.thread7.i.i, label %commit_names_at.exit

.thread7.i.i:                                     ; preds = %.thread.i.i, %bb.s
  %i.bk = phi i64 [ %i.be, %bb.s ], [ %i.bh, %.thread.i.i ]
  %i.bl = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #15 ; 2 uses
  %i.bm = load ptr, ptr @commit_names.3, align 8, !tbaa !111
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !116
  br label %commit_names_at.exit

commit_names_at.exit:                             ; preds = %bb.s, %.thread.i.i, %.thread7.i.i
  %i.bo = phi ptr [ %i.bl, %.thread7.i.i ], [ %i.bg, %bb.s ], [ %i.bj, %.thread.i.i ]
  %i.bp = zext nneg i32 %i.ao to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  store ptr %.0143237, ptr %i.bq, align 8, !tbaa !120
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %commit_names_at.exit
  %i.br = call ptr @hashmap_iter_next(ptr noundef nonnull %6) #15 ; 2 uses
  %.not158 = icmp eq ptr %i.br, null
  br i1 %.not158, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.t, %bb.p
  store i1 true, ptr @have_util, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.o
  %i.bs = load i64, ptr %0, align 8
  %i.bt = and i64 %i.bs, -2305843004918726657
  %i.bu = or disjoint i64 %i.bt, 4294967296
  store i64 %i.bu, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 15 uses
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !123, !range !127, !noundef !128
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @prio_queue_replace(ptr noundef nonnull %4, ptr noundef nonnull %0) #15
  br label %lazy_queue_put.exit

bb.w:                                             ; preds = %bb.u
  call void @prio_queue_put(ptr noundef nonnull %4, ptr noundef nonnull %0) #15
  br label %lazy_queue_put.exit

lazy_queue_put.exit:                              ; preds = %bb.v, %bb.w
  store i8 0, ptr %i.bv, align 8, !tbaa !123
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %.val181246 = load i64, ptr %i.by, align 8, !tbaa !129
  %i.bz = icmp eq i64 %.val181246, 0
  br i1 %i.bz, label %.thread354, label %.lr.ph253

.lr.ph253:                                        ; preds = %lazy_queue_put.exit, %bb.bf
  %.val182252 = phi i8 [ %.val182, %bb.bf ], [ 0, %lazy_queue_put.exit ]
  %.0118251 = phi i32 [ %.1119345, %bb.bf ], [ 0, %lazy_queue_put.exit ] ; 10 uses
  %.0121250 = phi i32 [ %.2123343, %bb.bf ], [ 0, %lazy_queue_put.exit ] ; 3 uses
  %.0132249 = phi i64 [ %i.cf, %bb.bf ], [ 0, %lazy_queue_put.exit ] ; 3 uses
  %.0135248 = phi i32 [ %.1136341, %bb.bf ], [ 0, %lazy_queue_put.exit ] ; 8 uses
  %i.ca = trunc nuw i8 %.val182252 to i1
  br i1 %i.ca, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph253
  %i.cb = call ptr @prio_queue_get(ptr noundef nonnull %4) #15 ; 0 uses
  br label %lazy_queue_get.exit

bb.y:                                             ; preds = %.lr.ph253
  store i8 1, ptr %i.bv, align 8, !tbaa !123
  br label %lazy_queue_get.exit

lazy_queue_get.exit:                              ; preds = %bb.x, %bb.y
  %i.cc = call ptr @prio_queue_peek(ptr noundef nonnull %4) #15 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !130
  %i.cf = add i64 %.0132249, 1                    ; 2 uses
  %i.cg = load i32, ptr @max_candidates, align 4, !tbaa !12 ; 2 uses
  %i.ch = icmp eq i32 %.0118251, %i.cg
  br i1 %i.ch, label %.thread216, label %bb.z

bb.z:                                             ; preds = %lazy_queue_get.exit
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @names, i64 40), align 8
  %i.cj = and i8 %i.ci, 1
  %.not.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i, label %bb.aa, label %hashmap_get_size.exit

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.66, i32 noundef 308, ptr noundef nonnull @.str.67) #16
  unreachable

hashmap_get_size.exit:                            ; preds = %bb.z
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @names, i64 24), align 8, !tbaa !50
  %i.cl = icmp eq i32 %.0118251, %i.ck
  br i1 %i.cl, label %.thread216, label %bb.ab

bb.ab:                                            ; preds = %hashmap_get_size.exit
  %i.cm = getelementptr i8, ptr %i.cc, i64 72
  %.val183 = load i32, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.cn = udiv i32 %.val183, 65532                ; 2 uses
  %i.co = urem i32 %.val183, 65532
  %i.cp = load i32, ptr @commit_names.2, align 8, !tbaa !107
  %.not.i.i184 = icmp ugt i32 %i.cp, %i.cn
  br i1 %.not.i.i184, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %.pre.i.i185 = load ptr, ptr @commit_names.3, align 8, !tbaa !111
  %i.cq = zext nneg i32 %i.cn to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i185, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !116 ; 2 uses
  %.not35.i.i186 = icmp eq ptr %i.cs, null
  br i1 %.not35.i.i186, label %.thread, label %commit_names_peek.exit

commit_names_peek.exit:                           ; preds = %bb.ac
  %.b369 = load i1, ptr @commit_names.1, align 4
  %i.ct = zext nneg i32 %i.co to i64
  %i.cu = select i1 %.b369, i64 %i.ct, i64 0
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !120 ; 4 uses
  %.not161 = icmp eq ptr %i.cw, null
  br i1 %.not161, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %commit_names_peek.exit
  %i.cx = load i32, ptr @tags, align 4, !tbaa !12
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = load i32, ptr @all, align 4
  %i.da = icmp ne i32 %i.cz, 0
  %or.cond5 = select i1 %i.cy, i1 true, i1 %i.da
  br i1 %or.cond5, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = and i8 %i.dc, 2
  %.not162.not = icmp eq i8 %i.dd, 0
  br i1 %.not162.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.de = add i32 %.0135248, 1
  br label %.thread

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.df = icmp ult i32 %.0118251, %i.cg
  br i1 %i.df, label %.thread.thread, label %.thread

.thread.thread:                                   ; preds = %bb.ag
  %i.dg = add nuw i32 %.0118251, 1                ; 2 uses
  %i.dh = zext i32 %.0118251 to i64
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.dh ; 4 uses
  store ptr %i.cw, ptr %i.di, align 8, !tbaa !131
  %i.dj = trunc i64 %.0132249 to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !133
  %i.dl = shl nuw i32 2, %.0118251                ; 2 uses
end_hunk_0
