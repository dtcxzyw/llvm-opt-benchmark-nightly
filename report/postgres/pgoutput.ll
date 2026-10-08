Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pgoutput?download=true
inline.NumInlined: 68
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@get_rel_sync_entry:bb.a
bb.g:                                             ; preds = %bb.f
  %i.at = call i32 @errcode(i32 noundef 325) #12  ; 0 uses
  %i.au = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, ptr noundef %i.ap) #12 ; 0 uses
  %i.av = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.33) #12 ; 0 uses
  %i.aw = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.34) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.6, i32 noundef 1819, ptr noundef nonnull @__func__.LoadPublications) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1.i = phi ptr [ %i.ar, %bb.e ], [ %.0121723.i, %bb.g ], [ %.0121723.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ax = load i32, ptr %i.aj, align 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %.lr.ph24.i, label %LoadPublications.exit

LoadPublications.exit:                            ; preds = %bb.h, %bb.d, %.lr.ph.i
  %.012.lcssa.i = phi ptr [ null, %bb.d ], [ null, %.lr.ph.i ], [ %.1.i, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.012.lcssa.i, ptr %i.ba, align 8
  store ptr %i.ag, ptr @CurrentMemoryContext, align 8
  store i1 true, ptr @publications_valid, align 1
  br label %bb.i

bb.i:                                             ; preds = %LoadPublications.exit, %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 0, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  store i32 110, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  call void @list_free(ptr noundef %i.be) #12
  store ptr null, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  call void @bms_free(ptr noundef %i.bg) #12
  store ptr null, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 25 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 26 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 27 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  store i32 0, ptr %i.bh, align 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void @ExecDropSingleTupleTableSlot(ptr noundef nonnull %i.bm) #12
  call void @FreeTupleDesc(ptr noundef %i.bo) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %.not156 = icmp eq ptr %i.bq, null
  br i1 %.not156, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void @ExecDropSingleTupleTableSlot(ptr noundef nonnull %i.bq) #12
  call void @FreeTupleDesc(ptr noundef %i.bs) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not157 = icmp eq ptr %i.bu, null
  br i1 %.not157, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free_attrmap(ptr noundef nonnull %i.bu) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 11 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not158 = icmp eq ptr %i.bw, null
  br i1 %.not158, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @MemoryContextDelete(ptr noundef nonnull %i.bw) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i8 0, i64 32, i1 false)
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %.not159 = icmp eq ptr %i.ca, null
  br i1 %.not159, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.not162 = icmp eq i8 %i.ac, 112
  %i.cd = load i32, ptr %i.cb, align 4
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph335, label %.critedge

.lr.ph335:                                        ; preds = %.lr.ph, %bb.ac
  %.0145218334 = phi i32 [ %.3148, %bb.ac ], [ %i.z, %.lr.ph ] ; 5 uses
  %.0141219333 = phi i32 [ %.3144, %bb.ac ], [ 0, %.lr.ph ] ; 6 uses
  %.0137220332 = phi ptr [ %.3140, %bb.ac ], [ null, %.lr.ph ] ; 5 uses
  %indvars.iv331 = phi i64 [ %indvars.iv.next, %bb.ac ], [ 0, %.lr.ph ] ; 2 uses
  %i.cf = load ptr, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv331
  %i.ch = load ptr, ptr %i.cg, align 8            ; 13 uses
  %i.ci = load i32, ptr %i.e, align 4             ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !range !4, !noundef !5
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.r, label %bb.t

.critedge:                                        ; preds = %bb.ac, %.lr.ph, %bb.q
  %.0145.lcssa = phi i32 [ %i.z, %bb.q ], [ %i.z, %.lr.ph ], [ %.3148, %bb.ac ]
  %.0137.lcssa = phi ptr [ null, %bb.q ], [ null, %.lr.ph ], [ %.3140, %bb.ac ] ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 12 uses
  store i32 %.0145.lcssa, ptr %i.cm, align 8
  %i.cn = load i8, ptr %i.bh, align 8, !range !4, !noundef !5
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.af, label %bb.ad

bb.r:                                             ; preds = %.lr.ph335
  br i1 %i.aa, label %list_length.exit, label %bb.s

list_length.exit:                                 ; preds = %bb.r
  %i.cp = call ptr @get_partition_ancestors(i32 noundef %i.ci) #12 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  %.val = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.val165 = load ptr, ptr %i.cr, align 8
  %i.cs = add i32 %.val, -1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %.val165, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 18
  %i.cx = load i8, ptr %i.cw, align 2, !range !4, !noundef !5
  %i.cy = trunc nuw i8 %i.cx to i1                ; 2 uses
  %spec.select199 = select i1 %i.cy, i32 %i.cv, i32 %i.ci
  %spec.select200 = select i1 %i.cy, i32 %.val, i32 0
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %list_length.exit
  %.sink = phi i32 [ %i.cv, %list_length.exit ], [ %i.ci, %bb.r ]
  %.1127 = phi i32 [ %spec.select199, %list_length.exit ], [ %i.ci, %bb.r ]
  %.1125 = phi i32 [ %spec.select200, %list_length.exit ], [ 0, %bb.r ]
  %i.cz = call ptr @GetRelationExcludedPublications(i32 noundef %.sink) #12 ; 2 uses
  %i.da = load i32, ptr %i.ch, align 8
  %i.db = call zeroext i1 @list_member_oid(ptr noundef %i.cz, i32 noundef %i.da) #12
  call void @list_free(ptr noundef %i.cz) #12
  br i1 %i.db, label %bb.ac, label %.thread

bb.t:                                             ; preds = %.lr.ph335
  br i1 %i.aa, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.dc = call ptr @get_partition_ancestors(i32 noundef %i.ci) #12
  %i.dd = load i32, ptr %i.ch, align 8
  %i.de = call i32 @GetTopMostAncestorInPublication(i32 noundef %i.dd, ptr noundef %i.dc, ptr noundef nonnull %i.f) #12 ; 2 uses
  %.not161 = icmp ne i32 %i.de, 0                 ; 2 uses
  br i1 %.not161, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 18
  %i.dg = load i8, ptr %i.df, align 2, !range !4, !noundef !5
  %i.dh = trunc nuw i8 %i.dg to i1                ; 2 uses
  %i.di = load i32, ptr %i.f, align 4
  %spec.select163 = select i1 %i.dh, i32 %i.de, i32 %i.ci
  %spec.select164 = select i1 %i.dh, i32 %i.di, i32 0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3129 = phi i32 [ %i.ci, %bb.u ], [ %spec.select163, %bb.v ]
  %.3 = phi i32 [ 0, %bb.u ], [ %spec.select164, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.4130 = phi i32 [ %.3129, %bb.w ], [ %i.ci, %bb.t ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.w ], [ 0, %bb.t ]      ; 2 uses
  %.1 = phi i1 [ %.not161, %bb.w ], [ false, %bb.t ]
  %i.dj = load i32, ptr %i.ch, align 8
  %i.dk = call zeroext i1 @list_member_oid(ptr noundef %i.x, i32 noundef %i.dj) #12
  br i1 %i.dk, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = load i32, ptr %i.ch, align 8
  %i.dm = call zeroext i1 @list_member_oid(ptr noundef %i.y, i32 noundef %i.dl) #12
  %or.cond = or i1 %.1, %i.dm
  br i1 %or.cond, label %.thread, label %bb.ac

.thread:                                          ; preds = %bb.x, %bb.y, %bb.s
  %.5131.ph = phi i32 [ %.1127, %bb.s ], [ %.4130, %bb.y ], [ %.4130, %bb.x ]
  %.5.ph = phi i32 [ %.1125, %bb.s ], [ %.4, %bb.y ], [ %.4, %bb.x ] ; 3 uses
  br i1 %.not162, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ch, i64 18
  %i.do = load i8, ptr %i.dn, align 2, !range !4, !noundef !5
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z, %.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.dr = load i8, ptr %i.dq, align 8, !range !4, !noundef !5
  %i.ds = load i8, ptr %i.bh, align 8, !range !4, !noundef !5
  %i.dt = or i8 %i.ds, %i.dr
  store i8 %i.dt, ptr %i.bh, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ch, i64 25
  %i.dv = load i8, ptr %i.du, align 1, !range !4, !noundef !5
  %i.dw = load i8, ptr %i.bi, align 1, !range !4, !noundef !5
  %i.dx = or i8 %i.dw, %i.dv
  store i8 %i.dx, ptr %i.bi, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ch, i64 26
  %i.dz = load i8, ptr %i.dy, align 2, !range !4, !noundef !5
  %i.ea = load i8, ptr %i.bj, align 2, !range !4, !noundef !5
  %i.eb = or i8 %i.ea, %i.dz
  store i8 %i.eb, ptr %i.bj, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ch, i64 27
  %i.ed = load i8, ptr %i.ec, align 1, !range !4, !noundef !5
  %i.ee = load i8, ptr %i.bk, align 1, !range !4, !noundef !5
  %i.ef = or i8 %i.ee, %i.ed
  store i8 %i.ef, ptr %i.bk, align 1
  %i.eg = icmp sgt i32 %.0141219333, %.5.ph
  br i1 %i.eg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = icmp slt i32 %.0141219333, %.5.ph       ; 2 uses
  %.1146 = select i1 %i.eh, i32 %.5131.ph, i32 %.0145218334
  %.1138 = select i1 %i.eh, ptr null, ptr %.0137220332
  %i.ei = call ptr @lappend(ptr noundef %.1138, ptr noundef nonnull %i.ch) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.ab, %bb.aa, %bb.s
  %.3148 = phi i32 [ %.0145218334, %bb.s ], [ %.0145218334, %bb.aa ], [ %.1146, %bb.ab ], [ %.0145218334, %bb.z ], [ %.0145218334, %bb.y ] ; 2 uses
  %.3144 = phi i32 [ %.0141219333, %bb.s ], [ %.0141219333, %bb.aa ], [ %.5.ph, %bb.ab ], [ %.0141219333, %bb.z ], [ %.0141219333, %bb.y ]
  %.3140 = phi ptr [ %.0137220332, %bb.s ], [ %.0137220332, %bb.aa ], [ %i.ei, %bb.ab ], [ %.0137220332, %bb.z ], [ %.0137220332, %bb.y ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %i.ej = load i32, ptr %i.cb, align 4
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next, %i.ek
  br i1 %i.el, label %.lr.ph335, label %.critedge

bb.ad:                                            ; preds = %.critedge
  %i.em = load i8, ptr %i.bi, align 1, !range !4, !noundef !5
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load i8, ptr %i.bj, align 2, !range !4, !noundef !5
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.af, label %bb.bu

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.critedge
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.er, ptr @CurrentMemoryContext, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call ptr @CreateTupleDescCopyConstr(ptr noundef %i.eu) #12
  %i.ew = load ptr, ptr %i.et, align 8
  %i.ex = call ptr @CreateTupleDescCopyConstr(ptr noundef %i.ew) #12
  %i.ey = call ptr @MakeSingleTupleTableSlot(ptr noundef %i.ev, ptr noundef nonnull @TTSOpsHeapTuple) #12
  store ptr %i.ey, ptr %i.bl, align 8
  %i.ez = call ptr @MakeSingleTupleTableSlot(ptr noundef %i.ex, ptr noundef nonnull @TTSOpsHeapTuple) #12
  store ptr %i.ez, ptr %i.bp, align 8
  store ptr %i.es, ptr @CurrentMemoryContext, align 8
  %i.fa = load i32, ptr %i.cm, align 8            ; 3 uses
  %i.fb = load i32, ptr %i.g, align 8
  %.not.i167 = icmp eq i32 %i.fa, %i.fb
  br i1 %.not.i167, label %init_tuple_slot.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = call ptr @RelationIdGetRelation(i32 noundef %i.fa) #12 ; 2 uses
  %i.fd = load ptr, ptr %i.et, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = load ptr, ptr %i.eq, align 8
  %i.fh = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.fg, ptr @CurrentMemoryContext, align 8
  %i.fi = call ptr @build_attrmap_by_name_if_req(ptr noundef %i.fd, ptr noundef %i.ff, i1 noundef zeroext false) #12
  store ptr %i.fi, ptr %i.bt, align 8
  store ptr %i.fh, ptr @CurrentMemoryContext, align 8
  call void @RelationClose(ptr noundef %i.fc) #12
  %.pre253 = load i32, ptr %i.cm, align 8
  br label %init_tuple_slot.exit

init_tuple_slot.exit:                             ; preds = %bb.af, %bb.ag
  %i.fj = phi i32 [ %i.fa, %bb.af ], [ %.pre253, %bb.ag ]
  %i.fk = call i32 @get_rel_namespace(i32 noundef %i.fj) #12
  %.not87.i = icmp eq ptr %.0137.lcssa, null      ; 3 uses
  br i1 %.not87.i, label %.thread177.i, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %init_tuple_slot.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %.0137.lcssa, i64 4 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0137.lcssa, i64 16
  %i.fn = zext i32 %i.fk to i64
  %i.fo = load i32, ptr %i.fl, align 4
  %.not200.i226 = icmp sgt i32 %i.fo, 0
  br i1 %.not200.i226, label %.lr.ph233, label %.thread177.i

.lr.ph233:                                        ; preds = %.lr.ph.i168, %bb.aw
  %i.fp = phi ptr [ %i.hn, %bb.aw ], [ null, %.lr.ph.i168 ] ; 4 uses
  %i.fq = phi i8 [ %i.ho, %bb.aw ], [ 0, %.lr.ph.i168 ] ; 3 uses
  %indvars.iv.i169231 = phi i64 [ %indvars.iv.next.i171, %bb.aw ], [ 0, %.lr.ph.i168 ] ; 2 uses
  %.sroa.10.0.i230 = phi i8 [ %.sroa.10.1.i, %bb.aw ], [ 0, %.lr.ph.i168 ] ; 3 uses
  %.sroa.6.0.i229 = phi i8 [ %.sroa.6.1.i, %bb.aw ], [ 0, %.lr.ph.i168 ] ; 3 uses
  %.sroa.14.0.i228 = phi ptr [ %.sroa.14.2.i, %bb.aw ], [ null, %.lr.ph.i168 ] ; 4 uses
  %.sroa.9.0.i227 = phi ptr [ %.sroa.9.2.i, %bb.aw ], [ null, %.lr.ph.i168 ] ; 4 uses
  %i.fr = load ptr, ptr %i.fm, align 8
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.i169231
  %i.ft = load ptr, ptr %i.fs, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i8 1, ptr %i.c, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i8, ptr %i.fu, align 8, !range !4, !noundef !5
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph233
  %i.fx = load i32, ptr %i.ft, align 8
  %i.fy = zext i32 %i.fx to i64
  %i.fz = call zeroext i1 @SearchSysCacheExists(i32 noundef 58, i64 noundef %i.fn, i64 noundef %i.fy, i64 noundef 0, i64 noundef 0) #12
  br i1 %i.fz, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ga = load i32, ptr %i.cm, align 8
  %i.gb = zext i32 %i.ga to i64
  %i.gc = load i32, ptr %i.ft, align 8
  %i.gd = zext i32 %i.gc to i64
  %i.ge = call ptr @SearchSysCache2(i32 noundef 61, i64 noundef %i.gb, i64 noundef %i.gd) #12 ; 3 uses
  %.not89.i = icmp eq ptr %i.ge, null
  br i1 %.not89.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gf = call i64 @SysCacheGetAttr(i32 noundef 61, ptr noundef nonnull %i.ge, i16 noundef signext 5, ptr noundef nonnull %i.c) #12
  %i.gg = inttoptr i64 %i.gf to ptr
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %.lr.ph233
  %.076.i = phi ptr [ null, %.lr.ph233 ], [ null, %bb.ah ], [ %i.ge, %bb.aj ], [ null, %bb.ai ] ; 3 uses
  %.075.i = phi ptr [ null, %.lr.ph233 ], [ null, %bb.ah ], [ %i.gg, %bb.aj ], [ null, %bb.ai ] ; 3 uses
  %i.gh = load i8, ptr %i.c, align 1, !range !4, !noundef !5
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not90.i = icmp eq ptr %.076.i, null
  br i1 %.not90.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @ReleaseSysCache(ptr noundef nonnull %.076.i) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.gk = load i8, ptr %i.gj, align 8, !range !4, !noundef !5
  %i.gl = or i8 %i.gk, %i.fq                      ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ft, i64 25
  %i.gn = load i8, ptr %i.gm, align 1, !range !4, !noundef !5
  %i.go = or i8 %i.gn, %.sroa.6.0.i229            ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ft, i64 26
  %i.gq = load i8, ptr %i.gp, align 2, !range !4, !noundef !5
  %i.gr = or i8 %i.gq, %.sroa.10.0.i230           ; 2 uses
  %i.gs = icmp ne i8 %i.gr, 0
  %i.gt = and i8 %i.go, %i.gl
  %or.cond.i = icmp ne i8 %i.gt, 0
  %or.cond5.i = and i1 %or.cond.i, %i.gs
  br i1 %or.cond5.i, label %bb.av, label %bb.aw

bb.ao:                                            ; preds = %bb.ak
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.gv = load i8, ptr %i.gu, align 8, !range !4, !noundef !5
  %i.gw = trunc nuw i8 %i.gv to i1
  %.not.i170 = xor i1 %i.gw, true
  %i.gx = trunc nuw i8 %i.fq to i1
  %or.cond8.i = select i1 %.not.i170, i1 true, i1 %i.gx
  br i1 %or.cond8.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = call ptr @text_to_cstring(ptr noundef %.075.i) #12
  %i.gz = call ptr @lappend(ptr noundef %i.fp, ptr noundef %i.gy) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ha = phi ptr [ %i.gz, %bb.ap ], [ %i.fp, %bb.ao ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ft, i64 25
  %i.hc = load i8, ptr %i.hb, align 1, !range !4, !noundef !5
  %i.hd = trunc nuw i8 %i.hc to i1
  %.not9.i = xor i1 %i.hd, true
  %i.he = trunc nuw i8 %.sroa.6.0.i229 to i1
  %or.cond12.i = select i1 %.not9.i, i1 true, i1 %i.he
  br i1 %or.cond12.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hf = call ptr @text_to_cstring(ptr noundef %.075.i) #12
  %i.hg = call ptr @lappend(ptr noundef %.sroa.9.0.i227, ptr noundef %i.hf) #12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.9.1.i = phi ptr [ %.sroa.9.0.i227, %bb.aq ], [ %i.hg, %bb.ar ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ft, i64 26
  %i.hi = load i8, ptr %i.hh, align 2, !range !4, !noundef !5
  %i.hj = trunc nuw i8 %i.hi to i1
  %.not13.i = xor i1 %i.hj, true
  %i.hk = trunc nuw i8 %.sroa.10.0.i230 to i1
  %or.cond16.i = select i1 %.not13.i, i1 true, i1 %i.hk
  br i1 %or.cond16.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hl = call ptr @text_to_cstring(ptr noundef %.075.i) #12
  %i.hm = call ptr @lappend(ptr noundef %.sroa.14.0.i228, ptr noundef %i.hl) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.14.1.i = phi ptr [ %.sroa.14.0.i228, %bb.as ], [ %i.hm, %bb.at ]
  call void @ReleaseSysCache(ptr noundef %.076.i) #12
  br label %bb.aw

bb.av:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.critedge.i

bb.aw:                                            ; preds = %bb.au, %bb.an
  %.sroa.9.2.i = phi ptr [ %.sroa.9.0.i227, %bb.an ], [ %.sroa.9.1.i, %bb.au ] ; 2 uses
  %.sroa.14.2.i = phi ptr [ %.sroa.14.0.i228, %bb.an ], [ %.sroa.14.1.i, %bb.au ] ; 2 uses
  %.sroa.6.1.i = phi i8 [ %i.go, %bb.an ], [ %.sroa.6.0.i229, %bb.au ] ; 2 uses
  %.sroa.10.1.i = phi i8 [ %i.gr, %bb.an ], [ %.sroa.10.0.i230, %bb.au ] ; 2 uses
  %i.hn = phi ptr [ %i.fp, %bb.an ], [ %i.ha, %bb.au ] ; 2 uses
  %i.ho = phi i8 [ %i.gl, %bb.an ], [ %i.fq, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i169231, 1 ; 2 uses
  %i.hp = load i32, ptr %i.fl, align 4
  %i.hq = sext i32 %i.hp to i64
  %.not200.i = icmp slt i64 %indvars.iv.next.i171, %i.hq
end_hunk_0
