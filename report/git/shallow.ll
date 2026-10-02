Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/shallow?download=true
inline.NumInlined: 66
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@assign_shallow_commits_to_refs:bb.a
._crit_edge223:                                   ; preds = %bb.i, %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.ax = tail call ptr @get_main_ref_store(ptr noundef %i.aw) #14
  %i.ay = tail call i32 @refs_head_ref(ptr noundef %i.ax, ptr noundef nonnull @mark_uninteresting, ptr noundef null) #14 ; 0 uses
  %i.az = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.ba = tail call ptr @get_main_ref_store(ptr noundef %i.az) #14
  %i.bb = tail call i32 @refs_for_each_ref(ptr noundef %i.ba, ptr noundef nonnull @mark_uninteresting, ptr noundef null) #14 ; 0 uses
  %.not252 = icmp eq i64 %.1.lcssa, 0             ; 2 uses
  br i1 %.not252, label %.preheader, label %.lr.ph226

.preheader:                                       ; preds = %.lr.ph226, %._crit_edge223
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !78
  %.not253 = icmp eq i64 %i.bc, 0
  br i1 %.not253, label %._crit_edge235, label %.lr.ph234

.lr.ph234:                                        ; preds = %.preheader
  %i.bd = add i32 %i.av, 31                       ; 3 uses
  %i.be = lshr i32 %i.bd, 5                       ; 3 uses
  %i.bf = shl nuw nsw i32 %i.be, 2
  %i.bg = zext nneg i32 %i.bf to i64              ; 5 uses
  %i.bh = lshr i32 %i.bd, 3
  %i.bi = and i32 %i.bh, 536870908                ; 4 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 5 uses
  %i.bk = icmp samesign ugt i32 %i.bi, 524288     ; 2 uses
  %.not87.i = icmp eq i32 %i.be, 0
  %wide.trip.count.i = zext nneg i32 %i.be to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bd, 256
  %n.vec = and i64 %wide.trip.count.i, 134217720  ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.j

.lr.ph226:                                        ; preds = %._crit_edge223, %.lr.ph226
  %i.bl = phi i64 [ %i.bu, %.lr.ph226 ], [ 0, %._crit_edge223 ]
  %.3224 = phi i32 [ %i.bt, %.lr.ph226 ], [ 0, %._crit_edge223 ]
  %i.bm = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !100
  %i.bp = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %i.bo
  %i.bq = tail call ptr @lookup_commit(ptr noundef %i.bm, ptr noundef %i.bp) #14 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = or i64 %i.br, 4398046511104
  store i64 %i.bs, ptr %i.bq, align 8
  %i.bt = add i32 %.3224, 1                       ; 2 uses
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = icmp ugt i64 %.1.lcssa, %i.bu
  br i1 %i.bv, label %.lr.ph226, label %.preheader, !llvm.loop !144

bb.j:                                             ; preds = %.lr.ph234, %paint_down.exit
  %i.bw = phi i64 [ 0, %.lr.ph234 ], [ %i.gn, %paint_down.exit ]
  %.4233 = phi i32 [ 0, %.lr.ph234 ], [ %i.gm, %paint_down.exit ] ; 3 uses
  %.sroa.82.0232 = phi i32 [ 0, %.lr.ph234 ], [ %.sroa.82.7, %paint_down.exit ] ; 5 uses
  %.sroa.78.0231 = phi ptr [ null, %.lr.ph234 ], [ %.sroa.78.7, %paint_down.exit ] ; 3 uses
  %.sroa.70.0230 = phi ptr [ null, %.lr.ph234 ], [ %.sroa.70.5, %paint_down.exit ] ; 3 uses
  %.sroa.62141.0229 = phi ptr [ null, %.lr.ph234 ], [ %.sroa.62141.7, %paint_down.exit ] ; 3 uses
  %.sroa.37128.0228 = phi ptr [ null, %.lr.ph234 ], [ %.sroa.37128.6, %paint_down.exit ] ; 3 uses
  %.sroa.21.0227 = phi i32 [ 0, %.lr.ph234 ], [ %.sroa.21.6, %paint_down.exit ] ; 3 uses
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.by = getelementptr inbounds nuw [36 x i8], ptr %i.bx, i64 %i.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !60
  %i.bz = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.ca = call ptr @lookup_commit_reference_gently(ptr noundef %i.bz, ptr noundef %i.by, i32 noundef 1) #14 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ca, null
  br i1 %.not.i74, label %paint_down.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = call ptr @xmalloc(i64 noundef %i.bg) #14 ; 12 uses
  %.not.i.i = icmp eq i32 %.sroa.82.0232, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.70.0230, i64 %i.bj
  %i.cd = icmp ult ptr %.sroa.78.0231, %i.cc
  %or.cond = select i1 %.not.i.i, i1 true, i1 %i.cd
  br i1 %or.cond, label %bb.l, label %paint_alloc.exit.i

bb.l:                                             ; preds = %bb.k
  br i1 %i.bk, label %bb.m, label %st_mult.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.20, i32 noundef %i.bi) #13
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.l
  %i.ce = add i32 %.sroa.82.0232, 1               ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = call ptr @xrealloc(ptr noundef %.sroa.62141.0229, i64 noundef %i.cg) #14 ; 2 uses
  %i.ci = call ptr @xmalloc(i64 noundef 524288) #14 ; 3 uses
  %i.cj = zext i32 %.sroa.82.0232 to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 524288
  br label %paint_alloc.exit.i

paint_alloc.exit.i:                               ; preds = %bb.k, %st_mult.exit.i.i
  %.sroa.62141.1 = phi ptr [ %i.ch, %st_mult.exit.i.i ], [ %.sroa.62141.0229, %bb.k ] ; 2 uses
  %.sroa.78.1 = phi ptr [ %i.cl, %st_mult.exit.i.i ], [ %.sroa.78.0231, %bb.k ] ; 2 uses
  %.sroa.82.1 = phi i32 [ %i.ce, %st_mult.exit.i.i ], [ %.sroa.82.0232, %bb.k ] ; 2 uses
  %i.cm = phi ptr [ %i.ci, %st_mult.exit.i.i ], [ %.sroa.70.0230, %bb.k ] ; 11 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.bj  ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.cm, i8 0, i64 %i.bg, i1 false)
  %i.co = and i32 %.4233, 31
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = lshr i32 %.4233, 5
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !50
  %i.cu = or i32 %i.ct, %i.cp
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !50
  %i.cv = call ptr @commit_list_insert(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not5780.i = icmp eq ptr %i.cw, null
  br i1 %.not5780.i, label %._crit_edge82.i, label %.lr.ph81.i.preheader

.lr.ph81.i.preheader:                             ; preds = %paint_alloc.exit.i
  %scevgep348 = getelementptr i8, ptr %i.cb, i64 %i.bj
  %bound0 = icmp ult ptr %i.cb, %i.cn
  %bound1 = icmp ult ptr %i.cm, %scevgep348
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %.lr.ph81.i.preheader, %.loopexit.i
  %.sroa.21.3 = phi i32 [ %.sroa.21.4, %.loopexit.i ], [ %.sroa.21.0227, %.lr.ph81.i.preheader ] ; 4 uses
  %.sroa.37128.3 = phi ptr [ %.sroa.37128.4, %.loopexit.i ], [ %.sroa.37128.0228, %.lr.ph81.i.preheader ] ; 2 uses
  %.sroa.62141.2 = phi ptr [ %.sroa.62141.3, %.loopexit.i ], [ %.sroa.62141.1, %.lr.ph81.i.preheader ] ; 5 uses
  %.sroa.70.1 = phi ptr [ %.sroa.70.2, %.loopexit.i ], [ %i.cn, %.lr.ph81.i.preheader ] ; 5 uses
  %.sroa.78.2 = phi ptr [ %.sroa.78.3, %.loopexit.i ], [ %.sroa.78.1, %.lr.ph81.i.preheader ] ; 5 uses
  %.sroa.82.2 = phi i32 [ %.sroa.82.3, %.loopexit.i ], [ %.sroa.82.1, %.lr.ph81.i.preheader ] ; 7 uses
  %i.cx = call ptr @pop_commit(ptr noundef nonnull %i.a) #14 ; 7 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 72
  %.val.i = load i32, ptr %i.cy, align 8, !tbaa !61 ; 2 uses
  %i.cz = udiv i32 %.val.i, 65532                 ; 4 uses
  %i.da = urem i32 %.val.i, 65532
  %.not.i.i.i = icmp ugt i32 %.sroa.21.3, %i.cz
  br i1 %.not.i.i.i, label %._crit_edge4.i.i.i, label %st_mult.exit.i.i.i

st_mult.exit.i.i.i:                               ; preds = %.lr.ph81.i
  %i.db = add nuw nsw i32 %i.cz, 1                ; 2 uses
  %i.dc = shl nuw nsw i32 %i.db, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = call ptr @xrealloc(ptr noundef %.sroa.37128.3, i64 noundef %i.dd) #14 ; 2 uses
  %i.df = zext nneg i32 %.sroa.21.3 to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  %scevgep = getelementptr i8, ptr %i.de, i64 %i.dg
  %i.dh = sub nuw nsw i32 %i.cz, %.sroa.21.3
  %i.di = shl nuw nsw i32 %i.dh, 3
  %narrow = add nuw nsw i32 %i.di, 8
  %i.dj = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.dj, i1 false), !tbaa !63
  br label %._crit_edge4.i.i.i

._crit_edge4.i.i.i:                               ; preds = %st_mult.exit.i.i.i, %.lr.ph81.i
  %.sroa.21.4 = phi i32 [ %.sroa.21.3, %.lr.ph81.i ], [ %i.db, %st_mult.exit.i.i.i ] ; 2 uses
  %.sroa.37128.4 = phi ptr [ %.sroa.37128.3, %.lr.ph81.i ], [ %i.de, %st_mult.exit.i.i.i ] ; 3 uses
  %i.dk = zext nneg i32 %i.cz to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.37128.4, i64 %i.dk ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !63 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not34.i.i.i, label %bb.n, label %ref_bitmap_at.exit.i

bb.n:                                             ; preds = %._crit_edge4.i.i.i
  %i.dn = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #14 ; 2 uses
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !63
  br label %ref_bitmap_at.exit.i

ref_bitmap_at.exit.i:                             ; preds = %bb.n, %._crit_edge4.i.i.i
  %i.do = phi ptr [ %i.dm, %._crit_edge4.i.i.i ], [ %i.dn, %bb.n ]
  %i.dp = zext nneg i32 %i.da to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp ; 4 uses
  %i.dr = load i64, ptr %i.cx, align 8            ; 2 uses
  %i.ds = and i64 %i.dr, 12884901888
  %.not59.i = icmp eq i64 %i.ds, 0
  br i1 %.not59.i, label %bb.o, label %.loopexit.i, !llvm.loop !145

bb.o:                                             ; preds = %ref_bitmap_at.exit.i
  %i.dt = or disjoint i64 %i.dr, 4294967296
  store i64 %i.dt, ptr %i.cx, align 8
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !65 ; 2 uses
  %.not60.i = icmp eq ptr %i.du, null
  br i1 %.not60.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.cm, ptr %i.dq, align 8, !tbaa !65
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cb, ptr nonnull align 4 %i.du, i64 %i.bg, i1 false)
  br i1 %.not87.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.q
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i.preheader354, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load = load <4 x i32>, ptr %i.dv, align 4, !tbaa !50, !alias.scope !164
  %wide.load349 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !50, !alias.scope !164
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %wide.load350 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !50, !alias.scope !165, !noalias !164
  %wide.load351 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !50, !alias.scope !165, !noalias !164
  %i.dz = or <4 x i32> %wide.load350, %wide.load
  %i.ea = or <4 x i32> %wide.load351, %wide.load349
  store <4 x i32> %i.dz, ptr %i.dx, align 4, !tbaa !50, !alias.scope !165, !noalias !164
  store <4 x i32> %i.ea, ptr %i.dy, align 4, !tbaa !50, !alias.scope !165, !noalias !164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader354

.lr.ph.i.preheader354:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader354, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader354 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader354 ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i.prol
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !50
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i.prol ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !50
  %i.eg = or i32 %i.ef, %i.ed
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !50
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !150

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader354
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader354 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.eh = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !50
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !50
  %i.en = or i32 %i.em, %i.ek
  store i32 %i.en, ptr %i.el, align 4, !tbaa !50
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !50
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next.i ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !50
  %i.es = or i32 %i.er, %i.ep
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !50
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.1
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !50
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !50
  %i.ex = or i32 %i.ew, %i.eu
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !50
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.2
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !50
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !50
  %i.fc = or i32 %i.fb, %i.ez
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !50
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !151

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.q
  %i.fd = load ptr, ptr %i.dq, align 8, !tbaa !65
  %bcmp.i = call i32 @bcmp(ptr %i.cb, ptr %i.fd, i64 %i.bg)
  %.not61.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not61.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %.not.i66.i = icmp eq i32 %.sroa.82.2, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.70.1, i64 %i.bj
  %i.ff = icmp ult ptr %.sroa.78.2, %i.fe
  %or.cond189 = select i1 %.not.i66.i, i1 true, i1 %i.ff
  br i1 %or.cond189, label %bb.s, label %paint_alloc.exit70.i

bb.s:                                             ; preds = %bb.r
  br i1 %i.bk, label %bb.t, label %st_mult.exit.i68.i

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.20, i32 noundef %i.bi) #13
  unreachable

st_mult.exit.i68.i:                               ; preds = %bb.s
  %i.fg = add i32 %.sroa.82.2, 1                  ; 2 uses
  %i.fh = zext i32 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = call ptr @xrealloc(ptr noundef %.sroa.62141.2, i64 noundef %i.fi) #14 ; 2 uses
  %i.fk = call ptr @xmalloc(i64 noundef 524288) #14 ; 3 uses
  %i.fl = zext i32 %.sroa.82.2 to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fl
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !87
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 524288
  br label %paint_alloc.exit70.i

paint_alloc.exit70.i:                             ; preds = %bb.r, %st_mult.exit.i68.i
  %.sroa.62141.5 = phi ptr [ %i.fj, %st_mult.exit.i68.i ], [ %.sroa.62141.2, %bb.r ]
  %.sroa.78.5 = phi ptr [ %i.fn, %st_mult.exit.i68.i ], [ %.sroa.78.2, %bb.r ]
  %.sroa.82.5 = phi i32 [ %i.fg, %st_mult.exit.i68.i ], [ %.sroa.82.2, %bb.r ]
  %i.fo = phi ptr [ %i.fk, %st_mult.exit.i68.i ], [ %.sroa.70.1, %bb.r ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.bj
  store ptr %i.fo, ptr %i.dq, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fo, ptr align 4 %i.cb, i64 %i.bg, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %paint_alloc.exit70.i, %._crit_edge.i, %bb.p
  %.sroa.62141.6 = phi ptr [ %.sroa.62141.2, %bb.p ], [ %.sroa.62141.2, %._crit_edge.i ], [ %.sroa.62141.5, %paint_alloc.exit70.i ] ; 3 uses
  %.sroa.70.4 = phi ptr [ %.sroa.70.1, %bb.p ], [ %.sroa.70.1, %._crit_edge.i ], [ %i.fp, %paint_alloc.exit70.i ] ; 3 uses
  %.sroa.78.6 = phi ptr [ %.sroa.78.2, %bb.p ], [ %.sroa.78.2, %._crit_edge.i ], [ %.sroa.78.5, %paint_alloc.exit70.i ] ; 3 uses
  %.sroa.82.6 = phi i32 [ %.sroa.82.2, %bb.p ], [ %.sroa.82.2, %._crit_edge.i ], [ %.sroa.82.5, %paint_alloc.exit70.i ] ; 3 uses
  %i.fq = load i64, ptr %i.cx, align 8
  %i.fr = and i64 %i.fq, 4398046511104
  %.not62.i = icmp eq i64 %i.fr, 0
  br i1 %.not62.i, label %bb.v, label %.loopexit.i, !llvm.loop !145

bb.v:                                             ; preds = %bb.u
  %i.fs = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.ft = call i32 @repo_parse_commit_gently(ptr noundef %i.fs, ptr noundef nonnull %i.cx, i32 noundef 0) #14
  %.not63.i = icmp eq i32 %i.ft, 0
  br i1 %.not63.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.fv = call ptr @oid_to_hex(ptr noundef nonnull %i.fu) #14
  call void (ptr, ...) @die(ptr noundef nonnull @.str.6, ptr noundef %i.fv) #13
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %.075.i = load ptr, ptr %i.fw, align 8, !tbaa !60 ; 2 uses
  %.not6476.i = icmp eq ptr %.075.i, null
  br i1 %.not6476.i, label %.loopexit.i, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.x, %bb.z
  %.077.i = phi ptr [ %.0.i, %bb.z ], [ %.075.i, %bb.x ] ; 2 uses
  %i.fx = load ptr, ptr %.077.i, align 8, !tbaa !68 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = and i64 %i.fy, 4294967296
  %.not65.i = icmp eq i64 %i.fz, 0
  br i1 %.not65.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph79.i
  %i.ga = call ptr @commit_list_insert(ptr noundef nonnull %i.fx, ptr noundef nonnull %i.a) #14 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph79.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.077.i, i64 8
  %.0.i = load ptr, ptr %i.gb, align 8, !tbaa !60 ; 2 uses
  %.not64.i = icmp eq ptr %.0.i, null
  br i1 %.not64.i, label %.loopexit.i, label %.lr.ph79.i, !llvm.loop !152

.loopexit.i:                                      ; preds = %bb.z, %bb.x, %bb.u, %ref_bitmap_at.exit.i
  %.sroa.62141.3 = phi ptr [ %.sroa.62141.6, %bb.x ], [ %.sroa.62141.2, %ref_bitmap_at.exit.i ], [ %.sroa.62141.6, %bb.u ], [ %.sroa.62141.6, %bb.z ] ; 2 uses
  %.sroa.70.2 = phi ptr [ %.sroa.70.4, %bb.x ], [ %.sroa.70.1, %ref_bitmap_at.exit.i ], [ %.sroa.70.4, %bb.u ], [ %.sroa.70.4, %bb.z ] ; 2 uses
  %.sroa.78.3 = phi ptr [ %.sroa.78.6, %bb.x ], [ %.sroa.78.2, %ref_bitmap_at.exit.i ], [ %.sroa.78.6, %bb.u ], [ %.sroa.78.6, %bb.z ] ; 2 uses
  %.sroa.82.3 = phi i32 [ %.sroa.82.6, %bb.x ], [ %.sroa.82.2, %ref_bitmap_at.exit.i ], [ %.sroa.82.6, %bb.u ], [ %.sroa.82.6, %bb.z ] ; 2 uses
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not57.i = icmp eq ptr %i.gc, null
  br i1 %.not57.i, label %._crit_edge82.i, label %.lr.ph81.i

._crit_edge82.i:                                  ; preds = %.loopexit.i, %paint_alloc.exit.i
  %.sroa.21.5 = phi i32 [ %.sroa.21.0227, %paint_alloc.exit.i ], [ %.sroa.21.4, %.loopexit.i ]
  %.sroa.37128.5 = phi ptr [ %.sroa.37128.0228, %paint_alloc.exit.i ], [ %.sroa.37128.4, %.loopexit.i ]
  %.sroa.62141.4 = phi ptr [ %.sroa.62141.1, %paint_alloc.exit.i ], [ %.sroa.62141.3, %.loopexit.i ]
  %.sroa.70.3 = phi ptr [ %i.cn, %paint_alloc.exit.i ], [ %.sroa.70.2, %.loopexit.i ]
  %.sroa.78.4 = phi ptr [ %.sroa.78.1, %paint_alloc.exit.i ], [ %.sroa.78.3, %.loopexit.i ]
  %.sroa.82.4 = phi i32 [ %.sroa.82.1, %paint_alloc.exit.i ], [ %.sroa.82.3, %.loopexit.i ]
  %i.gd = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.ge = call i32 @get_max_object_index(ptr noundef %i.gd) #14 ; 2 uses
  %.not88.i = icmp eq i32 %i.ge, 0
  br i1 %.not88.i, label %._crit_edge86.i, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %._crit_edge82.i, %bb.ac
  %.183.i = phi i32 [ %i.gl, %bb.ac ], [ 0, %._crit_edge82.i ] ; 2 uses
  %i.gf = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.gg = call ptr @get_indexed_object(ptr noundef %i.gf, i32 noundef %.183.i) #14 ; 3 uses
  %.not58.i = icmp eq ptr %i.gg, null
  br i1 %.not58.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph85.i
  %i.gh = load i64, ptr %i.gg, align 4            ; 2 uses
  %i.gi = and i64 %i.gh, 14
  %i.gj = icmp eq i64 %i.gi, 2
  br i1 %i.gj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gk = and i64 %i.gh, -4294967309
  store i64 %i.gk, ptr %i.gg, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph85.i
  %i.gl = add nuw i32 %.183.i, 1                  ; 2 uses
  %exitcond93.not.i = icmp eq i32 %i.gl, %i.ge
  br i1 %exitcond93.not.i, label %._crit_edge86.i, label %.lr.ph85.i, !llvm.loop !153

._crit_edge86.i:                                  ; preds = %bb.ac, %._crit_edge82.i
  call void @free(ptr noundef %i.cb) #14
  br label %paint_down.exit

end_hunk_0
begin_hunk_1_@assign_shallow_commits_to_refs:bb.a
  br label %.lr.ph.i91.i

.lr.ph.i91.i:                                     ; preds = %bb.bg, %.lr.ph.i91.i.preheader.new
  %.010.i92.i = phi i64 [ 0, %.lr.ph.i91.i.preheader.new ], [ %i.oa, %bb.bg ] ; 6 uses
  %niter369 = phi i64 [ 0, %.lr.ph.i91.i.preheader.new ], [ %niter369.next.1, %bb.bg ]
  %i.nf = lshr i64 %.010.i92.i, 5
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !50
  %i.ni = trunc i64 %.010.i92.i to i32
  %i.nj = and i32 %i.ni, 30
  %i.nk = shl nuw nsw i32 1, %i.nj
  %i.nl = and i32 %i.nk, %i.nh
  %.not9.i93.i = icmp eq i32 %i.nl, 0
  br i1 %.not9.i93.i, label %.lr.ph.i91.i.1, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i91.i
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.010.i92.i ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !50
  %i.no = add nsw i32 %i.nn, 1
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !50
  br label %.lr.ph.i91.i.1

.lr.ph.i91.i.1:                                   ; preds = %bb.be, %.lr.ph.i91.i
  %i.np = or disjoint i64 %.010.i92.i, 1          ; 2 uses
  %i.nq = lshr i64 %.010.i92.i, 5
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !50
  %i.nt = trunc i64 %i.np to i32
  %i.nu = and i32 %i.nt, 31
  %i.nv = shl nuw i32 1, %i.nu
  %i.nw = and i32 %i.nv, %i.ns
  %.not9.i93.i.1 = icmp eq i32 %i.nw, 0
  br i1 %.not9.i93.i.1, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i91.i.1
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.np ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !50
  %i.nz = add nsw i32 %i.ny, 1
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !50
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph.i91.i.1
  %i.oa = add nuw i64 %.010.i92.i, 2              ; 2 uses
  %niter369.next.1 = add nuw i64 %niter369, 2     ; 2 uses
  %niter369.ncmp.1 = icmp eq i64 %niter369.next.1, %unroll_iter368
  br i1 %niter369.ncmp.1, label %.loopexit.i95.loopexit.unr-lcssa, label %.lr.ph.i91.i, !llvm.loop !157

.loopexit.i95.loopexit.unr-lcssa:                 ; preds = %bb.bg
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.loopexit.i95, label %.lr.ph.i91.i.epil.preheader

.lr.ph.i91.i.epil.preheader:                      ; preds = %.loopexit.i95.loopexit.unr-lcssa, %.lr.ph.i91.i.preheader
  %.010.i92.i.epil.init = phi i64 [ 0, %.lr.ph.i91.i.preheader ], [ %i.oa, %.loopexit.i95.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod367 = trunc i64 %i.nb to i1
  call void @llvm.assume(i1 %lcmp.mod367)
  %i.ob = lshr i64 %.010.i92.i.epil.init, 5
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !50
  %i.oe = trunc i64 %.010.i92.i.epil.init to i32
  %i.of = and i32 %i.oe, 31
  %i.og = shl nuw i32 1, %i.of
  %i.oh = and i32 %i.og, %i.od
  %.not9.i93.i.epil = icmp eq i32 %i.oh, 0
  br i1 %.not9.i93.i.epil, label %.loopexit.i95, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i91.i.epil.preheader
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.010.i92.i.epil.init ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !50
  %i.ok = add nsw i32 %i.oj, 1
  store i32 %i.ok, ptr %i.oi, align 4, !tbaa !50
  br label %.loopexit.i95

.loopexit.i95:                                    ; preds = %.loopexit.i95.loopexit.unr-lcssa, %bb.bh, %.lr.ph.i91.i.epil.preheader, %bb.bd
  %i.ol = add i64 %.2111.i, 1
  br label %.loopexit99.i

.thread.i:                                        ; preds = %bb.bc, %.lr.ph110.i
  %i.om = add nuw nsw i64 %.1109.i, 1             ; 2 uses
  %exitcond124.not.i = icmp eq i64 %i.om, %i.ij
  br i1 %exitcond124.not.i, label %.loopexit99.i, label %.lr.ph110.i, !llvm.loop !159

.loopexit99.i:                                    ; preds = %.thread.i, %.loopexit.i95, %ref_bitmap_at.exit88.i
  %.6.i = phi i64 [ %i.ol, %.loopexit.i95 ], [ %.2111.i, %ref_bitmap_at.exit88.i ], [ %.2111.i, %.thread.i ] ; 2 uses
  %i.on = add nuw i64 %.162112.i, 1               ; 2 uses
  %i.oo = load i64, ptr %i.h, align 8, !tbaa !99
  %i.op = icmp ult i64 %i.on, %i.oo
  br i1 %i.op, label %bb.ax, label %post_assign_shallow.exit, !llvm.loop !160

post_assign_shallow.exit:                         ; preds = %.loopexit99.i, %._crit_edge.i93
  %.sroa.21.13 = phi i32 [ %.sroa.21.10, %._crit_edge.i93 ], [ %.sroa.21.12, %.loopexit99.i ]
  %.sroa.37128.13 = phi ptr [ %.sroa.37128.10, %._crit_edge.i93 ], [ %.sroa.37128.12, %.loopexit99.i ]
  %.2.lcssa.i = phi i64 [ 0, %._crit_edge.i93 ], [ %.6.i, %.loopexit99.i ]
  store i64 %.2.lcssa.i, ptr %i.h, align 8, !tbaa !99
  call void @commit_stack_clear(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %.loopexit

.loopexit:                                        ; preds = %st_mult.exit77, %post_assign_shallow.exit
  %.sroa.21.2 = phi i32 [ %.sroa.21.13, %post_assign_shallow.exit ], [ %.sroa.21.0.lcssa, %st_mult.exit77 ] ; 2 uses
  %.sroa.37128.2 = phi ptr [ %.sroa.37128.13, %post_assign_shallow.exit ], [ %.sroa.37128.0.lcssa, %st_mult.exit77 ] ; 2 uses
  %.not.i100 = icmp eq i32 %.sroa.21.2, 0
  br i1 %.not.i100, label %clear_ref_bitmap.exit, label %.lr.ph.i101.preheader

.lr.ph.i101.preheader:                            ; preds = %bb.ah, %.loopexit
  %.sroa.37128.2328 = phi ptr [ %.sroa.37128.2, %.loopexit ], [ %.sroa.37128.7, %bb.ah ] ; 2 uses
  %.sroa.21.2327 = phi i32 [ %.sroa.21.2, %.loopexit ], [ %.sroa.21.7, %bb.ah ]
  %i.oq = zext nneg i32 %.sroa.21.2327 to i64
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %.lr.ph.i101
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i103, %.lr.ph.i101 ], [ 0, %.lr.ph.i101.preheader ] ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %.sroa.37128.2328, i64 %indvars.iv.i102
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !63
  call void @free(ptr noundef %i.os) #14
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next.i103, %i.oq
  br i1 %exitcond277.not, label %clear_ref_bitmap.exit, label %.lr.ph.i101, !llvm.loop !161

clear_ref_bitmap.exit:                            ; preds = %.lr.ph.i101, %.loopexit
  %.sroa.37128.2329 = phi ptr [ %.sroa.37128.2, %.loopexit ], [ %.sroa.37128.2328, %.lr.ph.i101 ]
  call void @free(ptr noundef %.sroa.37128.2329) #14
  %.not255 = icmp eq i32 %.sroa.82.0.lcssa, 0
  br i1 %.not255, label %._crit_edge248, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %clear_ref_bitmap.exit
  %wide.trip.count = zext i32 %.sroa.82.0.lcssa to i64
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %indvars.iv = phi i64 [ 0, %.lr.ph247.preheader ], [ %indvars.iv.next, %.lr.ph247 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %.sroa.62141.0.lcssa, i64 %indvars.iv
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !87
  call void @free(ptr noundef %i.ou) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond280.not, label %._crit_edge248, label %.lr.ph247, !llvm.loop !162

._crit_edge248:                                   ; preds = %.lr.ph247, %clear_ref_bitmap.exit
  call void @free(ptr noundef %.sroa.62141.0.lcssa) #14
  call void @free(ptr noundef %i.n) #14
  ret void
}

declare i32 @get_max_object_index(ptr noundef) local_unnamed_addr #4

declare ptr @get_indexed_object(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @refs_head_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @get_main_ref_store(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @mark_uninteresting(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = tail call ptr @lookup_commit_reference_gently(ptr noundef %i.a, ptr noundef %i.c, i32 noundef 1) #14 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8
  %i.f = or i64 %i.e, 8589934592
  store i64 %i.f, ptr %i.d, align 8
  tail call void @mark_parents_uninteresting(ptr noundef null, ptr noundef nonnull %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

declare i32 @refs_for_each_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @xmemdupz(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @delayed_reachability_test(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = sext i32 %1 to i64                       ; 5 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre18 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !103
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.g = load ptr, ptr %0, align 8, !tbaa !95
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = getelementptr inbounds [36 x i8], ptr %i.h, i64 %i.c
  %i.j = tail call ptr @lookup_commit(ptr noundef %i.f, ptr noundef %i.i) #14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !171  ; 2 uses
  %.not17 = icmp eq i64 %i.m, 0
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.o = tail call ptr @get_main_ref_store(ptr noundef %i.n) #14
  %i.p = tail call i32 @refs_head_ref(ptr noundef %i.o, ptr noundef nonnull @add_ref, ptr noundef nonnull %i.k) #14 ; 0 uses
  %i.q = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.r = tail call ptr @get_main_ref_store(ptr noundef %i.q) #14
  %i.s = tail call i32 @refs_for_each_ref(ptr noundef %i.r, ptr noundef nonnull @add_ref, ptr noundef nonnull %i.k) #14 ; 0 uses
  %.pre = load i64, ptr %i.l, align 8, !tbaa !171
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi i64 [ %.pre, %bb.c ], [ %i.m, %bb.b ]
  %i.u = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.v = trunc i64 %i.t to i32
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.x = tail call i32 @repo_in_merge_bases_many(ptr noundef %i.u, ptr noundef %i.j, i32 noundef %i.v, ptr noundef %i.w, i32 noundef 1) #14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.c
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !50
  %i.ab = icmp slt i32 %i.x, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @common_exit(ptr noundef nonnull @.str, i32 noundef 894, i32 noundef 128) #14
  tail call void @exit(i32 noundef %i.ac) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.c
  store i32 0, ptr %i.ae, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.af = phi ptr [ %.pre18, %._crit_edge ], [ %i.z, %bb.f ]
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.c
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  ret i32 %i.ah
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_ref(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = tail call ptr @lookup_commit_reference_gently(ptr noundef %i.a, ptr noundef %i.c, i32 noundef 1) #14 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @commit_stack_push(ptr noundef %1, ptr noundef nonnull %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @repo_in_merge_bases_many(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare i32 @common_exit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @parsed_object_pool_reset_commit_grafts(ptr noundef) local_unnamed_addr #4

declare ptr @deref_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @object_array_pop(ptr noundef) local_unnamed_addr #4

declare void @parse_commit_or_die(ptr noundef) local_unnamed_addr #4

declare void @add_object_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @object_array_clear(ptr noundef) local_unnamed_addr #4

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @traverse_commit_list_filtered(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @repo_parse_commit_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @write_one_shallow(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @oid_to_hex(ptr noundef %0) #14 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !50
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = and i32 %i.e, 4
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = tail call i32 @odb_has_object(ptr noundef %i.i, ptr noundef nonnull %0, i32 noundef 3) #14
  %.not26 = icmp eq i32 %i.j, 0
  br i1 %.not26, label %.critedge, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.k = and i32 %i.e, 1
  %.not22 = icmp eq i32 %i.k, 0
  br i1 %.not22, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.m = tail call ptr @lookup_commit(ptr noundef %i.l, ptr noundef nonnull %0) #14 ; 3 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967296
  %.not24 = icmp eq i64 %i.o, 0
  br i1 %.not24, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load i32, ptr %i.d, align 8, !tbaa !75
  %i.q = and i32 %i.p, 2
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = tail call ptr @oid_to_hex(ptr noundef nonnull %i.r) #14
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.s) ; 0 uses
  br label %.critedge

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !74
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !73
  %.not27 = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @packet_buf_write(ptr noundef %i.z, ptr noundef nonnull @.str.15, ptr noundef %i.a) #14
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15
  tail call void @strbuf_add(ptr noundef %i.z, ptr noundef nonnull %i.a, i64 noundef %i.aa) #14
  %i.ab = load ptr, ptr %1, align 8, !tbaa !72    ; 6 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !82 ; 2 uses
  %.neg.i = add i64 %i.ae, 1                      ; 2 uses
  %.not.i = icmp eq i64 %i.ac, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.k
  tail call void @strbuf_grow(ptr noundef nonnull %i.ab, i64 noundef 1) #14
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !82 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.af = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.ae, %strbuf_avail.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i64 %.pre-phi.i, ptr %i.ai, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 10, ptr %i.aj, align 1, !tbaa !57
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.am, align 1, !tbaa !57
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.j, %strbuf_addch.exit, %bb.c, %bb.a
  ret i32 0
}

declare void @strbuf_add_oid_hex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @packet_buf_write(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @xmks_tempfile_m(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @hold_lock_file_for_update_timeout_mode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @stat_validity_check(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @packet_write_fmt(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @lookup_commit_reference_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @mark_parents_uninteresting(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @pop_commit(ptr noundef) local_unnamed_addr #4

declare void @commit_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTS15object_database", !12, i64 0}
!15 = !{!"p1 _ZTS18parsed_object_pool", !12, i64 0}
!16 = !{!"p1 _ZTS9ref_store", !12, i64 0}
!17 = !{!"_Bool", !8, i64 0}
!18 = !{!"any p2 pointer", !12, i64 0}
!19 = !{!"p2 _ZTS13hashmap_entry", !18, i64 0}
!20 = !{!"hashmap", !19, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!21 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!22 = !{!"strmap", !20, i64 0, !21, i64 48, !9, i64 56}
!23 = !{!"repo_path_cache", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!24 = !{!"p1 _ZTS18fsmonitor_settings", !12, i64 0}
!25 = !{!"long", !8, i64 0}
!26 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !24, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !25, i64 96, !25, i64 104, !25, i64 112, !25, i64 120, !9, i64 128, !13, i64 136}
!27 = !{!"p1 _ZTS10config_set", !12, i64 0}
!28 = !{!"p1 _ZTS15submodule_cache", !12, i64 0}
!29 = !{!"p1 _ZTS11index_state", !12, i64 0}
!30 = !{!"p1 _ZTS12remote_state", !12, i64 0}
!31 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!32 = !{!"repo_config_values", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!33 = !{!"p1 _ZTS6strmap", !12, i64 0}
!34 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!35 = !{!"string_list", !34, i64 0, !25, i64 8, !25, i64 16, !9, i64 24, !12, i64 32}
!36 = !{!"p1 _ZTS22promisor_remote_config", !12, i64 0}
!37 = !{!"repository", !13, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !17, i64 40, !22, i64 48, !22, i64 112, !23, i64 176, !13, i64 232, !13, i64 240, !13, i64 248, !17, i64 256, !17, i64 257, !13, i64 264, !26, i64 272, !27, i64 416, !28, i64 424, !29, i64 432, !30, i64 440, !31, i64 448, !31, i64 456, !32, i64 464, !9, i64 512, !13, i64 520, !9, i64 528, !9, i64 532, !33, i64 536, !9, i64 544, !22, i64 552, !35, i64 616, !13, i64 656, !36, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !17, i64 689, !17, i64 690}
!38 = !{!37, !15, i64 24}
!39 = !{!"p1 _ZTS10repository", !12, i64 0}
!40 = !{!"p2 _ZTS6object", !18, i64 0}
!41 = !{!"p1 _ZTS11alloc_state", !12, i64 0}
!42 = !{!"p2 _ZTS12commit_graft", !18, i64 0}
!43 = !{!"p1 _ZTS13stat_validity", !12, i64 0}
!44 = !{!"p1 _ZTS11buffer_slab", !12, i64 0}
!45 = !{!"parsed_object_pool", !39, i64 0, !40, i64 8, !9, i64 16, !9, i64 20, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !42, i64 64, !9, i64 72, !9, i64 76, !9, i64 80, !43, i64 88, !13, i64 96, !9, i64 104, !9, i64 108, !44, i64 112}
!46 = !{!45, !9, i64 80}
!47 = !{!45, !13, i64 96}
!48 = !{!"object_id", !8, i64 0, !9, i64 32}
!49 = !{!48, !9, i64 32}
!50 = !{!9, !9, i64 0}
!51 = !{!"object", !9, i64 0, !9, i64 0, !9, i64 4, !48, i64 8}
!52 = !{!"p1 _ZTS11commit_list", !12, i64 0}
!53 = !{!"p1 _ZTS4tree", !12, i64 0}
!54 = !{!"commit", !51, i64 0, !25, i64 48, !52, i64 56, !53, i64 64, !9, i64 72}
!55 = !{!54, !52, i64 56}
!56 = !{!39, !39, i64 0}
!57 = !{!8, !8, i64 0}
!58 = !{!45, !43, i64 88}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!52, !52, i64 0}
!61 = !{!54, !9, i64 72}
!62 = !{!"p2 int", !18, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"p1 int", !12, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"p1 _ZTS6commit", !12, i64 0}
!67 = !{!"commit_list", !66, i64 0, !52, i64 8}
!68 = !{!67, !66, i64 0}
!69 = !{!67, !52, i64 8}
!70 = !{!"p1 _ZTS6strbuf", !12, i64 0}
!71 = !{!"write_shallow_data", !70, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!72 = !{!71, !70, i64 0}
!73 = !{!71, !9, i64 8}
!74 = !{!71, !9, i64 12}
!75 = !{!71, !9, i64 16}
!76 = !{!"p1 _ZTS9object_id", !12, i64 0}
!77 = !{!"oid_array", !76, i64 0, !25, i64 8, !25, i64 16, !9, i64 24}
!78 = !{!77, !25, i64 8}
!79 = !{!77, !76, i64 0}
!80 = !{!"strbuf", !25, i64 0, !25, i64 8, !13, i64 16}
!81 = !{!80, !25, i64 0}
!82 = !{!80, !25, i64 8}
!83 = !{!80, !13, i64 16}
!84 = !{!"p1 _ZTS8tempfile", !12, i64 0}
!85 = !{!"lock_file", !84, i64 0, !84, i64 8}
!86 = !{!85, !84, i64 0}
!87 = !{!13, !13, i64 0}
!88 = !{!"trace_key", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 12}
!89 = !{!88, !9, i64 8}
!90 = !{!"p1 _ZTS9oid_array", !12, i64 0}
!91 = !{!"p1 long", !12, i64 0}
!92 = !{!"p2 _ZTS6commit", !18, i64 0}
!93 = !{!"commit_stack", !92, i64 0, !25, i64 8, !25, i64 16}
!94 = !{!"shallow_info", !90, i64 0, !91, i64 8, !25, i64 16, !91, i64 24, !25, i64 32, !90, i64 40, !62, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !93, i64 80}
!95 = !{!94, !90, i64 0}
!96 = !{!94, !91, i64 8}
!97 = !{!94, !91, i64 24}
!98 = !{!37, !14, i64 16}
!99 = !{!94, !25, i64 16}
!100 = !{!25, !25, i64 0}
!101 = !{!94, !25, i64 32}
!102 = !{!94, !64, i64 56}
!103 = !{!94, !64, i64 64}
!104 = !{!"reference", !13, i64 0, !13, i64 8, !76, i64 16, !76, i64 24, !9, i64 32}
!105 = !{!104, !76, i64 16}
!106 = !{!45, !42, i64 64}
!107 = !{!"p1 _ZTS12commit_graft", !12, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!45, !9, i64 76}
!110 = distinct !{!110, !59}
!111 = distinct !{!111, !59}
!112 = distinct !{!112, !59, !125}
!113 = distinct !{!113, !59}
!114 = distinct !{!114, !59}
!115 = distinct !{!115, !59}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = !{!"p1 _ZTS18object_array_entry", !12, i64 0}
!119 = !{!"object_array", !9, i64 0, !9, i64 4, !118, i64 8}
!120 = !{!119, !9, i64 0}
!121 = !{!119, !118, i64 8}
!122 = !{!"p1 _ZTS6object", !12, i64 0}
!123 = !{!"object_array_entry", !122, i64 0, !13, i64 8, !13, i64 16, !9, i64 24}
!124 = !{!123, !122, i64 0}
!125 = !{!"llvm.loop.peeled.count", i32 1}
!126 = distinct !{!126, !59}
!127 = distinct !{!127, !59}
!128 = distinct !{!128, !59}
!129 = distinct !{!129, !59}
!130 = distinct !{!130, !59}
!131 = !{!"p1 _ZTS18volatile_list_head", !12, i64 0}
!132 = !{!"volatile_list_head", !131, i64 0, !131, i64 8}
!133 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!134 = !{!"tempfile", !132, i64 0, !9, i64 16, !133, i64 24, !9, i64 32, !80, i64 40, !13, i64 64}
!135 = !{!134, !9, i64 16}
!136 = distinct !{!136, !59}
!137 = distinct !{!137, !59}
!138 = !{!94, !62, i64 48}
!139 = !{!94, !64, i64 72}
!140 = distinct !{!140, !59}
!141 = distinct !{!141, !59}
!142 = distinct !{!142, !59}
!143 = distinct !{!143, !59}
!144 = distinct !{!144, !59}
!145 = distinct !{!145, !59}
!146 = distinct !{!146, i1 false, !"LVerDomain"}
!147 = distinct !{!147, !146}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !59, !166, !167}
!150 = distinct !{!150, !168}
!151 = distinct !{!151, !59, !166}
!152 = distinct !{!152, !59}
!153 = distinct !{!153, !59}
!154 = distinct !{!154, !59}
!155 = distinct !{!155, !59}
!156 = distinct !{!156, !59}
!157 = distinct !{!157, !59}
!158 = distinct !{!158, !59}
!159 = distinct !{!159, !59}
!160 = distinct !{!160, !59}
!161 = distinct !{!161, !59}
!162 = distinct !{!162, !59}
!163 = !{!94, !90, i64 40}
!164 = !{!147}
!165 = !{!148}
!166 = !{!"llvm.loop.isvectorized", i32 1}
!167 = !{!"llvm.loop.unroll.runtime.disable"}
!168 = !{!"llvm.loop.unroll.disable"}
!169 = !{!93, !25, i64 8}
!170 = !{!93, !92, i64 0}
!171 = !{!94, !25, i64 88}
!172 = !{!94, !92, i64 80}
end_hunk_1
