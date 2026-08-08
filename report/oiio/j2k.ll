inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_encode:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !57 ; 3 uses
  %.not145 = icmp eq i32 %i.br, 0
  br i1 %.not145, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  br i1 %.275202, label %.lr.ph132.split.us, label %.lr.ph132.split

.lr.ph132.split.us:                               ; preds = %.lr.ph132, %bb.f
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %bb.f ], [ 0, %.lr.ph132 ] ; 2 uses
  %i.bs = load ptr, ptr %i.av, align 8, !tbaa !257
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !261
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !352
  %i.bw = getelementptr inbounds nuw [112 x i8], ptr %i.bv, i64 %indvars.iv177
  %i.bx = tail call i32 @opj_alloc_tile_component_data(ptr noundef %i.bw) #21
  %.not91.us = icmp eq i32 %i.bx, 0
  br i1 %.not91.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph132.split.us
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !347
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !57
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp samesign ult i64 %indvars.iv.next178, %i.cd
  br i1 %i.ce, label %.lr.ph132.split.us, label %._crit_edge, !llvm.loop !353

.lr.ph132.split:                                  ; preds = %.lr.ph132
  %wide.trip.count175 = zext i32 %i.br to i64     ; 2 uses
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !257
  %.pre185 = load ptr, ptr %.pre, align 8, !tbaa !261
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre185, i64 24
  %.pre186 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !352 ; 5 uses
  %.pre187 = load ptr, ptr %i.aw, align 8, !tbaa !347
  %.phi.trans.insert188 = getelementptr inbounds nuw i8, ptr %.pre187, i64 24
  %.pre189 = load ptr, ptr %.phi.trans.insert188, align 8, !tbaa !71 ; 5 uses
  %xtraiter363 = and i64 %wide.trip.count175, 3   ; 3 uses
  %i.cf = icmp ult i32 %i.br, 4
  br i1 %i.cf, label %.epil.preheader362, label %.lr.ph132.split.new

.lr.ph132.split.new:                              ; preds = %.lr.ph132.split
  %unroll_iter367 = and i64 %wide.trip.count175, 4294967292
  br label %bb.h

.loopexit:                                        ; preds = %opj_j2k_pre_write_tile.exit, %opj_j2k_pre_write_tile.exit.thread
  %.not83 = icmp eq ptr %.076135, null
  br i1 %.not83, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.loopexit
  tail call void @opj_free(ptr noundef nonnull %.076135) #21
  br label %.critedge

bb.h:                                             ; preds = %bb.h, %.lr.ph132.split.new
  %indvars.iv172 = phi i64 [ 0, %.lr.ph132.split.new ], [ %indvars.iv.next173.3, %bb.h ] ; 6 uses
  %niter368 = phi i64 [ 0, %.lr.ph132.split.new ], [ %niter368.next.3, %bb.h ]
  %i.cg = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv172 ; 2 uses
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv172
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !332
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !354
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store i32 0, ptr %i.cl, align 8, !tbaa !357
  %indvars.iv.next173 = or disjoint i64 %indvars.iv172, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv.next173 ; 2 uses
  %i.cn = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv.next173
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !332
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !354
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  store i32 0, ptr %i.cr, align 8, !tbaa !357
  %indvars.iv.next173.1 = or disjoint i64 %indvars.iv172, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv.next173.1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv.next173.1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !332
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !354
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store i32 0, ptr %i.cx, align 8, !tbaa !357
  %indvars.iv.next173.2 = or disjoint i64 %indvars.iv172, 3 ; 2 uses
  %i.cy = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv.next173.2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv.next173.2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !332
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !354
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store i32 0, ptr %i.dd, align 8, !tbaa !357
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %niter368.next.3 = add i64 %niter368, 4         ; 2 uses
  %niter368.ncmp.3 = icmp eq i64 %niter368.next.3, %unroll_iter367
  br i1 %niter368.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %bb.h, !llvm.loop !353

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod365.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod365.not, label %._crit_edge.thread, label %.epil.preheader362

.epil.preheader362:                               ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph132.split
  %indvars.iv172.epil.init = phi i64 [ 0, %.lr.ph132.split ], [ %indvars.iv.next173.3, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter363, 0
  tail call void @llvm.assume(i1 %lcmp.mod366)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader362
  %indvars.iv172.epil = phi i64 [ %indvars.iv172.epil.init, %.epil.preheader362 ], [ %indvars.iv.next173.epil, %bb.i ] ; 3 uses
  %epil.iter364 = phi i64 [ 0, %.epil.preheader362 ], [ %epil.iter364.next, %bb.i ]
  %i.de = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv172.epil ; 2 uses
  %i.df = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv172.epil
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !332
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !354
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  store i32 0, ptr %i.dj, align 8, !tbaa !357
  %indvars.iv.next173.epil = add nuw nsw i64 %indvars.iv172.epil, 1
  %epil.iter364.next = add i64 %epil.iter364, 1   ; 2 uses
  %epil.iter364.cmp.not = icmp eq i64 %epil.iter364.next, %xtraiter363
  br i1 %epil.iter364.cmp.not, label %._crit_edge.thread, label %bb.i, !llvm.loop !358

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge.thread.unr-lcssa
  %i.dk = tail call i64 @opj_tcd_get_encoder_input_buffer_size(ptr noundef nonnull %i.bn) #21 ; 0 uses
  br label %bb.s

.split.us:                                        ; preds = %.lr.ph132.split.us
  %i.dl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.101) #21 ; 0 uses
  %.not92 = icmp eq ptr %.076135, null
  br i1 %.not92, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.split.us
  tail call void @opj_free(ptr noundef nonnull %.076135) #21
  br label %.critedge

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa = phi ptr [ %i.bn, %.preheader ], [ %i.by, %bb.f ]
  %i.dm = tail call i64 @opj_tcd_get_encoder_input_buffer_size(ptr noundef nonnull %.lcssa) #21 ; 4 uses
  br i1 %.275202, label %bb.k, label %bb.s

bb.k:                                             ; preds = %._crit_edge
  %i.dn = icmp ugt i64 %i.dm, %.069137
  br i1 %i.dn, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.do = tail call ptr @opj_realloc(ptr noundef %.076135, i64 noundef %i.dm) #21 ; 2 uses
  %.not85.not = icmp eq ptr %i.do, null
  br i1 %.not85.not, label %bb.m, label %.thread99

bb.m:                                             ; preds = %bb.l
  %.not86 = icmp eq ptr %.076135, null
  br i1 %.not86, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @opj_free(ptr noundef nonnull %.076135) #21
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n
  %i.dp = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.102) #21 ; 0 uses
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %i.dq = icmp eq ptr %.076135, null
  br i1 %i.dq, label %.critedge, label %.thread99

.thread99:                                        ; preds = %bb.l, %bb.o
  %.271103 = phi i64 [ %.069137, %bb.o ], [ %i.dm, %bb.l ]
  %.278102 = phi ptr [ %.076135, %bb.o ], [ %i.do, %bb.l ] ; 4 uses
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !347 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !57
  %.not172.i = icmp eq i32 %i.dv, 0
  br i1 %.not172.i, label %opj_j2k_get_tile_data.exit, label %opj_get_tile_dimensions.exit.lr.ph.i

opj_get_tile_dimensions.exit.lr.ph.i:             ; preds = %.thread99
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  br label %opj_get_tile_dimensions.exit.i

opj_get_tile_dimensions.exit.i:                   ; preds = %.loopexit.i, %opj_get_tile_dimensions.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %opj_get_tile_dimensions.exit.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.dx = phi ptr [ %i.dt, %opj_get_tile_dimensions.exit.lr.ph.i ], [ %i.oz, %.loopexit.i ] ; 4 uses
  %.065171.i = phi ptr [ %.278102, %opj_get_tile_dimensions.exit.lr.ph.i ], [ %.166.i, %.loopexit.i ] ; 16 uses
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !257
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !261
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !352
  %i.ec = getelementptr inbounds nuw [112 x i8], ptr %i.eb, i64 %indvars.iv.i ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !71
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.ee, i64 %indvars.iv.i ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !75 ; 2 uses
  %i.ei = lshr i32 %i.eh, 3
  %i.ej = and i32 %i.eh, 7
  %.not.i.i = icmp ne i32 %i.ej, 0
  %i.ek = zext i1 %.not.i.i to i32
  %i.el = add nuw nsw i32 %i.ei, %i.ek            ; 2 uses
  %3 = icmp eq i32 %i.el, 3
  %.0104.i = select i1 %3, i32 4, i32 %i.el
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !359 ; 19 uses
  %i.eo = load i32, ptr %i.ec, align 8, !tbaa !360 ; 20 uses
  %i.ep = sub i32 %i.en, %i.eo                    ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !361 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !362 ; 5 uses
  %i.eu = sub i32 %i.er, %i.et                    ; 5 uses
  %i.ev = load i32, ptr %i.dx, align 8, !tbaa !149 ; 2 uses
  %i.ew = load i32, ptr %i.ef, align 8, !tbaa !76
  %i.ex = zext i32 %i.ev to i64
  %i.ey = zext i32 %i.ew to i64                   ; 3 uses
  %i.ez = add nsw i64 %i.ey, -1                   ; 2 uses
  %i.fa = add nsw i64 %i.ez, %i.ex
  %i.fb = udiv i64 %i.fa, %i.ey
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !150
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !77
  %i.fh = zext i32 %i.fe to i64
  %i.fi = zext i32 %i.fg to i64                   ; 2 uses
  %i.fj = add nsw i64 %i.fh, -1
  %i.fk = add nsw i64 %i.fj, %i.fi
  %i.fl = udiv i64 %i.fk, %i.fi
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !84
  %i.fp = sub i32 %i.fo, %i.ev
  %i.fq = zext i32 %i.fp to i64
  %i.fr = add nsw i64 %i.ez, %i.fq
  %i.fs = udiv i64 %i.fr, %i.ey
  %i.ft = trunc i64 %i.fs to i32                  ; 2 uses
  %i.fu = sub i32 %i.ft, %i.ep                    ; 5 uses
  %i.fv = sub i32 %i.eo, %i.fc
  %i.fw = sub i32 %i.et, %i.fm
  %i.fx = mul i32 %i.fw, %i.ft
  %i.fy = add i32 %i.fv, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !332
  %i.gb = zext i32 %i.fy to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gb ; 5 uses
  switch i32 %.0104.i, label %.loopexit.i [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 4, label %.preheader116.i
  ]

.preheader116.i:                                  ; preds = %opj_get_tile_dimensions.exit.i
  %.not173.i = icmp eq i32 %i.er, %i.et
  br i1 %.not173.i, label %.loopexit.i, label %.preheader108.lr.ph.i

.preheader108.lr.ph.i:                            ; preds = %.preheader116.i
  %.not174.i = icmp eq i32 %i.en, %i.eo
  %i.gd = zext i32 %i.fu to i64
  br i1 %.not174.i, label %.loopexit.i, label %.preheader108.us.i.preheader

.preheader108.us.i.preheader:                     ; preds = %.preheader108.lr.ph.i
  %i.ge = xor i32 %i.eo, -1
  %i.gf = add i32 %i.en, %i.ge                    ; 2 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check321 = icmp ult i32 %i.gf, 7
  %n.vec323 = and i64 %i.gh, 8589934584           ; 4 uses
  %i.gi = shl nuw nsw i64 %n.vec323, 2            ; 2 uses
  %i.gj = trunc i64 %n.vec323 to i32
  %cmp.n332 = icmp eq i64 %i.gh, %n.vec323
  %i.gk = sub i32 %i.eo, %i.en
  br label %.preheader108.us.i

.preheader108.us.i:                               ; preds = %.preheader108.us.i.preheader, %._crit_edge.us.i
  %.0124.us.i = phi ptr [ %.lcssa235, %._crit_edge.us.i ], [ %.065171.i, %.preheader108.us.i.preheader ] ; 4 uses
  %.8123.us.i = phi ptr [ %i.hz, %._crit_edge.us.i ], [ %i.gc, %.preheader108.us.i.preheader ] ; 4 uses
  %.477122.us.i = phi i32 [ %i.ia, %._crit_edge.us.i ], [ 0, %.preheader108.us.i.preheader ]
  %.8123.us.i319 = ptrtoaddr ptr %.8123.us.i to i64
  %.0124.us.i318 = ptrtoaddr ptr %.0124.us.i to i64
  %i.gl = sub i64 %.8123.us.i319, %.0124.us.i318
  %diff.check = icmp ugt i64 %i.gl, -32
  %or.cond = select i1 %min.iters.check321, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph320.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.preheader108.us.i
  %i.gm = getelementptr i8, ptr %.0124.us.i, i64 %i.gi ; 2 uses
  %i.gn = getelementptr i8, ptr %.8123.us.i, i64 %i.gi ; 2 uses
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body324 ] ; 2 uses
  %i.go = shl i64 %index325, 2                    ; 2 uses
  %next.gep326 = getelementptr i8, ptr %.0124.us.i, i64 %i.go ; 2 uses
  %next.gep327 = getelementptr i8, ptr %.8123.us.i, i64 %i.go ; 2 uses
  %i.gp = getelementptr i8, ptr %next.gep327, i64 16
  %wide.load328 = load <4 x i32>, ptr %next.gep327, align 4, !tbaa !3
  %wide.load329 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !3
  %i.gq = getelementptr i8, ptr %next.gep326, i64 16
  store <4 x i32> %wide.load328, ptr %next.gep326, align 4, !tbaa !3
  store <4 x i32> %wide.load329, ptr %i.gq, align 4, !tbaa !3
  %index.next330 = add nuw i64 %index325, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.gr, label %middle.block331, label %vector.body324, !llvm.loop !363

middle.block331:                                  ; preds = %vector.body324
  br i1 %cmp.n332, label %._crit_edge.us.i, label %scalar.ph320.preheader

scalar.ph320.preheader:                           ; preds = %.preheader108.us.i, %middle.block331
  %.1120.us.i.ph = phi ptr [ %.0124.us.i, %.preheader108.us.i ], [ %i.gm, %middle.block331 ] ; 2 uses
  %.9119.us.i.ph = phi ptr [ %.8123.us.i, %.preheader108.us.i ], [ %i.gn, %middle.block331 ] ; 2 uses
  %.482118.us.i.ph = phi i32 [ 0, %.preheader108.us.i ], [ %i.gj, %middle.block331 ] ; 4 uses
  %i.gs = add i32 %i.eo, %.482118.us.i.ph
  %i.gt = sub i32 %i.en, %i.gs
  %xtraiter369 = and i32 %i.gt, 7                 ; 2 uses
  %lcmp.mod370.not = icmp eq i32 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %scalar.ph320.prol.loopexit, label %scalar.ph320.prol

scalar.ph320.prol:                                ; preds = %scalar.ph320.preheader, %scalar.ph320.prol
  %.1120.us.i.prol = phi ptr [ %i.gw, %scalar.ph320.prol ], [ %.1120.us.i.ph, %scalar.ph320.preheader ] ; 2 uses
  %.9119.us.i.prol = phi ptr [ %i.gu, %scalar.ph320.prol ], [ %.9119.us.i.ph, %scalar.ph320.preheader ] ; 2 uses
  %.482118.us.i.prol = phi i32 [ %i.gx, %scalar.ph320.prol ], [ %.482118.us.i.ph, %scalar.ph320.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph320.prol ], [ 0, %scalar.ph320.preheader ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.9119.us.i.prol, i64 4 ; 3 uses
  %i.gv = load i32, ptr %.9119.us.i.prol, align 4, !tbaa !3
  %i.gw = getelementptr inbounds nuw i8, ptr %.1120.us.i.prol, i64 4 ; 3 uses
  store i32 %i.gv, ptr %.1120.us.i.prol, align 4, !tbaa !3
  %i.gx = add nuw i32 %.482118.us.i.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter369
  br i1 %prol.iter.cmp.not, label %scalar.ph320.prol.loopexit, label %scalar.ph320.prol, !llvm.loop !364

scalar.ph320.prol.loopexit:                       ; preds = %scalar.ph320.prol, %scalar.ph320.preheader
  %.lcssa342.unr = phi ptr [ poison, %scalar.ph320.preheader ], [ %i.gu, %scalar.ph320.prol ]
  %.lcssa341.unr = phi ptr [ poison, %scalar.ph320.preheader ], [ %i.gw, %scalar.ph320.prol ]
  %.1120.us.i.unr = phi ptr [ %.1120.us.i.ph, %scalar.ph320.preheader ], [ %i.gw, %scalar.ph320.prol ]
  %.9119.us.i.unr = phi ptr [ %.9119.us.i.ph, %scalar.ph320.preheader ], [ %i.gu, %scalar.ph320.prol ]
  %.482118.us.i.unr = phi i32 [ %.482118.us.i.ph, %scalar.ph320.preheader ], [ %i.gx, %scalar.ph320.prol ]
  %i.gy = add i32 %i.gk, %.482118.us.i.ph
  %i.gz = icmp ugt i32 %i.gy, -8
  br i1 %i.gz, label %._crit_edge.us.i, label %scalar.ph320

scalar.ph320:                                     ; preds = %scalar.ph320.prol.loopexit, %scalar.ph320
  %.1120.us.i = phi ptr [ %i.hx, %scalar.ph320 ], [ %.1120.us.i.unr, %scalar.ph320.prol.loopexit ] ; 9 uses
  %.9119.us.i = phi ptr [ %i.hv, %scalar.ph320 ], [ %.9119.us.i.unr, %scalar.ph320.prol.loopexit ] ; 9 uses
  %.482118.us.i = phi i32 [ %i.hy, %scalar.ph320 ], [ %.482118.us.i.unr, %scalar.ph320.prol.loopexit ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 4
  %i.hb = load i32, ptr %.9119.us.i, align 4, !tbaa !3
  %i.hc = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 4
  store i32 %i.hb, ptr %.1120.us.i, align 4, !tbaa !3
  %i.hd = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 8
  %i.he = load i32, ptr %i.ha, align 4, !tbaa !3
  %i.hf = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 8
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !3
  %i.hg = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 12
  %i.hh = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hi = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 12
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !3
  %i.hj = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 16
  %i.hk = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.hl = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 16
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !3
  %i.hm = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 20
  %i.hn = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.ho = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 20
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !3
  %i.hp = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 24
  %i.hq = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 24
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !3
  %i.hs = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 28
  %i.ht = load i32, ptr %i.hp, align 4, !tbaa !3
  %i.hu = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 28
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !3
  %i.hv = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 32 ; 2 uses
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hx = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 32 ; 2 uses
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !3
  %i.hy = add nuw i32 %.482118.us.i, 8            ; 2 uses
  %exitcond.not.i.7 = icmp eq i32 %i.hy, %i.ep
  br i1 %exitcond.not.i.7, label %._crit_edge.us.i, label %scalar.ph320, !llvm.loop !365

._crit_edge.us.i:                                 ; preds = %scalar.ph320.prol.loopexit, %scalar.ph320, %middle.block331
  %.lcssa236 = phi ptr [ %i.gn, %middle.block331 ], [ %.lcssa342.unr, %scalar.ph320.prol.loopexit ], [ %i.hv, %scalar.ph320 ]
  %.lcssa235 = phi ptr [ %i.gm, %middle.block331 ], [ %.lcssa341.unr, %scalar.ph320.prol.loopexit ], [ %i.hx, %scalar.ph320 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.lcssa236, i64 %i.gd
  %i.ia = add nuw i32 %.477122.us.i, 1            ; 2 uses
  %exitcond201.not.i = icmp eq i32 %i.ia, %i.eu
  br i1 %exitcond201.not.i, label %.loopexit.i, label %.preheader108.us.i, !llvm.loop !366

bb.p:                                             ; preds = %opj_get_tile_dimensions.exit.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !119
  %.not83.i = icmp eq i32 %i.ic, 0
  %.not181.i = icmp eq i32 %i.er, %i.et           ; 2 uses
  br i1 %.not83.i, label %.preheader109.i, label %.preheader110.i

.preheader110.i:                                  ; preds = %bb.p
  br i1 %.not181.i, label %.loopexit.i, label %.preheader105.lr.ph.i

.preheader105.lr.ph.i:                            ; preds = %.preheader110.i
  %.not180.i = icmp eq i32 %i.en, %i.eo
  %i.id = zext i32 %i.fu to i64
  br i1 %.not180.i, label %.loopexit.i, label %.preheader105.us.i.preheader

.preheader105.us.i.preheader:                     ; preds = %.preheader105.lr.ph.i
  %i.ie = xor i32 %i.eo, -1
  %i.if = add i32 %i.en, %i.ie
  %i.ig = zext i32 %i.if to i64                   ; 2 uses
  %i.ih = shl nuw nsw i64 %i.ig, 2
  %i.ii = xor i32 %i.eo, -1
  %i.ij = add i32 %i.en, %i.ii                    ; 2 uses
  %i.ik = zext i32 %i.ij to i64
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check270 = icmp ult i32 %i.ij, 7
  %n.vec272 = and i64 %i.il, 8589934584           ; 5 uses
  %i.im = shl nuw nsw i64 %n.vec272, 2
  %i.in = trunc i64 %n.vec272 to i32
  %cmp.n281 = icmp eq i64 %i.il, %n.vec272
  %i.io = sub i32 %i.eo, %i.en
  br label %.preheader105.us.i

.preheader105.us.i:                               ; preds = %.preheader105.us.i.preheader, %._crit_edge.us156.i
  %.060154.us.i = phi ptr [ %.lcssa242, %._crit_edge.us156.i ], [ %.065171.i, %.preheader105.us.i.preheader ] ; 6 uses
  %.068153.us.i = phi ptr [ %i.kn, %._crit_edge.us156.i ], [ %i.gc, %.preheader105.us.i.preheader ] ; 6 uses
  %.073152.us.i = phi i32 [ %i.ko, %._crit_edge.us156.i ], [ 0, %.preheader105.us.i.preheader ]
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.memcheck261

vector.memcheck261:                               ; preds = %.preheader105.us.i
  %scevgep262 = getelementptr i8, ptr %.060154.us.i, i64 1
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.ig
  %scevgep264 = getelementptr i8, ptr %.068153.us.i, i64 4
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.ih
  %bound0266 = icmp ult ptr %.060154.us.i, %scevgep265
  %bound1267 = icmp ult ptr %.068153.us.i, %scevgep263
  %found.conflict268 = and i1 %bound0266, %bound1267
  br i1 %found.conflict268, label %scalar.ph269.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %vector.memcheck261
  %i.ip = getelementptr i8, ptr %.060154.us.i, i64 %n.vec272 ; 2 uses
  %i.iq = getelementptr i8, ptr %.068153.us.i, i64 %i.im ; 2 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next279, %vector.body273 ] ; 3 uses
  %next.gep275 = getelementptr i8, ptr %.060154.us.i, i64 %index274 ; 2 uses
  %i.ir = shl i64 %index274, 2
  %next.gep276 = getelementptr i8, ptr %.068153.us.i, i64 %i.ir ; 2 uses
  %i.is = getelementptr i8, ptr %next.gep276, i64 16
  %wide.load277 = load <4 x i32>, ptr %next.gep276, align 4, !tbaa !3, !alias.scope !367
  %wide.load278 = load <4 x i32>, ptr %i.is, align 4, !tbaa !3, !alias.scope !367
  %i.it = trunc <4 x i32> %wide.load277 to <4 x i8>
  %i.iu = trunc <4 x i32> %wide.load278 to <4 x i8>
end_hunk_0
