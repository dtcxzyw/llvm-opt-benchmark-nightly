Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/revision?download=true
inline.NumInlined: 268
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@jw_object_intmax
declare void @jw_object_intmax(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @jw_end(ptr noundef) local_unnamed_addr #5

declare void @trace2_data_json_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @jw_release(ptr noundef) local_unnamed_addr #5

declare ptr @prio_queue_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @process_parents(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = and i64 %i.c, 549755813888
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 7 uses
  %i.f = load i64, ptr %i.e, align 4
  %i.g = and i64 %i.f, 8796093022208
  %.not74 = icmp eq i64 %i.g, 0
  br i1 %.not74, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = tail call i32 @oidset_contains(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #24
  %.not75 = icmp eq i32 %i.j, 0
  br i1 %.not75, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %.pre, %._crit_edge ], [ %i.c, %bb.b ]
  %i.l = or i64 %i.k, 549755813888                ; 2 uses
  store i64 %i.l, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !475  ; 2 uses
  %.not76 = icmp eq ptr %i.n, null
  br i1 %.not76, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !476
  %i.q = tail call i32 %i.n(ptr noundef nonnull %1, ptr noundef %i.p) #24
  %.not77 = icmp eq i32 %i.q, 0
  br i1 %.not77, label %.thread, label %._crit_edge137

._crit_edge137:                                   ; preds = %bb.e
  %.pre138 = load i64, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge137, %bb.d
  %i.r = phi i64 [ %.pre138, %._crit_edge137 ], [ %i.l, %bb.d ]
  %i.s = and i64 %i.r, 8589934592
  %.not78 = icmp eq i64 %i.s, 0
  br i1 %.not78, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not92120 = icmp eq ptr %i.b, null
  br i1 %.not92120, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not96 = icmp eq ptr %2, null
  br i1 %.not96, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us.backedge
  %.065121.us = phi ptr [ %i.w, %.lr.ph.split.us.backedge ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.u = load ptr, ptr %.065121.us, align 8, !tbaa !61 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.065121.us, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !196  ; 3 uses
  %.not93.us = icmp eq ptr %i.u, null
  br i1 %.not93.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.x = load i64, ptr %i.u, align 8
  %i.y = or i64 %i.x, 1152921513196781568
  store i64 %i.y, ptr %i.u, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.us
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.aa = tail call i32 @repo_parse_commit_gently(ptr noundef %i.z, ptr noundef %i.u, i32 noundef 1) #24
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %select.unfold.us, label %bb.i, !llvm.loop !469

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !234
  %.not94.us = icmp eq ptr %i.ad, null
  br i1 %.not94.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @mark_parents_uninteresting(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = load i64, ptr %i.u, align 8             ; 2 uses
  %i.af = and i64 %i.ae, 4294967296
  %.not95.us = icmp eq i64 %i.af, 0
  br i1 %.not95.us, label %bb.l, label %select.unfold.us, !llvm.loop !469

bb.l:                                             ; preds = %bb.k
  %i.ag = or i64 %i.ae, 144115192370823168
  store i64 %i.ag, ptr %i.u, align 8
  %i.ah = load i64, ptr %i.e, align 4
  %i.ai = and i64 %i.ah, 1099511627776
  %.not97.us = icmp ne i64 %i.ai, 0
  %.not92.us = icmp eq ptr %i.w, null
  %or.cond133 = select i1 %.not97.us, i1 true, i1 %.not92.us
  br i1 %or.cond133, label %.thread, label %.lr.ph.split.us.backedge

select.unfold.us:                                 ; preds = %bb.k, %bb.h
  %.not92.us.old = icmp eq ptr %i.w, null
  br i1 %.not92.us.old, label %.thread, label %.lr.ph.split.us.backedge

.lr.ph.split.us.backedge:                         ; preds = %select.unfold.us, %bb.l
  br label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %.065121 = phi ptr [ %i.al, %.lr.ph.split.backedge ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.aj = load ptr, ptr %.065121, align 8, !tbaa !61 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.065121, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !196 ; 3 uses
  %.not93 = icmp eq ptr %i.aj, null
  br i1 %.not93, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split
  %i.am = load i64, ptr %i.aj, align 8
  %i.an = or i64 %i.am, 1152921513196781568
  store i64 %i.an, ptr %i.aj, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.ap = tail call i32 @repo_parse_commit_gently(ptr noundef %i.ao, ptr noundef %i.aj, i32 noundef 1) #24
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %select.unfold, label %bb.o, !llvm.loop !469

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !234
  %.not94 = icmp eq ptr %i.as, null
  br i1 %.not94, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @mark_parents_uninteresting(ptr noundef nonnull %0, ptr noundef nonnull %i.aj)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.at = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.au = and i64 %i.at, 4294967296
  %.not95 = icmp eq i64 %i.au, 0
  br i1 %.not95, label %bb.r, label %select.unfold, !llvm.loop !469

bb.r:                                             ; preds = %bb.q
  %i.av = or i64 %i.at, 144115192370823168
  store i64 %i.av, ptr %i.aj, align 8
  tail call void @prio_queue_put(ptr noundef nonnull %2, ptr noundef nonnull %i.aj) #24
  %i.aw = load i64, ptr %i.e, align 4
  %i.ax = and i64 %i.aw, 1099511627776
  %.not97 = icmp ne i64 %i.ax, 0
  %.not92 = icmp eq ptr %i.al, null
  %or.cond134 = select i1 %.not97, i1 true, i1 %.not92
  br i1 %or.cond134, label %.thread, label %.lr.ph.split.backedge

select.unfold:                                    ; preds = %bb.q, %bb.n
  %.not92.old = icmp eq ptr %i.al, null
  br i1 %.not92.old, label %.thread, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %select.unfold, %bb.r
  br label %.lr.ph.split

bb.s:                                             ; preds = %bb.f
  tail call fastcc void @try_to_simplify_commit(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.ay = load i64, ptr %i.e, align 4             ; 2 uses
  %i.az = and i64 %i.ay, 16
  %.not79 = icmp eq i64 %i.az, 0
  br i1 %.not79, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %.166123 = load ptr, ptr %i.a, align 8, !tbaa !58 ; 2 uses
  %.not80124 = icmp eq ptr %.166123, null
  br i1 %.not80124, label %.thread, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.t
  %i.ba = load i64, ptr %1, align 8
  %i.bb = and i64 %i.ba, 576461851815051264
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3016 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.not89 = icmp eq ptr %2, null
  %invariant.op = or i64 %i.bb, 1152921504606846976
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph126, %select.unfold112
  %i.bg = phi i64 [ %i.ay, %.lr.ph126 ], [ %i.gg, %select.unfold112 ] ; 2 uses
  %.166125 = phi ptr [ %.166123, %.lr.ph126 ], [ %.166, %select.unfold112 ] ; 2 uses
  %i.bh = load ptr, ptr %.166125, align 8, !tbaa !61 ; 8 uses
  %i.bi = and i64 %i.bg, 17592186044418
  %or.cond = icmp eq i64 %i.bi, 0
  %i.bj = lshr i64 %i.bg, 43
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1
  %i.bm = select i1 %or.cond, i32 %i.bl, i32 1
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !104
  %i.bo = tail call i32 @repo_parse_commit_gently(ptr noundef %i.bn, ptr noundef %i.bh, i32 noundef %i.bm) #24
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bq = load i64, ptr %i.e, align 4             ; 2 uses
  %i.br = and i64 %i.bq, 17592186044416
  %.not83 = icmp eq i64 %i.br, 0
  br i1 %.not83, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !104
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = tail call i32 @is_promisor_object(ptr noundef %i.bs, ptr noundef nonnull %i.bt) #24
  %.not84 = icmp eq i32 %i.bu, 0
  %.pre139 = load i64, ptr %i.e, align 4          ; 3 uses
  br i1 %.not84, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = and i64 %.pre139, 549755813888
  %.not91 = icmp eq i64 %i.bv, 0
  br i1 %.not91, label %select.unfold112, label %.thread

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bw = phi i64 [ %.pre139, %bb.w ], [ %i.bq, %bb.v ]
  %i.bx = and i64 %i.bw, 8796093022208
  %.not85 = icmp eq i64 %i.bx, 0
  br i1 %.not85, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bz = tail call i32 @oidset_insert(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.by) #24 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  %i.ca = load ptr, ptr %i.be, align 8, !tbaa !225 ; 9 uses
  %.not86 = icmp eq ptr %i.ca, null
  br i1 %.not86, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !38 ; 2 uses
  %i.cd = load i32, ptr %i.ca, align 8, !tbaa !26 ; 2 uses
  %i.ce = udiv i32 %i.cc, %i.cd                   ; 7 uses
  %i.cf = urem i32 %i.cc, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !27
  %.not.i.i = icmp ugt i32 %i.ch, %i.ce
  br i1 %.not.i.i, label %._crit_edge40.i.i, label %bb.ac

._crit_edge40.i.i:                                ; preds = %bb.ab
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !28
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ci = add i32 %i.ce, 1                        ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !28
  %i.cm = shl nuw nsw i64 %i.cj, 3
  %i.cn = tail call ptr @xrealloc(ptr noundef %i.cl, i64 noundef %i.cm) #24 ; 4 uses
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !28
  %i.co = load i32, ptr %i.cg, align 8, !tbaa !27 ; 9 uses
  %.not3438.i.i = icmp ugt i32 %i.co, %i.ce
  br i1 %.not3438.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ac
  %i.cp = add i32 %i.co, 1
  %i.cq = add i32 %i.ce, 1
  %i.cr = tail call i32 @llvm.umax.i32(i32 %i.cp, i32 %i.cq)
  %i.cs = sub i32 %i.cr, %i.co                    ; 3 uses
  %min.iters.check158 = icmp ult i32 %i.cs, 18
  br i1 %min.iters.check158, label %.lr.ph.i.i.preheader168, label %vector.scevcheck155

vector.scevcheck155:                              ; preds = %.lr.ph.i.i.preheader
  %i.ct = add i32 %i.co, 1
  %i.cu = add i32 %i.ce, 1
  %umax156 = tail call i32 @llvm.umax.i32(i32 %i.ct, i32 %i.cu)
  %i.cv = add i32 %umax156, -1
  %i.cw = icmp ult i32 %i.cv, %i.co
  br i1 %i.cw, label %.lr.ph.i.i.preheader168, label %vector.ph159

vector.ph159:                                     ; preds = %vector.scevcheck155
  %n.vec160 = and i32 %i.cs, -4                   ; 3 uses
  %i.cx = add i32 %i.co, %n.vec160
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i32 [ 0, %vector.ph159 ], [ %index.next163, %vector.body161 ] ; 2 uses
  %i.cy = add i32 %i.co, %index162
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.da, align 8, !tbaa !30
  store <2 x ptr> splat (ptr null), ptr %i.db, align 8, !tbaa !30
  %index.next163 = add nuw i32 %index162, 4       ; 2 uses
  %i.dc = icmp eq i32 %index.next163, %n.vec160
  br i1 %i.dc, label %middle.block164, label %vector.body161, !llvm.loop !470

middle.block164:                                  ; preds = %vector.body161
  %cmp.n165 = icmp eq i32 %i.cs, %n.vec160
  br i1 %cmp.n165, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader168

.lr.ph.i.i.preheader168:                          ; preds = %vector.scevcheck155, %.lr.ph.i.i.preheader, %middle.block164
  %.03039.i.i.ph = phi i32 [ %i.co, %vector.scevcheck155 ], [ %i.co, %.lr.ph.i.i.preheader ], [ %i.cx, %middle.block164 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader168, %.lr.ph.i.i
  %.03039.i.i = phi i32 [ %i.df, %.lr.ph.i.i ], [ %.03039.i.i.ph, %.lr.ph.i.i.preheader168 ] ; 2 uses
  %i.dd = zext i32 %.03039.i.i to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dd
  store ptr null, ptr %i.de, align 8, !tbaa !30
  %i.df = add i32 %.03039.i.i, 1                  ; 2 uses
  %.not34.i.i = icmp ugt i32 %i.df, %i.ce
  br i1 %.not34.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !471

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block164, %bb.ac
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !27
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i, %._crit_edge40.i.i
  %i.dg = phi ptr [ %.pre.i.i, %._crit_edge40.i.i ], [ %i.cn, %._crit_edge.i.i ]
  %i.dh = zext i32 %i.ce to i64                   ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !30 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.dj, null
  br i1 %.not35.i.i, label %bb.ae, label %revision_sources_at.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.dl = load i32, ptr %i.ca, align 8, !tbaa !26
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !25
  %i.dp = zext i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = tail call ptr @xcalloc(i64 noundef %i.dm, i64 noundef %i.dq) #24 ; 2 uses
  %i.ds = load ptr, ptr %i.dk, align 8, !tbaa !28
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dh
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !30
  br label %revision_sources_at.exit

revision_sources_at.exit:                         ; preds = %bb.ad, %bb.ae
  %i.du = phi ptr [ %i.dr, %bb.ae ], [ %i.dj, %bb.ad ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !25
  %i.dx = mul i32 %i.dw, %i.cf
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dy ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !162
  %.not87 = icmp eq ptr %i.ea, null
  br i1 %.not87, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %revision_sources_at.exit
  %i.eb = load ptr, ptr %i.be, align 8, !tbaa !225 ; 8 uses
  %i.ec = load i32, ptr %i.bf, align 8, !tbaa !38 ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %i.ee = udiv i32 %i.ec, %i.ed                   ; 7 uses
  %i.ef = urem i32 %i.ec, %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !27
  %.not.i.i100 = icmp ugt i32 %i.eh, %i.ee
  br i1 %.not.i.i100, label %._crit_edge40.i.i107, label %bb.ag

._crit_edge40.i.i107:                             ; preds = %bb.af
  %.phi.trans.insert.i.i108 = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.pre.i.i109 = load ptr, ptr %.phi.trans.insert.i.i108, align 8, !tbaa !28
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ei = add i32 %i.ee, 1                        ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !28
  %i.em = shl nuw nsw i64 %i.ej, 3
  %i.en = tail call ptr @xrealloc(ptr noundef %i.el, i64 noundef %i.em) #24 ; 4 uses
  store ptr %i.en, ptr %i.ek, align 8, !tbaa !28
  %i.eo = load i32, ptr %i.eg, align 8, !tbaa !27 ; 9 uses
  %.not3438.i.i101 = icmp ugt i32 %i.eo, %i.ee
  br i1 %.not3438.i.i101, label %._crit_edge.i.i105, label %.lr.ph.i.i102.preheader

.lr.ph.i.i102.preheader:                          ; preds = %bb.ag
  %i.ep = add i32 %i.eo, 1
  %i.eq = add i32 %i.ee, 1
  %i.er = tail call i32 @llvm.umax.i32(i32 %i.ep, i32 %i.eq)
  %i.es = sub i32 %i.er, %i.eo                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.es, 18
  br i1 %min.iters.check, label %.lr.ph.i.i102.preheader167, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i102.preheader
  %i.et = add i32 %i.eo, 1
  %i.eu = add i32 %i.ee, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.et, i32 %i.eu)
  %i.ev = add i32 %umax, -1
  %i.ew = icmp ult i32 %i.ev, %i.eo
  br i1 %i.ew, label %.lr.ph.i.i102.preheader167, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.es, -4                      ; 3 uses
  %i.ex = add i32 %i.eo, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = add i32 %i.eo, %index
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.fa, align 8, !tbaa !30
  store <2 x ptr> splat (ptr null), ptr %i.fb, align 8, !tbaa !30
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.fc = icmp eq i32 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.es, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i105, label %.lr.ph.i.i102.preheader167

.lr.ph.i.i102.preheader167:                       ; preds = %vector.scevcheck, %.lr.ph.i.i102.preheader, %middle.block
  %.03039.i.i103.ph = phi i32 [ %i.eo, %vector.scevcheck ], [ %i.eo, %.lr.ph.i.i102.preheader ], [ %i.ex, %middle.block ]
  br label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph.i.i102.preheader167, %.lr.ph.i.i102
  %.03039.i.i103 = phi i32 [ %i.ff, %.lr.ph.i.i102 ], [ %.03039.i.i103.ph, %.lr.ph.i.i102.preheader167 ] ; 2 uses
  %i.fd = zext i32 %.03039.i.i103 to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fd
  store ptr null, ptr %i.fe, align 8, !tbaa !30
  %i.ff = add i32 %.03039.i.i103, 1               ; 2 uses
  %.not34.i.i104 = icmp ugt i32 %i.ff, %i.ee
  br i1 %.not34.i.i104, label %._crit_edge.i.i105, label %.lr.ph.i.i102, !llvm.loop !473

._crit_edge.i.i105:                               ; preds = %.lr.ph.i.i102, %middle.block, %bb.ag
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !27
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i105, %._crit_edge40.i.i107
  %i.fg = phi ptr [ %.pre.i.i109, %._crit_edge40.i.i107 ], [ %i.en, %._crit_edge.i.i105 ]
  %i.fh = zext i32 %i.ee to i64                   ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !30 ; 2 uses
  %.not35.i.i106 = icmp eq ptr %i.fj, null
  br i1 %.not35.i.i106, label %bb.ai, label %revision_sources_at.exit110

bb.ai:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.fl = load i32, ptr %i.eb, align 8, !tbaa !26
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !25
  %i.fp = zext i32 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = tail call ptr @xcalloc(i64 noundef %i.fm, i64 noundef %i.fq) #24 ; 2 uses
  %i.fs = load ptr, ptr %i.fk, align 8, !tbaa !28
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fh
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !30
  br label %revision_sources_at.exit110

revision_sources_at.exit110:                      ; preds = %bb.ah, %bb.ai
  %i.fu = phi ptr [ %i.fr, %bb.ai ], [ %i.fj, %bb.ah ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !25
  %i.fx = mul i32 %i.fw, %i.ef
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !162
  store ptr %i.ga, ptr %i.dz, align 8, !tbaa !162
  br label %bb.aj

bb.aj:                                            ; preds = %revision_sources_at.exit, %revision_sources_at.exit110, %bb.aa
  %i.gb = load i64, ptr %i.bh, align 8            ; 3 uses
  %.reass = or i64 %i.gb, %invariant.op           ; 2 uses
  store i64 %.reass, ptr %i.bh, align 8
  %i.gc = and i64 %i.gb, 4294967296
  %.not88 = icmp eq i64 %i.gc, 0
  br i1 %.not88, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %3 = and i64 %.reass, 2161727812547903488
  %4 = and i64 %i.gb, -2305843004918726657
  %5 = or disjoint i64 %4, %3
  %i.gd = or disjoint i64 %5, 144115192370823168
  store i64 %i.gd, ptr %i.bh, align 8
  br i1 %.not89, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @prio_queue_put(ptr noundef nonnull %2, ptr noundef nonnull %i.bh) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %i.ge = load i64, ptr %i.e, align 4             ; 2 uses
  %i.gf = and i64 %i.ge, 549755813888
  %.not90 = icmp eq i64 %i.gf, 0
  br i1 %.not90, label %select.unfold112, label %.thread

select.unfold112:                                 ; preds = %bb.am, %bb.x
  %i.gg = phi i64 [ %i.ge, %bb.am ], [ %.pre139, %bb.x ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.166125, i64 8
  %.166 = load ptr, ptr %i.gh, align 8, !tbaa !58 ; 2 uses
  %.not80 = icmp eq ptr %.166, null
  br i1 %.not80, label %.thread, label %bb.u, !llvm.loop !474

.thread:                                          ; preds = %select.unfold, %bb.r, %select.unfold.us, %bb.l, %bb.y, %select.unfold112, %bb.x, %bb.am, %.preheader, %bb.t, %bb.s, %bb.e, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %select.unfold.us ], [ 0, %bb.am ], [ 0, %.preheader ], [ 0, %bb.x ], [ 0, %select.unfold112 ], [ -1, %bb.y ], [ 0, %bb.l ], [ 0, %bb.r ], [ 0, %select.unfold ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_treesame(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !196
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.f = tail call ptr @lookup_decoration(ptr noundef nonnull %i.e, ptr noundef nonnull %1) #24 ; 2 uses
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.02741 = load ptr, ptr %i.a, align 8, !tbaa !58 ; 2 uses
  %.not3342 = icmp eq ptr %.02741, null
  br i1 %.not3342, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = tail call ptr @oid_to_hex(ptr noundef nonnull %i.h) #24
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.235, ptr noundef %i.i) #26
  unreachable

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.02747 = phi ptr [ %.02741, %.lr.ph ], [ %.027, %bb.e ] ; 2 uses
  %.046 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]
  %.02345 = phi i32 [ 0, %.lr.ph ], [ %.124, %bb.e ]
  %.02544 = phi i32 [ 0, %.lr.ph ], [ %.126, %bb.e ]
  %.02843 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %.02747, align 8, !tbaa !61
  %.val = load i64, ptr %i.j, align 8
  %i.k = and i64 %.val, 4406636445696
  %.not40 = icmp ne i64 %i.k, 8589934592          ; 3 uses
  %i.l = zext i32 %.02843 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !114
  %.not38 = icmp eq i8 %i.n, 0
  %i.o = zext i1 %.not38 to i32                   ; 2 uses
  %i.p = zext i1 %.not40 to i32
  %.126 = add i32 %.02544, %i.p                   ; 2 uses
  %i.q = select i1 %.not40, i32 %i.o, i32 0
  %.124 = or i32 %.02345, %i.q                    ; 2 uses
  %i.r = select i1 %.not40, i32 0, i32 %i.o
  %.1 = or i32 %.046, %i.r                        ; 2 uses
  %i.s = add i32 %.02843, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.02747, i64 8
  %.027 = load ptr, ptr %i.t, align 8, !tbaa !58  ; 2 uses
  %.not33 = icmp eq ptr %.027, null
  br i1 %.not33, label %._crit_edge, label %bb.e, !llvm.loop !477

._crit_edge:                                      ; preds = %bb.e
  %i.u = icmp eq i32 %.126, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.v = icmp eq i32 %.124, 0
  br i1 %i.v, label %.thread, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.w = icmp eq i32 %.1, 0
  br i1 %i.w, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = load i64, ptr %1, align 8
  %i.y = and i64 %i.x, -17179869185
  br label %bb.i

.thread:                                          ; preds = %.preheader, %bb.g, %bb.f
  %i.z = load i64, ptr %1, align 8
  %i.aa = or i64 %i.z, 17179869184
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %storemerge = phi i64 [ %i.aa, %.thread ], [ %i.y, %bb.h ]
  store i64 %storemerge, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  ret void
}

declare i32 @oidset_contains(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @try_to_simplify_commit(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 7 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = and i64 %i.b, 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.thread123, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !42
  %i.e = tail call ptr @repo_get_commit_tree(ptr noundef %i.d, ptr noundef %1) #24
  %.not84 = icmp eq ptr %i.e, null
  br i1 %.not84, label %.thread123, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !234  ; 3 uses
  %.not85 = icmp eq ptr %i.g, null
  br i1 %.not85, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc i32 @rev_same_tree_as_empty(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not86 = icmp eq i32 %i.h, 0
  br i1 %.not86, label %.thread123, label %.thread123.sink.split

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.a, align 4
  %i.j = and i64 %i.i, 4
  %.not87 = icmp eq i64 %i.j, 0
  br i1 %.not87, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !196
  %.not88 = icmp eq ptr %i.l, null
  br i1 %.not88, label %.thread123, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2792 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 7 uses
  %i.u = phi ptr [ %i.g, %.lr.ph ], [ %i.dj, %bb.ah ] ; 6 uses
  %.070158 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.ah ]
  %.071156 = phi i32 [ 0, %.lr.ph ], [ %.273.ph, %bb.ah ] ; 5 uses
  %.074154 = phi i32 [ 0, %.lr.ph ], [ %.276.ph, %bb.ah ] ; 5 uses
  %.078153 = phi ptr [ null, %.lr.ph ], [ %.179, %bb.ah ] ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61   ; 10 uses
  %.val108 = load i64, ptr %i.v, align 8
  %i.w = and i64 %.val108, 4406636445696
  %.not128 = icmp ne i64 %i.w, 8589934592
  %i.x = zext i1 %.not128 to i32
  %spec.select = add nuw nsw i32 %.070158, %i.x   ; 2 uses
  %i.y = icmp eq i64 %indvars.iv, 1
  br i1 %i.y, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.a, align 4              ; 2 uses
  %i.aa = and i64 %i.z, 549755813888
  %.not91 = icmp eq i64 %i.aa, 0
  br i1 %.not91, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !226
  %.not92 = icmp ne ptr %i.ab, null
  %i.ac = and i64 %i.z, 128
  %.not93 = icmp eq i64 %i.ac, 0
  %or.cond106 = and i1 %.not93, %.not92
  br i1 %or.cond106, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
end_hunk_0
