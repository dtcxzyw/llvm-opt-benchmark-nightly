Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mtop_util?download=true
inline.NumInlined: 1155
inline.NumDeleted: 535
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z21gmx_mtop_global_atomsRK10gmx_mtop_t:bb.a
  store i8 %i.al, ptr %i.i, align 8, !tbaa !212
  %i.am = load i8, ptr %i.j, align 2, !tbaa !213, !range !109, !noundef !110
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 74
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !213, !range !109, !noundef !110
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = phi i8 [ 0, %bb.f ], [ %i.ap, %bb.g ]
  store i8 %i.aq, ptr %i.j, align 2, !tbaa !213
  %i.ar = load i8, ptr %i.k, align 1, !tbaa !214, !range !109, !noundef !110
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 73
  %i.au = load i8, ptr %i.at, align 1, !tbaa !214, !range !109, !noundef !110
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = phi i8 [ 0, %bb.h ], [ %i.au, %bb.i ]
  store i8 %i.av, ptr %i.k, align 1, !tbaa !214
  %i.aw = load i8, ptr %i.l, align 1, !tbaa !215, !range !109, !noundef !110
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 75
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !215, !range !109, !noundef !110
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = phi i8 [ 0, %bb.j ], [ %i.az, %bb.k ]
  store i8 %i.ba, ptr %i.l, align 1, !tbaa !215
  %i.bb = load i8, ptr %i.m, align 4, !tbaa !216, !range !109, !noundef !110
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.l, %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !216, !range !109, !noundef !110
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %storemerge = phi i8 [ 0, %bb.l ], [ %i.be, %.sink.split ]
  store i8 %storemerge, ptr %i.m, align 4, !tbaa !216
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = mul nsw i32 %i.ad, %i.ab
  %i.bg = add nsw i32 %i.u, %i.bf
  %i.bh = sext i32 %i.bg to i64                   ; 5 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.bj = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 215, ptr noundef %i.bi, i64 noundef range(i64 -2147483648, 2147483648) %i.bh, i64 noundef 36)
  store ptr %i.bj, ptr %i.n, align 8, !tbaa !111
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.bl = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 216, ptr noundef %i.bk, i64 noundef range(i64 -2147483648, 2147483648) %i.bh, i64 noundef 8)
  store ptr %i.bl, ptr %i.o, align 8, !tbaa !112
  %i.bm = load i8, ptr %i.j, align 2, !tbaa !213, !range !109, !noundef !110
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.bp = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef %i.bo, i64 noundef range(i64 -2147483648, 2147483648) %i.bh, i64 noundef 8)
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !112
  %i.bq = load i8, ptr %i.l, align 1, !tbaa !215, !range !109, !noundef !110
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !112
  %i.bt = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 222, ptr noundef %i.bs, i64 noundef range(i64 -2147483648, 2147483648) %i.bh, i64 noundef 8)
  store ptr %i.bt, ptr %i.q, align 8, !tbaa !112
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bu = load i8, ptr %i.m, align 4, !tbaa !216, !range !109, !noundef !110
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %i.r, align 8, !tbaa !113
  %i.bx = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 227, ptr noundef %i.bw, i64 noundef range(i64 -2147483648, 2147483648) %i.bh, i64 noundef 52)
  store ptr %i.bx, ptr %i.r, align 8, !tbaa !113
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 6 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !217 ; 2 uses
  %.not133.i = icmp eq i32 %i.bz, 0
  br i1 %.not133.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load i32, ptr %i.s, align 8, !tbaa !217
  %i.cb = mul nsw i32 %i.bz, %i.ab
  %i.cc = add nsw i32 %i.ca, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !114
  %i.cf = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 233, ptr noundef %i.ce, i64 noundef range(i64 -2147483648, 2147483648) %i.cd, i64 noundef 32)
  store ptr %i.cf, ptr %i.t, align 8, !tbaa !114
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cg = icmp sgt i32 %i.ab, 0
  br i1 %i.cg, label %.lr.ph.i, label %._crit_edge149.split.thread.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.ch = load i32, ptr %i.s, align 8, !tbaa !217 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 3 uses
  %.pre.i = load i32, ptr %i.by, align 8, !tbaa !217 ; 2 uses
  %xtraiter = and i32 %i.ab, 1
  %i.cj = icmp eq i32 %i.ab, 1
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.ab, 2147483646
  br label %bb.v

.lr.ph143.i.unr-lcssa:                            ; preds = %bb.v
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph143.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph143.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.dp, %.lr.ph143.i.unr-lcssa ]
  %.0140.i.epil.init = phi i32 [ %i.ch, %.lr.ph.i ], [ %i.dq, %.lr.ph143.i.unr-lcssa ]
  %lcmp.mod67 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.ck = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.cl = sext i32 %.0140.i.epil.init to i64
  %i.cm = getelementptr inbounds [32 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !218
  %i.co = sext i32 %.epil.init to i64
  %i.cp = shl nsw i64 %i.co, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.cn, i64 %i.cp, i1 false)
  br label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %.lr.ph143.i.unr-lcssa, %.epil.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.cr = sext i32 %i.ad to i64                   ; 4 uses
  %i.cs = mul nsw i64 %i.cr, 36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cu = shl nsw i64 %i.cr, 3                    ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.cy = mul nsw i64 %i.cr, 52
  %i.cz = sext i32 %i.u to i64                    ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.new
  %i.da = phi i32 [ %.pre.i, %.lr.ph.i.new ], [ %i.dp, %bb.v ]
  %.0140.i = phi i32 [ %i.ch, %.lr.ph.i.new ], [ %i.dq, %bb.v ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.v ]
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.dc = sext i32 %.0140.i to i64
  %i.dd = getelementptr inbounds [32 x i8], ptr %i.db, i64 %i.dc
  %i.de = load ptr, ptr %i.ci, align 8, !tbaa !218
  %i.df = sext i32 %i.da to i64
  %i.dg = shl nsw i64 %i.df, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.de, i64 %i.dg, i1 false)
  %i.dh = load i32, ptr %i.by, align 8, !tbaa !217 ; 2 uses
  %i.di = add nsw i32 %i.dh, %.0140.i             ; 2 uses
  %i.dj = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds [32 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load ptr, ptr %i.ci, align 8, !tbaa !218
  %i.dn = sext i32 %i.dh to i64
  %i.do = shl nsw i64 %i.dn, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dm, i64 %i.do, i1 false)
  %i.dp = load i32, ptr %i.by, align 8, !tbaa !217 ; 3 uses
  %i.dq = add nsw i32 %i.dp, %i.di                ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph143.i.unr-lcssa, label %bb.v, !llvm.loop !197

.preheader137.i:                                  ; preds = %bb.ab
  %i.dr = icmp sgt i32 %i.ad, 0
  %.pre168.i = load i32, ptr %i.by, align 8, !tbaa !217 ; 8 uses
  %.pre16.pre = load i32, ptr %i.s, align 8, !tbaa !217 ; 4 uses
  br i1 %i.dr, label %.preheader136.lr.ph.split.i, label %._crit_edge149.split.i

._crit_edge149.split.thread.i:                    ; preds = %bb.u
  %.pre167.i = load i32, ptr %i.by, align 8, !tbaa !217
  %.pre15 = load i32, ptr %i.s, align 8, !tbaa !217
  br label %_ZL7atomcatP7t_atomsPKS_iiPi.exit

.preheader136.lr.ph.split.i:                      ; preds = %.preheader137.i
  %i.ds = load ptr, ptr %i.cq, align 8, !tbaa !86 ; 8 uses
  %i.dt = load ptr, ptr %i.n, align 8, !tbaa !86  ; 8 uses
  %wide.trip.count.i = zext nneg i32 %i.ad to i64 ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = mul nuw nsw i64 %wide.trip.count.i, 36  ; 2 uses
  %scevgep39 = getelementptr i8, ptr %scevgep, i64 %i.du
  %scevgep40 = getelementptr i8, ptr %i.ds, i64 24
  %min.iters.check42 = icmp ult i32 %i.ad, 8
  %2 = getelementptr i8, ptr %i.dt, i64 %i.du
  %invariant.gep = getelementptr i8, ptr %2, i64 -8
  %n.vec44 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %cmp.n62 = icmp eq i64 %n.vec44, %wide.trip.count.i
  %xtraiter68 = and i64 %wide.trip.count.i, 3     ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br label %.preheader136.i

bb.w:                                             ; preds = %bb.ab, %.lr.ph143.i
  %indvars.iv.i = phi i64 [ %i.cz, %.lr.ph143.i ], [ %indvars.iv.next.i, %bb.ab ] ; 6 uses
  %.1126141.i = phi i32 [ 0, %.lr.ph143.i ], [ %i.eq, %bb.ab ]
  %i.dv = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.dw = getelementptr inbounds [36 x i8], ptr %i.dv, i64 %indvars.iv.i
  %i.dx = load ptr, ptr %i.cq, align 8, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr align 1 %i.dx, i64 %i.cs, i1 false)
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !219
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %indvars.iv.i
  %i.ea = load ptr, ptr %i.ct, align 8, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr align 1 %i.ea, i64 %i.cu, i1 false)
  %i.eb = load i8, ptr %i.j, align 2, !tbaa !213, !range !109, !noundef !110
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ed = load ptr, ptr %i.p, align 8, !tbaa !220
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %indvars.iv.i
  %i.ef = load ptr, ptr %i.cv, align 8, !tbaa !220
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.ef, i64 %i.cu, i1 false)
  %i.eg = load i8, ptr %i.l, align 1, !tbaa !215, !range !109, !noundef !110
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !221
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %indvars.iv.i
  %i.ek = load ptr, ptr %i.cw, align 8, !tbaa !221
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ek, i64 %i.cu, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.el = load i8, ptr %i.m, align 4, !tbaa !216, !range !109, !noundef !110
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.en = load ptr, ptr %i.r, align 8, !tbaa !222
  %i.eo = getelementptr inbounds [52 x i8], ptr %i.en, i64 %indvars.iv.i
  %i.ep = load ptr, ptr %i.cx, align 8, !tbaa !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.ep, i64 %i.cy, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.eq = add nuw nsw i32 %.1126141.i, 1          ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.cr
  %exitcond156.not.i = icmp eq i32 %i.eq, %i.ab
  br i1 %exitcond156.not.i, label %.preheader137.i, label %bb.w, !llvm.loop !198

.preheader136.i:                                  ; preds = %._crit_edge.i, %.preheader136.lr.ph.split.i
  %.2148.i = phi i64 [ %i.cz, %.preheader136.lr.ph.split.i ], [ %indvars.iv.next158.i.lcssa, %._crit_edge.i ] ; 5 uses
  %.2127147.i = phi i32 [ 0, %.preheader136.lr.ph.split.i ], [ %i.gf, %._crit_edge.i ] ; 2 uses
  %i.er = mul nsw i32 %.2127147.i, %.pre168.i
  %i.es = add nsw i32 %i.er, %.pre16.pre          ; 6 uses
  br i1 %min.iters.check42, label %scalar.ph41.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader136.i
  %i.et = mul i64 %.2148.i, 36                    ; 2 uses
  %i.eu = getelementptr i8, ptr %i.dt, i64 %i.et
  %gep = getelementptr i8, ptr %i.eu, i64 24
  %i.ev = getelementptr i8, ptr %invariant.gep, i64 %i.et
  %bound0 = icmp ult ptr %gep, %scevgep39
  %bound1 = icmp ult ptr %scevgep40, %i.ev
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph41.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %vector.memcheck
  %i.ew = add i64 %.2148.i, %n.vec44              ; 2 uses
  %broadcast.splatinsert45 = insertelement <8 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat46 = shufflevector <8 x i32> %broadcast.splatinsert45, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <8 x i64> poison, i64 %.2148.i, i64 0
  %broadcast.splat48 = shufflevector <8 x i64> %broadcast.splatinsert47, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction49 = add nsw <8 x i64> %broadcast.splat48, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph43
  %index51 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body50 ]
  %vec.ind52 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph43 ], [ %vec.ind.next59, %vector.body50 ] ; 2 uses
  %vec.ind53 = phi <8 x i64> [ %induction49, %vector.ph43 ], [ %vec.ind.next60, %vector.body50 ] ; 2 uses
  %wide.gep54 = getelementptr inbounds nuw [36 x i8], ptr %i.ds, <8 x i64> %vec.ind52
  %wide.gep55 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep54, i64 24
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep55, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !115, !alias.scope !223
  %i.ex = add nsw <8 x i32> %broadcast.splat46, %wide.masked.gather
  %wide.gep56 = getelementptr inbounds [36 x i8], ptr %i.dt, <8 x i64> %vec.ind53
  %wide.gep57 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep56, i64 24
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.ex, <8 x ptr> align 4 %wide.gep57, <8 x i1> splat (i1 true)), !tbaa !115, !alias.scope !224, !noalias !223
  %index.next58 = add nuw i64 %index51, 8         ; 2 uses
  %vec.ind.next59 = add nuw nsw <8 x i64> %vec.ind52, splat (i64 8)
  %vec.ind.next60 = add nsw <8 x i64> %vec.ind53, splat (i64 8)
  %i.ey = icmp eq i64 %index.next58, %n.vec44
  br i1 %i.ey, label %middle.block61, label %vector.body50, !llvm.loop !202

middle.block61:                                   ; preds = %vector.body50
  br i1 %cmp.n62, label %._crit_edge.i, label %scalar.ph41.preheader

scalar.ph41.preheader:                            ; preds = %vector.memcheck, %.preheader136.i, %middle.block61
  %indvars.iv159.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader136.i ], [ %n.vec44, %middle.block61 ] ; 3 uses
  %indvars.iv157.i.ph = phi i64 [ %.2148.i, %vector.memcheck ], [ %.2148.i, %.preheader136.i ], [ %i.ew, %middle.block61 ] ; 2 uses
  br i1 %lcmp.mod69.not, label %scalar.ph41.prol.loopexit, label %scalar.ph41.prol

scalar.ph41.prol:                                 ; preds = %scalar.ph41.preheader, %scalar.ph41.prol
  %indvars.iv159.i.prol = phi i64 [ %indvars.iv.next160.i.prol, %scalar.ph41.prol ], [ %indvars.iv159.i.ph, %scalar.ph41.preheader ] ; 2 uses
  %indvars.iv157.i.prol = phi i64 [ %indvars.iv.next158.i.prol, %scalar.ph41.prol ], [ %indvars.iv157.i.ph, %scalar.ph41.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph41.prol ], [ 0, %scalar.ph41.preheader ]
  %i.ez = getelementptr inbounds nuw [36 x i8], ptr %i.ds, i64 %indvars.iv159.i.prol
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !115
  %i.fc = add nsw i32 %i.es, %i.fb
  %i.fd = getelementptr inbounds [36 x i8], ptr %i.dt, i64 %indvars.iv157.i.prol
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i32 %i.fc, ptr %i.fe, align 4, !tbaa !115
  %indvars.iv.next160.i.prol = add nuw nsw i64 %indvars.iv159.i.prol, 1 ; 2 uses
  %indvars.iv.next158.i.prol = add nsw i64 %indvars.iv157.i.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %scalar.ph41.prol.loopexit, label %scalar.ph41.prol, !llvm.loop !203

scalar.ph41.prol.loopexit:                        ; preds = %scalar.ph41.prol, %scalar.ph41.preheader
  %indvars.iv.next158.i.lcssa65.unr = phi i64 [ poison, %scalar.ph41.preheader ], [ %indvars.iv.next158.i.prol, %scalar.ph41.prol ]
  %indvars.iv159.i.unr = phi i64 [ %indvars.iv159.i.ph, %scalar.ph41.preheader ], [ %indvars.iv.next160.i.prol, %scalar.ph41.prol ]
  %indvars.iv157.i.unr = phi i64 [ %indvars.iv157.i.ph, %scalar.ph41.preheader ], [ %indvars.iv.next158.i.prol, %scalar.ph41.prol ]
  %i.ff = sub nsw i64 %indvars.iv159.i.ph, %wide.trip.count.i
  %i.fg = icmp ugt i64 %i.ff, -4
  br i1 %i.fg, label %._crit_edge.i, label %scalar.ph41

scalar.ph41:                                      ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41
  %indvars.iv159.i = phi i64 [ %indvars.iv.next160.i.3, %scalar.ph41 ], [ %indvars.iv159.i.unr, %scalar.ph41.prol.loopexit ] ; 5 uses
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i.3, %scalar.ph41 ], [ %indvars.iv157.i.unr, %scalar.ph41.prol.loopexit ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [36 x i8], ptr %i.ds, i64 %indvars.iv159.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !115
  %i.fk = add nsw i32 %i.es, %i.fj
  %i.fl = getelementptr inbounds [36 x i8], ptr %i.dt, i64 %indvars.iv157.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i32 %i.fk, ptr %i.fm, align 4, !tbaa !115
  %i.fn = getelementptr inbounds nuw [36 x i8], ptr %i.ds, i64 %indvars.iv159.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 60
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !115
  %i.fq = add nsw i32 %i.es, %i.fp
  %i.fr = getelementptr [36 x i8], ptr %i.dt, i64 %indvars.iv157.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 60
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !115
  %i.ft = getelementptr inbounds nuw [36 x i8], ptr %i.ds, i64 %indvars.iv159.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !115
  %i.fw = add nsw i32 %i.es, %i.fv
  %i.fx = getelementptr [36 x i8], ptr %i.dt, i64 %indvars.iv157.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 96
  store i32 %i.fw, ptr %i.fy, align 4, !tbaa !115
  %i.fz = getelementptr inbounds nuw [36 x i8], ptr %i.ds, i64 %indvars.iv159.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 132
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !115
  %i.gc = add nsw i32 %i.es, %i.gb
  %i.gd = getelementptr [36 x i8], ptr %i.dt, i64 %indvars.iv157.i
  %i.ge = getelementptr i8, ptr %i.gd, i64 132
  store i32 %i.gc, ptr %i.ge, align 4, !tbaa !115
  %indvars.iv.next160.i.3 = add nuw nsw i64 %indvars.iv159.i, 4 ; 2 uses
  %indvars.iv.next158.i.3 = add nsw i64 %indvars.iv157.i, 4 ; 2 uses
  %exitcond164.not.i.3 = icmp eq i64 %indvars.iv.next160.i.3, %wide.trip.count.i
  br i1 %exitcond164.not.i.3, label %._crit_edge.i, label %scalar.ph41, !llvm.loop !204

._crit_edge.i:                                    ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41, %middle.block61
  %indvars.iv.next158.i.lcssa = phi i64 [ %i.ew, %middle.block61 ], [ %indvars.iv.next158.i.lcssa65.unr, %scalar.ph41.prol.loopexit ], [ %indvars.iv.next158.i.3, %scalar.ph41 ]
  %i.gf = add nuw nsw i32 %.2127147.i, 1          ; 2 uses
  %exitcond165.not.i = icmp eq i32 %i.gf, %i.ab
  br i1 %exitcond165.not.i, label %._crit_edge149.split.i, label %.preheader136.i, !llvm.loop !205

._crit_edge149.split.i:                           ; preds = %._crit_edge.i, %.preheader137.i
  %.not134.not.i = icmp sle i32 %.pre168.i, %i.ac
  %i.gg = icmp sgt i32 %.pre168.i, 0
  %or.cond = and i1 %.not134.not.i, %i.gg
  br i1 %or.cond, label %.preheader.i.preheader, label %_ZL7atomcatP7t_atomsPKS_iiPi.exit

.preheader.i.preheader:                           ; preds = %._crit_edge149.split.i
  %i.gh = load ptr, ptr %i.t, align 8, !tbaa !218 ; 10 uses
  %wide.trip.count = zext nneg i32 %.pre168.i to i64 ; 6 uses
  %i.gi = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %.pre168.i, 8
  %i.gj = trunc nsw i64 %i.gi to i32
  %i.gk = icmp ugt i64 %i.gi, 4294967295
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.gl = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter70 = and i64 %wide.trip.count, 7       ; 2 uses
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge152.i
  %.1 = phi i32 [ %.lcssa, %._crit_edge152.i ], [ %.012, %.preheader.i.preheader ] ; 4 uses
  %.3128153.i = phi i32 [ %i.iq, %._crit_edge152.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.gm = mul nuw nsw i32 %.3128153.i, %.pre168.i
  %invariant.op = add i32 %i.gm, %.pre16.pre      ; 12 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.gn = add i32 %invariant.op, %i.gj
  %i.go = icmp slt i32 %i.gn, %invariant.op
  %i.gp = or i1 %i.go, %i.gk
  br i1 %i.gp, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.gq = add i32 %.1, %i.gl                      ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <8 x i32> poison, i32 %.1, i64 0
  %broadcast.splat27 = shufflevector <8 x i32> %broadcast.splatinsert26, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat27, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind28 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next30, %vector.body ] ; 2 uses
  %i.gr = add nsw <8 x i32> %vec.ind, splat (i32 1)
  %i.gs = add <8 x i32> %broadcast.splat, %vec.ind28
  %i.gt = sext <8 x i32> %i.gs to <8 x i64>
  %wide.gep = getelementptr inbounds [32 x i8], ptr %i.gh, <8 x i64> %i.gt
  %wide.gep29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.gr, <8 x ptr> align 8 %wide.gep29, <8 x i1> splat (i1 true)), !tbaa !226
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next30 = add <8 x i32> %vec.ind28, splat (i32 8)
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge152.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.3.ph = phi i32 [ %.1, %vector.scevcheck ], [ %.1, %.preheader.i ], [ %i.gq, %middle.block ] ; 2 uses
  br i1 %lcmp.mod71.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.3.prol = phi i32 [ %i.gv, %scalar.ph.prol ], [ %.3.ph, %scalar.ph.preheader ]
  %prol.iter72 = phi i64 [ %prol.iter72.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gv = add nsw i32 %.3.prol, 1                 ; 4 uses
  %i.gw = trunc nuw nsw i64 %indvars.iv.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.gw
  %i.gx = sext i32 %.reass.prol to i64
  %i.gy = getelementptr inbounds [32 x i8], ptr %i.gh, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 %i.gv, ptr %i.gz, align 8, !tbaa !226
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter72.next = add i64 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i64 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !207

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa66.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.gv, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.3.unr = phi i32 [ %.3.ph, %scalar.ph.preheader ], [ %i.gv, %scalar.ph.prol ]
  %i.ha = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.hb = icmp ugt i64 %i.ha, -8
  br i1 %i.hb, label %._crit_edge152.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op77 = add i32 1, %invariant.op
  %invariant.op78 = add i32 2, %invariant.op
  %invariant.op79 = add i32 3, %invariant.op
  %invariant.op80 = add i32 4, %invariant.op
end_hunk_0
begin_hunk_1_@_Z27gmx_mtop_generate_local_topRK10gmx_mtop_tP14gmx_localtop_tb:bb.a
  %i.w = load i32, ptr %.sroa.0245.0257.i.i, align 8, !tbaa !80
  %i.x = sext i32 %i.w to i64
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw [2408 x i8], ptr %i.y, i64 %i.x ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !118 ; 3 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 2
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 1592 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 1600 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0245.0257.i.i, i64 4 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 1568 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 1576 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  br label %bb.c

bb.c:                                             ; preds = %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i, %bb.b
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i ], [ 0, %bb.b ] ; 5 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv.i.i to i32
  switch i32 %i.aw, label %._crit_edge271.i.i [
    i32 95, label %bb.d
    i32 62, label %bb.e
    i32 63, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i
  ]

._crit_edge271.i.i:                               ; preds = %bb.c
  %.pre272.i.i = load i32, ptr %i.as, align 4, !tbaa !88
  br label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr exact i64 %i.bb, 2
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %i.ai
  br i1 %i.be, label %bb.ah, label %_ZL17set_posres_paramsI22InteractionDefinitionsEvPT_PK14gmx_molblock_tii.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !119
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !119
  %i.bh = icmp eq ptr %i.bf, %i.bg
  %.pre273.i.i = load i32, ptr %i.as, align 4, !tbaa !88 ; 2 uses
  br i1 %i.bh, label %bb.x, label %.preheader253.i.i

.preheader253.i.i:                                ; preds = %bb.e
  %i.bi = icmp sgt i32 %.pre273.i.i, 0
  br i1 %i.bi, label %.lr.ph.preheader.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader253.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !97
  %.pre269.i.i = load ptr, ptr %i.k, align 8, !tbaa !98 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i, %.lr.ph.preheader.i.i
  %i.bj = phi ptr [ %i.lc, %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i ], [ %.pre269.i.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.bk = phi ptr [ %i.rk, %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i ], [ %.pre269.i.i, %.lr.ph.preheader.i.i ] ; 10 uses
  %i.bl = phi ptr [ %i.le, %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 7 uses
  %.073255.i.i = phi i32 [ %i.rl, %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bm = mul nsw i32 %.073255.i.i, %i.ab
  %i.bn = add nsw i32 %i.bm, %.0258.i.i           ; 22 uses
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2000), align 8, !tbaa !101 ; 6 uses
  %i.bp = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bq = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 7 uses
  %i.bs = ashr exact i64 %i.br, 2                 ; 12 uses
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.bu = load ptr, ptr %i.at, align 8, !tbaa !98 ; 6 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64               ; 6 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = shl i64 %i.bx, 30
  %i.bz = ashr i64 %i.by, 32                      ; 8 uses
  %i.ca = add nsw i64 %i.bz, %i.bs                ; 3 uses
  %i.cb = icmp ugt i64 %i.ca, %i.bs
  br i1 %i.cb, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bp
  %i.cf = ashr exact i64 %i.ce, 2                 ; 2 uses
  %i.cg = icmp ult i64 %i.bs, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = xor i64 %i.bs, 2305843009213693951      ; 2 uses
  %i.ci = icmp ule i64 %i.cf, %i.ch
  tail call void @llvm.assume(i1 %i.ci)
  %.not28.i.i.i = icmp ult i64 %i.cf, %i.bz
  br i1 %.not28.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.bl, align 4, !tbaa !89
  %i.cj = getelementptr i8, ptr %i.bl, i64 4      ; 3 uses
  %i.ck = add nsw i64 %i.bz, -1                   ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.h
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ck, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %bb.h
  %.0.i.i.i.i.i.i = phi ptr [ %i.cm, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.cj, %bb.h ] ; 2 uses
  store ptr %.0.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.cn = icmp ult i64 %i.ch, %i.bz
  br i1 %i.cn, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bz)
  %i.co = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.bs
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.co, i64 2305843009213693951) ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #24 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.br ; 3 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !89
  %i.ct = add nsw i64 %i.bz, -1                   ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cv = getelementptr i8, ptr %i.cs, i64 4
  %.idx.i.i.i.i.i31.i.i.i = shl nuw nsw i64 %i.ct, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cv, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i, i1 false), !tbaa !89
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cw = icmp sgt i64 %i.br, 0
  br i1 %i.cw, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i

bb.k:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 4 %i.bk, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i: ; preds = %bb.k, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i.i
  %.not.i35.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i35.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cz) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
  store ptr %i.cr, ptr %i.k, align 8, !tbaa !98
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.bz ; 2 uses
  store ptr %i.da, ptr %i.l, align 8, !tbaa !97
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.db, ptr %i.m, align 8, !tbaa !120
  %.pre270.i.i = load ptr, ptr %i.at, align 8, !tbaa !98 ; 2 uses
  %.pre276.i.i = ptrtoint ptr %.pre270.i.i to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.dc = icmp ult i64 %i.ca, %i.bs
  br i1 %i.dc, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ca ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %i.dd
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.n
  store ptr %i.dd, ptr %i.l, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i:         ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i, %bb.n, %bb.m, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i, %bb.f
  %.pre-phi277.i.i = phi i64 [ %.pre276.i.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i ], [ %i.bw, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i ], [ %i.bw, %bb.f ], [ %i.bw, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i ], [ %i.bw, %bb.n ], [ %i.bw, %bb.m ]
  %i.de = phi ptr [ %i.cr, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i ], [ %i.bj, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i ], [ %i.bj, %bb.f ], [ %i.bj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i ], [ %i.bj, %bb.n ], [ %i.bj, %bb.m ] ; 5 uses
  %i.df = phi ptr [ %i.cr, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i ], [ %i.bk, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i ], [ %i.bk, %bb.f ], [ %i.bk, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i ], [ %i.bk, %bb.n ], [ %i.bk, %bb.m ] ; 34 uses
  %i.dg = phi ptr [ %i.da, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i ], [ %.0.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i ], [ %i.bl, %bb.f ], [ %i.dd, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i ], [ %i.bl, %bb.n ], [ %i.bl, %bb.m ] ; 7 uses
  %i.dh = phi ptr [ %.pre270.i.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i.i ], [ %i.bu, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i.i ], [ %i.bu, %bb.f ], [ %i.bu, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i ], [ %i.bu, %bb.n ], [ %i.bu, %bb.m ] ; 24 uses
  %i.di = ptrtoaddr ptr %i.df to i64              ; 2 uses
  %i.dj = ptrtoaddr ptr %i.dh to i64              ; 2 uses
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %.pre-phi277.i.i         ; 2 uses
  %i.dn = lshr exact i64 %i.dm, 2                 ; 5 uses
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.preheader.lr.ph.split.i.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit.i.i

.preheader.lr.ph.split.i.i.i:                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i
  %i.dq = icmp sgt i32 %i.bo, 0
  br i1 %i.dq, label %.preheader.us.preheader.i.i.i, label %iter.check302

iter.check302:                                    ; preds = %.preheader.lr.ph.split.i.i.i
  %wide.trip.count.i.i.i = and i64 %i.dn, 2147483647 ; 6 uses
  %min.iters.check286 = icmp samesign ult i64 %wide.trip.count.i.i.i, 4
  br i1 %min.iters.check286, label %.loopexit.i.i.i.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %iter.check302
  %i.dr = add i64 %i.br, %i.di
  %i.ds = sub i64 %i.dj, %i.dr
  %diff.check288 = icmp ugt i64 %i.ds, -128
  br i1 %diff.check288, label %.loopexit.i.i.i.preheader, label %vector.main.loop.iter.check289

vector.main.loop.iter.check289:                   ; preds = %vector.memcheck287
  %min.iters.check290 = icmp samesign ult i64 %wide.trip.count.i.i.i, 32
  br i1 %min.iters.check290, label %vec.epilog.ph306, label %vector.ph291

vector.ph291:                                     ; preds = %vector.main.loop.iter.check289
  %n.vec292 = and i64 %i.dn, 2147483616           ; 5 uses
  %i.dt = add nsw i64 %i.bs, %n.vec292
  %i.du = getelementptr i8, ptr %i.df, i64 %i.br
  br label %vector.body293

vector.body293:                                   ; preds = %vector.ph291, %vector.body293
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next299, %vector.body293 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index294 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %wide.load295 = load <8 x i32>, ptr %i.dv, align 4, !tbaa !89
  %wide.load296 = load <8 x i32>, ptr %i.dw, align 4, !tbaa !89
  %wide.load297 = load <8 x i32>, ptr %i.dx, align 4, !tbaa !89
  %wide.load298 = load <8 x i32>, ptr %i.dy, align 4, !tbaa !89
  %i.dz = getelementptr [4 x i8], ptr %i.du, i64 %index294 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  store <8 x i32> %wide.load295, ptr %i.dz, align 4, !tbaa !89
  store <8 x i32> %wide.load296, ptr %i.ea, align 4, !tbaa !89
  store <8 x i32> %wide.load297, ptr %i.eb, align 4, !tbaa !89
  store <8 x i32> %wide.load298, ptr %i.ec, align 4, !tbaa !89
  %index.next299 = add nuw i64 %index294, 32      ; 2 uses
  %i.ed = icmp eq i64 %index.next299, %n.vec292
  br i1 %i.ed, label %middle.block300, label %vector.body293, !llvm.loop !227

middle.block300:                                  ; preds = %vector.body293
  %cmp.n301 = icmp eq i64 %wide.trip.count.i.i.i, %n.vec292
  br i1 %cmp.n301, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit.i.i, label %vec.epilog.iter.check303

vec.epilog.iter.check303:                         ; preds = %middle.block300
  %i.ee = and i64 %i.dm, 112
  %min.epilog.iters.check305 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check305, label %.loopexit.i.i.i.preheader, label %vec.epilog.ph306, !prof !121

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check289, %vec.epilog.iter.check303
  %vec.epilog.resume.val307 = phi i64 [ %n.vec292, %vec.epilog.iter.check303 ], [ 0, %vector.main.loop.iter.check289 ]
  %n.vec308 = and i64 %i.dn, 2147483644           ; 4 uses
  %i.ef = add nsw i64 %i.bs, %n.vec308
  %i.eg = getelementptr i8, ptr %i.df, i64 %i.br
  br label %vec.epilog.vector.body309

vec.epilog.vector.body309:                        ; preds = %vec.epilog.vector.body309, %vec.epilog.ph306
  %index310 = phi i64 [ %vec.epilog.resume.val307, %vec.epilog.ph306 ], [ %index.next312, %vec.epilog.vector.body309 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index310
  %wide.load311 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !89
  %i.ei = getelementptr [4 x i8], ptr %i.eg, i64 %index310
  store <4 x i32> %wide.load311, ptr %i.ei, align 4, !tbaa !89
  %index.next312 = add nuw i64 %index310, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next312, %n.vec308
  br i1 %i.ej, label %vec.epilog.middle.block313, label %vec.epilog.vector.body309, !llvm.loop !228

vec.epilog.middle.block313:                       ; preds = %vec.epilog.vector.body309
  %cmp.n314 = icmp eq i64 %wide.trip.count.i.i.i, %n.vec308
  br i1 %cmp.n314, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit.i.i, label %.loopexit.i.i.i.preheader

.loopexit.i.i.i.preheader:                        ; preds = %iter.check302, %vector.memcheck287, %vec.epilog.iter.check303, %vec.epilog.middle.block313
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check302 ], [ 0, %vector.memcheck287 ], [ %n.vec292, %vec.epilog.iter.check303 ], [ %n.vec308, %vec.epilog.middle.block313 ] ; 4 uses
  %.12735.i.i.i.ph = phi i64 [ %i.bs, %iter.check302 ], [ %i.bs, %vector.memcheck287 ], [ %i.dt, %vec.epilog.iter.check303 ], [ %i.ef, %vec.epilog.middle.block313 ] ; 2 uses
  %i.ek = sub nsw i64 %i.dn, %indvars.iv.i.i.i.ph
  %xtraiter = and i64 %i.ek, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.prol.loopexit, label %.loopexit.i.i.i.prol

.loopexit.i.i.i.prol:                             ; preds = %.loopexit.i.i.i.preheader, %.loopexit.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.loopexit.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.loopexit.i.i.i.preheader ] ; 2 uses
  %.12735.i.i.i.prol = phi i64 [ %.230.i.i.i.prol, %.loopexit.i.i.i.prol ], [ %.12735.i.i.i.ph, %.loopexit.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.loopexit.i.i.i.prol ], [ 0, %.loopexit.i.i.i.preheader ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i.prol
  %i.em = load i32, ptr %i.el, align 4, !tbaa !89
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.12735.i.i.i.prol
  store i32 %i.em, ptr %i.en, align 4, !tbaa !89
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %.230.i.i.i.prol = add i64 %.12735.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.loopexit.i.i.i.prol.loopexit, label %.loopexit.i.i.i.prol, !llvm.loop !229

.loopexit.i.i.i.prol.loopexit:                    ; preds = %.loopexit.i.i.i.prol, %.loopexit.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.loopexit.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.loopexit.i.i.i.prol ]
  %.12735.i.i.i.unr = phi i64 [ %.12735.i.i.i.ph, %.loopexit.i.i.i.preheader ], [ %.230.i.i.i.prol, %.loopexit.i.i.i.prol ]
  %i.eo = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ep = icmp ugt i64 %i.eo, -8
  br i1 %i.ep, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit.i.i, label %.loopexit.i.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.split.i.i.i
  %i.eq = add nuw i32 %i.bo, 1
  %12 = add i64 %i.di, 4
  %13 = sub i64 %12, %i.dj
  %i.er = zext nneg i32 %i.bo to i64              ; 5 uses
  %min.iters.check249 = icmp ult i32 %i.bo, 8
  %invariant.op = add i64 %13, -1
  %min.iters.check253 = icmp ult i32 %i.bo, 32
  %i.es = and i64 %i.er, 24
  %n.vec255 = and i64 %i.er, 2147483616           ; 5 uses
  %broadcast.splatinsert256 = insertelement <8 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat257 = shufflevector <8 x i32> %broadcast.splatinsert256, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n266 = icmp eq i64 %n.vec255, %i.er
  %min.epilog.iters.check270 = icmp eq i64 %i.es, 0
  %n.vec273 = and i64 %i.er, 2147483640           ; 4 uses
  %broadcast.splatinsert274 = insertelement <8 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat275 = shufflevector <8 x i32> %broadcast.splatinsert274, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n281 = icmp eq i64 %n.vec273, %i.er
  br label %iter.check267

iter.check267:                                    ; preds = %..loopexit_crit_edge.us.us.i.i.i, %.preheader.us.preheader.i.i.i
  %.02436.us.us.i.i.i = phi i32 [ 0, %.preheader.us.preheader.i.i.i ], [ %i.ez, %..loopexit_crit_edge.us.us.i.i.i ] ; 4 uses
  %.12735.us.us.i.i.i = phi i64 [ %i.bs, %.preheader.us.preheader.i.i.i ], [ %.2.us.us.i.i.i.lcssa, %..loopexit_crit_edge.us.us.i.i.i ] ; 3 uses
  %i.et = add i32 %i.bo, %.02436.us.us.i.i.i
  %i.eu = sext i32 %.02436.us.us.i.i.i to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !89
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.12735.us.us.i.i.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !89
  %.129.us.us.i.i.i = add nsw i32 %.02436.us.us.i.i.i, 1
  %.230.us.us.i.i.i = add i64 %.12735.us.us.i.i.i, 1 ; 6 uses
  %i.ey = sext i32 %.129.us.us.i.i.i to i64       ; 7 uses
  %i.ez = add i32 %i.eq, %.02436.us.us.i.i.i      ; 4 uses
  br i1 %min.iters.check249, label %vec.epilog.scalar.ph269.preheader, label %vector.memcheck250

vector.memcheck250:                               ; preds = %iter.check267
  %14 = sub i64 %.12735.us.us.i.i.i, %i.ey
  %i.fa = shl i64 %14, 2
  %i.fb = add i64 %i.fa, %invariant.op
  %diff.check251 = icmp ult i64 %i.fb, 127
  br i1 %diff.check251, label %vec.epilog.scalar.ph269.preheader, label %vector.main.loop.iter.check252

vector.main.loop.iter.check252:                   ; preds = %vector.memcheck250
  br i1 %min.iters.check253, label %vec.epilog.ph271, label %vector.ph254

vector.ph254:                                     ; preds = %vector.main.loop.iter.check252
  %i.fc = add nsw i64 %n.vec255, %i.ey
  %i.fd = add i64 %.230.us.us.i.i.i, %n.vec255    ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dh, i64 %i.ey
  %i.fe = getelementptr [4 x i8], ptr %i.df, i64 %.230.us.us.i.i.i
  br label %vector.body258

vector.body258:                                   ; preds = %vector.ph254, %vector.body258
  %index259 = phi i64 [ 0, %vector.ph254 ], [ %index.next264, %vector.body258 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index259 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load260 = load <8 x i32>, ptr %gep, align 4, !tbaa !89
  %wide.load261 = load <8 x i32>, ptr %i.ff, align 4, !tbaa !89
  %wide.load262 = load <8 x i32>, ptr %i.fg, align 4, !tbaa !89
  %wide.load263 = load <8 x i32>, ptr %i.fh, align 4, !tbaa !89
  %i.fi = add nsw <8 x i32> %wide.load260, %broadcast.splat257
  %i.fj = add nsw <8 x i32> %wide.load261, %broadcast.splat257
  %i.fk = add nsw <8 x i32> %wide.load262, %broadcast.splat257
  %i.fl = add nsw <8 x i32> %wide.load263, %broadcast.splat257
  %i.fm = getelementptr [4 x i8], ptr %i.fe, i64 %index259 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  store <8 x i32> %i.fi, ptr %i.fm, align 4, !tbaa !89
  store <8 x i32> %i.fj, ptr %i.fn, align 4, !tbaa !89
  store <8 x i32> %i.fk, ptr %i.fo, align 4, !tbaa !89
  store <8 x i32> %i.fl, ptr %i.fp, align 4, !tbaa !89
  %index.next264 = add nuw i64 %index259, 32      ; 2 uses
  %i.fq = icmp eq i64 %index.next264, %n.vec255
  br i1 %i.fq, label %middle.block265, label %vector.body258, !llvm.loop !230

middle.block265:                                  ; preds = %vector.body258
  br i1 %cmp.n266, label %..loopexit_crit_edge.us.us.i.i.i, label %vec.epilog.iter.check268

vec.epilog.iter.check268:                         ; preds = %middle.block265
  br i1 %min.epilog.iters.check270, label %vec.epilog.scalar.ph269.preheader, label %vec.epilog.ph271, !prof !93

vec.epilog.ph271:                                 ; preds = %vector.main.loop.iter.check252, %vec.epilog.iter.check268
  %vec.epilog.resume.val272 = phi i64 [ %n.vec255, %vec.epilog.iter.check268 ], [ 0, %vector.main.loop.iter.check252 ]
  %i.fr = add nsw i64 %n.vec273, %i.ey
  %i.fs = add i64 %.230.us.us.i.i.i, %n.vec273    ; 2 uses
  %invariant.gep545 = getelementptr [4 x i8], ptr %i.dh, i64 %i.ey
  %i.ft = getelementptr [4 x i8], ptr %i.df, i64 %.230.us.us.i.i.i
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph271
  %index277 = phi i64 [ %vec.epilog.resume.val272, %vec.epilog.ph271 ], [ %index.next279, %vec.epilog.vector.body276 ] ; 3 uses
  %gep546 = getelementptr [4 x i8], ptr %invariant.gep545, i64 %index277
  %wide.load278 = load <8 x i32>, ptr %gep546, align 4, !tbaa !89
  %i.fu = add nsw <8 x i32> %wide.load278, %broadcast.splat275
  %i.fv = getelementptr [4 x i8], ptr %i.ft, i64 %index277
  store <8 x i32> %i.fu, ptr %i.fv, align 4, !tbaa !89
  %index.next279 = add nuw i64 %index277, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next279, %n.vec273
  br i1 %i.fw, label %vec.epilog.middle.block280, label %vec.epilog.vector.body276, !llvm.loop !231

vec.epilog.middle.block280:                       ; preds = %vec.epilog.vector.body276
  br i1 %cmp.n281, label %..loopexit_crit_edge.us.us.i.i.i, label %vec.epilog.scalar.ph269.preheader

vec.epilog.scalar.ph269.preheader:                ; preds = %iter.check267, %vector.memcheck250, %vec.epilog.iter.check268, %vec.epilog.middle.block280
  %indvars.iv49.i.i.i.ph = phi i64 [ %i.ey, %iter.check267 ], [ %i.ey, %vector.memcheck250 ], [ %i.fc, %vec.epilog.iter.check268 ], [ %i.fr, %vec.epilog.middle.block280 ] ; 3 uses
  %.233.us.us.i.i.i.ph = phi i64 [ %.230.us.us.i.i.i, %iter.check267 ], [ %.230.us.us.i.i.i, %vector.memcheck250 ], [ %i.fd, %vec.epilog.iter.check268 ], [ %i.fs, %vec.epilog.middle.block280 ] ; 2 uses
  %i.fx = trunc i64 %indvars.iv49.i.i.i.ph to i32 ; 2 uses
  %i.fy = sub i32 %i.ez, %i.fx
  %i.fz = sub i32 %i.et, %i.fx
  %xtraiter516 = and i32 %i.fy, 7                 ; 2 uses
  %lcmp.mod517.not = icmp eq i32 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %vec.epilog.scalar.ph269.prol.loopexit, label %vec.epilog.scalar.ph269.prol

vec.epilog.scalar.ph269.prol:                     ; preds = %vec.epilog.scalar.ph269.preheader, %vec.epilog.scalar.ph269.prol
  %indvars.iv49.i.i.i.prol = phi i64 [ %indvars.iv.next50.i.i.i.prol, %vec.epilog.scalar.ph269.prol ], [ %indvars.iv49.i.i.i.ph, %vec.epilog.scalar.ph269.preheader ] ; 2 uses
  %.233.us.us.i.i.i.prol = phi i64 [ %.2.us.us.i.i.i.prol, %vec.epilog.scalar.ph269.prol ], [ %.233.us.us.i.i.i.ph, %vec.epilog.scalar.ph269.preheader ] ; 2 uses
  %prol.iter518 = phi i32 [ %prol.iter518.next, %vec.epilog.scalar.ph269.prol ], [ 0, %vec.epilog.scalar.ph269.preheader ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i.prol
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !89
  %i.gc = add nsw i32 %i.gb, %i.bn
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i.prol
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !89
  %indvars.iv.next50.i.i.i.prol = add nsw i64 %indvars.iv49.i.i.i.prol, 1 ; 2 uses
  %.2.us.us.i.i.i.prol = add i64 %.233.us.us.i.i.i.prol, 1 ; 3 uses
  %prol.iter518.next = add i32 %prol.iter518, 1   ; 2 uses
  %prol.iter518.cmp.not = icmp eq i32 %prol.iter518.next, %xtraiter516
  br i1 %prol.iter518.cmp.not, label %vec.epilog.scalar.ph269.prol.loopexit, label %vec.epilog.scalar.ph269.prol, !llvm.loop !232

vec.epilog.scalar.ph269.prol.loopexit:            ; preds = %vec.epilog.scalar.ph269.prol, %vec.epilog.scalar.ph269.preheader
  %.2.us.us.i.i.i.lcssa512.unr = phi i64 [ poison, %vec.epilog.scalar.ph269.preheader ], [ %.2.us.us.i.i.i.prol, %vec.epilog.scalar.ph269.prol ]
  %indvars.iv49.i.i.i.unr = phi i64 [ %indvars.iv49.i.i.i.ph, %vec.epilog.scalar.ph269.preheader ], [ %indvars.iv.next50.i.i.i.prol, %vec.epilog.scalar.ph269.prol ]
  %.233.us.us.i.i.i.unr = phi i64 [ %.233.us.us.i.i.i.ph, %vec.epilog.scalar.ph269.preheader ], [ %.2.us.us.i.i.i.prol, %vec.epilog.scalar.ph269.prol ]
  %i.ge = icmp ult i32 %i.fz, 7
  br i1 %i.ge, label %..loopexit_crit_edge.us.us.i.i.i, label %vec.epilog.scalar.ph269

vec.epilog.scalar.ph269:                          ; preds = %vec.epilog.scalar.ph269.prol.loopexit, %vec.epilog.scalar.ph269
  %indvars.iv49.i.i.i = phi i64 [ %indvars.iv.next50.i.i.i.7, %vec.epilog.scalar.ph269 ], [ %indvars.iv49.i.i.i.unr, %vec.epilog.scalar.ph269.prol.loopexit ] ; 9 uses
  %.233.us.us.i.i.i = phi i64 [ %.2.us.us.i.i.i.7, %vec.epilog.scalar.ph269 ], [ %.233.us.us.i.i.i.unr, %vec.epilog.scalar.ph269.prol.loopexit ] ; 9 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !89
  %i.gh = add nsw i32 %i.gg, %i.bn
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !89
  %i.gj = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i
  %i.gk = getelementptr i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !89
  %i.gm = add nsw i32 %i.gl, %i.bn
  %i.gn = getelementptr [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  store i32 %i.gm, ptr %i.go, align 4, !tbaa !89
  %i.gp = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !89
  %i.gs = add nsw i32 %i.gr, %i.bn
  %i.gt = getelementptr [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  store i32 %i.gs, ptr %i.gu, align 4, !tbaa !89
  %i.gv = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i
  %i.gw = getelementptr i8, ptr %i.gv, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !89
  %i.gy = add nsw i32 %i.gx, %i.bn
  %i.gz = getelementptr [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 12
  store i32 %i.gy, ptr %i.ha, align 4, !tbaa !89
  %i.hb = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 16
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !89
  %i.he = add nsw i32 %i.hd, %i.bn
  %i.hf = getelementptr [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !89
  %i.hh = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i
  %i.hi = getelementptr i8, ptr %i.hh, i64 20
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !89
  %i.hk = add nsw i32 %i.hj, %i.bn
  %i.hl = getelementptr [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i
  %i.hm = getelementptr i8, ptr %i.hl, i64 20
  store i32 %i.hk, ptr %i.hm, align 4, !tbaa !89
  %i.hn = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i
  %i.ho = getelementptr i8, ptr %i.hn, i64 24
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !89
  %i.hq = add nsw i32 %i.hp, %i.bn
  %i.hr = getelementptr [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i
  %i.hs = getelementptr i8, ptr %i.hr, i64 24
  store i32 %i.hq, ptr %i.hs, align 4, !tbaa !89
  %i.ht = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv49.i.i.i
  %i.hu = getelementptr i8, ptr %i.ht, i64 28
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !89
  %i.hw = add nsw i32 %i.hv, %i.bn
  %i.hx = getelementptr [4 x i8], ptr %i.df, i64 %.233.us.us.i.i.i
  %i.hy = getelementptr i8, ptr %i.hx, i64 28
  store i32 %i.hw, ptr %i.hy, align 4, !tbaa !89
  %indvars.iv.next50.i.i.i.7 = add nsw i64 %indvars.iv49.i.i.i, 8 ; 2 uses
  %.2.us.us.i.i.i.7 = add i64 %.233.us.us.i.i.i, 8 ; 2 uses
  %lftr.wideiv.i.i.i.7 = trunc i64 %indvars.iv.next50.i.i.i.7 to i32
  %exitcond52.not.i.i.i.7 = icmp eq i32 %i.ez, %lftr.wideiv.i.i.i.7
  br i1 %exitcond52.not.i.i.i.7, label %..loopexit_crit_edge.us.us.i.i.i, label %vec.epilog.scalar.ph269, !llvm.loop !233

..loopexit_crit_edge.us.us.i.i.i:                 ; preds = %vec.epilog.scalar.ph269.prol.loopexit, %vec.epilog.scalar.ph269, %vec.epilog.middle.block280, %middle.block265
  %.2.us.us.i.i.i.lcssa = phi i64 [ %i.fs, %vec.epilog.middle.block280 ], [ %i.fd, %middle.block265 ], [ %.2.us.us.i.i.i.lcssa512.unr, %vec.epilog.scalar.ph269.prol.loopexit ], [ %.2.us.us.i.i.i.7, %vec.epilog.scalar.ph269 ]
  %i.hz = icmp slt i32 %i.ez, %i.do
  br i1 %i.hz, label %iter.check267, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit.i.i, !llvm.loop !234

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.prol.loopexit, %.loopexit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %.loopexit.i.i.i ], [ %indvars.iv.i.i.i.unr, %.loopexit.i.i.i.prol.loopexit ] ; 9 uses
  %.12735.i.i.i = phi i64 [ %.230.i.i.i.7, %.loopexit.i.i.i ], [ %.12735.i.i.i.unr, %.loopexit.i.i.i.prol.loopexit ] ; 9 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !89
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.12735.i.i.i
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !89
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !89
  %i.ig = getelementptr [4 x i8], ptr %i.df, i64 %.12735.i.i.i
  %i.ih = getelementptr i8, ptr %i.ig, i64 4
  store i32 %i.if, ptr %i.ih, align 4, !tbaa !89
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !89
  %i.il = getelementptr [4 x i8], ptr %i.df, i64 %.12735.i.i.i
  %i.im = getelementptr i8, ptr %i.il, i64 8
  store i32 %i.ik, ptr %i.im, align 4, !tbaa !89
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !89
  %i.iq = getelementptr [4 x i8], ptr %i.df, i64 %.12735.i.i.i
  %i.ir = getelementptr i8, ptr %i.iq, i64 12
  store i32 %i.ip, ptr %i.ir, align 4, !tbaa !89
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !89
  %i.iv = getelementptr [4 x i8], ptr %i.df, i64 %.12735.i.i.i
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  store i32 %i.iu, ptr %i.iw, align 4, !tbaa !89
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 20
end_hunk_1
begin_hunk_2_@_Z27gmx_mtop_generate_local_topRK10gmx_mtop_tP14gmx_localtop_tb:bb.a
_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i209.i.i: ; preds = %bb.q
  %.idx.i.i.i.i.i.i210.i.i = shl nuw nsw i64 %i.ki, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kh, i8 0, i64 %.idx.i.i.i.i.i.i210.i.i, i1 false), !tbaa !89
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.idx.i.i.i.i.i.i210.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i211.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i211.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i209.i.i, %bb.q
  %.0.i.i.i.i212.i.i = phi ptr [ %i.kk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i209.i.i ], [ %i.kh, %bb.q ] ; 2 uses
  store ptr %.0.i.i.i.i212.i.i, ptr %i.l, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i

bb.r:                                             ; preds = %bb.p
  %i.kl = icmp ult i64 %i.kf, %i.jx
  br i1 %i.kl, label %bb.s, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i213.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i213.i.i: ; preds = %bb.r
  %.sroa.speculated.i.i214.i.i = tail call i64 @llvm.umax.i64(i64 %i.jq, i64 %i.jx)
  %i.km = add nuw nsw i64 %.sroa.speculated.i.i214.i.i, %i.jq
  %i.kn = tail call i64 @llvm.umin.i64(i64 %i.km, i64 2305843009213693951) ; 2 uses
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #24 ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.jp ; 3 uses
  store i32 0, ptr %i.kq, align 4, !tbaa !89
  %i.kr = add nsw i64 %i.jx, -1                   ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i217.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i215.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i215.i.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i213.i.i
  %i.kt = getelementptr i8, ptr %i.kq, i64 4
  %.idx.i.i.i.i.i31.i216.i.i = shl nuw nsw i64 %i.kr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kt, i8 0, i64 %.idx.i.i.i.i.i31.i216.i.i, i1 false), !tbaa !89
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i217.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i217.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i215.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i213.i.i
  %i.ku = icmp sgt i64 %i.jp, 0
  br i1 %i.ku, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i218.i.i

bb.t:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i217.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kp, ptr align 4 %i.df, i64 %i.jp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i218.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i218.i.i: ; preds = %bb.t, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i217.i.i
  %.not.i35.i219.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i35.i219.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i220.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i218.i.i
  %i.kv = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = sub i64 %i.kw, %i.jo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.kx) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i220.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i220.i.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i218.i.i
  store ptr %i.kp, ptr %i.k, align 8, !tbaa !98
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.jx ; 2 uses
  store ptr %i.ky, ptr %i.l, align 8, !tbaa !97
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kn
  store ptr %i.kz, ptr %i.m, align 8, !tbaa !120
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i

bb.v:                                             ; preds = %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit.i.i
  %i.la = icmp ult i64 %i.jy, %i.jq
  br i1 %i.la, label %bb.w, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i

bb.w:                                             ; preds = %bb.v
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.jy ; 3 uses
  %.not.i.i.i111.i.i = icmp eq ptr %i.dg, %i.lb
  br i1 %.not.i.i.i111.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i112.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i112.i.i: ; preds = %bb.w
  store ptr %i.lb, ptr %i.l, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i:       ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i112.i.i, %bb.w, %bb.v, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i220.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i211.i.i, %bb.o
  %i.lc = phi ptr [ %i.kp, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i220.i.i ], [ %i.de, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i211.i.i ], [ %i.de, %bb.o ], [ %i.de, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i112.i.i ], [ %i.de, %bb.w ], [ %i.de, %bb.v ] ; 30 uses
  %i.ld = phi ptr [ %i.kp, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i220.i.i ], [ %i.df, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i211.i.i ], [ %i.df, %bb.o ], [ %i.df, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i112.i.i ], [ %i.df, %bb.w ], [ %i.df, %bb.v ]
  %i.le = phi ptr [ %i.ky, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i220.i.i ], [ %.0.i.i.i.i212.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i211.i.i ], [ %i.dg, %bb.o ], [ %i.lb, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i112.i.i ], [ %i.dg, %bb.w ], [ %i.dg, %bb.v ]
  %i.lf = ptrtoaddr ptr %i.lc to i64              ; 2 uses
  %i.lg = load ptr, ptr %i.ar, align 8, !tbaa !97
  %i.lh = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 24 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64               ; 3 uses
  %i.lk = sub i64 %i.li, %i.lj                    ; 2 uses
  %i.ll = lshr exact i64 %i.lk, 2                 ; 5 uses
  %i.lm = trunc i64 %i.ll to i32                  ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.preheader.lr.ph.split.i78.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i

.preheader.lr.ph.split.i78.i.i:                   ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i
  %i.lo = icmp sgt i32 %i.jm, 0
  br i1 %i.lo, label %.preheader.us.preheader.i92.i.i, label %iter.check232

iter.check232:                                    ; preds = %.preheader.lr.ph.split.i78.i.i
  %wide.trip.count.i80.i.i = and i64 %i.ll, 2147483647 ; 6 uses
  %min.iters.check216 = icmp samesign ult i64 %wide.trip.count.i80.i.i, 4
  br i1 %min.iters.check216, label %.loopexit.i84.i.i.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %iter.check232
  %i.lp = add i64 %i.jp, %i.lf
  %i.lq = sub i64 %i.lj, %i.lp
  %diff.check218 = icmp ugt i64 %i.lq, -128
  br i1 %diff.check218, label %.loopexit.i84.i.i.preheader, label %vector.main.loop.iter.check219

vector.main.loop.iter.check219:                   ; preds = %vector.memcheck217
  %min.iters.check220 = icmp samesign ult i64 %wide.trip.count.i80.i.i, 32
  br i1 %min.iters.check220, label %vec.epilog.ph236, label %vector.ph221

vector.ph221:                                     ; preds = %vector.main.loop.iter.check219
  %n.vec222 = and i64 %i.ll, 2147483616           ; 5 uses
  %i.lr = add nsw i64 %i.jq, %n.vec222
  %i.ls = getelementptr i8, ptr %i.lc, i64 %i.jp
  br label %vector.body223

vector.body223:                                   ; preds = %vector.ph221, %vector.body223
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body223 ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %index224 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 96
  %wide.load225 = load <8 x i32>, ptr %i.lt, align 4, !tbaa !89
  %wide.load226 = load <8 x i32>, ptr %i.lu, align 4, !tbaa !89
  %wide.load227 = load <8 x i32>, ptr %i.lv, align 4, !tbaa !89
  %wide.load228 = load <8 x i32>, ptr %i.lw, align 4, !tbaa !89
  %i.lx = getelementptr [4 x i8], ptr %i.ls, i64 %index224 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 96
  store <8 x i32> %wide.load225, ptr %i.lx, align 4, !tbaa !89
  store <8 x i32> %wide.load226, ptr %i.ly, align 4, !tbaa !89
  store <8 x i32> %wide.load227, ptr %i.lz, align 4, !tbaa !89
  store <8 x i32> %wide.load228, ptr %i.ma, align 4, !tbaa !89
  %index.next229 = add nuw i64 %index224, 32      ; 2 uses
  %i.mb = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.mb, label %middle.block230, label %vector.body223, !llvm.loop !236

middle.block230:                                  ; preds = %vector.body223
  %cmp.n231 = icmp eq i64 %wide.trip.count.i80.i.i, %n.vec222
  br i1 %cmp.n231, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block230
  %i.mc = and i64 %i.lk, 112
  %min.epilog.iters.check235 = icmp eq i64 %i.mc, 0
  br i1 %min.epilog.iters.check235, label %.loopexit.i84.i.i.preheader, label %vec.epilog.ph236, !prof !121

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check219, %vec.epilog.iter.check233
  %vec.epilog.resume.val237 = phi i64 [ %n.vec222, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check219 ]
  %n.vec238 = and i64 %i.ll, 2147483644           ; 4 uses
  %i.md = add nsw i64 %i.jq, %n.vec238
  %i.me = getelementptr i8, ptr %i.lc, i64 %i.jp
  br label %vec.epilog.vector.body239

vec.epilog.vector.body239:                        ; preds = %vec.epilog.vector.body239, %vec.epilog.ph236
  %index240 = phi i64 [ %vec.epilog.resume.val237, %vec.epilog.ph236 ], [ %index.next242, %vec.epilog.vector.body239 ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %index240
  %wide.load241 = load <4 x i32>, ptr %i.mf, align 4, !tbaa !89
  %i.mg = getelementptr [4 x i8], ptr %i.me, i64 %index240
  store <4 x i32> %wide.load241, ptr %i.mg, align 4, !tbaa !89
  %index.next242 = add nuw i64 %index240, 4       ; 2 uses
  %i.mh = icmp eq i64 %index.next242, %n.vec238
  br i1 %i.mh, label %vec.epilog.middle.block243, label %vec.epilog.vector.body239, !llvm.loop !237

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body239
  %cmp.n244 = icmp eq i64 %wide.trip.count.i80.i.i, %n.vec238
  br i1 %cmp.n244, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i, label %.loopexit.i84.i.i.preheader

.loopexit.i84.i.i.preheader:                      ; preds = %iter.check232, %vector.memcheck217, %vec.epilog.iter.check233, %vec.epilog.middle.block243
  %indvars.iv.i85.i.i.ph = phi i64 [ 0, %iter.check232 ], [ 0, %vector.memcheck217 ], [ %n.vec222, %vec.epilog.iter.check233 ], [ %n.vec238, %vec.epilog.middle.block243 ] ; 4 uses
  %.12735.i86.i.i.ph = phi i64 [ %i.jq, %iter.check232 ], [ %i.jq, %vector.memcheck217 ], [ %i.lr, %vec.epilog.iter.check233 ], [ %i.md, %vec.epilog.middle.block243 ] ; 2 uses
  %i.mi = sub nsw i64 %i.ll, %indvars.iv.i85.i.i.ph
  %xtraiter519 = and i64 %i.mi, 7                 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.loopexit.i84.i.i.prol.loopexit, label %.loopexit.i84.i.i.prol

.loopexit.i84.i.i.prol:                           ; preds = %.loopexit.i84.i.i.preheader, %.loopexit.i84.i.i.prol
  %indvars.iv.i85.i.i.prol = phi i64 [ %indvars.iv.next.i87.i.i.prol, %.loopexit.i84.i.i.prol ], [ %indvars.iv.i85.i.i.ph, %.loopexit.i84.i.i.preheader ] ; 2 uses
  %.12735.i86.i.i.prol = phi i64 [ %.230.i88.i.i.prol, %.loopexit.i84.i.i.prol ], [ %.12735.i86.i.i.ph, %.loopexit.i84.i.i.preheader ] ; 2 uses
  %prol.iter521 = phi i64 [ %prol.iter521.next, %.loopexit.i84.i.i.prol ], [ 0, %.loopexit.i84.i.i.preheader ]
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i.prol
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !89
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i.prol
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !89
  %indvars.iv.next.i87.i.i.prol = add nuw nsw i64 %indvars.iv.i85.i.i.prol, 1 ; 2 uses
  %.230.i88.i.i.prol = add i64 %.12735.i86.i.i.prol, 1 ; 2 uses
  %prol.iter521.next = add i64 %prol.iter521, 1   ; 2 uses
  %prol.iter521.cmp.not = icmp eq i64 %prol.iter521.next, %xtraiter519
  br i1 %prol.iter521.cmp.not, label %.loopexit.i84.i.i.prol.loopexit, label %.loopexit.i84.i.i.prol, !llvm.loop !238

.loopexit.i84.i.i.prol.loopexit:                  ; preds = %.loopexit.i84.i.i.prol, %.loopexit.i84.i.i.preheader
  %indvars.iv.i85.i.i.unr = phi i64 [ %indvars.iv.i85.i.i.ph, %.loopexit.i84.i.i.preheader ], [ %indvars.iv.next.i87.i.i.prol, %.loopexit.i84.i.i.prol ]
  %.12735.i86.i.i.unr = phi i64 [ %.12735.i86.i.i.ph, %.loopexit.i84.i.i.preheader ], [ %.230.i88.i.i.prol, %.loopexit.i84.i.i.prol ]
  %i.mm = sub nsw i64 %indvars.iv.i85.i.i.ph, %wide.trip.count.i80.i.i
  %i.mn = icmp ugt i64 %i.mm, -8
  br i1 %i.mn, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i, label %.loopexit.i84.i.i

.preheader.us.preheader.i92.i.i:                  ; preds = %.preheader.lr.ph.split.i78.i.i
  %i.mo = add nuw i32 %i.jm, 1
  %15 = add i64 %i.lf, 4
  %16 = sub i64 %15, %i.lj
  %i.mp = zext nneg i32 %i.jm to i64              ; 5 uses
  %min.iters.check179 = icmp ult i32 %i.jm, 8
  %invariant.op551 = add i64 %16, -1
  %min.iters.check183 = icmp ult i32 %i.jm, 32
  %i.mq = and i64 %i.mp, 24
  %n.vec185 = and i64 %i.mp, 2147483616           ; 5 uses
  %broadcast.splatinsert186 = insertelement <8 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat187 = shufflevector <8 x i32> %broadcast.splatinsert186, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n196 = icmp eq i64 %n.vec185, %i.mp
  %min.epilog.iters.check200 = icmp eq i64 %i.mq, 0
  %n.vec203 = and i64 %i.mp, 2147483640           ; 4 uses
  %broadcast.splatinsert204 = insertelement <8 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat205 = shufflevector <8 x i32> %broadcast.splatinsert204, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n211 = icmp eq i64 %n.vec203, %i.mp
  br label %iter.check197

iter.check197:                                    ; preds = %..loopexit_crit_edge.us.us.i108.i.i, %.preheader.us.preheader.i92.i.i
  %.02436.us.us.i98.i.i = phi i32 [ 0, %.preheader.us.preheader.i92.i.i ], [ %i.mx, %..loopexit_crit_edge.us.us.i108.i.i ] ; 4 uses
  %.12735.us.us.i99.i.i = phi i64 [ %i.jq, %.preheader.us.preheader.i92.i.i ], [ %.2.us.us.i105.i.i.lcssa, %..loopexit_crit_edge.us.us.i108.i.i ] ; 3 uses
  %i.mr = add i32 %i.jm, %.02436.us.us.i98.i.i
  %i.ms = sext i32 %.02436.us.us.i98.i.i to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !89
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.12735.us.us.i99.i.i
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !89
  %.129.us.us.i100.i.i = add nsw i32 %.02436.us.us.i98.i.i, 1
  %.230.us.us.i101.i.i = add i64 %.12735.us.us.i99.i.i, 1 ; 6 uses
  %i.mw = sext i32 %.129.us.us.i100.i.i to i64    ; 7 uses
  %i.mx = add i32 %i.mo, %.02436.us.us.i98.i.i    ; 4 uses
  br i1 %min.iters.check179, label %vec.epilog.scalar.ph199.preheader, label %vector.memcheck180

vector.memcheck180:                               ; preds = %iter.check197
  %17 = sub i64 %.12735.us.us.i99.i.i, %i.mw
  %i.my = shl i64 %17, 2
  %i.mz = add i64 %i.my, %invariant.op551
  %diff.check181 = icmp ult i64 %i.mz, 127
  br i1 %diff.check181, label %vec.epilog.scalar.ph199.preheader, label %vector.main.loop.iter.check182

vector.main.loop.iter.check182:                   ; preds = %vector.memcheck180
  br i1 %min.iters.check183, label %vec.epilog.ph201, label %vector.ph184

vector.ph184:                                     ; preds = %vector.main.loop.iter.check182
  %i.na = add nsw i64 %n.vec185, %i.mw
  %i.nb = add i64 %.230.us.us.i101.i.i, %n.vec185 ; 2 uses
  %invariant.gep547 = getelementptr [4 x i8], ptr %i.lh, i64 %i.mw
  %i.nc = getelementptr [4 x i8], ptr %i.lc, i64 %.230.us.us.i101.i.i
  br label %vector.body188

vector.body188:                                   ; preds = %vector.ph184, %vector.body188
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next194, %vector.body188 ] ; 3 uses
  %gep548 = getelementptr [4 x i8], ptr %invariant.gep547, i64 %index189 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %gep548, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %gep548, i64 64
  %i.nf = getelementptr inbounds nuw i8, ptr %gep548, i64 96
  %wide.load190 = load <8 x i32>, ptr %gep548, align 4, !tbaa !89
  %wide.load191 = load <8 x i32>, ptr %i.nd, align 4, !tbaa !89
  %wide.load192 = load <8 x i32>, ptr %i.ne, align 4, !tbaa !89
  %wide.load193 = load <8 x i32>, ptr %i.nf, align 4, !tbaa !89
  %i.ng = add nsw <8 x i32> %wide.load190, %broadcast.splat187
  %i.nh = add nsw <8 x i32> %wide.load191, %broadcast.splat187
  %i.ni = add nsw <8 x i32> %wide.load192, %broadcast.splat187
  %i.nj = add nsw <8 x i32> %wide.load193, %broadcast.splat187
  %i.nk = getelementptr [4 x i8], ptr %i.nc, i64 %index189 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 96
  store <8 x i32> %i.ng, ptr %i.nk, align 4, !tbaa !89
  store <8 x i32> %i.nh, ptr %i.nl, align 4, !tbaa !89
  store <8 x i32> %i.ni, ptr %i.nm, align 4, !tbaa !89
  store <8 x i32> %i.nj, ptr %i.nn, align 4, !tbaa !89
  %index.next194 = add nuw i64 %index189, 32      ; 2 uses
  %i.no = icmp eq i64 %index.next194, %n.vec185
  br i1 %i.no, label %middle.block195, label %vector.body188, !llvm.loop !239

middle.block195:                                  ; preds = %vector.body188
  br i1 %cmp.n196, label %..loopexit_crit_edge.us.us.i108.i.i, label %vec.epilog.iter.check198

vec.epilog.iter.check198:                         ; preds = %middle.block195
  br i1 %min.epilog.iters.check200, label %vec.epilog.scalar.ph199.preheader, label %vec.epilog.ph201, !prof !93

vec.epilog.ph201:                                 ; preds = %vector.main.loop.iter.check182, %vec.epilog.iter.check198
  %vec.epilog.resume.val202 = phi i64 [ %n.vec185, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check182 ]
  %i.np = add nsw i64 %n.vec203, %i.mw
  %i.nq = add i64 %.230.us.us.i101.i.i, %n.vec203 ; 2 uses
  %invariant.gep549 = getelementptr [4 x i8], ptr %i.lh, i64 %i.mw
  %i.nr = getelementptr [4 x i8], ptr %i.lc, i64 %.230.us.us.i101.i.i
  br label %vec.epilog.vector.body206

vec.epilog.vector.body206:                        ; preds = %vec.epilog.vector.body206, %vec.epilog.ph201
  %index207 = phi i64 [ %vec.epilog.resume.val202, %vec.epilog.ph201 ], [ %index.next209, %vec.epilog.vector.body206 ] ; 3 uses
  %gep550 = getelementptr [4 x i8], ptr %invariant.gep549, i64 %index207
  %wide.load208 = load <8 x i32>, ptr %gep550, align 4, !tbaa !89
  %i.ns = add nsw <8 x i32> %wide.load208, %broadcast.splat205
  %i.nt = getelementptr [4 x i8], ptr %i.nr, i64 %index207
  store <8 x i32> %i.ns, ptr %i.nt, align 4, !tbaa !89
  %index.next209 = add nuw i64 %index207, 8       ; 2 uses
  %i.nu = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.nu, label %vec.epilog.middle.block210, label %vec.epilog.vector.body206, !llvm.loop !240

vec.epilog.middle.block210:                       ; preds = %vec.epilog.vector.body206
  br i1 %cmp.n211, label %..loopexit_crit_edge.us.us.i108.i.i, label %vec.epilog.scalar.ph199.preheader

vec.epilog.scalar.ph199.preheader:                ; preds = %iter.check197, %vector.memcheck180, %vec.epilog.iter.check198, %vec.epilog.middle.block210
  %indvars.iv49.i102.i.i.ph = phi i64 [ %i.mw, %iter.check197 ], [ %i.mw, %vector.memcheck180 ], [ %i.na, %vec.epilog.iter.check198 ], [ %i.np, %vec.epilog.middle.block210 ] ; 3 uses
  %.233.us.us.i103.i.i.ph = phi i64 [ %.230.us.us.i101.i.i, %iter.check197 ], [ %.230.us.us.i101.i.i, %vector.memcheck180 ], [ %i.nb, %vec.epilog.iter.check198 ], [ %i.nq, %vec.epilog.middle.block210 ] ; 2 uses
  %i.nv = trunc i64 %indvars.iv49.i102.i.i.ph to i32 ; 2 uses
  %i.nw = sub i32 %i.mx, %i.nv
  %i.nx = sub i32 %i.mr, %i.nv
  %xtraiter522 = and i32 %i.nw, 7                 ; 2 uses
  %lcmp.mod523.not = icmp eq i32 %xtraiter522, 0
  br i1 %lcmp.mod523.not, label %vec.epilog.scalar.ph199.prol.loopexit, label %vec.epilog.scalar.ph199.prol

vec.epilog.scalar.ph199.prol:                     ; preds = %vec.epilog.scalar.ph199.preheader, %vec.epilog.scalar.ph199.prol
  %indvars.iv49.i102.i.i.prol = phi i64 [ %indvars.iv.next50.i104.i.i.prol, %vec.epilog.scalar.ph199.prol ], [ %indvars.iv49.i102.i.i.ph, %vec.epilog.scalar.ph199.preheader ] ; 2 uses
  %.233.us.us.i103.i.i.prol = phi i64 [ %.2.us.us.i105.i.i.prol, %vec.epilog.scalar.ph199.prol ], [ %.233.us.us.i103.i.i.ph, %vec.epilog.scalar.ph199.preheader ] ; 2 uses
  %prol.iter524 = phi i32 [ %prol.iter524.next, %vec.epilog.scalar.ph199.prol ], [ 0, %vec.epilog.scalar.ph199.preheader ]
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i.prol
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !89
  %i.oa = add nsw i32 %i.nz, %i.bn
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i.prol
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !89
  %indvars.iv.next50.i104.i.i.prol = add nsw i64 %indvars.iv49.i102.i.i.prol, 1 ; 2 uses
  %.2.us.us.i105.i.i.prol = add i64 %.233.us.us.i103.i.i.prol, 1 ; 3 uses
  %prol.iter524.next = add i32 %prol.iter524, 1   ; 2 uses
  %prol.iter524.cmp.not = icmp eq i32 %prol.iter524.next, %xtraiter522
  br i1 %prol.iter524.cmp.not, label %vec.epilog.scalar.ph199.prol.loopexit, label %vec.epilog.scalar.ph199.prol, !llvm.loop !241

vec.epilog.scalar.ph199.prol.loopexit:            ; preds = %vec.epilog.scalar.ph199.prol, %vec.epilog.scalar.ph199.preheader
  %.2.us.us.i105.i.i.lcssa513.unr = phi i64 [ poison, %vec.epilog.scalar.ph199.preheader ], [ %.2.us.us.i105.i.i.prol, %vec.epilog.scalar.ph199.prol ]
  %indvars.iv49.i102.i.i.unr = phi i64 [ %indvars.iv49.i102.i.i.ph, %vec.epilog.scalar.ph199.preheader ], [ %indvars.iv.next50.i104.i.i.prol, %vec.epilog.scalar.ph199.prol ]
  %.233.us.us.i103.i.i.unr = phi i64 [ %.233.us.us.i103.i.i.ph, %vec.epilog.scalar.ph199.preheader ], [ %.2.us.us.i105.i.i.prol, %vec.epilog.scalar.ph199.prol ]
  %i.oc = icmp ult i32 %i.nx, 7
  br i1 %i.oc, label %..loopexit_crit_edge.us.us.i108.i.i, label %vec.epilog.scalar.ph199

vec.epilog.scalar.ph199:                          ; preds = %vec.epilog.scalar.ph199.prol.loopexit, %vec.epilog.scalar.ph199
  %indvars.iv49.i102.i.i = phi i64 [ %indvars.iv.next50.i104.i.i.7, %vec.epilog.scalar.ph199 ], [ %indvars.iv49.i102.i.i.unr, %vec.epilog.scalar.ph199.prol.loopexit ] ; 9 uses
  %.233.us.us.i103.i.i = phi i64 [ %.2.us.us.i105.i.i.7, %vec.epilog.scalar.ph199 ], [ %.233.us.us.i103.i.i.unr, %vec.epilog.scalar.ph199.prol.loopexit ] ; 9 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !89
  %i.of = add nsw i32 %i.oe, %i.bn
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i
  store i32 %i.of, ptr %i.og, align 4, !tbaa !89
  %i.oh = getelementptr [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i
  %i.oi = getelementptr i8, ptr %i.oh, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !89
  %i.ok = add nsw i32 %i.oj, %i.bn
  %i.ol = getelementptr [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i
  %i.om = getelementptr i8, ptr %i.ol, i64 4
  store i32 %i.ok, ptr %i.om, align 4, !tbaa !89
  %i.on = getelementptr [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i
  %i.oo = getelementptr i8, ptr %i.on, i64 8
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !89
  %i.oq = add nsw i32 %i.op, %i.bn
  %i.or = getelementptr [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i
  %i.os = getelementptr i8, ptr %i.or, i64 8
  store i32 %i.oq, ptr %i.os, align 4, !tbaa !89
  %i.ot = getelementptr [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i
  %i.ou = getelementptr i8, ptr %i.ot, i64 12
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !89
  %i.ow = add nsw i32 %i.ov, %i.bn
  %i.ox = getelementptr [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i
  %i.oy = getelementptr i8, ptr %i.ox, i64 12
  store i32 %i.ow, ptr %i.oy, align 4, !tbaa !89
  %i.oz = getelementptr [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i
  %i.pa = getelementptr i8, ptr %i.oz, i64 16
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !89
  %i.pc = add nsw i32 %i.pb, %i.bn
  %i.pd = getelementptr [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i
  %i.pe = getelementptr i8, ptr %i.pd, i64 16
  store i32 %i.pc, ptr %i.pe, align 4, !tbaa !89
  %i.pf = getelementptr [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i
  %i.pg = getelementptr i8, ptr %i.pf, i64 20
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !89
  %i.pi = add nsw i32 %i.ph, %i.bn
  %i.pj = getelementptr [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i
  %i.pk = getelementptr i8, ptr %i.pj, i64 20
  store i32 %i.pi, ptr %i.pk, align 4, !tbaa !89
  %i.pl = getelementptr [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i
  %i.pm = getelementptr i8, ptr %i.pl, i64 24
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !89
  %i.po = add nsw i32 %i.pn, %i.bn
  %i.pp = getelementptr [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i
  %i.pq = getelementptr i8, ptr %i.pp, i64 24
  store i32 %i.po, ptr %i.pq, align 4, !tbaa !89
  %i.pr = getelementptr [4 x i8], ptr %i.lh, i64 %indvars.iv49.i102.i.i
  %i.ps = getelementptr i8, ptr %i.pr, i64 28
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !89
  %i.pu = add nsw i32 %i.pt, %i.bn
  %i.pv = getelementptr [4 x i8], ptr %i.lc, i64 %.233.us.us.i103.i.i
  %i.pw = getelementptr i8, ptr %i.pv, i64 28
  store i32 %i.pu, ptr %i.pw, align 4, !tbaa !89
  %indvars.iv.next50.i104.i.i.7 = add nsw i64 %indvars.iv49.i102.i.i, 8 ; 2 uses
  %.2.us.us.i105.i.i.7 = add i64 %.233.us.us.i103.i.i, 8 ; 2 uses
  %lftr.wideiv.i106.i.i.7 = trunc i64 %indvars.iv.next50.i104.i.i.7 to i32
  %exitcond52.not.i107.i.i.7 = icmp eq i32 %i.mx, %lftr.wideiv.i106.i.i.7
  br i1 %exitcond52.not.i107.i.i.7, label %..loopexit_crit_edge.us.us.i108.i.i, label %vec.epilog.scalar.ph199, !llvm.loop !242

..loopexit_crit_edge.us.us.i108.i.i:              ; preds = %vec.epilog.scalar.ph199.prol.loopexit, %vec.epilog.scalar.ph199, %vec.epilog.middle.block210, %middle.block195
  %.2.us.us.i105.i.i.lcssa = phi i64 [ %i.nq, %vec.epilog.middle.block210 ], [ %i.nb, %middle.block195 ], [ %.2.us.us.i105.i.i.lcssa513.unr, %vec.epilog.scalar.ph199.prol.loopexit ], [ %.2.us.us.i105.i.i.7, %vec.epilog.scalar.ph199 ]
  %i.px = icmp slt i32 %i.mx, %i.lm
  br i1 %i.px, label %iter.check197, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i, !llvm.loop !234

.loopexit.i84.i.i:                                ; preds = %.loopexit.i84.i.i.prol.loopexit, %.loopexit.i84.i.i
  %indvars.iv.i85.i.i = phi i64 [ %indvars.iv.next.i87.i.i.7, %.loopexit.i84.i.i ], [ %indvars.iv.i85.i.i.unr, %.loopexit.i84.i.i.prol.loopexit ] ; 9 uses
  %.12735.i86.i.i = phi i64 [ %.230.i88.i.i.7, %.loopexit.i84.i.i ], [ %.12735.i86.i.i.unr, %.loopexit.i84.i.i.prol.loopexit ] ; 9 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !89
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i
  store i32 %i.pz, ptr %i.qa, align 4, !tbaa !89
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !89
  %i.qe = getelementptr [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i
  %i.qf = getelementptr i8, ptr %i.qe, i64 4
  store i32 %i.qd, ptr %i.qf, align 4, !tbaa !89
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !89
  %i.qj = getelementptr [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i
  %i.qk = getelementptr i8, ptr %i.qj, i64 8
  store i32 %i.qi, ptr %i.qk, align 4, !tbaa !89
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 12
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !89
  %i.qo = getelementptr [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i
  %i.qp = getelementptr i8, ptr %i.qo, i64 12
  store i32 %i.qn, ptr %i.qp, align 4, !tbaa !89
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !89
  %i.qt = getelementptr [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i
  %i.qu = getelementptr i8, ptr %i.qt, i64 16
  store i32 %i.qs, ptr %i.qu, align 4, !tbaa !89
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 20
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !89
  %i.qy = getelementptr [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i
  %i.qz = getelementptr i8, ptr %i.qy, i64 20
  store i32 %i.qx, ptr %i.qz, align 4, !tbaa !89
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !89
  %i.rd = getelementptr [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i
  %i.re = getelementptr i8, ptr %i.rd, i64 24
  store i32 %i.rc, ptr %i.re, align 4, !tbaa !89
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i85.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 28
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !89
  %i.ri = getelementptr [4 x i8], ptr %i.lc, i64 %.12735.i86.i.i
  %i.rj = getelementptr i8, ptr %i.ri, i64 28
  store i32 %i.rh, ptr %i.rj, align 4, !tbaa !89
  %indvars.iv.next.i87.i.i.7 = add nuw nsw i64 %indvars.iv.i85.i.i, 8 ; 2 uses
  %.230.i88.i.i.7 = add i64 %.12735.i86.i.i, 8
  %exitcond.not.i89.i.i.7 = icmp eq i64 %indvars.iv.next.i87.i.i.7, %wide.trip.count.i80.i.i
  br i1 %exitcond.not.i89.i.i.7, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i, label %.loopexit.i84.i.i, !llvm.loop !243

_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i: ; preds = %.loopexit.i84.i.i.prol.loopexit, %.loopexit.i84.i.i, %..loopexit_crit_edge.us.us.i108.i.i, %middle.block230, %vec.epilog.middle.block243, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i
  %i.rk = phi ptr [ %i.lc, %middle.block230 ], [ %i.ld, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i77.i.i ], [ %i.lc, %..loopexit_crit_edge.us.us.i108.i.i ], [ %i.lc, %vec.epilog.middle.block243 ], [ %i.lc, %.loopexit.i84.i.i ], [ %i.lc, %.loopexit.i84.i.i.prol.loopexit ]
  %i.rl = add nuw nsw i32 %.073255.i.i, 1         ; 2 uses
  %i.rm = load i32, ptr %i.as, align 4, !tbaa !88
  %i.rn = icmp slt i32 %i.rl, %i.rm
  br i1 %i.rn, label %.lr.ph.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i, !llvm.loop !244

bb.x:                                             ; preds = %bb.e, %._crit_edge271.i.i
  %i.ro = phi i32 [ %.pre272.i.i, %._crit_edge271.i.i ], [ %.pre273.i.i, %bb.e ] ; 4 uses
  %i.rp = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i ; 4 uses
  %i.rq = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv.i.i ; 3 uses
  %i.rr = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !101 ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 4 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !97 ; 4 uses
  %i.rw = load ptr, ptr %i.rp, align 8, !tbaa !98 ; 10 uses
  %i.rx = ptrtoint ptr %i.rv to i64               ; 2 uses
  %i.ry = ptrtoint ptr %i.rw to i64               ; 2 uses
  %i.rz = sub i64 %i.rx, %i.ry                    ; 4 uses
  %i.sa = ashr exact i64 %i.rz, 2                 ; 9 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !97
  %i.sd = load ptr, ptr %i.rq, align 8, !tbaa !98
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf
  %i.sh = lshr exact i64 %i.sg, 2
  %i.si = trunc i64 %i.sh to i32
  %i.sj = mul nsw i32 %i.ro, %i.si                ; 2 uses
  %i.sk = sext i32 %i.sj to i64                   ; 7 uses
  %i.sl = add nsw i64 %i.sa, %i.sk                ; 3 uses
  %i.sm = icmp ugt i64 %i.sl, %i.sa
  br i1 %i.sm, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %.not.i222.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not.i222.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rp, i64 16 ; 3 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !120
  %i.sp = ptrtoint ptr %i.so to i64
  %i.sq = sub i64 %i.sp, %i.rx
  %i.sr = ashr exact i64 %i.sq, 2                 ; 2 uses
  %i.ss = icmp ult i64 %i.sa, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ss)
  %i.st = xor i64 %i.sa, 2305843009213693951      ; 2 uses
  %i.su = icmp ule i64 %i.sr, %i.st
  tail call void @llvm.assume(i1 %i.su)
  %.not28.i223.i.i = icmp ult i64 %i.sr, %i.sk
  br i1 %.not28.i223.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.rv, align 4, !tbaa !89
  %i.sv = getelementptr i8, ptr %i.rv, i64 4      ; 3 uses
  %i.sw = add nsw i64 %i.sk, -1                   ; 2 uses
  %i.sx = icmp eq i64 %i.sw, 0
  br i1 %i.sx, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i226.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i224.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i224.i.i: ; preds = %bb.aa
  %.idx.i.i.i.i.i.i225.i.i = shl nuw nsw i64 %i.sw, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.sv, i8 0, i64 %.idx.i.i.i.i.i.i225.i.i, i1 false), !tbaa !89
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.idx.i.i.i.i.i.i225.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i226.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i226.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i224.i.i, %bb.aa
  %.0.i.i.i.i227.i.i = phi ptr [ %i.sy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i224.i.i ], [ %i.sv, %bb.aa ]
  store ptr %.0.i.i.i.i227.i.i, ptr %i.ru, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i

bb.ab:                                            ; preds = %bb.z
  %i.sz = icmp ult i64 %i.st, %i.sk
  br i1 %i.sz, label %bb.ac, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i228.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i228.i.i: ; preds = %bb.ab
  %.sroa.speculated.i.i229.i.i = tail call i64 @llvm.umax.i64(i64 %i.sa, i64 %i.sk)
  %i.ta = add nuw nsw i64 %.sroa.speculated.i.i229.i.i, %i.sa
  %i.tb = tail call i64 @llvm.umin.i64(i64 %i.ta, i64 2305843009213693951) ; 2 uses
  %i.tc = shl nuw nsw i64 %i.tb, 2
  %i.td = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tc) #24 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.rz ; 3 uses
  store i32 0, ptr %i.te, align 4, !tbaa !89
  %i.tf = add nsw i64 %i.sk, -1                   ; 2 uses
  %i.tg = icmp eq i64 %i.tf, 0
  br i1 %i.tg, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i232.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i230.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i230.i.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i228.i.i
  %i.th = getelementptr i8, ptr %i.te, i64 4
  %.idx.i.i.i.i.i31.i231.i.i = shl nuw nsw i64 %i.tf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.th, i8 0, i64 %.idx.i.i.i.i.i31.i231.i.i, i1 false), !tbaa !89
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i232.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i232.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i230.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i228.i.i
  %i.ti = icmp sgt i64 %i.rz, 0
  br i1 %i.ti, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i233.i.i

bb.ad:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i232.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.td, ptr align 4 %i.rw, i64 %i.rz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i233.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i233.i.i: ; preds = %bb.ad, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i232.i.i
  %.not.i35.i234.i.i = icmp eq ptr %i.rw, null
  br i1 %.not.i35.i234.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i235.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i233.i.i
  %i.tj = load ptr, ptr %i.sn, align 8, !tbaa !120
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = sub i64 %i.tk, %i.ry
  tail call void @_ZdlPvm(ptr noundef nonnull %i.rw, i64 noundef %i.tl) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i235.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i235.i.i: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i233.i.i
  store ptr %i.td, ptr %i.rp, align 8, !tbaa !98
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.sk
  store ptr %i.tm, ptr %i.ru, align 8, !tbaa !97
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tb
  store ptr %i.tn, ptr %i.sn, align 8, !tbaa !120
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i

bb.af:                                            ; preds = %bb.x
  %i.to = icmp ult i64 %i.sl, %i.sa
  br i1 %i.to, label %bb.ag, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i

bb.ag:                                            ; preds = %bb.af
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.sl ; 2 uses
  %.not.i.i.i148.i.i = icmp eq ptr %i.rv, %i.tp
  br i1 %.not.i.i.i148.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i149.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i149.i.i: ; preds = %bb.ag
  store ptr %i.tp, ptr %i.ru, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i:      ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i149.i.i, %bb.ag, %bb.af, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i235.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i226.i.i, %bb.y
  %i.tq = phi ptr [ %i.td, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i235.i.i ], [ %i.rw, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i226.i.i ], [ %i.rw, %bb.y ], [ %i.rw, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i149.i.i ], [ %i.rw, %bb.ag ], [ %i.rw, %bb.af ] ; 24 uses
  %i.tr = ptrtoaddr ptr %i.tq to i64              ; 2 uses
  %i.ts = icmp sgt i32 %i.ro, 0
  br i1 %i.ts, label %.preheader.lr.ph.i.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i
  %i.tt = load ptr, ptr %i.sb, align 8, !tbaa !97
  %i.tu = load ptr, ptr %i.rq, align 8, !tbaa !98 ; 24 uses
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = ptrtoint ptr %i.tu to i64               ; 3 uses
  %i.tx = sub i64 %i.tv, %i.tw                    ; 2 uses
  %i.ty = lshr exact i64 %i.tx, 2                 ; 5 uses
  %i.tz = trunc i64 %i.ty to i32                  ; 2 uses
  %i.ua = icmp sgt i32 %i.tz, 0
  br i1 %i.ua, label %.preheader.lr.ph.split.i115.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i

.preheader.lr.ph.split.i115.i.i:                  ; preds = %.preheader.lr.ph.i.i.i
  %i.ub = icmp sgt i32 %i.rt, 0
  br i1 %i.ub, label %.preheader.us.preheader.i129.i.i, label %.preheader.preheader.i116.i.i

.preheader.preheader.i116.i.i:                    ; preds = %.preheader.lr.ph.split.i115.i.i
  %wide.trip.count.i117.i.i = and i64 %i.ty, 2147483647 ; 6 uses
  %18 = sub i64 %i.tr, %i.tw
  %min.iters.check146 = icmp samesign ult i64 %wide.trip.count.i117.i.i, 4
  %invariant.op553 = add i64 %18, -1
  %min.iters.check150 = icmp samesign ult i64 %wide.trip.count.i117.i.i, 32
  %n.vec152 = and i64 %i.ty, 2147483616           ; 5 uses
  %cmp.n161 = icmp eq i64 %wide.trip.count.i117.i.i, %n.vec152
  %i.uc = and i64 %i.tx, 112
  %min.epilog.iters.check165 = icmp eq i64 %i.uc, 0
  %n.vec168 = and i64 %i.ty, 2147483644           ; 4 uses
  %cmp.n174 = icmp eq i64 %wide.trip.count.i117.i.i, %n.vec168
  br label %iter.check162

.preheader.us.preheader.i129.i.i:                 ; preds = %.preheader.lr.ph.split.i115.i.i
  %i.ud = add nuw i32 %i.rt, 1
  %19 = add i64 %i.tr, 4
  %20 = sub i64 %19, %i.tw
  %i.ue = zext nneg i32 %i.rt to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.rt, 8
  %invariant.op559 = add i64 %20, -1
  %min.iters.check132 = icmp ult i32 %i.rt, 32
  %i.uf = and i64 %i.ue, 24
  %n.vec = and i64 %i.ue, 2147483616              ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ue
  %min.epilog.iters.check = icmp eq i64 %i.uf, 0
  %n.vec136 = and i64 %i.ue, 2147483640           ; 4 uses
  %cmp.n142 = icmp eq i64 %n.vec136, %i.ue
  br label %.preheader.us.i130.i.i

.preheader.us.i130.i.i:                           ; preds = %._crit_edge.split.us.us.i146.i.i, %.preheader.us.preheader.i129.i.i
  %.02542.us.i131.i.i = phi i32 [ %i.xo, %._crit_edge.split.us.us.i146.i.i ], [ 0, %.preheader.us.preheader.i129.i.i ]
  %.02641.us.i132.i.i = phi i64 [ %.2.us.us.i142.i.i.lcssa, %._crit_edge.split.us.us.i146.i.i ], [ %i.sa, %.preheader.us.preheader.i129.i.i ]
  %.02839.us.i133.i.i = phi i32 [ %i.xn, %._crit_edge.split.us.us.i146.i.i ], [ %.0258.i.i, %.preheader.us.preheader.i129.i.i ] ; 12 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.02839.us.i133.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert137 = insertelement <8 x i32> poison, i32 %.02839.us.i133.i.i, i64 0
  %broadcast.splat138 = shufflevector <8 x i32> %broadcast.splatinsert137, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %..loopexit_crit_edge.us.us.i145.i.i, %.preheader.us.i130.i.i
  %.02436.us.us.i135.i.i = phi i32 [ 0, %.preheader.us.i130.i.i ], [ %i.um, %..loopexit_crit_edge.us.us.i145.i.i ] ; 4 uses
  %.12735.us.us.i136.i.i = phi i64 [ %.02641.us.i132.i.i, %.preheader.us.i130.i.i ], [ %.2.us.us.i142.i.i.lcssa, %..loopexit_crit_edge.us.us.i145.i.i ] ; 3 uses
  %i.ug = add i32 %i.rt, %.02436.us.us.i135.i.i
  %i.uh = sext i32 %.02436.us.us.i135.i.i to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !89
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.12735.us.us.i136.i.i
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !89
  %.129.us.us.i137.i.i = add nsw i32 %.02436.us.us.i135.i.i, 1
  %.230.us.us.i138.i.i = add i64 %.12735.us.us.i136.i.i, 1 ; 6 uses
  %i.ul = sext i32 %.129.us.us.i137.i.i to i64    ; 7 uses
  %i.um = add i32 %i.ud, %.02436.us.us.i135.i.i   ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %21 = sub i64 %.12735.us.us.i136.i.i, %i.ul
  %i.un = shl i64 %21, 2
  %i.uo = add i64 %i.un, %invariant.op559
  %diff.check = icmp ult i64 %i.uo, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check132, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.up = add nsw i64 %n.vec, %i.ul
  %i.uq = add i64 %.230.us.us.i138.i.i, %n.vec    ; 2 uses
  %invariant.gep551 = getelementptr [4 x i8], ptr %i.tu, i64 %i.ul
  %i.ur = getelementptr [4 x i8], ptr %i.tq, i64 %.230.us.us.i138.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep552 = getelementptr [4 x i8], ptr %invariant.gep551, i64 %index ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %gep552, i64 32
  %i.ut = getelementptr inbounds nuw i8, ptr %gep552, i64 64
  %i.uu = getelementptr inbounds nuw i8, ptr %gep552, i64 96
  %wide.load = load <8 x i32>, ptr %gep552, align 4, !tbaa !89
  %wide.load133 = load <8 x i32>, ptr %i.us, align 4, !tbaa !89
  %wide.load134 = load <8 x i32>, ptr %i.ut, align 4, !tbaa !89
  %wide.load135 = load <8 x i32>, ptr %i.uu, align 4, !tbaa !89
  %i.uv = add nsw <8 x i32> %wide.load, %broadcast.splat
  %i.uw = add nsw <8 x i32> %wide.load133, %broadcast.splat
  %i.ux = add nsw <8 x i32> %wide.load134, %broadcast.splat
  %i.uy = add nsw <8 x i32> %wide.load135, %broadcast.splat
  %i.uz = getelementptr [4 x i8], ptr %i.ur, i64 %index ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 32
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 96
  store <8 x i32> %i.uv, ptr %i.uz, align 4, !tbaa !89
  store <8 x i32> %i.uw, ptr %i.va, align 4, !tbaa !89
  store <8 x i32> %i.ux, ptr %i.vb, align 4, !tbaa !89
  store <8 x i32> %i.uy, ptr %i.vc, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.vd = icmp eq i64 %index.next, %n.vec
  br i1 %i.vd, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us.i145.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ve = add nsw i64 %n.vec136, %i.ul
  %i.vf = add i64 %.230.us.us.i138.i.i, %n.vec136 ; 2 uses
  %invariant.gep553 = getelementptr [4 x i8], ptr %i.tu, i64 %i.ul
  %i.vg = getelementptr [4 x i8], ptr %i.tq, i64 %.230.us.us.i138.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %gep554 = getelementptr [4 x i8], ptr %invariant.gep553, i64 %index139
  %wide.load140 = load <8 x i32>, ptr %gep554, align 4, !tbaa !89
  %i.vh = add nsw <8 x i32> %wide.load140, %broadcast.splat138
  %i.vi = getelementptr [4 x i8], ptr %i.vg, i64 %index139
  store <8 x i32> %i.vh, ptr %i.vi, align 4, !tbaa !89
  %index.next141 = add nuw i64 %index139, 8       ; 2 uses
  %i.vj = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.vj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !246

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n142, label %..loopexit_crit_edge.us.us.i145.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv49.i139.i.i.ph = phi i64 [ %i.ul, %iter.check ], [ %i.ul, %vector.memcheck ], [ %i.up, %vec.epilog.iter.check ], [ %i.ve, %vec.epilog.middle.block ] ; 3 uses
  %.233.us.us.i140.i.i.ph = phi i64 [ %.230.us.us.i138.i.i, %iter.check ], [ %.230.us.us.i138.i.i, %vector.memcheck ], [ %i.uq, %vec.epilog.iter.check ], [ %i.vf, %vec.epilog.middle.block ] ; 2 uses
  %i.vk = trunc i64 %indvars.iv49.i139.i.i.ph to i32 ; 2 uses
  %i.vl = sub i32 %i.um, %i.vk
  %i.vm = sub i32 %i.ug, %i.vk
  %xtraiter528 = and i32 %i.vl, 7                 ; 2 uses
  %lcmp.mod529.not = icmp eq i32 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv49.i139.i.i.prol = phi i64 [ %indvars.iv.next50.i141.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv49.i139.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.233.us.us.i140.i.i.prol = phi i64 [ %.2.us.us.i142.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %.233.us.us.i140.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter530 = phi i32 [ %prol.iter530.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i.prol
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !89
  %i.vp = add nsw i32 %i.vo, %.02839.us.i133.i.i
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i.prol
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !89
  %indvars.iv.next50.i141.i.i.prol = add nsw i64 %indvars.iv49.i139.i.i.prol, 1 ; 2 uses
  %.2.us.us.i142.i.i.prol = add i64 %.233.us.us.i140.i.i.prol, 1 ; 3 uses
  %prol.iter530.next = add i32 %prol.iter530, 1   ; 2 uses
  %prol.iter530.cmp.not = icmp eq i32 %prol.iter530.next, %xtraiter528
  br i1 %prol.iter530.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !247

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.2.us.us.i142.i.i.lcssa515.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %.2.us.us.i142.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv49.i139.i.i.unr = phi i64 [ %indvars.iv49.i139.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next50.i141.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %.233.us.us.i140.i.i.unr = phi i64 [ %.233.us.us.i140.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %.2.us.us.i142.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.vr = icmp ult i32 %i.vm, 7
  br i1 %i.vr, label %..loopexit_crit_edge.us.us.i145.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv49.i139.i.i = phi i64 [ %indvars.iv.next50.i141.i.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv49.i139.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.233.us.us.i140.i.i = phi i64 [ %.2.us.us.i142.i.i.7, %vec.epilog.scalar.ph ], [ %.233.us.us.i140.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !89
  %i.vu = add nsw i32 %i.vt, %.02839.us.i133.i.i
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i
  store i32 %i.vu, ptr %i.vv, align 4, !tbaa !89
  %i.vw = getelementptr [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i
  %i.vx = getelementptr i8, ptr %i.vw, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !89
  %i.vz = add nsw i32 %i.vy, %.02839.us.i133.i.i
  %i.wa = getelementptr [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i
  %i.wb = getelementptr i8, ptr %i.wa, i64 4
  store i32 %i.vz, ptr %i.wb, align 4, !tbaa !89
  %i.wc = getelementptr [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i
  %i.wd = getelementptr i8, ptr %i.wc, i64 8
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !89
  %i.wf = add nsw i32 %i.we, %.02839.us.i133.i.i
  %i.wg = getelementptr [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i
  %i.wh = getelementptr i8, ptr %i.wg, i64 8
  store i32 %i.wf, ptr %i.wh, align 4, !tbaa !89
  %i.wi = getelementptr [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i
  %i.wj = getelementptr i8, ptr %i.wi, i64 12
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !89
  %i.wl = add nsw i32 %i.wk, %.02839.us.i133.i.i
  %i.wm = getelementptr [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i
  %i.wn = getelementptr i8, ptr %i.wm, i64 12
  store i32 %i.wl, ptr %i.wn, align 4, !tbaa !89
  %i.wo = getelementptr [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i
  %i.wp = getelementptr i8, ptr %i.wo, i64 16
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !89
  %i.wr = add nsw i32 %i.wq, %.02839.us.i133.i.i
  %i.ws = getelementptr [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i
  %i.wt = getelementptr i8, ptr %i.ws, i64 16
  store i32 %i.wr, ptr %i.wt, align 4, !tbaa !89
  %i.wu = getelementptr [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i
  %i.wv = getelementptr i8, ptr %i.wu, i64 20
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !89
  %i.wx = add nsw i32 %i.ww, %.02839.us.i133.i.i
  %i.wy = getelementptr [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i
  %i.wz = getelementptr i8, ptr %i.wy, i64 20
  store i32 %i.wx, ptr %i.wz, align 4, !tbaa !89
  %i.xa = getelementptr [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i
  %i.xb = getelementptr i8, ptr %i.xa, i64 24
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !89
  %i.xd = add nsw i32 %i.xc, %.02839.us.i133.i.i
  %i.xe = getelementptr [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i
  %i.xf = getelementptr i8, ptr %i.xe, i64 24
  store i32 %i.xd, ptr %i.xf, align 4, !tbaa !89
  %i.xg = getelementptr [4 x i8], ptr %i.tu, i64 %indvars.iv49.i139.i.i
  %i.xh = getelementptr i8, ptr %i.xg, i64 28
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !89
  %i.xj = add nsw i32 %i.xi, %.02839.us.i133.i.i
  %i.xk = getelementptr [4 x i8], ptr %i.tq, i64 %.233.us.us.i140.i.i
  %i.xl = getelementptr i8, ptr %i.xk, i64 28
  store i32 %i.xj, ptr %i.xl, align 4, !tbaa !89
  %indvars.iv.next50.i141.i.i.7 = add nsw i64 %indvars.iv49.i139.i.i, 8 ; 2 uses
  %.2.us.us.i142.i.i.7 = add i64 %.233.us.us.i140.i.i, 8 ; 2 uses
  %lftr.wideiv.i143.i.i.7 = trunc i64 %indvars.iv.next50.i141.i.i.7 to i32
  %exitcond52.not.i144.i.i.7 = icmp eq i32 %i.um, %lftr.wideiv.i143.i.i.7
  br i1 %exitcond52.not.i144.i.i.7, label %..loopexit_crit_edge.us.us.i145.i.i, label %vec.epilog.scalar.ph, !llvm.loop !248

..loopexit_crit_edge.us.us.i145.i.i:              ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.2.us.us.i142.i.i.lcssa = phi i64 [ %i.vf, %vec.epilog.middle.block ], [ %i.uq, %middle.block ], [ %.2.us.us.i142.i.i.lcssa515.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %.2.us.us.i142.i.i.7, %vec.epilog.scalar.ph ] ; 2 uses
  %i.xm = icmp slt i32 %i.um, %i.tz
  br i1 %i.xm, label %iter.check, label %._crit_edge.split.us.us.i146.i.i, !llvm.loop !234

._crit_edge.split.us.us.i146.i.i:                 ; preds = %..loopexit_crit_edge.us.us.i145.i.i
  %i.xn = add nsw i32 %.02839.us.i133.i.i, %i.ab
  %i.xo = add nuw nsw i32 %.02542.us.i131.i.i, 1  ; 2 uses
  %exitcond53.not.i147.i.i = icmp eq i32 %i.xo, %i.ro
  br i1 %exitcond53.not.i147.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i, label %.preheader.us.i130.i.i, !llvm.loop !249

iter.check162:                                    ; preds = %._crit_edge.split.i127.i.i, %.preheader.preheader.i116.i.i
  %.02542.i119.i.i = phi i32 [ %i.yn, %._crit_edge.split.i127.i.i ], [ 0, %.preheader.preheader.i116.i.i ]
  %.02641.i120.i.i = phi i64 [ %.230.i125.i.i.lcssa, %._crit_edge.split.i127.i.i ], [ %i.sa, %.preheader.preheader.i116.i.i ] ; 7 uses
  br i1 %min.iters.check146, label %.loopexit.i121.i.i.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %iter.check162
  %i.xp = shl i64 %.02641.i120.i.i, 2
  %i.xq = add i64 %i.xp, %invariant.op553
  %diff.check148 = icmp ult i64 %i.xq, 127
  br i1 %diff.check148, label %.loopexit.i121.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %vector.memcheck147
  br i1 %min.iters.check150, label %vec.epilog.ph166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.xr = add i64 %.02641.i120.i.i, %n.vec152     ; 2 uses
  %i.xs = getelementptr [4 x i8], ptr %i.tq, i64 %.02641.i120.i.i
  br label %vector.body153

vector.body153:                                   ; preds = %vector.ph151, %vector.body153
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %index154 ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 96
  %wide.load155 = load <8 x i32>, ptr %i.xt, align 4, !tbaa !89
  %wide.load156 = load <8 x i32>, ptr %i.xu, align 4, !tbaa !89
  %wide.load157 = load <8 x i32>, ptr %i.xv, align 4, !tbaa !89
  %wide.load158 = load <8 x i32>, ptr %i.xw, align 4, !tbaa !89
  %i.xx = getelementptr [4 x i8], ptr %i.xs, i64 %index154 ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 32
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xx, i64 64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 96
  store <8 x i32> %wide.load155, ptr %i.xx, align 4, !tbaa !89
  store <8 x i32> %wide.load156, ptr %i.xy, align 4, !tbaa !89
  store <8 x i32> %wide.load157, ptr %i.xz, align 4, !tbaa !89
  store <8 x i32> %wide.load158, ptr %i.ya, align 4, !tbaa !89
  %index.next159 = add nuw i64 %index154, 32      ; 2 uses
  %i.yb = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.yb, label %middle.block160, label %vector.body153, !llvm.loop !250

middle.block160:                                  ; preds = %vector.body153
  br i1 %cmp.n161, label %._crit_edge.split.i127.i.i, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block160
  br i1 %min.epilog.iters.check165, label %.loopexit.i121.i.i.preheader, label %vec.epilog.ph166, !prof !121

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec152, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check149 ]
  %i.yc = add i64 %.02641.i120.i.i, %n.vec168     ; 2 uses
  %i.yd = getelementptr [4 x i8], ptr %i.tq, i64 %.02641.i120.i.i
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph166
  %index170 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph166 ], [ %index.next172, %vec.epilog.vector.body169 ] ; 3 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %index170
  %wide.load171 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !89
  %i.yf = getelementptr [4 x i8], ptr %i.yd, i64 %index170
  store <4 x i32> %wide.load171, ptr %i.yf, align 4, !tbaa !89
  %index.next172 = add nuw i64 %index170, 4       ; 2 uses
  %i.yg = icmp eq i64 %index.next172, %n.vec168
  br i1 %i.yg, label %vec.epilog.middle.block173, label %vec.epilog.vector.body169, !llvm.loop !251

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body169
  br i1 %cmp.n174, label %._crit_edge.split.i127.i.i, label %.loopexit.i121.i.i.preheader

.loopexit.i121.i.i.preheader:                     ; preds = %iter.check162, %vector.memcheck147, %vec.epilog.iter.check163, %vec.epilog.middle.block173
  %indvars.iv.i122.i.i.ph = phi i64 [ 0, %iter.check162 ], [ 0, %vector.memcheck147 ], [ %n.vec152, %vec.epilog.iter.check163 ], [ %n.vec168, %vec.epilog.middle.block173 ] ; 4 uses
  %.12735.i123.i.i.ph = phi i64 [ %.02641.i120.i.i, %iter.check162 ], [ %.02641.i120.i.i, %vector.memcheck147 ], [ %i.xr, %vec.epilog.iter.check163 ], [ %i.yc, %vec.epilog.middle.block173 ] ; 2 uses
  %i.yh = sub nsw i64 %i.ty, %indvars.iv.i122.i.i.ph
  %xtraiter525 = and i64 %i.yh, 7                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.loopexit.i121.i.i.prol.loopexit, label %.loopexit.i121.i.i.prol

.loopexit.i121.i.i.prol:                          ; preds = %.loopexit.i121.i.i.preheader, %.loopexit.i121.i.i.prol
  %indvars.iv.i122.i.i.prol = phi i64 [ %indvars.iv.next.i124.i.i.prol, %.loopexit.i121.i.i.prol ], [ %indvars.iv.i122.i.i.ph, %.loopexit.i121.i.i.preheader ] ; 2 uses
  %.12735.i123.i.i.prol = phi i64 [ %.230.i125.i.i.prol, %.loopexit.i121.i.i.prol ], [ %.12735.i123.i.i.ph, %.loopexit.i121.i.i.preheader ] ; 2 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.loopexit.i121.i.i.prol ], [ 0, %.loopexit.i121.i.i.preheader ]
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i.prol
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !89
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i.prol
  store i32 %i.yj, ptr %i.yk, align 4, !tbaa !89
  %indvars.iv.next.i124.i.i.prol = add nuw nsw i64 %indvars.iv.i122.i.i.prol, 1 ; 2 uses
  %.230.i125.i.i.prol = add i64 %.12735.i123.i.i.prol, 1 ; 3 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.loopexit.i121.i.i.prol.loopexit, label %.loopexit.i121.i.i.prol, !llvm.loop !252

.loopexit.i121.i.i.prol.loopexit:                 ; preds = %.loopexit.i121.i.i.prol, %.loopexit.i121.i.i.preheader
  %.230.i125.i.i.lcssa514.unr = phi i64 [ poison, %.loopexit.i121.i.i.preheader ], [ %.230.i125.i.i.prol, %.loopexit.i121.i.i.prol ]
  %indvars.iv.i122.i.i.unr = phi i64 [ %indvars.iv.i122.i.i.ph, %.loopexit.i121.i.i.preheader ], [ %indvars.iv.next.i124.i.i.prol, %.loopexit.i121.i.i.prol ]
  %.12735.i123.i.i.unr = phi i64 [ %.12735.i123.i.i.ph, %.loopexit.i121.i.i.preheader ], [ %.230.i125.i.i.prol, %.loopexit.i121.i.i.prol ]
  %i.yl = sub nsw i64 %indvars.iv.i122.i.i.ph, %wide.trip.count.i117.i.i
  %i.ym = icmp ugt i64 %i.yl, -8
  br i1 %i.ym, label %._crit_edge.split.i127.i.i, label %.loopexit.i121.i.i

._crit_edge.split.i127.i.i:                       ; preds = %.loopexit.i121.i.i.prol.loopexit, %.loopexit.i121.i.i, %vec.epilog.middle.block173, %middle.block160
  %.230.i125.i.i.lcssa = phi i64 [ %i.yc, %vec.epilog.middle.block173 ], [ %i.xr, %middle.block160 ], [ %.230.i125.i.i.lcssa514.unr, %.loopexit.i121.i.i.prol.loopexit ], [ %.230.i125.i.i.7, %.loopexit.i121.i.i ]
  %i.yn = add nuw nsw i32 %.02542.i119.i.i, 1     ; 2 uses
  %exitcond48.not.i128.i.i = icmp eq i32 %i.yn, %i.ro
  br i1 %exitcond48.not.i128.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i, label %iter.check162, !llvm.loop !249

.loopexit.i121.i.i:                               ; preds = %.loopexit.i121.i.i.prol.loopexit, %.loopexit.i121.i.i
  %indvars.iv.i122.i.i = phi i64 [ %indvars.iv.next.i124.i.i.7, %.loopexit.i121.i.i ], [ %indvars.iv.i122.i.i.unr, %.loopexit.i121.i.i.prol.loopexit ] ; 9 uses
  %.12735.i123.i.i = phi i64 [ %.230.i125.i.i.7, %.loopexit.i121.i.i ], [ %.12735.i123.i.i.unr, %.loopexit.i121.i.i.prol.loopexit ] ; 9 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !89
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i
  store i32 %i.yp, ptr %i.yq, align 4, !tbaa !89
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !89
  %i.yu = getelementptr [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i
  %i.yv = getelementptr i8, ptr %i.yu, i64 4
  store i32 %i.yt, ptr %i.yv, align 4, !tbaa !89
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !89
  %i.yz = getelementptr [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i
  %i.za = getelementptr i8, ptr %i.yz, i64 8
  store i32 %i.yy, ptr %i.za, align 4, !tbaa !89
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 12
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !89
  %i.ze = getelementptr [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i
  %i.zf = getelementptr i8, ptr %i.ze, i64 12
  store i32 %i.zd, ptr %i.zf, align 4, !tbaa !89
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !89
  %i.zj = getelementptr [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i
  %i.zk = getelementptr i8, ptr %i.zj, i64 16
  store i32 %i.zi, ptr %i.zk, align 4, !tbaa !89
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 20
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !89
  %i.zo = getelementptr [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i
  %i.zp = getelementptr i8, ptr %i.zo, i64 20
  store i32 %i.zn, ptr %i.zp, align 4, !tbaa !89
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !89
  %i.zt = getelementptr [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i
  %i.zu = getelementptr i8, ptr %i.zt, i64 24
  store i32 %i.zs, ptr %i.zu, align 4, !tbaa !89
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i122.i.i
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 28
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !89
  %i.zy = getelementptr [4 x i8], ptr %i.tq, i64 %.12735.i123.i.i
  %i.zz = getelementptr i8, ptr %i.zy, i64 28
  store i32 %i.zx, ptr %i.zz, align 4, !tbaa !89
  %indvars.iv.next.i124.i.i.7 = add nuw nsw i64 %indvars.iv.i122.i.i, 8 ; 2 uses
  %.230.i125.i.i.7 = add i64 %.12735.i123.i.i, 8  ; 2 uses
  %exitcond.not.i126.i.i.7 = icmp eq i64 %indvars.iv.next.i124.i.i.7, %wide.trip.count.i117.i.i
  br i1 %exitcond.not.i126.i.i.7, label %._crit_edge.split.i127.i.i, label %.loopexit.i121.i.i, !llvm.loop !253

_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit150.i.i: ; preds = %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit113.i.i, %._crit_edge.split.i127.i.i, %._crit_edge.split.us.us.i146.i.i, %.preheader.lr.ph.i.i.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i114.i.i, %.preheader253.i.i, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br label %bb.c

bb.ah:                                            ; preds = %bb.d
  %i.aaa = sdiv i32 %i.ai, 2                      ; 2 uses
  %i.aab = sdiv i32 %i.bd, 2                      ; 3 uses
  %i.aac = sext i32 %i.aab to i64                 ; 4 uses
  %i.aad = load ptr, ptr %i.o, align 8, !tbaa !122 ; 2 uses
  %i.aae = load ptr, ptr %i.n, align 8, !tbaa !103 ; 2 uses
  %i.aaf = ptrtoint ptr %i.aad to i64
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = sub i64 %i.aaf, %i.aag
  %i.aai = sdiv exact i64 %i.aah, 48              ; 3 uses
  %i.aaj = icmp ult i64 %i.aai, %i.aac
  br i1 %i.aaj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aak = sub nuw nsw i64 %i.aac, %i.aai
  tail call void @_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.aak)
  br label %_ZL13resizeIParamsPSt6vectorI9t_iparamsSaIS0_EEi.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.aal = icmp ugt i64 %i.aai, %i.aac
  br i1 %i.aal, label %bb.ak, label %_ZL13resizeIParamsPSt6vectorI9t_iparamsSaIS0_EEi.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.aam = getelementptr inbounds nuw [48 x i8], ptr %i.aae, i64 %i.aac ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aad, %i.aam
  br i1 %.not.i.i.i.i.i.i, label %_ZL13resizeIParamsPSt6vectorI9t_iparamsSaIS0_EEi.exit.i.i.i, label %_ZSt8_DestroyIP9t_iparamsS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIP9t_iparamsS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %bb.ak
  store ptr %i.aam, ptr %i.o, align 8, !tbaa !122
  br label %_ZL13resizeIParamsPSt6vectorI9t_iparamsSaIS0_EEi.exit.i.i.i

_ZL13resizeIParamsPSt6vectorI9t_iparamsSaIS0_EEi.exit.i.i.i: ; preds = %_ZSt8_DestroyIP9t_iparamsS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i.i, %bb.ak, %bb.aj, %bb.ai
  %i.aan = icmp slt i32 %i.aaa, %i.aab
  br i1 %i.aan, label %.lr.ph.i.i.i, label %_ZL17set_posres_paramsI22InteractionDefinitionsEvPT_PK14gmx_molblock_tii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZL13resizeIParamsPSt6vectorI9t_iparamsSaIS0_EEi.exit.i.i.i
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.0245.0257.i.i, i64 8 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.0245.0257.i.i, i64 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0245.0257.i.i, i64 32 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.0245.0257.i.i, i64 40
  %i.aas = sext i32 %i.aaa to i64
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !98
  br label %bb.al

bb.al:                                            ; preds = %bb.av, %.lr.ph.i.i.i
  %i.aat = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.acv, %bb.av ]
  %indvars.iv.i151.i.i = phi i64 [ %i.aas, %.lr.ph.i.i.i ], [ %indvars.iv.next.i152.i.i, %bb.av ] ; 4 uses
  %i.aau = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.aav = getelementptr inbounds nuw [48 x i8], ptr %i.aau, i64 %indvars.iv.i151.i.i ; 9 uses
end_hunk_2
begin_hunk_3_@_Z27gmx_mtop_generate_local_topRK10gmx_mtop_tP14gmx_localtop_tb:bb.a
  %i.aeu = sext i32 %i.aet to i64                 ; 3 uses
  %i.aev = getelementptr inbounds nuw [12 x i8], ptr %i.aef, i64 %i.aeu
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !129
  store float %i.aew, ptr %i.adz, align 4, !tbaa !102
  %i.aex = load ptr, ptr %i.adu, align 8, !tbaa !130
  %i.aey = getelementptr inbounds nuw [12 x i8], ptr %i.aex, i64 %i.aeu
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !129
  %i.afb = getelementptr inbounds nuw i8, ptr %i.adz, i64 4
  store float %i.afa, ptr %i.afb, align 4, !tbaa !102
  %i.afc = load ptr, ptr %i.adu, align 8, !tbaa !130
  %i.afd = getelementptr inbounds nuw [12 x i8], ptr %i.afc, i64 %i.aeu
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !129
  %i.afg = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store float %i.aff, ptr %i.afg, align 4, !tbaa !102
  %i.afh = load ptr, ptr %i.i, align 8, !tbaa !98 ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %i.aea
  %i.afj = trunc nsw i64 %indvars.iv.i158.i.i to i32
  store i32 %i.afj, ptr %i.afi, align 4, !tbaa !89
  %indvars.iv.next.i161.i.i = add nsw i64 %indvars.iv.i158.i.i, 1 ; 2 uses
  %exitcond.not.i162.i.i = icmp eq i64 %indvars.iv.next.i161.i.i, %i.adi
  br i1 %exitcond.not.i162.i.i, label %_ZL19set_fbposres_paramsI22InteractionDefinitionsEvPT_PK14gmx_molblock_tii.exit.i.i, label %bb.ba, !llvm.loop !255

_ZL19set_fbposres_paramsI22InteractionDefinitionsEvPT_PK14gmx_molblock_tii.exit.i.i: ; preds = %bb.bh, %_ZL13resizeIParamsPSt6vectorI9t_iparamsSaIS0_EEi.exit.i155.i.i, %_ZL17set_posres_paramsI22InteractionDefinitionsEvPT_PK14gmx_molblock_tii.exit.i.i
  %i.afk = load i32, ptr %i.as, align 4, !tbaa !88
  %i.afl = mul nsw i32 %i.afk, %i.ab
  %i.afm = add nsw i32 %i.afl, %.0258.i.i
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0245.0257.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.afn, %i.d
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

bb.bi:                                            ; preds = %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit206.i.i, %.preheader.i.i
  %indvars.iv266.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next267.i.i, %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit206.i.i ] ; 4 uses
  %i.afo = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv266.i.i ; 4 uses
  %i.afp = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.afq = getelementptr inbounds nuw [24 x i8], ptr %i.afp, i64 %indvars.iv266.i.i ; 3 uses
  %i.afr = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv266.i.i
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.aft = load i32, ptr %i.afs, align 8, !tbaa !101 ; 6 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afo, i64 8 ; 2 uses
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !97 ; 2 uses
  %i.afw = load ptr, ptr %i.afo, align 8, !tbaa !98 ; 2 uses
  %i.afx = ptrtoint ptr %i.afv to i64
  %i.afy = ptrtoint ptr %i.afw to i64
  %i.afz = sub i64 %i.afx, %i.afy                 ; 4 uses
  %i.aga = ashr exact i64 %i.afz, 2               ; 8 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afq, i64 8 ; 2 uses
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !97
  %i.agd = load ptr, ptr %i.afq, align 8, !tbaa !98 ; 4 uses
  %i.age = ptrtoint ptr %i.agc to i64
  %i.agf = ptrtoint ptr %i.agd to i64             ; 4 uses
  %i.agg = sub i64 %i.age, %i.agf
  %i.agh = shl i64 %i.agg, 30
  %i.agi = ashr i64 %i.agh, 32                    ; 2 uses
  %i.agj = add nsw i64 %i.agi, %i.aga             ; 3 uses
  %i.agk = icmp ugt i64 %i.agj, %i.aga
  br i1 %i.agk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.afo, i64 noundef %i.agi)
  %.pre274.i.i = load ptr, ptr %i.afq, align 8, !tbaa !98 ; 2 uses
  %.pre275.i.i = ptrtoint ptr %.pre274.i.i to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i169.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.agl = icmp ult i64 %i.agj, %i.aga
  br i1 %i.agl, label %bb.bl, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i169.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.agj ; 2 uses
  %.not.i.i.i204.i.i = icmp eq ptr %i.afv, %i.agm
  br i1 %.not.i.i.i204.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i169.i.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i205.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i205.i.i: ; preds = %bb.bl
  store ptr %i.agm, ptr %i.afu, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i169.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i169.i.i:      ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i205.i.i, %bb.bl, %bb.bk, %bb.bj
  %.pre-phi.i.i = phi i64 [ %i.agf, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i205.i.i ], [ %i.agf, %bb.bl ], [ %i.agf, %bb.bk ], [ %.pre275.i.i, %bb.bj ]
  %i.agn = phi ptr [ %i.agd, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i205.i.i ], [ %i.agd, %bb.bl ], [ %i.agd, %bb.bk ], [ %.pre274.i.i, %bb.bj ] ; 24 uses
  %i.ago = ptrtoaddr ptr %i.agn to i64            ; 2 uses
  %i.agp = load ptr, ptr %i.agb, align 8, !tbaa !97
  %i.agq = ptrtoint ptr %i.agp to i64
  %i.agr = sub i64 %i.agq, %.pre-phi.i.i          ; 2 uses
  %i.ags = lshr exact i64 %i.agr, 2               ; 5 uses
  %i.agt = trunc i64 %i.ags to i32                ; 2 uses
  %i.agu = icmp sgt i32 %i.agt, 0
  br i1 %i.agu, label %.preheader.lr.ph.split.i171.i.i, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit206.i.i

.preheader.lr.ph.split.i171.i.i:                  ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i169.i.i
  %i.agv = icmp sgt i32 %i.aft, 0
  %i.agw = load ptr, ptr %i.afo, align 8, !tbaa !98 ; 24 uses
  %i.agx = ptrtoaddr ptr %i.agw to i64            ; 2 uses
  br i1 %i.agv, label %.preheader.us.preheader.i185.i.i, label %iter.check368

iter.check368:                                    ; preds = %.preheader.lr.ph.split.i171.i.i
  %wide.trip.count.i173.i.i = and i64 %i.ags, 2147483647 ; 6 uses
  %min.iters.check352 = icmp samesign ult i64 %wide.trip.count.i173.i.i, 4
  br i1 %min.iters.check352, label %.loopexit.i177.i.i.preheader, label %vector.memcheck353

vector.memcheck353:                               ; preds = %iter.check368
  %i.agy = add i64 %i.afz, %i.agx
  %i.agz = sub i64 %i.ago, %i.agy
  %diff.check354 = icmp ugt i64 %i.agz, -128
  br i1 %diff.check354, label %.loopexit.i177.i.i.preheader, label %vector.main.loop.iter.check355

vector.main.loop.iter.check355:                   ; preds = %vector.memcheck353
  %min.iters.check356 = icmp samesign ult i64 %wide.trip.count.i173.i.i, 32
  br i1 %min.iters.check356, label %vec.epilog.ph372, label %vector.ph357

vector.ph357:                                     ; preds = %vector.main.loop.iter.check355
  %n.vec358 = and i64 %i.ags, 2147483616          ; 5 uses
  %i.aha = add nsw i64 %i.aga, %n.vec358
  %i.ahb = getelementptr i8, ptr %i.agw, i64 %i.afz
  br label %vector.body359

vector.body359:                                   ; preds = %vector.ph357, %vector.body359
  %index360 = phi i64 [ 0, %vector.ph357 ], [ %index.next365, %vector.body359 ] ; 3 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %index360 ; 4 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 32
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 64
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahc, i64 96
  %wide.load361 = load <8 x i32>, ptr %i.ahc, align 4, !tbaa !89
  %wide.load362 = load <8 x i32>, ptr %i.ahd, align 4, !tbaa !89
  %wide.load363 = load <8 x i32>, ptr %i.ahe, align 4, !tbaa !89
  %wide.load364 = load <8 x i32>, ptr %i.ahf, align 4, !tbaa !89
  %i.ahg = getelementptr [4 x i8], ptr %i.ahb, i64 %index360 ; 4 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 32
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahg, i64 64
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 96
  store <8 x i32> %wide.load361, ptr %i.ahg, align 4, !tbaa !89
  store <8 x i32> %wide.load362, ptr %i.ahh, align 4, !tbaa !89
  store <8 x i32> %wide.load363, ptr %i.ahi, align 4, !tbaa !89
  store <8 x i32> %wide.load364, ptr %i.ahj, align 4, !tbaa !89
  %index.next365 = add nuw i64 %index360, 32      ; 2 uses
  %i.ahk = icmp eq i64 %index.next365, %n.vec358
  br i1 %i.ahk, label %middle.block366, label %vector.body359, !llvm.loop !256

middle.block366:                                  ; preds = %vector.body359
  %cmp.n367 = icmp eq i64 %wide.trip.count.i173.i.i, %n.vec358
  br i1 %cmp.n367, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit206.i.i, label %vec.epilog.iter.check369

vec.epilog.iter.check369:                         ; preds = %middle.block366
  %i.ahl = and i64 %i.agr, 112
  %min.epilog.iters.check371 = icmp eq i64 %i.ahl, 0
  br i1 %min.epilog.iters.check371, label %.loopexit.i177.i.i.preheader, label %vec.epilog.ph372, !prof !121

vec.epilog.ph372:                                 ; preds = %vector.main.loop.iter.check355, %vec.epilog.iter.check369
  %vec.epilog.resume.val373 = phi i64 [ %n.vec358, %vec.epilog.iter.check369 ], [ 0, %vector.main.loop.iter.check355 ]
  %n.vec374 = and i64 %i.ags, 2147483644          ; 4 uses
  %i.ahm = add nsw i64 %i.aga, %n.vec374
  %i.ahn = getelementptr i8, ptr %i.agw, i64 %i.afz
  br label %vec.epilog.vector.body375

vec.epilog.vector.body375:                        ; preds = %vec.epilog.vector.body375, %vec.epilog.ph372
  %index376 = phi i64 [ %vec.epilog.resume.val373, %vec.epilog.ph372 ], [ %index.next378, %vec.epilog.vector.body375 ] ; 3 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %index376
  %wide.load377 = load <4 x i32>, ptr %i.aho, align 4, !tbaa !89
  %i.ahp = getelementptr [4 x i8], ptr %i.ahn, i64 %index376
  store <4 x i32> %wide.load377, ptr %i.ahp, align 4, !tbaa !89
  %index.next378 = add nuw i64 %index376, 4       ; 2 uses
  %i.ahq = icmp eq i64 %index.next378, %n.vec374
  br i1 %i.ahq, label %vec.epilog.middle.block379, label %vec.epilog.vector.body375, !llvm.loop !257

vec.epilog.middle.block379:                       ; preds = %vec.epilog.vector.body375
  %cmp.n380 = icmp eq i64 %wide.trip.count.i173.i.i, %n.vec374
  br i1 %cmp.n380, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit206.i.i, label %.loopexit.i177.i.i.preheader

.loopexit.i177.i.i.preheader:                     ; preds = %iter.check368, %vector.memcheck353, %vec.epilog.iter.check369, %vec.epilog.middle.block379
  %indvars.iv.i178.i.i.ph = phi i64 [ 0, %iter.check368 ], [ 0, %vector.memcheck353 ], [ %n.vec358, %vec.epilog.iter.check369 ], [ %n.vec374, %vec.epilog.middle.block379 ] ; 4 uses
  %.12735.i179.i.i.ph = phi i64 [ %i.aga, %iter.check368 ], [ %i.aga, %vector.memcheck353 ], [ %i.aha, %vec.epilog.iter.check369 ], [ %i.ahm, %vec.epilog.middle.block379 ] ; 2 uses
  %i.ahr = sub nsw i64 %i.ags, %indvars.iv.i178.i.i.ph
  %xtraiter531 = and i64 %i.ahr, 7                ; 2 uses
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %.loopexit.i177.i.i.prol.loopexit, label %.loopexit.i177.i.i.prol

.loopexit.i177.i.i.prol:                          ; preds = %.loopexit.i177.i.i.preheader, %.loopexit.i177.i.i.prol
  %indvars.iv.i178.i.i.prol = phi i64 [ %indvars.iv.next.i180.i.i.prol, %.loopexit.i177.i.i.prol ], [ %indvars.iv.i178.i.i.ph, %.loopexit.i177.i.i.preheader ] ; 2 uses
  %.12735.i179.i.i.prol = phi i64 [ %.230.i181.i.i.prol, %.loopexit.i177.i.i.prol ], [ %.12735.i179.i.i.ph, %.loopexit.i177.i.i.preheader ] ; 2 uses
  %prol.iter533 = phi i64 [ %prol.iter533.next, %.loopexit.i177.i.i.prol ], [ 0, %.loopexit.i177.i.i.preheader ]
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i.prol
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !89
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i.prol
  store i32 %i.aht, ptr %i.ahu, align 4, !tbaa !89
  %indvars.iv.next.i180.i.i.prol = add nuw nsw i64 %indvars.iv.i178.i.i.prol, 1 ; 2 uses
  %.230.i181.i.i.prol = add i64 %.12735.i179.i.i.prol, 1 ; 2 uses
  %prol.iter533.next = add i64 %prol.iter533, 1   ; 2 uses
  %prol.iter533.cmp.not = icmp eq i64 %prol.iter533.next, %xtraiter531
  br i1 %prol.iter533.cmp.not, label %.loopexit.i177.i.i.prol.loopexit, label %.loopexit.i177.i.i.prol, !llvm.loop !258

.loopexit.i177.i.i.prol.loopexit:                 ; preds = %.loopexit.i177.i.i.prol, %.loopexit.i177.i.i.preheader
  %indvars.iv.i178.i.i.unr = phi i64 [ %indvars.iv.i178.i.i.ph, %.loopexit.i177.i.i.preheader ], [ %indvars.iv.next.i180.i.i.prol, %.loopexit.i177.i.i.prol ]
  %.12735.i179.i.i.unr = phi i64 [ %.12735.i179.i.i.ph, %.loopexit.i177.i.i.preheader ], [ %.230.i181.i.i.prol, %.loopexit.i177.i.i.prol ]
  %i.ahv = sub nsw i64 %indvars.iv.i178.i.i.ph, %wide.trip.count.i173.i.i
  %i.ahw = icmp ugt i64 %i.ahv, -8
  br i1 %i.ahw, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit206.i.i, label %.loopexit.i177.i.i

.preheader.us.preheader.i185.i.i:                 ; preds = %.preheader.lr.ph.split.i171.i.i
  %i.ahx = add nuw i32 %i.aft, 1
  %22 = add i64 %i.agx, 4
  %23 = sub i64 %22, %i.ago
  %i.ahy = zext nneg i32 %i.aft to i64            ; 5 uses
  %min.iters.check319 = icmp ult i32 %i.aft, 8
  %invariant.op565 = add i64 %23, -1
  %min.iters.check323 = icmp ult i32 %i.aft, 32
  %i.ahz = and i64 %i.ahy, 24
  %n.vec325 = and i64 %i.ahy, 2147483616          ; 5 uses
  %cmp.n334 = icmp eq i64 %n.vec325, %i.ahy
  %min.epilog.iters.check338 = icmp eq i64 %i.ahz, 0
  %n.vec341 = and i64 %i.ahy, 2147483640          ; 4 uses
  %cmp.n347 = icmp eq i64 %n.vec341, %i.ahy
  br label %iter.check335

iter.check335:                                    ; preds = %..loopexit_crit_edge.us.us.i201.i.i, %.preheader.us.preheader.i185.i.i
  %.02436.us.us.i191.i.i = phi i32 [ 0, %.preheader.us.preheader.i185.i.i ], [ %i.aig, %..loopexit_crit_edge.us.us.i201.i.i ] ; 4 uses
  %.12735.us.us.i192.i.i = phi i64 [ %i.aga, %.preheader.us.preheader.i185.i.i ], [ %.2.us.us.i198.i.i.lcssa, %..loopexit_crit_edge.us.us.i201.i.i ] ; 3 uses
  %i.aia = add i32 %i.aft, %.02436.us.us.i191.i.i
  %i.aib = sext i32 %.02436.us.us.i191.i.i to i64
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.aib
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !89
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %.12735.us.us.i192.i.i
  store i32 %i.aid, ptr %i.aie, align 4, !tbaa !89
  %.129.us.us.i193.i.i = add nsw i32 %.02436.us.us.i191.i.i, 1
  %.230.us.us.i194.i.i = add i64 %.12735.us.us.i192.i.i, 1 ; 6 uses
  %i.aif = sext i32 %.129.us.us.i193.i.i to i64   ; 7 uses
  %i.aig = add i32 %i.ahx, %.02436.us.us.i191.i.i ; 4 uses
  br i1 %min.iters.check319, label %vec.epilog.scalar.ph337.preheader, label %vector.memcheck320

vector.memcheck320:                               ; preds = %iter.check335
  %24 = sub i64 %.12735.us.us.i192.i.i, %i.aif
  %i.aih = shl i64 %24, 2
  %i.aii = add i64 %i.aih, %invariant.op565
  %diff.check321 = icmp ult i64 %i.aii, 127
  br i1 %diff.check321, label %vec.epilog.scalar.ph337.preheader, label %vector.main.loop.iter.check322

vector.main.loop.iter.check322:                   ; preds = %vector.memcheck320
  br i1 %min.iters.check323, label %vec.epilog.ph339, label %vector.ph324

vector.ph324:                                     ; preds = %vector.main.loop.iter.check322
  %i.aij = add nsw i64 %n.vec325, %i.aif
  %i.aik = add i64 %.230.us.us.i194.i.i, %n.vec325 ; 2 uses
  %invariant.gep555 = getelementptr [4 x i8], ptr %i.agn, i64 %i.aif
  %i.ail = getelementptr [4 x i8], ptr %i.agw, i64 %.230.us.us.i194.i.i
  br label %vector.body326

vector.body326:                                   ; preds = %vector.ph324, %vector.body326
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next332, %vector.body326 ] ; 3 uses
  %gep556 = getelementptr [4 x i8], ptr %invariant.gep555, i64 %index327 ; 4 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %gep556, i64 32
  %i.ain = getelementptr inbounds nuw i8, ptr %gep556, i64 64
  %i.aio = getelementptr inbounds nuw i8, ptr %gep556, i64 96
  %wide.load328 = load <8 x i32>, ptr %gep556, align 4, !tbaa !89
  %wide.load329 = load <8 x i32>, ptr %i.aim, align 4, !tbaa !89
  %wide.load330 = load <8 x i32>, ptr %i.ain, align 4, !tbaa !89
  %wide.load331 = load <8 x i32>, ptr %i.aio, align 4, !tbaa !89
  %i.aip = getelementptr [4 x i8], ptr %i.ail, i64 %index327 ; 4 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = getelementptr inbounds nuw i8, ptr %i.aip, i64 64
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 96
  store <8 x i32> %wide.load328, ptr %i.aip, align 4, !tbaa !89
  store <8 x i32> %wide.load329, ptr %i.aiq, align 4, !tbaa !89
  store <8 x i32> %wide.load330, ptr %i.air, align 4, !tbaa !89
  store <8 x i32> %wide.load331, ptr %i.ais, align 4, !tbaa !89
  %index.next332 = add nuw i64 %index327, 32      ; 2 uses
  %i.ait = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.ait, label %middle.block333, label %vector.body326, !llvm.loop !259

middle.block333:                                  ; preds = %vector.body326
  br i1 %cmp.n334, label %..loopexit_crit_edge.us.us.i201.i.i, label %vec.epilog.iter.check336

vec.epilog.iter.check336:                         ; preds = %middle.block333
  br i1 %min.epilog.iters.check338, label %vec.epilog.scalar.ph337.preheader, label %vec.epilog.ph339, !prof !93

vec.epilog.ph339:                                 ; preds = %vector.main.loop.iter.check322, %vec.epilog.iter.check336
  %vec.epilog.resume.val340 = phi i64 [ %n.vec325, %vec.epilog.iter.check336 ], [ 0, %vector.main.loop.iter.check322 ]
  %i.aiu = add nsw i64 %n.vec341, %i.aif
  %i.aiv = add i64 %.230.us.us.i194.i.i, %n.vec341 ; 2 uses
  %invariant.gep557 = getelementptr [4 x i8], ptr %i.agn, i64 %i.aif
  %i.aiw = getelementptr [4 x i8], ptr %i.agw, i64 %.230.us.us.i194.i.i
  br label %vec.epilog.vector.body342

vec.epilog.vector.body342:                        ; preds = %vec.epilog.vector.body342, %vec.epilog.ph339
  %index343 = phi i64 [ %vec.epilog.resume.val340, %vec.epilog.ph339 ], [ %index.next345, %vec.epilog.vector.body342 ] ; 3 uses
  %gep558 = getelementptr [4 x i8], ptr %invariant.gep557, i64 %index343
  %wide.load344 = load <8 x i32>, ptr %gep558, align 4, !tbaa !89
  %i.aix = getelementptr [4 x i8], ptr %i.aiw, i64 %index343
  store <8 x i32> %wide.load344, ptr %i.aix, align 4, !tbaa !89
  %index.next345 = add nuw i64 %index343, 8       ; 2 uses
  %i.aiy = icmp eq i64 %index.next345, %n.vec341
  br i1 %i.aiy, label %vec.epilog.middle.block346, label %vec.epilog.vector.body342, !llvm.loop !260

vec.epilog.middle.block346:                       ; preds = %vec.epilog.vector.body342
  br i1 %cmp.n347, label %..loopexit_crit_edge.us.us.i201.i.i, label %vec.epilog.scalar.ph337.preheader

vec.epilog.scalar.ph337.preheader:                ; preds = %iter.check335, %vector.memcheck320, %vec.epilog.iter.check336, %vec.epilog.middle.block346
  %indvars.iv49.i195.i.i.ph = phi i64 [ %i.aif, %iter.check335 ], [ %i.aif, %vector.memcheck320 ], [ %i.aij, %vec.epilog.iter.check336 ], [ %i.aiu, %vec.epilog.middle.block346 ] ; 3 uses
  %.233.us.us.i196.i.i.ph = phi i64 [ %.230.us.us.i194.i.i, %iter.check335 ], [ %.230.us.us.i194.i.i, %vector.memcheck320 ], [ %i.aik, %vec.epilog.iter.check336 ], [ %i.aiv, %vec.epilog.middle.block346 ] ; 2 uses
  %i.aiz = trunc i64 %indvars.iv49.i195.i.i.ph to i32 ; 2 uses
  %i.aja = sub i32 %i.aig, %i.aiz
  %i.ajb = sub i32 %i.aia, %i.aiz
  %xtraiter534 = and i32 %i.aja, 7                ; 2 uses
  %lcmp.mod535.not = icmp eq i32 %xtraiter534, 0
  br i1 %lcmp.mod535.not, label %vec.epilog.scalar.ph337.prol.loopexit, label %vec.epilog.scalar.ph337.prol

vec.epilog.scalar.ph337.prol:                     ; preds = %vec.epilog.scalar.ph337.preheader, %vec.epilog.scalar.ph337.prol
  %indvars.iv49.i195.i.i.prol = phi i64 [ %indvars.iv.next50.i197.i.i.prol, %vec.epilog.scalar.ph337.prol ], [ %indvars.iv49.i195.i.i.ph, %vec.epilog.scalar.ph337.preheader ] ; 2 uses
  %.233.us.us.i196.i.i.prol = phi i64 [ %.2.us.us.i198.i.i.prol, %vec.epilog.scalar.ph337.prol ], [ %.233.us.us.i196.i.i.ph, %vec.epilog.scalar.ph337.preheader ] ; 2 uses
  %prol.iter536 = phi i32 [ %prol.iter536.next, %vec.epilog.scalar.ph337.prol ], [ 0, %vec.epilog.scalar.ph337.preheader ]
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i.prol
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !89
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i.prol
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !89
  %indvars.iv.next50.i197.i.i.prol = add nsw i64 %indvars.iv49.i195.i.i.prol, 1 ; 2 uses
  %.2.us.us.i198.i.i.prol = add i64 %.233.us.us.i196.i.i.prol, 1 ; 3 uses
  %prol.iter536.next = add i32 %prol.iter536, 1   ; 2 uses
  %prol.iter536.cmp.not = icmp eq i32 %prol.iter536.next, %xtraiter534
  br i1 %prol.iter536.cmp.not, label %vec.epilog.scalar.ph337.prol.loopexit, label %vec.epilog.scalar.ph337.prol, !llvm.loop !261

vec.epilog.scalar.ph337.prol.loopexit:            ; preds = %vec.epilog.scalar.ph337.prol, %vec.epilog.scalar.ph337.preheader
  %.2.us.us.i198.i.i.lcssa507.unr = phi i64 [ poison, %vec.epilog.scalar.ph337.preheader ], [ %.2.us.us.i198.i.i.prol, %vec.epilog.scalar.ph337.prol ]
  %indvars.iv49.i195.i.i.unr = phi i64 [ %indvars.iv49.i195.i.i.ph, %vec.epilog.scalar.ph337.preheader ], [ %indvars.iv.next50.i197.i.i.prol, %vec.epilog.scalar.ph337.prol ]
  %.233.us.us.i196.i.i.unr = phi i64 [ %.233.us.us.i196.i.i.ph, %vec.epilog.scalar.ph337.preheader ], [ %.2.us.us.i198.i.i.prol, %vec.epilog.scalar.ph337.prol ]
  %i.ajf = icmp ult i32 %i.ajb, 7
  br i1 %i.ajf, label %..loopexit_crit_edge.us.us.i201.i.i, label %vec.epilog.scalar.ph337

vec.epilog.scalar.ph337:                          ; preds = %vec.epilog.scalar.ph337.prol.loopexit, %vec.epilog.scalar.ph337
  %indvars.iv49.i195.i.i = phi i64 [ %indvars.iv.next50.i197.i.i.7, %vec.epilog.scalar.ph337 ], [ %indvars.iv49.i195.i.i.unr, %vec.epilog.scalar.ph337.prol.loopexit ] ; 9 uses
  %.233.us.us.i196.i.i = phi i64 [ %.2.us.us.i198.i.i.7, %vec.epilog.scalar.ph337 ], [ %.233.us.us.i196.i.i.unr, %vec.epilog.scalar.ph337.prol.loopexit ] ; 9 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !89
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !89
  %i.ajj = getelementptr [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 4
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !89
  %i.ajm = getelementptr [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 4
  store i32 %i.ajl, ptr %i.ajn, align 4, !tbaa !89
  %i.ajo = getelementptr [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 8
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !89
  %i.ajr = getelementptr [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 8
  store i32 %i.ajq, ptr %i.ajs, align 4, !tbaa !89
  %i.ajt = getelementptr [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i
  %i.aju = getelementptr i8, ptr %i.ajt, i64 12
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !89
  %i.ajw = getelementptr [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 12
  store i32 %i.ajv, ptr %i.ajx, align 4, !tbaa !89
  %i.ajy = getelementptr [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i
  %i.ajz = getelementptr i8, ptr %i.ajy, i64 16
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !89
  %i.akb = getelementptr [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i
  %i.akc = getelementptr i8, ptr %i.akb, i64 16
  store i32 %i.aka, ptr %i.akc, align 4, !tbaa !89
  %i.akd = getelementptr [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i
  %i.ake = getelementptr i8, ptr %i.akd, i64 20
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !89
  %i.akg = getelementptr [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i
  %i.akh = getelementptr i8, ptr %i.akg, i64 20
  store i32 %i.akf, ptr %i.akh, align 4, !tbaa !89
  %i.aki = getelementptr [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i
  %i.akj = getelementptr i8, ptr %i.aki, i64 24
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !89
  %i.akl = getelementptr [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i
  %i.akm = getelementptr i8, ptr %i.akl, i64 24
  store i32 %i.akk, ptr %i.akm, align 4, !tbaa !89
  %i.akn = getelementptr [4 x i8], ptr %i.agn, i64 %indvars.iv49.i195.i.i
  %i.ako = getelementptr i8, ptr %i.akn, i64 28
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !89
  %i.akq = getelementptr [4 x i8], ptr %i.agw, i64 %.233.us.us.i196.i.i
  %i.akr = getelementptr i8, ptr %i.akq, i64 28
  store i32 %i.akp, ptr %i.akr, align 4, !tbaa !89
  %indvars.iv.next50.i197.i.i.7 = add nsw i64 %indvars.iv49.i195.i.i, 8 ; 2 uses
  %.2.us.us.i198.i.i.7 = add i64 %.233.us.us.i196.i.i, 8 ; 2 uses
  %lftr.wideiv.i199.i.i.7 = trunc i64 %indvars.iv.next50.i197.i.i.7 to i32
  %exitcond52.not.i200.i.i.7 = icmp eq i32 %i.aig, %lftr.wideiv.i199.i.i.7
  br i1 %exitcond52.not.i200.i.i.7, label %..loopexit_crit_edge.us.us.i201.i.i, label %vec.epilog.scalar.ph337, !llvm.loop !262

..loopexit_crit_edge.us.us.i201.i.i:              ; preds = %vec.epilog.scalar.ph337.prol.loopexit, %vec.epilog.scalar.ph337, %vec.epilog.middle.block346, %middle.block333
  %.2.us.us.i198.i.i.lcssa = phi i64 [ %i.aiv, %vec.epilog.middle.block346 ], [ %i.aik, %middle.block333 ], [ %.2.us.us.i198.i.i.lcssa507.unr, %vec.epilog.scalar.ph337.prol.loopexit ], [ %.2.us.us.i198.i.i.7, %vec.epilog.scalar.ph337 ]
  %i.aks = icmp slt i32 %i.aig, %i.agt
  br i1 %i.aks, label %iter.check335, label %_ZL8ilistcat19InteractionFunctionP15InteractionListRKS0_iii.exit206.i.i, !llvm.loop !234

.loopexit.i177.i.i:                               ; preds = %.loopexit.i177.i.i.prol.loopexit, %.loopexit.i177.i.i
  %indvars.iv.i178.i.i = phi i64 [ %indvars.iv.next.i180.i.i.7, %.loopexit.i177.i.i ], [ %indvars.iv.i178.i.i.unr, %.loopexit.i177.i.i.prol.loopexit ] ; 9 uses
  %.12735.i179.i.i = phi i64 [ %.230.i181.i.i.7, %.loopexit.i177.i.i ], [ %.12735.i179.i.i.unr, %.loopexit.i177.i.i.prol.loopexit ] ; 9 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !89
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i
  store i32 %i.aku, ptr %i.akv, align 4, !tbaa !89
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 4
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !89
  %i.akz = getelementptr [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i
  %i.ala = getelementptr i8, ptr %i.akz, i64 4
  store i32 %i.aky, ptr %i.ala, align 4, !tbaa !89
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !89
  %i.ale = getelementptr [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i
  %i.alf = getelementptr i8, ptr %i.ale, i64 8
  store i32 %i.ald, ptr %i.alf, align 4, !tbaa !89
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 12
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !89
  %i.alj = getelementptr [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i
  %i.alk = getelementptr i8, ptr %i.alj, i64 12
  store i32 %i.ali, ptr %i.alk, align 4, !tbaa !89
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !89
  %i.alo = getelementptr [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i
  %i.alp = getelementptr i8, ptr %i.alo, i64 16
  store i32 %i.aln, ptr %i.alp, align 4, !tbaa !89
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 20
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !89
  %i.alt = getelementptr [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i
  %i.alu = getelementptr i8, ptr %i.alt, i64 20
  store i32 %i.als, ptr %i.alu, align 4, !tbaa !89
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 24
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !89
  %i.aly = getelementptr [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i
  %i.alz = getelementptr i8, ptr %i.aly, i64 24
  store i32 %i.alx, ptr %i.alz, align 4, !tbaa !89
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.i178.i.i
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 28
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !89
  %i.amd = getelementptr [4 x i8], ptr %i.agw, i64 %.12735.i179.i.i
end_hunk_3
begin_hunk_4_@_Z24gmx_mtop_t_to_t_topologyP10gmx_mtop_tb:bb.a
bb.b:                                             ; preds = %bb.am
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !159  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %i.b, align 8, !tbaa !368
  %i.m = load i32, ptr %i.c, align 8, !tbaa !369
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !370
  %i.o = icmp eq ptr %i.g, %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = ashr exact i64 %i.j, 2
  %i.r = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 473, i64 noundef %i.q, i64 noundef 4) ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !371
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !159  ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !158
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.v, %i.u                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 4
  br i1 %i.x, label %bb.d, label %bb.e, !prof !148

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.s, i64 %i.w, i1 false)
  br label %_ZSt4copyIPK19InteractionFunctionPS0_ET0_T_S5_S4_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.w, 4
  br i1 %i.y, label %bb.f, label %_ZSt4copyIPK19InteractionFunctionPS0_ET0_T_S5_S4_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.s, align 4, !tbaa !161
  store i32 %i.z, ptr %i.r, align 4, !tbaa !161
  br label %_ZSt4copyIPK19InteractionFunctionPS0_ET0_T_S5_S4_.exit.i.i

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %i.p, align 8, !tbaa !372
  br label %_ZSt4copyIPK19InteractionFunctionPS0_ET0_T_S5_S4_.exit.i.i

_ZSt4copyIPK19InteractionFunctionPS0_ET0_T_S5_S4_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !373 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !373 ; 2 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZSt4copyIPK19InteractionFunctionPS0_ET0_T_S5_S4_.exit.i.i
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 48
  %i.ak = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 482, i64 noundef %i.aj, i64 noundef 48) ; 6 uses
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !373
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 3 uses
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.ao, %i.an                    ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, 48
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !148

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %i.al, i64 %i.ap, i1 false)
  br label %_ZL24copyFFParametersFromMtopRK10gmx_mtop_tP6t_idef.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq i64 %i.ap, 48
  br i1 %i.ar, label %bb.k, label %_ZL24copyFFParametersFromMtopRK10gmx_mtop_tP6t_idef.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ak, ptr noundef nonnull align 4 dereferenceable(48) %i.al, i64 48, i1 false), !tbaa.struct !123
  br label %_ZL24copyFFParametersFromMtopRK10gmx_mtop_tP6t_idef.exit.i

bb.l:                                             ; preds = %_ZSt4copyIPK19InteractionFunctionPS0_ET0_T_S5_S4_.exit.i.i
  store ptr null, ptr %i.af, align 8, !tbaa !374
  br label %_ZL24copyFFParametersFromMtopRK10gmx_mtop_tP6t_idef.exit.i

_ZL24copyFFParametersFromMtopRK10gmx_mtop_tP6t_idef.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.val.i.i.i = phi ptr [ null, %bb.l ], [ %i.ak, %bb.k ], [ %i.ak, %bb.j ], [ %i.ak, %bb.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.au = load float, ptr %i.at, align 8, !tbaa !375
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.au, ptr %i.av, align 8, !tbaa !376
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 2 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !377
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !72 ; 2 uses
  %.not134.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not134.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZL24copyFFParametersFromMtopRK10gmx_mtop_tP6t_idef.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1336
  br label %bb.m

._crit_edge.i.i.loopexit:                         ; preds = %_ZL19set_fbposres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i
  store ptr %i.lo, ptr %i.as, align 8
  store ptr %i.nf, ptr %i.bf, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %_ZL24copyFFParametersFromMtopRK10gmx_mtop_tP6t_idef.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !117, !range !109, !noundef !110
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.preheader.i.i, label %_ZL18copyIListsFromMtopI6t_idefEvRK10gmx_mtop_tPT_b.exit.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 168
  br label %bb.ak

bb.m:                                             ; preds = %_ZL19set_fbposres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i, %.lr.ph.i.i
  %i.bl = phi ptr [ null, %.lr.ph.i.i ], [ %i.nf, %_ZL19set_fbposres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i ] ; 3 uses
  %i.bm = phi ptr [ null, %.lr.ph.i.i ], [ %i.lo, %_ZL19set_fbposres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i ] ; 2 uses
  %.0136.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ni, %_ZL19set_fbposres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i ] ; 4 uses
  %.sroa.0126.0135.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.nj, %_ZL19set_fbposres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i ] ; 9 uses
  %i.bn = load i32, ptr %.sroa.0126.0135.i.i, align 8, !tbaa !80
  %i.bo = sext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !73
  %i.bq = getelementptr inbounds nuw [2408 x i8], ptr %i.bp, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !118 ; 2 uses
  %i.bt = load i32, ptr %i.bc, align 8, !tbaa !379 ; 2 uses
  %i.bu = load i32, ptr %i.bd, align 8, !tbaa !379 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0126.0135.i.i, i64 4 ; 2 uses
  br label %bb.o

bb.n:                                             ; preds = %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i
  %i.bx = load i32, ptr %i.bc, align 8, !tbaa !379 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, %i.bt
  br i1 %i.by, label %bb.p, label %_ZL17set_posres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i

bb.o:                                             ; preds = %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i, %bb.m
  %indvars.iv.i.i = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i.i, %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i.i ; 4 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %indvars.iv.i.i ; 3 uses
  %i.cb = load i32, ptr %i.bw, align 4, !tbaa !88 ; 4 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !101 ; 6 uses
  %i.cf = load i32, ptr %i.bz, align 8, !tbaa !379 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !97
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !98
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = lshr exact i64 %i.cl, 2
  %i.cn = trunc i64 %i.cm to i32
  %i.co = mul nsw i32 %i.cb, %i.cn
  %i.cp = add nsw i32 %i.co, %i.cf                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !380
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cs = sext i32 %i.cp to i64
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !119
  %i.cu = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef %i.ct, i64 noundef range(i64 -2147483648, 2147483648) %i.cs, i64 noundef 4) ; 25 uses
  %i.cv = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !119
  %i.cw = icmp sgt i32 %i.cb, 0
  br i1 %i.cw, label %.preheader.lr.ph.i.i.i, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.o
  %i.cx = load ptr, ptr %i.cg, align 8, !tbaa !97
  %i.cy = load ptr, ptr %i.ca, align 8, !tbaa !98 ; 24 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = lshr exact i64 %i.db, 2                 ; 5 uses
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.preheader.lr.ph.split.i.i.i, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i

.preheader.lr.ph.split.i.i.i:                     ; preds = %.preheader.lr.ph.i.i.i
  %i.df = icmp sgt i32 %i.ce, 0
  br i1 %i.df, label %.preheader.us.preheader.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader.lr.ph.split.i.i.i
  %wide.trip.count.i.i.i = and i64 %i.dc, 2147483647 ; 6 uses
  %i.dg = sext i32 %i.cf to i64
  %9 = sub i64 %i.cv, %i.da
  %min.iters.check125 = icmp samesign ult i64 %wide.trip.count.i.i.i, 4
  %invariant.op = add i64 %9, -1
  %min.iters.check129 = icmp samesign ult i64 %wide.trip.count.i.i.i, 32
  %n.vec131 = and i64 %i.dc, 2147483616           ; 5 uses
  %cmp.n140 = icmp eq i64 %wide.trip.count.i.i.i, %n.vec131
  %i.dh = and i64 %i.db, 112
  %min.epilog.iters.check144 = icmp eq i64 %i.dh, 0
  %n.vec147 = and i64 %i.dc, 2147483644           ; 4 uses
  %cmp.n153 = icmp eq i64 %wide.trip.count.i.i.i, %n.vec147
  br label %iter.check141

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.split.i.i.i
  %i.di = add nuw i32 %i.ce, 1
  %10 = sub i64 %i.cv, %i.da
  %i.dj = zext nneg i32 %i.ce to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ce, 8
  %invariant.op318 = add i64 %10, -1
  %min.iters.check111 = icmp ult i32 %i.ce, 32
  %i.dk = and i64 %i.dj, 24
  %n.vec = and i64 %i.dj, 2147483616              ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dj
  %min.epilog.iters.check = icmp eq i64 %i.dk, 0
  %n.vec115 = and i64 %i.dj, 2147483640           ; 4 uses
  %cmp.n121 = icmp eq i64 %n.vec115, %i.dj
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.split.us.us.i.i.i, %.preheader.us.preheader.i.i.i
  %.lcssa9.lcssa12 = phi i32 [ %i.gq, %._crit_edge.split.us.us.i.i.i ], [ %i.cf, %.preheader.us.preheader.i.i.i ]
  %.02635.us.i.i.i = phi i32 [ %i.gt, %._crit_edge.split.us.us.i.i.i ], [ 0, %.preheader.us.preheader.i.i.i ]
  %.02733.us.i.i.i = phi i32 [ %i.gs, %._crit_edge.split.us.us.i.i.i ], [ %.0136.i.i, %.preheader.us.preheader.i.i.i ] ; 12 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.02733.us.i.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert116 = insertelement <8 x i32> poison, i32 %.02733.us.i.i.i, i64 0
  %broadcast.splat117 = shufflevector <8 x i32> %broadcast.splatinsert116, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %..loopexit_crit_edge.us.us.i.i.i, %.preheader.us.i.i.i
  %.lcssa911 = phi i32 [ %.lcssa9.lcssa12, %.preheader.us.i.i.i ], [ %i.gq, %..loopexit_crit_edge.us.us.i.i.i ] ; 2 uses
  %.02531.us.us.i.i.i = phi i32 [ 0, %.preheader.us.i.i.i ], [ %i.dt, %..loopexit_crit_edge.us.us.i.i.i ] ; 4 uses
  %i.dl = add i32 %i.ce, %.02531.us.us.i.i.i
  %i.dm = sext i32 %.02531.us.us.i.i.i to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !89
  %i.dp = add i32 %.lcssa911, 1
  %i.dq = sext i32 %.lcssa911 to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dq
  store i32 %i.do, ptr %i.dr, align 4, !tbaa !89
  %.128.us.us.i.i.i = add nsw i32 %.02531.us.us.i.i.i, 1
  %i.ds = sext i32 %.128.us.us.i.i.i to i64       ; 7 uses
  %i.dt = add i32 %i.di, %.02531.us.us.i.i.i      ; 4 uses
  %i.du = sext i32 %i.dp to i64                   ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %11 = sub nsw i64 %i.du, %i.ds
  %i.dv = shl nsw i64 %11, 2
  %i.dw = add i64 %i.dv, %invariant.op318
  %diff.check = icmp ult i64 %i.dw, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dx = add nsw i64 %n.vec, %i.du               ; 2 uses
  %i.dy = add nsw i64 %n.vec, %i.ds
  %invariant.gep = getelementptr [4 x i8], ptr %i.cy, i64 %i.ds
  %invariant.gep312 = getelementptr [4 x i8], ptr %i.cu, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <8 x i32>, ptr %gep, align 4, !tbaa !89
  %wide.load112 = load <8 x i32>, ptr %i.dz, align 4, !tbaa !89
  %wide.load113 = load <8 x i32>, ptr %i.ea, align 4, !tbaa !89
  %wide.load114 = load <8 x i32>, ptr %i.eb, align 4, !tbaa !89
  %i.ec = add nsw <8 x i32> %wide.load, %broadcast.splat
  %i.ed = add nsw <8 x i32> %wide.load112, %broadcast.splat
  %i.ee = add nsw <8 x i32> %wide.load113, %broadcast.splat
  %i.ef = add nsw <8 x i32> %wide.load114, %broadcast.splat
  %gep313 = getelementptr [4 x i8], ptr %invariant.gep312, i64 %index ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %gep313, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %gep313, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %gep313, i64 96
  store <8 x i32> %i.ec, ptr %gep313, align 4, !tbaa !89
  store <8 x i32> %i.ed, ptr %i.eg, align 4, !tbaa !89
  store <8 x i32> %i.ee, ptr %i.eh, align 4, !tbaa !89
  store <8 x i32> %i.ef, ptr %i.ei, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ek = add nsw i64 %n.vec115, %i.du            ; 2 uses
  %i.el = add nsw i64 %n.vec115, %i.ds
  %invariant.gep314 = getelementptr [4 x i8], ptr %i.cy, i64 %i.ds
  %invariant.gep316 = getelementptr [4 x i8], ptr %i.cu, i64 %i.du
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 3 uses
  %gep315 = getelementptr [4 x i8], ptr %invariant.gep314, i64 %index118
  %wide.load119 = load <8 x i32>, ptr %gep315, align 4, !tbaa !89
  %i.em = add nsw <8 x i32> %wide.load119, %broadcast.splat117
  %gep317 = getelementptr [4 x i8], ptr %invariant.gep316, i64 %index118
  store <8 x i32> %i.em, ptr %gep317, align 4, !tbaa !89
  %index.next120 = add nuw i64 %index118, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.en, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !341

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n121, label %..loopexit_crit_edge.us.us.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv41.ph = phi i64 [ %i.du, %iter.check ], [ %i.du, %vector.memcheck ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ] ; 2 uses
  %indvars.iv42.i.i.i.ph = phi i64 [ %i.ds, %iter.check ], [ %i.ds, %vector.memcheck ], [ %i.dy, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ] ; 3 uses
  %i.eo = trunc i64 %indvars.iv42.i.i.i.ph to i32 ; 2 uses
  %i.ep = sub i32 %i.dt, %i.eo
  %i.eq = sub i32 %i.dl, %i.eo
  %xtraiter287 = and i32 %i.ep, 7                 ; 2 uses
  %lcmp.mod288.not = icmp eq i32 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv41.prol = phi i64 [ %indvars.iv.next42.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv41.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv42.i.i.i.prol = phi i64 [ %indvars.iv.next43.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv42.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter289 = phi i32 [ %prol.iter289.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i.prol
  %i.es = load i32, ptr %i.er, align 4, !tbaa !89
  %i.et = add nsw i32 %i.es, %.02733.us.i.i.i
  %indvars.iv.next42.prol = add nsw i64 %indvars.iv41.prol, 1 ; 3 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv41.prol
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !89
  %indvars.iv.next43.i.i.i.prol = add nsw i64 %indvars.iv42.i.i.i.prol, 1 ; 2 uses
  %prol.iter289.next = add i32 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i32 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !342

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next42.lcssa277.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next42.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv41.unr = phi i64 [ %indvars.iv41.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next42.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv42.i.i.i.unr = phi i64 [ %indvars.iv42.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next43.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ev = icmp ult i32 %i.eq, 7
  br i1 %i.ev, label %..loopexit_crit_edge.us.us.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv41 = phi i64 [ %indvars.iv.next42.7, %vec.epilog.scalar.ph ], [ %indvars.iv41.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv42.i.i.i = phi i64 [ %indvars.iv.next43.i.i.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv42.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !89
  %i.ey = add nsw i32 %i.ex, %.02733.us.i.i.i
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv41
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !89
  %i.fa = getelementptr [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !89
  %i.fd = add nsw i32 %i.fc, %.02733.us.i.i.i
  %i.fe = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv41
  %i.ff = getelementptr i8, ptr %i.fe, i64 4
  store i32 %i.fd, ptr %i.ff, align 4, !tbaa !89
  %i.fg = getelementptr [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !89
  %i.fj = add nsw i32 %i.fi, %.02733.us.i.i.i
  %i.fk = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv41
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  store i32 %i.fj, ptr %i.fl, align 4, !tbaa !89
  %i.fm = getelementptr [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i
  %i.fn = getelementptr i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !89
  %i.fp = add nsw i32 %i.fo, %.02733.us.i.i.i
  %i.fq = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv41
  %i.fr = getelementptr i8, ptr %i.fq, i64 12
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !89
  %i.fs = getelementptr [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !89
  %i.fv = add nsw i32 %i.fu, %.02733.us.i.i.i
  %i.fw = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv41
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  store i32 %i.fv, ptr %i.fx, align 4, !tbaa !89
  %i.fy = getelementptr [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i
  %i.fz = getelementptr i8, ptr %i.fy, i64 20
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !89
  %i.gb = add nsw i32 %i.ga, %.02733.us.i.i.i
  %i.gc = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv41
  %i.gd = getelementptr i8, ptr %i.gc, i64 20
  store i32 %i.gb, ptr %i.gd, align 4, !tbaa !89
  %i.ge = getelementptr [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i
  %i.gf = getelementptr i8, ptr %i.ge, i64 24
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !89
  %i.gh = add nsw i32 %i.gg, %.02733.us.i.i.i
  %i.gi = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv41
  %i.gj = getelementptr i8, ptr %i.gi, i64 24
  store i32 %i.gh, ptr %i.gj, align 4, !tbaa !89
  %i.gk = getelementptr [4 x i8], ptr %i.cy, i64 %indvars.iv42.i.i.i
  %i.gl = getelementptr i8, ptr %i.gk, i64 28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !89
  %i.gn = add nsw i32 %i.gm, %.02733.us.i.i.i
  %indvars.iv.next42.7 = add nsw i64 %indvars.iv41, 8 ; 2 uses
  %i.go = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv41
  %i.gp = getelementptr i8, ptr %i.go, i64 28
  store i32 %i.gn, ptr %i.gp, align 4, !tbaa !89
  %indvars.iv.next43.i.i.i.7 = add nsw i64 %indvars.iv42.i.i.i, 8 ; 2 uses
  %lftr.wideiv.i.i.i.7 = trunc i64 %indvars.iv.next43.i.i.i.7 to i32
  %exitcond45.not.i.i.i.7 = icmp eq i32 %i.dt, %lftr.wideiv.i.i.i.7
  br i1 %exitcond45.not.i.i.i.7, label %..loopexit_crit_edge.us.us.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !343

..loopexit_crit_edge.us.us.i.i.i:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next42.lcssa = phi i64 [ %i.ek, %vec.epilog.middle.block ], [ %i.dx, %middle.block ], [ %indvars.iv.next42.lcssa277.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next42.7, %vec.epilog.scalar.ph ]
  %i.gq = trunc nsw i64 %indvars.iv.next42.lcssa to i32 ; 3 uses
  %i.gr = icmp slt i32 %i.dt, %i.dd
  br i1 %i.gr, label %iter.check, label %._crit_edge.split.us.us.i.i.i, !llvm.loop !344

._crit_edge.split.us.us.i.i.i:                    ; preds = %..loopexit_crit_edge.us.us.i.i.i
  %i.gs = add nsw i32 %.02733.us.i.i.i, %i.bs
  %i.gt = add nuw nsw i32 %.02635.us.i.i.i, 1     ; 2 uses
  %exitcond46.not.i.i.i = icmp eq i32 %i.gt, %i.cb
  br i1 %exitcond46.not.i.i.i, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i.sink.split, label %.preheader.us.i.i.i, !llvm.loop !345

iter.check141:                                    ; preds = %._crit_edge.split.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa68 = phi i64 [ %indvars.iv.next.lcssa, %._crit_edge.split.i.i.i ], [ %i.dg, %.preheader.preheader.i.i.i ] ; 7 uses
  %.02635.i.i.i = phi i32 [ %i.hs, %._crit_edge.split.i.i.i ], [ 0, %.preheader.preheader.i.i.i ]
  br i1 %min.iters.check125, label %.loopexit.i.i.i.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %iter.check141
  %i.gu = shl i64 %.lcssa68, 2
  %i.gv = add i64 %i.gu, %invariant.op
  %diff.check127 = icmp ult i64 %i.gv, 127
  br i1 %diff.check127, label %.loopexit.i.i.i.preheader, label %vector.main.loop.iter.check128

vector.main.loop.iter.check128:                   ; preds = %vector.memcheck126
  br i1 %min.iters.check129, label %vec.epilog.ph145, label %vector.ph130

vector.ph130:                                     ; preds = %vector.main.loop.iter.check128
  %i.gw = add i64 %.lcssa68, %n.vec131            ; 2 uses
  %i.gx = getelementptr [4 x i8], ptr %i.cu, i64 %.lcssa68
  br label %vector.body132

vector.body132:                                   ; preds = %vector.ph130, %vector.body132
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index133 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 96
  %wide.load134 = load <8 x i32>, ptr %i.gy, align 4, !tbaa !89
  %wide.load135 = load <8 x i32>, ptr %i.gz, align 4, !tbaa !89
  %wide.load136 = load <8 x i32>, ptr %i.ha, align 4, !tbaa !89
  %wide.load137 = load <8 x i32>, ptr %i.hb, align 4, !tbaa !89
  %i.hc = getelementptr [4 x i8], ptr %i.gx, i64 %index133 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  store <8 x i32> %wide.load134, ptr %i.hc, align 4, !tbaa !89
  store <8 x i32> %wide.load135, ptr %i.hd, align 4, !tbaa !89
  store <8 x i32> %wide.load136, ptr %i.he, align 4, !tbaa !89
  store <8 x i32> %wide.load137, ptr %i.hf, align 4, !tbaa !89
  %index.next138 = add nuw i64 %index133, 32      ; 2 uses
  %i.hg = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.hg, label %middle.block139, label %vector.body132, !llvm.loop !346

middle.block139:                                  ; preds = %vector.body132
  br i1 %cmp.n140, label %._crit_edge.split.i.i.i, label %vec.epilog.iter.check142

vec.epilog.iter.check142:                         ; preds = %middle.block139
  br i1 %min.epilog.iters.check144, label %.loopexit.i.i.i.preheader, label %vec.epilog.ph145, !prof !121

vec.epilog.ph145:                                 ; preds = %vector.main.loop.iter.check128, %vec.epilog.iter.check142
  %vec.epilog.resume.val146 = phi i64 [ %n.vec131, %vec.epilog.iter.check142 ], [ 0, %vector.main.loop.iter.check128 ]
  %i.hh = add i64 %.lcssa68, %n.vec147            ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %i.cu, i64 %.lcssa68
  br label %vec.epilog.vector.body148

vec.epilog.vector.body148:                        ; preds = %vec.epilog.vector.body148, %vec.epilog.ph145
  %index149 = phi i64 [ %vec.epilog.resume.val146, %vec.epilog.ph145 ], [ %index.next151, %vec.epilog.vector.body148 ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index149
  %wide.load150 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !89
  %i.hk = getelementptr [4 x i8], ptr %i.hi, i64 %index149
  store <4 x i32> %wide.load150, ptr %i.hk, align 4, !tbaa !89
  %index.next151 = add nuw i64 %index149, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next151, %n.vec147
  br i1 %i.hl, label %vec.epilog.middle.block152, label %vec.epilog.vector.body148, !llvm.loop !347

vec.epilog.middle.block152:                       ; preds = %vec.epilog.vector.body148
  br i1 %cmp.n153, label %._crit_edge.split.i.i.i, label %.loopexit.i.i.i.preheader

.loopexit.i.i.i.preheader:                        ; preds = %iter.check141, %vector.memcheck126, %vec.epilog.iter.check142, %vec.epilog.middle.block152
  %indvars.iv.ph = phi i64 [ %.lcssa68, %iter.check141 ], [ %.lcssa68, %vector.memcheck126 ], [ %i.gw, %vec.epilog.iter.check142 ], [ %i.hh, %vec.epilog.middle.block152 ] ; 2 uses
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check141 ], [ 0, %vector.memcheck126 ], [ %n.vec131, %vec.epilog.iter.check142 ], [ %n.vec147, %vec.epilog.middle.block152 ] ; 4 uses
  %i.hm = sub nsw i64 %i.dc, %indvars.iv.i.i.i.ph
  %xtraiter = and i64 %i.hm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.prol.loopexit, label %.loopexit.i.i.i.prol

.loopexit.i.i.i.prol:                             ; preds = %.loopexit.i.i.i.preheader, %.loopexit.i.i.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.loopexit.i.i.i.prol ], [ %indvars.iv.ph, %.loopexit.i.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.loopexit.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.loopexit.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.loopexit.i.i.i.prol ], [ 0, %.loopexit.i.i.i.preheader ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i.prol
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !89
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv.prol
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !89
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.loopexit.i.i.i.prol.loopexit, label %.loopexit.i.i.i.prol, !llvm.loop !348

.loopexit.i.i.i.prol.loopexit:                    ; preds = %.loopexit.i.i.i.prol, %.loopexit.i.i.i.preheader
  %indvars.iv.next.lcssa276.unr = phi i64 [ poison, %.loopexit.i.i.i.preheader ], [ %indvars.iv.next.prol, %.loopexit.i.i.i.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.loopexit.i.i.i.preheader ], [ %indvars.iv.next.prol, %.loopexit.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.loopexit.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.loopexit.i.i.i.prol ]
  %i.hq = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.hr = icmp ugt i64 %i.hq, -8
  br i1 %i.hr, label %._crit_edge.split.i.i.i, label %.loopexit.i.i.i

._crit_edge.split.i.i.i:                          ; preds = %.loopexit.i.i.i.prol.loopexit, %.loopexit.i.i.i, %vec.epilog.middle.block152, %middle.block139
  %indvars.iv.next.lcssa = phi i64 [ %i.hh, %vec.epilog.middle.block152 ], [ %i.gw, %middle.block139 ], [ %indvars.iv.next.lcssa276.unr, %.loopexit.i.i.i.prol.loopexit ], [ %indvars.iv.next.7, %.loopexit.i.i.i ] ; 2 uses
  %i.hs = add nuw nsw i32 %.02635.i.i.i, 1        ; 2 uses
  %exitcond41.not.i.i.i = icmp eq i32 %i.hs, %i.cb
  br i1 %exitcond41.not.i.i.i, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i.loopexit4, label %iter.check141, !llvm.loop !345

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.prol.loopexit, %.loopexit.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.loopexit.i.i.i ], [ %indvars.iv.unr, %.loopexit.i.i.i.prol.loopexit ] ; 9 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %.loopexit.i.i.i ], [ %indvars.iv.i.i.i.unr, %.loopexit.i.i.i.prol.loopexit ] ; 9 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !89
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !89
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !89
  %i.hz = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.ia = getelementptr i8, ptr %i.hz, i64 4
  store i32 %i.hy, ptr %i.ia, align 4, !tbaa !89
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !89
  %i.ie = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.if = getelementptr i8, ptr %i.ie, i64 8
  store i32 %i.id, ptr %i.if, align 4, !tbaa !89
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !89
  %i.ij = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.ik = getelementptr i8, ptr %i.ij, i64 12
  store i32 %i.ii, ptr %i.ik, align 4, !tbaa !89
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i32, ptr %i.im, align 4, !tbaa !89
  %i.io = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.ip = getelementptr i8, ptr %i.io, i64 16
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !89
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 20
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !89
  %i.it = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.iu = getelementptr i8, ptr %i.it, i64 20
  store i32 %i.is, ptr %i.iu, align 4, !tbaa !89
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !89
  %i.iy = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.iz = getelementptr i8, ptr %i.iy, i64 24
  store i32 %i.ix, ptr %i.iz, align 4, !tbaa !89
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !89
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %i.jd = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.je = getelementptr i8, ptr %i.jd, i64 28
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !89
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.split.i.i.i, label %.loopexit.i.i.i, !llvm.loop !349

_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i.loopexit4: ; preds = %._crit_edge.split.i.i.i
  %i.jf = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i.sink.split

_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i.sink.split: ; preds = %._crit_edge.split.us.us.i.i.i, %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i.loopexit4
  %.sink = phi i32 [ %i.jf, %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i.loopexit4 ], [ %i.gq, %._crit_edge.split.us.us.i.i.i ]
  store i32 %.sink, ptr %i.bz, align 8, !tbaa !379
  br label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i

_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i: ; preds = %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit.i.i.sink.split, %.preheader.lr.ph.i.i.i, %bb.o
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not130.i.i = icmp eq i64 %indvars.iv.next.i.i, 95
  br i1 %.not130.i.i, label %bb.n, label %bb.o

bb.p:                                             ; preds = %bb.n
  %i.jg = sdiv i32 %i.bt, 2                       ; 2 uses
  %i.jh = sdiv i32 %i.bx, 2                       ; 3 uses
  %i.ji = sext i32 %i.jh to i64
  %i.jj = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 386, ptr noundef %i.bm, i64 noundef range(i64 -1073741824, 1073741824) %i.ji, i64 noundef 48) ; 4 uses
  %i.jk = icmp slt i32 %i.jg, %i.jh
  br i1 %i.jk, label %.lr.ph.i.i.i, label %_ZL17set_posres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0126.0135.i.i, i64 8 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0126.0135.i.i, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0126.0135.i.i, i64 32 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0126.0135.i.i, i64 40
  %i.jp = sext i32 %i.jg to i64
  %.pre.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !381
  br label %bb.q

bb.q:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %indvars.iv.i77.i.i = phi i64 [ %i.jp, %.lr.ph.i.i.i ], [ %indvars.iv.next.i78.i.i, %bb.aa ] ; 4 uses
  %i.jq = getelementptr inbounds [48 x i8], ptr %i.jj, i64 %indvars.iv.i77.i.i ; 9 uses
  %.idx = shl i64 %indvars.iv.i77.i.i, 3
  %i.jr = getelementptr i8, ptr %.pre.i.i.i, i64 %.idx ; 3 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !89
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [48 x i8], ptr %.val.i.i.i, i64 %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.jq, ptr noundef nonnull align 4 dereferenceable(48) %i.ju, i64 48, i1 false), !tbaa.struct !123
  %i.jv = load ptr, ptr %i.jl, align 8, !tbaa !124 ; 2 uses
  %i.jw = load ptr, ptr %i.jm, align 8, !tbaa !124
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  store ptr %i.jj, ptr %i.as, align 8
  store ptr %i.bl, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(67) @.str.1, i8 noundef zeroext 2)
end_hunk_4
begin_hunk_5_@_Z24gmx_mtop_t_to_t_topologyP10gmx_mtop_tb:bb.a
  %.pn.i87.i.i = phi { ptr, i32 } [ %i.mi, %bb.ah ], [ %i.mh, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.mj = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88.i.i: ; preds = %bb.ai
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !102
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume.i.i

bb.aj:                                            ; preds = %bb.ac
  %i.mo = getelementptr i8, ptr %i.ma, i64 4
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !89
  %i.mq = sub nsw i32 %i.mp, %.0136.i.i
  %i.mr = sext i32 %i.mq to i64                   ; 3 uses
  %i.ms = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.mr
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !129
  store float %i.mt, ptr %i.lz, align 4, !tbaa !102
  %i.mu = load ptr, ptr %i.lw, align 8, !tbaa !130
  %i.mv = getelementptr inbounds nuw [12 x i8], ptr %i.mu, i64 %i.mr
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !129
  %i.my = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store float %i.mx, ptr %i.my, align 4, !tbaa !102
  %i.mz = load ptr, ptr %i.lw, align 8, !tbaa !130
  %i.na = getelementptr inbounds nuw [12 x i8], ptr %i.mz, i64 %i.mr
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !129
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store float %i.nc, ptr %i.nd, align 4, !tbaa !102
  %i.ne = trunc nsw i64 %indvars.iv.i83.i.i to i32
  store i32 %i.ne, ptr %i.ma, align 4, !tbaa !89
  %indvars.iv.next.i85.i.i = add nsw i64 %indvars.iv.i83.i.i, 1 ; 2 uses
  %exitcond.not.i86.i.i = icmp eq i64 %indvars.iv.next.i85.i.i, %i.lt
  br i1 %exitcond.not.i86.i.i, label %_ZL19set_fbposres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i, label %bb.ac, !llvm.loop !351

_ZL19set_fbposres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i: ; preds = %bb.aj, %bb.ab, %_ZL17set_posres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i
  %i.nf = phi ptr [ %i.bl, %_ZL17set_posres_paramsI6t_idefEvPT_PK14gmx_molblock_tii.exit.i.i ], [ %i.lu, %bb.ab ], [ %i.lu, %bb.aj ] ; 2 uses
  %i.ng = load i32, ptr %i.bw, align 4, !tbaa !88
  %i.nh = mul nsw i32 %i.ng, %i.bs
  %i.ni = add nsw i32 %i.nh, %.0136.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0126.0135.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.nj, %i.ba
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %bb.m

bb.ak:                                            ; preds = %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit117.i.i, %.preheader.i.i
  %indvars.iv140.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next141.i.i, %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit117.i.i ] ; 4 uses
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv140.i.i ; 4 uses
  %i.nl = load ptr, ptr %i.bk, align 8, !tbaa !131
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %i.nl, i64 %indvars.iv140.i.i ; 3 uses
  %i.nn = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv140.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load i32, ptr %i.no, align 8, !tbaa !101 ; 6 uses
  %i.nq = load i32, ptr %i.nk, align 8, !tbaa !379 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !97
  %i.nt = load ptr, ptr %i.nm, align 8, !tbaa !98
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = sub i64 %i.nu, %i.nv
  %i.nx = lshr exact i64 %i.nw, 2
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = add nsw i32 %i.nq, %i.ny                ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store i32 %i.nz, ptr %i.oa, align 8, !tbaa !380
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 2 uses
  %i.oc = sext i32 %i.nz to i64
  %i.od = load ptr, ptr %i.ob, align 8, !tbaa !119
  %i.oe = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef %i.od, i64 noundef range(i64 -2147483648, 2147483648) %i.oc, i64 noundef 4) ; 25 uses
  %i.of = ptrtoaddr ptr %i.oe to i64              ; 2 uses
  store ptr %i.oe, ptr %i.ob, align 8, !tbaa !119
  %i.og = load ptr, ptr %i.nr, align 8, !tbaa !97
  %i.oh = load ptr, ptr %i.nm, align 8, !tbaa !98 ; 24 uses
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = ptrtoint ptr %i.oh to i64               ; 3 uses
  %i.ok = sub i64 %i.oi, %i.oj                    ; 2 uses
  %i.ol = lshr exact i64 %i.ok, 2                 ; 5 uses
  %i.om = trunc i64 %i.ol to i32                  ; 2 uses
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %.preheader.lr.ph.split.i92.i.i, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit117.i.i

.preheader.lr.ph.split.i92.i.i:                   ; preds = %bb.ak
  %i.oo = icmp sgt i32 %i.np, 0
  br i1 %i.oo, label %.preheader.us.preheader.i103.i.i, label %iter.check207

iter.check207:                                    ; preds = %.preheader.lr.ph.split.i92.i.i
  %wide.trip.count.i94.i.i = and i64 %i.ol, 2147483647 ; 6 uses
  %i.op = sext i32 %i.nq to i64                   ; 7 uses
  %min.iters.check191 = icmp samesign ult i64 %wide.trip.count.i94.i.i, 4
  br i1 %min.iters.check191, label %.loopexit.i97.i.i.preheader, label %vector.memcheck192

vector.memcheck192:                               ; preds = %iter.check207
  %i.oq = shl nsw i64 %i.op, 2
  %i.or = add i64 %i.oq, %i.of
  %i.os = sub i64 %i.oj, %i.or
  %diff.check193 = icmp ugt i64 %i.os, -128
  br i1 %diff.check193, label %.loopexit.i97.i.i.preheader, label %vector.main.loop.iter.check194

vector.main.loop.iter.check194:                   ; preds = %vector.memcheck192
  %min.iters.check195 = icmp samesign ult i64 %wide.trip.count.i94.i.i, 32
  br i1 %min.iters.check195, label %vec.epilog.ph211, label %vector.ph196

vector.ph196:                                     ; preds = %vector.main.loop.iter.check194
  %n.vec197 = and i64 %i.ol, 2147483616           ; 5 uses
  %i.ot = add nsw i64 %n.vec197, %i.op            ; 2 uses
  %invariant.gep318 = getelementptr [4 x i8], ptr %i.oe, i64 %i.op
  br label %vector.body198

vector.body198:                                   ; preds = %vector.ph196, %vector.body198
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next204, %vector.body198 ] ; 3 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index199 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 96
  %wide.load200 = load <8 x i32>, ptr %i.ou, align 4, !tbaa !89
  %wide.load201 = load <8 x i32>, ptr %i.ov, align 4, !tbaa !89
  %wide.load202 = load <8 x i32>, ptr %i.ow, align 4, !tbaa !89
  %wide.load203 = load <8 x i32>, ptr %i.ox, align 4, !tbaa !89
  %gep319 = getelementptr [4 x i8], ptr %invariant.gep318, i64 %index199 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %gep319, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %gep319, i64 64
  %i.pa = getelementptr inbounds nuw i8, ptr %gep319, i64 96
  store <8 x i32> %wide.load200, ptr %gep319, align 4, !tbaa !89
  store <8 x i32> %wide.load201, ptr %i.oy, align 4, !tbaa !89
  store <8 x i32> %wide.load202, ptr %i.oz, align 4, !tbaa !89
  store <8 x i32> %wide.load203, ptr %i.pa, align 4, !tbaa !89
  %index.next204 = add nuw i64 %index199, 32      ; 2 uses
  %i.pb = icmp eq i64 %index.next204, %n.vec197
  br i1 %i.pb, label %middle.block205, label %vector.body198, !llvm.loop !352

middle.block205:                                  ; preds = %vector.body198
  %cmp.n206 = icmp eq i64 %wide.trip.count.i94.i.i, %n.vec197
  br i1 %cmp.n206, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit117.i.i.loopexit3, label %vec.epilog.iter.check208

vec.epilog.iter.check208:                         ; preds = %middle.block205
  %i.pc = and i64 %i.ok, 112
  %min.epilog.iters.check210 = icmp eq i64 %i.pc, 0
  br i1 %min.epilog.iters.check210, label %.loopexit.i97.i.i.preheader, label %vec.epilog.ph211, !prof !121

vec.epilog.ph211:                                 ; preds = %vector.main.loop.iter.check194, %vec.epilog.iter.check208
  %vec.epilog.resume.val212 = phi i64 [ %n.vec197, %vec.epilog.iter.check208 ], [ 0, %vector.main.loop.iter.check194 ]
  %n.vec213 = and i64 %i.ol, 2147483644           ; 4 uses
  %i.pd = add nsw i64 %n.vec213, %i.op            ; 2 uses
  %invariant.gep320 = getelementptr [4 x i8], ptr %i.oe, i64 %i.op
  br label %vec.epilog.vector.body214

vec.epilog.vector.body214:                        ; preds = %vec.epilog.vector.body214, %vec.epilog.ph211
  %index215 = phi i64 [ %vec.epilog.resume.val212, %vec.epilog.ph211 ], [ %index.next217, %vec.epilog.vector.body214 ] ; 3 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index215
  %wide.load216 = load <4 x i32>, ptr %i.pe, align 4, !tbaa !89
  %gep321 = getelementptr [4 x i8], ptr %invariant.gep320, i64 %index215
  store <4 x i32> %wide.load216, ptr %gep321, align 4, !tbaa !89
  %index.next217 = add nuw i64 %index215, 4       ; 2 uses
  %i.pf = icmp eq i64 %index.next217, %n.vec213
  br i1 %i.pf, label %vec.epilog.middle.block218, label %vec.epilog.vector.body214, !llvm.loop !353

vec.epilog.middle.block218:                       ; preds = %vec.epilog.vector.body214
  %cmp.n219 = icmp eq i64 %wide.trip.count.i94.i.i, %n.vec213
  br i1 %cmp.n219, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit117.i.i.loopexit3, label %.loopexit.i97.i.i.preheader

.loopexit.i97.i.i.preheader:                      ; preds = %iter.check207, %vector.memcheck192, %vec.epilog.iter.check208, %vec.epilog.middle.block218
  %indvars.iv44.ph = phi i64 [ %i.op, %iter.check207 ], [ %i.op, %vector.memcheck192 ], [ %i.ot, %vec.epilog.iter.check208 ], [ %i.pd, %vec.epilog.middle.block218 ] ; 2 uses
  %indvars.iv.i98.i.i.ph = phi i64 [ 0, %iter.check207 ], [ 0, %vector.memcheck192 ], [ %n.vec197, %vec.epilog.iter.check208 ], [ %n.vec213, %vec.epilog.middle.block218 ] ; 4 uses
  %i.pg = sub nsw i64 %i.ol, %indvars.iv.i98.i.i.ph
  %xtraiter290 = and i64 %i.pg, 7                 ; 2 uses
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.loopexit.i97.i.i.prol.loopexit, label %.loopexit.i97.i.i.prol

.loopexit.i97.i.i.prol:                           ; preds = %.loopexit.i97.i.i.preheader, %.loopexit.i97.i.i.prol
  %indvars.iv44.prol = phi i64 [ %indvars.iv.next45.prol, %.loopexit.i97.i.i.prol ], [ %indvars.iv44.ph, %.loopexit.i97.i.i.preheader ] ; 2 uses
  %indvars.iv.i98.i.i.prol = phi i64 [ %indvars.iv.next.i99.i.i.prol, %.loopexit.i97.i.i.prol ], [ %indvars.iv.i98.i.i.ph, %.loopexit.i97.i.i.preheader ] ; 2 uses
  %prol.iter292 = phi i64 [ %prol.iter292.next, %.loopexit.i97.i.i.prol ], [ 0, %.loopexit.i97.i.i.preheader ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i.prol
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !89
  %indvars.iv.next45.prol = add nsw i64 %indvars.iv44.prol, 1 ; 3 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %indvars.iv44.prol
  store i32 %i.pi, ptr %i.pj, align 4, !tbaa !89
  %indvars.iv.next.i99.i.i.prol = add nuw nsw i64 %indvars.iv.i98.i.i.prol, 1 ; 2 uses
  %prol.iter292.next = add i64 %prol.iter292, 1   ; 2 uses
  %prol.iter292.cmp.not = icmp eq i64 %prol.iter292.next, %xtraiter290
  br i1 %prol.iter292.cmp.not, label %.loopexit.i97.i.i.prol.loopexit, label %.loopexit.i97.i.i.prol, !llvm.loop !354

.loopexit.i97.i.i.prol.loopexit:                  ; preds = %.loopexit.i97.i.i.prol, %.loopexit.i97.i.i.preheader
  %indvars.iv.next45.lcssa273.unr = phi i64 [ poison, %.loopexit.i97.i.i.preheader ], [ %indvars.iv.next45.prol, %.loopexit.i97.i.i.prol ]
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %.loopexit.i97.i.i.preheader ], [ %indvars.iv.next45.prol, %.loopexit.i97.i.i.prol ]
  %indvars.iv.i98.i.i.unr = phi i64 [ %indvars.iv.i98.i.i.ph, %.loopexit.i97.i.i.preheader ], [ %indvars.iv.next.i99.i.i.prol, %.loopexit.i97.i.i.prol ]
  %i.pk = sub nsw i64 %indvars.iv.i98.i.i.ph, %wide.trip.count.i94.i.i
  %i.pl = icmp ugt i64 %i.pk, -8
  br i1 %i.pl, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit117.i.i.loopexit3, label %.loopexit.i97.i.i

.preheader.us.preheader.i103.i.i:                 ; preds = %.preheader.lr.ph.split.i92.i.i
  %i.pm = add nuw i32 %i.np, 1
  %12 = sub i64 %i.of, %i.oj
  %i.pn = zext nneg i32 %i.np to i64              ; 5 uses
  %min.iters.check158 = icmp ult i32 %i.np, 8
  %invariant.op332 = add i64 %12, -1
  %min.iters.check162 = icmp ult i32 %i.np, 32
  %i.po = and i64 %i.pn, 24
  %n.vec164 = and i64 %i.pn, 2147483616           ; 5 uses
  %cmp.n173 = icmp eq i64 %n.vec164, %i.pn
  %min.epilog.iters.check177 = icmp eq i64 %i.po, 0
  %n.vec180 = and i64 %i.pn, 2147483640           ; 4 uses
  %cmp.n186 = icmp eq i64 %n.vec180, %i.pn
  br label %iter.check174

iter.check174:                                    ; preds = %..loopexit_crit_edge.us.us.i114.i.i, %.preheader.us.preheader.i103.i.i
  %.lcssa2426 = phi i32 [ %i.nq, %.preheader.us.preheader.i103.i.i ], [ %i.sg, %..loopexit_crit_edge.us.us.i114.i.i ] ; 2 uses
  %.02531.us.us.i108.i.i = phi i32 [ 0, %.preheader.us.preheader.i103.i.i ], [ %i.px, %..loopexit_crit_edge.us.us.i114.i.i ] ; 4 uses
  %i.pp = add i32 %i.np, %.02531.us.us.i108.i.i
  %i.pq = sext i32 %.02531.us.us.i108.i.i to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !89
  %i.pt = add i32 %.lcssa2426, 1
  %i.pu = sext i32 %.lcssa2426 to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.pu
  store i32 %i.ps, ptr %i.pv, align 4, !tbaa !89
  %.128.us.us.i109.i.i = add nsw i32 %.02531.us.us.i108.i.i, 1
  %i.pw = sext i32 %.128.us.us.i109.i.i to i64    ; 7 uses
  %i.px = add i32 %i.pm, %.02531.us.us.i108.i.i   ; 4 uses
  %i.py = sext i32 %i.pt to i64                   ; 7 uses
  br i1 %min.iters.check158, label %vec.epilog.scalar.ph176.preheader, label %vector.memcheck159

vector.memcheck159:                               ; preds = %iter.check174
  %13 = sub nsw i64 %i.py, %i.pw
  %i.pz = shl nsw i64 %13, 2
  %i.qa = add i64 %i.pz, %invariant.op332
  %diff.check160 = icmp ult i64 %i.qa, 127
  br i1 %diff.check160, label %vec.epilog.scalar.ph176.preheader, label %vector.main.loop.iter.check161

vector.main.loop.iter.check161:                   ; preds = %vector.memcheck159
  br i1 %min.iters.check162, label %vec.epilog.ph178, label %vector.ph163

vector.ph163:                                     ; preds = %vector.main.loop.iter.check161
  %i.qb = add nsw i64 %n.vec164, %i.py            ; 2 uses
  %i.qc = add nsw i64 %n.vec164, %i.pw
  %invariant.gep322 = getelementptr [4 x i8], ptr %i.oh, i64 %i.pw
  %invariant.gep324 = getelementptr [4 x i8], ptr %i.oe, i64 %i.py
  br label %vector.body165

vector.body165:                                   ; preds = %vector.ph163, %vector.body165
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next171, %vector.body165 ] ; 3 uses
  %gep323 = getelementptr [4 x i8], ptr %invariant.gep322, i64 %index166 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %gep323, i64 32
  %i.qe = getelementptr inbounds nuw i8, ptr %gep323, i64 64
  %i.qf = getelementptr inbounds nuw i8, ptr %gep323, i64 96
  %wide.load167 = load <8 x i32>, ptr %gep323, align 4, !tbaa !89
  %wide.load168 = load <8 x i32>, ptr %i.qd, align 4, !tbaa !89
  %wide.load169 = load <8 x i32>, ptr %i.qe, align 4, !tbaa !89
  %wide.load170 = load <8 x i32>, ptr %i.qf, align 4, !tbaa !89
  %gep325 = getelementptr [4 x i8], ptr %invariant.gep324, i64 %index166 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %gep325, i64 32
  %i.qh = getelementptr inbounds nuw i8, ptr %gep325, i64 64
  %i.qi = getelementptr inbounds nuw i8, ptr %gep325, i64 96
  store <8 x i32> %wide.load167, ptr %gep325, align 4, !tbaa !89
  store <8 x i32> %wide.load168, ptr %i.qg, align 4, !tbaa !89
  store <8 x i32> %wide.load169, ptr %i.qh, align 4, !tbaa !89
  store <8 x i32> %wide.load170, ptr %i.qi, align 4, !tbaa !89
  %index.next171 = add nuw i64 %index166, 32      ; 2 uses
  %i.qj = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.qj, label %middle.block172, label %vector.body165, !llvm.loop !355

middle.block172:                                  ; preds = %vector.body165
  br i1 %cmp.n173, label %..loopexit_crit_edge.us.us.i114.i.i, label %vec.epilog.iter.check175

vec.epilog.iter.check175:                         ; preds = %middle.block172
  br i1 %min.epilog.iters.check177, label %vec.epilog.scalar.ph176.preheader, label %vec.epilog.ph178, !prof !93

vec.epilog.ph178:                                 ; preds = %vector.main.loop.iter.check161, %vec.epilog.iter.check175
  %vec.epilog.resume.val179 = phi i64 [ %n.vec164, %vec.epilog.iter.check175 ], [ 0, %vector.main.loop.iter.check161 ]
  %i.qk = add nsw i64 %n.vec180, %i.py            ; 2 uses
  %i.ql = add nsw i64 %n.vec180, %i.pw
  %invariant.gep326 = getelementptr [4 x i8], ptr %i.oh, i64 %i.pw
  %invariant.gep328 = getelementptr [4 x i8], ptr %i.oe, i64 %i.py
  br label %vec.epilog.vector.body181

vec.epilog.vector.body181:                        ; preds = %vec.epilog.vector.body181, %vec.epilog.ph178
  %index182 = phi i64 [ %vec.epilog.resume.val179, %vec.epilog.ph178 ], [ %index.next184, %vec.epilog.vector.body181 ] ; 3 uses
  %gep327 = getelementptr [4 x i8], ptr %invariant.gep326, i64 %index182
  %wide.load183 = load <8 x i32>, ptr %gep327, align 4, !tbaa !89
  %gep329 = getelementptr [4 x i8], ptr %invariant.gep328, i64 %index182
  store <8 x i32> %wide.load183, ptr %gep329, align 4, !tbaa !89
  %index.next184 = add nuw i64 %index182, 8       ; 2 uses
  %i.qm = icmp eq i64 %index.next184, %n.vec180
  br i1 %i.qm, label %vec.epilog.middle.block185, label %vec.epilog.vector.body181, !llvm.loop !356

vec.epilog.middle.block185:                       ; preds = %vec.epilog.vector.body181
  br i1 %cmp.n186, label %..loopexit_crit_edge.us.us.i114.i.i, label %vec.epilog.scalar.ph176.preheader

vec.epilog.scalar.ph176.preheader:                ; preds = %iter.check174, %vector.memcheck159, %vec.epilog.iter.check175, %vec.epilog.middle.block185
  %indvars.iv48.ph = phi i64 [ %i.py, %iter.check174 ], [ %i.py, %vector.memcheck159 ], [ %i.qb, %vec.epilog.iter.check175 ], [ %i.qk, %vec.epilog.middle.block185 ] ; 2 uses
  %indvars.iv42.i110.i.i.ph = phi i64 [ %i.pw, %iter.check174 ], [ %i.pw, %vector.memcheck159 ], [ %i.qc, %vec.epilog.iter.check175 ], [ %i.ql, %vec.epilog.middle.block185 ] ; 3 uses
  %i.qn = trunc i64 %indvars.iv42.i110.i.i.ph to i32 ; 2 uses
  %i.qo = sub i32 %i.px, %i.qn
  %i.qp = sub i32 %i.pp, %i.qn
  %xtraiter293 = and i32 %i.qo, 7                 ; 2 uses
  %lcmp.mod294.not = icmp eq i32 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %vec.epilog.scalar.ph176.prol.loopexit, label %vec.epilog.scalar.ph176.prol

vec.epilog.scalar.ph176.prol:                     ; preds = %vec.epilog.scalar.ph176.preheader, %vec.epilog.scalar.ph176.prol
  %indvars.iv48.prol = phi i64 [ %indvars.iv.next49.prol, %vec.epilog.scalar.ph176.prol ], [ %indvars.iv48.ph, %vec.epilog.scalar.ph176.preheader ] ; 2 uses
  %indvars.iv42.i110.i.i.prol = phi i64 [ %indvars.iv.next43.i111.i.i.prol, %vec.epilog.scalar.ph176.prol ], [ %indvars.iv42.i110.i.i.ph, %vec.epilog.scalar.ph176.preheader ] ; 2 uses
  %prol.iter295 = phi i32 [ %prol.iter295.next, %vec.epilog.scalar.ph176.prol ], [ 0, %vec.epilog.scalar.ph176.preheader ]
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i.prol
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !89
  %indvars.iv.next49.prol = add nsw i64 %indvars.iv48.prol, 1 ; 3 uses
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %indvars.iv48.prol
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !89
  %indvars.iv.next43.i111.i.i.prol = add nsw i64 %indvars.iv42.i110.i.i.prol, 1 ; 2 uses
  %prol.iter295.next = add i32 %prol.iter295, 1   ; 2 uses
  %prol.iter295.cmp.not = icmp eq i32 %prol.iter295.next, %xtraiter293
  br i1 %prol.iter295.cmp.not, label %vec.epilog.scalar.ph176.prol.loopexit, label %vec.epilog.scalar.ph176.prol, !llvm.loop !357

vec.epilog.scalar.ph176.prol.loopexit:            ; preds = %vec.epilog.scalar.ph176.prol, %vec.epilog.scalar.ph176.preheader
  %indvars.iv.next49.lcssa274.unr = phi i64 [ poison, %vec.epilog.scalar.ph176.preheader ], [ %indvars.iv.next49.prol, %vec.epilog.scalar.ph176.prol ]
  %indvars.iv48.unr = phi i64 [ %indvars.iv48.ph, %vec.epilog.scalar.ph176.preheader ], [ %indvars.iv.next49.prol, %vec.epilog.scalar.ph176.prol ]
  %indvars.iv42.i110.i.i.unr = phi i64 [ %indvars.iv42.i110.i.i.ph, %vec.epilog.scalar.ph176.preheader ], [ %indvars.iv.next43.i111.i.i.prol, %vec.epilog.scalar.ph176.prol ]
  %i.qt = icmp ult i32 %i.qp, 7
  br i1 %i.qt, label %..loopexit_crit_edge.us.us.i114.i.i, label %vec.epilog.scalar.ph176

vec.epilog.scalar.ph176:                          ; preds = %vec.epilog.scalar.ph176.prol.loopexit, %vec.epilog.scalar.ph176
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.7, %vec.epilog.scalar.ph176 ], [ %indvars.iv48.unr, %vec.epilog.scalar.ph176.prol.loopexit ] ; 9 uses
  %indvars.iv42.i110.i.i = phi i64 [ %indvars.iv.next43.i111.i.i.7, %vec.epilog.scalar.ph176 ], [ %indvars.iv42.i110.i.i.unr, %vec.epilog.scalar.ph176.prol.loopexit ] ; 9 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !89
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %indvars.iv48
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !89
  %i.qx = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i
  %i.qy = getelementptr i8, ptr %i.qx, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !89
  %i.ra = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv48
  %i.rb = getelementptr i8, ptr %i.ra, i64 4
  store i32 %i.qz, ptr %i.rb, align 4, !tbaa !89
  %i.rc = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i
  %i.rd = getelementptr i8, ptr %i.rc, i64 8
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !89
  %i.rf = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv48
  %i.rg = getelementptr i8, ptr %i.rf, i64 8
  store i32 %i.re, ptr %i.rg, align 4, !tbaa !89
  %i.rh = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i
  %i.ri = getelementptr i8, ptr %i.rh, i64 12
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !89
  %i.rk = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv48
  %i.rl = getelementptr i8, ptr %i.rk, i64 12
  store i32 %i.rj, ptr %i.rl, align 4, !tbaa !89
  %i.rm = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i
  %i.rn = getelementptr i8, ptr %i.rm, i64 16
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !89
  %i.rp = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv48
  %i.rq = getelementptr i8, ptr %i.rp, i64 16
  store i32 %i.ro, ptr %i.rq, align 4, !tbaa !89
  %i.rr = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i
  %i.rs = getelementptr i8, ptr %i.rr, i64 20
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !89
  %i.ru = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv48
  %i.rv = getelementptr i8, ptr %i.ru, i64 20
  store i32 %i.rt, ptr %i.rv, align 4, !tbaa !89
  %i.rw = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i
  %i.rx = getelementptr i8, ptr %i.rw, i64 24
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !89
  %i.rz = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv48
  %i.sa = getelementptr i8, ptr %i.rz, i64 24
  store i32 %i.ry, ptr %i.sa, align 4, !tbaa !89
  %i.sb = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv42.i110.i.i
  %i.sc = getelementptr i8, ptr %i.sb, i64 28
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !89
  %indvars.iv.next49.7 = add nsw i64 %indvars.iv48, 8 ; 2 uses
  %i.se = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv48
  %i.sf = getelementptr i8, ptr %i.se, i64 28
  store i32 %i.sd, ptr %i.sf, align 4, !tbaa !89
  %indvars.iv.next43.i111.i.i.7 = add nsw i64 %indvars.iv42.i110.i.i, 8 ; 2 uses
  %lftr.wideiv.i112.i.i.7 = trunc i64 %indvars.iv.next43.i111.i.i.7 to i32
  %exitcond45.not.i113.i.i.7 = icmp eq i32 %i.px, %lftr.wideiv.i112.i.i.7
  br i1 %exitcond45.not.i113.i.i.7, label %..loopexit_crit_edge.us.us.i114.i.i, label %vec.epilog.scalar.ph176, !llvm.loop !358

..loopexit_crit_edge.us.us.i114.i.i:              ; preds = %vec.epilog.scalar.ph176.prol.loopexit, %vec.epilog.scalar.ph176, %vec.epilog.middle.block185, %middle.block172
  %indvars.iv.next49.lcssa = phi i64 [ %i.qk, %vec.epilog.middle.block185 ], [ %i.qb, %middle.block172 ], [ %indvars.iv.next49.lcssa274.unr, %vec.epilog.scalar.ph176.prol.loopexit ], [ %indvars.iv.next49.7, %vec.epilog.scalar.ph176 ]
  %i.sg = trunc nsw i64 %indvars.iv.next49.lcssa to i32 ; 2 uses
  %i.sh = icmp slt i32 %i.px, %i.om
  br i1 %i.sh, label %iter.check174, label %_ZL8ilistcat19InteractionFunctionP7t_ilistRK15InteractionListiii.exit117.i.i.sink.split, !llvm.loop !344

.loopexit.i97.i.i:                                ; preds = %.loopexit.i97.i.i.prol.loopexit, %.loopexit.i97.i.i
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.7, %.loopexit.i97.i.i ], [ %indvars.iv44.unr, %.loopexit.i97.i.i.prol.loopexit ] ; 9 uses
  %indvars.iv.i98.i.i = phi i64 [ %indvars.iv.next.i99.i.i.7, %.loopexit.i97.i.i ], [ %indvars.iv.i98.i.i.unr, %.loopexit.i97.i.i.prol.loopexit ] ; 9 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !89
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %indvars.iv44
  store i32 %i.sj, ptr %i.sk, align 4, !tbaa !89
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !89
  %i.so = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv44
  %i.sp = getelementptr i8, ptr %i.so, i64 4
  store i32 %i.sn, ptr %i.sp, align 4, !tbaa !89
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !89
  %i.st = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv44
  %i.su = getelementptr i8, ptr %i.st, i64 8
  store i32 %i.ss, ptr %i.su, align 4, !tbaa !89
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 12
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !89
  %i.sy = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv44
  %i.sz = getelementptr i8, ptr %i.sy, i64 12
  store i32 %i.sx, ptr %i.sz, align 4, !tbaa !89
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !89
  %i.td = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv44
  %i.te = getelementptr i8, ptr %i.td, i64 16
  store i32 %i.tc, ptr %i.te, align 4, !tbaa !89
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 20
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !89
  %i.ti = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv44
  %i.tj = getelementptr i8, ptr %i.ti, i64 20
  store i32 %i.th, ptr %i.tj, align 4, !tbaa !89
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !89
  %i.tn = getelementptr [4 x i8], ptr %i.oe, i64 %indvars.iv44
  %i.to = getelementptr i8, ptr %i.tn, i64 24
  store i32 %i.tm, ptr %i.to, align 4, !tbaa !89
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv.i98.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 28
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !89
  %indvars.iv.next45.7 = add nsw i64 %indvars.iv44, 8 ; 2 uses
end_hunk_5
