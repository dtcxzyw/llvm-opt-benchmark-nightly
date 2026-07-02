inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_encode:bb.a

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
  %xtraiter367 = and i64 %wide.trip.count175, 3   ; 3 uses
  %i.cf = icmp ult i32 %i.br, 4
  br i1 %i.cf, label %.epil.preheader366, label %.lr.ph132.split.new

.lr.ph132.split.new:                              ; preds = %.lr.ph132.split
  %unroll_iter371 = and i64 %wide.trip.count175, 4294967292
  br label %bb.h

.loopexit:                                        ; preds = %opj_j2k_pre_write_tile.exit, %opj_j2k_pre_write_tile.exit.thread
  %.not83 = icmp eq ptr %.076135, null
  br i1 %.not83, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.loopexit
  tail call void @opj_free(ptr noundef nonnull %.076135) #21
  br label %.critedge

bb.h:                                             ; preds = %bb.h, %.lr.ph132.split.new
  %indvars.iv172 = phi i64 [ 0, %.lr.ph132.split.new ], [ %indvars.iv.next173.3, %bb.h ] ; 6 uses
  %niter372 = phi i64 [ 0, %.lr.ph132.split.new ], [ %niter372.next.3, %bb.h ]
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
  %niter372.next.3 = add i64 %niter372, 4         ; 2 uses
  %niter372.ncmp.3 = icmp eq i64 %niter372.next.3, %unroll_iter371
  br i1 %niter372.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %bb.h, !llvm.loop !353

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod369.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod369.not, label %._crit_edge.thread, label %.epil.preheader366

.epil.preheader366:                               ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph132.split
  %indvars.iv172.epil.init = phi i64 [ 0, %.lr.ph132.split ], [ %indvars.iv.next173.3, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod370 = icmp ne i64 %xtraiter367, 0
  tail call void @llvm.assume(i1 %lcmp.mod370)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader366
  %indvars.iv172.epil = phi i64 [ %indvars.iv172.epil.init, %.epil.preheader366 ], [ %indvars.iv.next173.epil, %bb.i ] ; 3 uses
  %epil.iter368 = phi i64 [ 0, %.epil.preheader366 ], [ %epil.iter368.next, %bb.i ]
  %i.de = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv172.epil ; 2 uses
  %i.df = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv172.epil
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !332
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !354
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  store i32 0, ptr %i.dj, align 8, !tbaa !357
  %indvars.iv.next173.epil = add nuw nsw i64 %indvars.iv172.epil, 1
  %epil.iter368.next = add i64 %epil.iter368, 1   ; 2 uses
  %epil.iter368.cmp.not = icmp eq i64 %epil.iter368.next, %xtraiter367
  br i1 %epil.iter368.cmp.not, label %._crit_edge.thread, label %bb.i, !llvm.loop !358

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
  %i.dx = phi ptr [ %i.dt, %opj_get_tile_dimensions.exit.lr.ph.i ], [ %i.ow, %.loopexit.i ] ; 4 uses
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
  %i.em = icmp eq i32 %i.el, 3
  %.0104.i = select i1 %i.em, i32 4, i32 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !359 ; 19 uses
  %i.ep = load i32, ptr %i.ec, align 8, !tbaa !360 ; 20 uses
  %i.eq = sub i32 %i.eo, %i.ep                    ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !361 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !362 ; 5 uses
  %i.ev = sub i32 %i.es, %i.eu                    ; 5 uses
  %i.ew = load i32, ptr %i.dx, align 8, !tbaa !149 ; 2 uses
  %i.ex = load i32, ptr %i.ef, align 8, !tbaa !76
  %i.ey = zext i32 %i.ew to i64
  %i.ez = zext i32 %i.ex to i64                   ; 3 uses
  %i.fa = add nsw i64 %i.ez, -1                   ; 2 uses
  %i.fb = add nsw i64 %i.fa, %i.ey
  %i.fc = udiv i64 %i.fb, %i.ez
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !150
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !77
  %i.fi = zext i32 %i.ff to i64
  %i.fj = zext i32 %i.fh to i64                   ; 2 uses
  %i.fk = add nsw i64 %i.fi, -1
  %i.fl = add nsw i64 %i.fk, %i.fj
  %i.fm = udiv i64 %i.fl, %i.fj
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !84
  %i.fq = sub i32 %i.fp, %i.ew
  %i.fr = zext i32 %i.fq to i64
  %i.fs = add nsw i64 %i.fa, %i.fr
  %i.ft = udiv i64 %i.fs, %i.ez
  %i.fu = trunc i64 %i.ft to i32                  ; 2 uses
  %i.fv = sub i32 %i.fu, %i.eq                    ; 5 uses
  %i.fw = sub i32 %i.ep, %i.fd
  %i.fx = sub i32 %i.eu, %i.fn
  %i.fy = mul i32 %i.fx, %i.fu
  %i.fz = add i32 %i.fw, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !332
  %i.gc = zext i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gc ; 5 uses
  switch i32 %.0104.i, label %.loopexit.i [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 4, label %.preheader116.i
  ]

.preheader116.i:                                  ; preds = %opj_get_tile_dimensions.exit.i
  %.not173.i = icmp eq i32 %i.es, %i.eu
  br i1 %.not173.i, label %.loopexit.i, label %.preheader108.lr.ph.i

.preheader108.lr.ph.i:                            ; preds = %.preheader116.i
  %.not174.i = icmp eq i32 %i.eo, %i.ep
  %i.ge = zext i32 %i.fv to i64
  br i1 %.not174.i, label %.loopexit.i, label %.preheader108.us.i.preheader

.preheader108.us.i.preheader:                     ; preds = %.preheader108.lr.ph.i
  %i.gf = xor i32 %i.ep, -1
  %i.gg = add i32 %i.eo, %i.gf                    ; 2 uses
  %i.gh = zext i32 %i.gg to i64
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check324 = icmp ult i32 %i.gg, 7
  %n.vec327 = and i64 %i.gi, 8589934584           ; 4 uses
  %i.gj = shl nuw nsw i64 %n.vec327, 2            ; 2 uses
  %i.gk = trunc i64 %n.vec327 to i32
  %cmp.n336 = icmp eq i64 %i.gi, %n.vec327
  %i.gl = sub i32 %i.ep, %i.eo
  br label %.preheader108.us.i

.preheader108.us.i:                               ; preds = %.preheader108.us.i.preheader, %._crit_edge.us.i
  %.0124.us.i = phi ptr [ %.lcssa235, %._crit_edge.us.i ], [ %.065171.i, %.preheader108.us.i.preheader ] ; 4 uses
  %.8123.us.i = phi ptr [ %i.ia, %._crit_edge.us.i ], [ %i.gd, %.preheader108.us.i.preheader ] ; 4 uses
  %.477122.us.i = phi i32 [ %i.ib, %._crit_edge.us.i ], [ 0, %.preheader108.us.i.preheader ]
  %.8123.us.i322 = ptrtoaddr ptr %.8123.us.i to i64
  %.0124.us.i321 = ptrtoaddr ptr %.0124.us.i to i64
  %i.gm = sub i64 %.0124.us.i321, %.8123.us.i322
  %diff.check = icmp ult i64 %i.gm, 32
  %or.cond = select i1 %min.iters.check324, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph323.preheader, label %vector.ph325

vector.ph325:                                     ; preds = %.preheader108.us.i
  %i.gn = getelementptr i8, ptr %.0124.us.i, i64 %i.gj ; 2 uses
  %i.go = getelementptr i8, ptr %.8123.us.i, i64 %i.gj ; 2 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.gp = shl i64 %index329, 2                    ; 2 uses
  %next.gep330 = getelementptr i8, ptr %.0124.us.i, i64 %i.gp ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.8123.us.i, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep331, i64 16
  %wide.load332 = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !3
  %wide.load333 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !3
  %i.gr = getelementptr i8, ptr %next.gep330, i64 16
  store <4 x i32> %wide.load332, ptr %next.gep330, align 4, !tbaa !3
  store <4 x i32> %wide.load333, ptr %i.gr, align 4, !tbaa !3
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.gs, label %middle.block335, label %vector.body328, !llvm.loop !363

middle.block335:                                  ; preds = %vector.body328
  br i1 %cmp.n336, label %._crit_edge.us.i, label %scalar.ph323.preheader

scalar.ph323.preheader:                           ; preds = %.preheader108.us.i, %middle.block335
  %.1120.us.i.ph = phi ptr [ %.0124.us.i, %.preheader108.us.i ], [ %i.gn, %middle.block335 ] ; 2 uses
  %.9119.us.i.ph = phi ptr [ %.8123.us.i, %.preheader108.us.i ], [ %i.go, %middle.block335 ] ; 2 uses
  %.482118.us.i.ph = phi i32 [ 0, %.preheader108.us.i ], [ %i.gk, %middle.block335 ] ; 4 uses
  %i.gt = add i32 %i.ep, %.482118.us.i.ph
  %i.gu = sub i32 %i.eo, %i.gt
  %xtraiter373 = and i32 %i.gu, 7                 ; 2 uses
  %lcmp.mod374.not = icmp eq i32 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %scalar.ph323.prol.loopexit, label %scalar.ph323.prol

scalar.ph323.prol:                                ; preds = %scalar.ph323.preheader, %scalar.ph323.prol
  %.1120.us.i.prol = phi ptr [ %i.gx, %scalar.ph323.prol ], [ %.1120.us.i.ph, %scalar.ph323.preheader ] ; 2 uses
  %.9119.us.i.prol = phi ptr [ %i.gv, %scalar.ph323.prol ], [ %.9119.us.i.ph, %scalar.ph323.preheader ] ; 2 uses
  %.482118.us.i.prol = phi i32 [ %i.gy, %scalar.ph323.prol ], [ %.482118.us.i.ph, %scalar.ph323.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph323.prol ], [ 0, %scalar.ph323.preheader ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.9119.us.i.prol, i64 4 ; 3 uses
  %i.gw = load i32, ptr %.9119.us.i.prol, align 4, !tbaa !3
  %i.gx = getelementptr inbounds nuw i8, ptr %.1120.us.i.prol, i64 4 ; 3 uses
  store i32 %i.gw, ptr %.1120.us.i.prol, align 4, !tbaa !3
  %i.gy = add nuw i32 %.482118.us.i.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter373
  br i1 %prol.iter.cmp.not, label %scalar.ph323.prol.loopexit, label %scalar.ph323.prol, !llvm.loop !364

scalar.ph323.prol.loopexit:                       ; preds = %scalar.ph323.prol, %scalar.ph323.preheader
  %.lcssa346.unr = phi ptr [ poison, %scalar.ph323.preheader ], [ %i.gv, %scalar.ph323.prol ]
  %.lcssa345.unr = phi ptr [ poison, %scalar.ph323.preheader ], [ %i.gx, %scalar.ph323.prol ]
  %.1120.us.i.unr = phi ptr [ %.1120.us.i.ph, %scalar.ph323.preheader ], [ %i.gx, %scalar.ph323.prol ]
  %.9119.us.i.unr = phi ptr [ %.9119.us.i.ph, %scalar.ph323.preheader ], [ %i.gv, %scalar.ph323.prol ]
  %.482118.us.i.unr = phi i32 [ %.482118.us.i.ph, %scalar.ph323.preheader ], [ %i.gy, %scalar.ph323.prol ]
  %i.gz = add i32 %i.gl, %.482118.us.i.ph
  %i.ha = icmp ugt i32 %i.gz, -8
  br i1 %i.ha, label %._crit_edge.us.i, label %scalar.ph323

scalar.ph323:                                     ; preds = %scalar.ph323.prol.loopexit, %scalar.ph323
  %.1120.us.i = phi ptr [ %i.hy, %scalar.ph323 ], [ %.1120.us.i.unr, %scalar.ph323.prol.loopexit ] ; 9 uses
  %.9119.us.i = phi ptr [ %i.hw, %scalar.ph323 ], [ %.9119.us.i.unr, %scalar.ph323.prol.loopexit ] ; 9 uses
  %.482118.us.i = phi i32 [ %i.hz, %scalar.ph323 ], [ %.482118.us.i.unr, %scalar.ph323.prol.loopexit ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 4
  %i.hc = load i32, ptr %.9119.us.i, align 4, !tbaa !3
  %i.hd = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 4
  store i32 %i.hc, ptr %.1120.us.i, align 4, !tbaa !3
  %i.he = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 8
  %i.hf = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hg = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 8
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !3
  %i.hh = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 12
  %i.hi = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hj = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 12
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !3
  %i.hk = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 16
  %i.hl = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hm = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 16
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !3
  %i.hn = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 20
  %i.ho = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hp = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 20
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !3
  %i.hq = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 24
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hs = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 24
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !3
  %i.ht = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 28
  %i.hu = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hv = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 28
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !3
  %i.hw = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 32 ; 2 uses
  %i.hx = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hy = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 32 ; 2 uses
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !3
  %i.hz = add nuw i32 %.482118.us.i, 8            ; 2 uses
  %exitcond.not.i.7 = icmp eq i32 %i.hz, %i.eq
  br i1 %exitcond.not.i.7, label %._crit_edge.us.i, label %scalar.ph323, !llvm.loop !365

._crit_edge.us.i:                                 ; preds = %scalar.ph323.prol.loopexit, %scalar.ph323, %middle.block335
  %.lcssa236 = phi ptr [ %i.go, %middle.block335 ], [ %.lcssa346.unr, %scalar.ph323.prol.loopexit ], [ %i.hw, %scalar.ph323 ]
  %.lcssa235 = phi ptr [ %i.gn, %middle.block335 ], [ %.lcssa345.unr, %scalar.ph323.prol.loopexit ], [ %i.hy, %scalar.ph323 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.lcssa236, i64 %i.ge
  %i.ib = add nuw i32 %.477122.us.i, 1            ; 2 uses
  %exitcond201.not.i = icmp eq i32 %i.ib, %i.ev
  br i1 %exitcond201.not.i, label %.loopexit.i, label %.preheader108.us.i, !llvm.loop !366

bb.p:                                             ; preds = %opj_get_tile_dimensions.exit.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !119
  %.not83.i = icmp eq i32 %i.id, 0
  %.not181.i = icmp eq i32 %i.es, %i.eu           ; 2 uses
  br i1 %.not83.i, label %.preheader109.i, label %.preheader110.i

.preheader110.i:                                  ; preds = %bb.p
  br i1 %.not181.i, label %.loopexit.i, label %.preheader105.lr.ph.i

.preheader105.lr.ph.i:                            ; preds = %.preheader110.i
  %.not180.i = icmp eq i32 %i.eo, %i.ep
  %i.ie = zext i32 %i.fv to i64
  br i1 %.not180.i, label %.loopexit.i, label %.preheader105.us.i.preheader

.preheader105.us.i.preheader:                     ; preds = %.preheader105.lr.ph.i
  %i.if = xor i32 %i.ep, -1
  %i.ig = add i32 %i.eo, %i.if
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = shl nuw nsw i64 %i.ih, 2
  %3 = xor i32 %i.ep, -1
  %4 = add i32 %i.eo, %3                          ; 2 uses
  %i.ij = zext i32 %4 to i64
  %i.ik = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %min.iters.check270 = icmp ult i32 %4, 7
  %n.vec273 = and i64 %i.ik, 8589934584           ; 5 uses
  %i.il = shl nuw nsw i64 %n.vec273, 2
  %i.im = trunc i64 %n.vec273 to i32
  %cmp.n282 = icmp eq i64 %i.ik, %n.vec273
  %i.in = sub i32 %i.ep, %i.eo
  br label %.preheader105.us.i

.preheader105.us.i:                               ; preds = %.preheader105.us.i.preheader, %._crit_edge.us156.i
  %.060154.us.i = phi ptr [ %.lcssa242, %._crit_edge.us156.i ], [ %.065171.i, %.preheader105.us.i.preheader ] ; 6 uses
  %.068153.us.i = phi ptr [ %i.km, %._crit_edge.us156.i ], [ %i.gd, %.preheader105.us.i.preheader ] ; 6 uses
  %.073152.us.i = phi i32 [ %i.kn, %._crit_edge.us156.i ], [ 0, %.preheader105.us.i.preheader ]
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.memcheck261

vector.memcheck261:                               ; preds = %.preheader105.us.i
  %scevgep262 = getelementptr i8, ptr %.060154.us.i, i64 1
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.ih
  %scevgep264 = getelementptr i8, ptr %.068153.us.i, i64 4
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.ii
  %bound0266 = icmp ult ptr %.060154.us.i, %scevgep265
  %bound1267 = icmp ult ptr %.068153.us.i, %scevgep263
  %found.conflict268 = and i1 %bound0266, %bound1267
  br i1 %found.conflict268, label %scalar.ph269.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %vector.memcheck261
  %i.io = getelementptr i8, ptr %.060154.us.i, i64 %n.vec273 ; 2 uses
  %i.ip = getelementptr i8, ptr %.068153.us.i, i64 %i.il ; 2 uses
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph271
  %index275 = phi i64 [ 0, %vector.ph271 ], [ %index.next280, %vector.body274 ] ; 3 uses
  %next.gep276 = getelementptr i8, ptr %.060154.us.i, i64 %index275 ; 2 uses
  %i.iq = shl i64 %index275, 2
  %next.gep277 = getelementptr i8, ptr %.068153.us.i, i64 %i.iq ; 2 uses
  %i.ir = getelementptr i8, ptr %next.gep277, i64 16
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !tbaa !3, !alias.scope !367
  %wide.load279 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !3, !alias.scope !367
  %i.is = trunc <4 x i32> %wide.load278 to <4 x i8>
  %i.it = trunc <4 x i32> %wide.load279 to <4 x i8>
  %i.iu = getelementptr i8, ptr %next.gep276, i64 4
  store <4 x i8> %i.is, ptr %next.gep276, align 1, !tbaa !9, !alias.scope !370, !noalias !367
  store <4 x i8> %i.it, ptr %i.iu, align 1, !tbaa !9, !alias.scope !370, !noalias !367
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.iv, label %middle.block281, label %vector.body274, !llvm.loop !372

middle.block281:                                  ; preds = %vector.body274
  br i1 %cmp.n282, label %._crit_edge.us156.i, label %scalar.ph269.preheader

scalar.ph269.preheader:                           ; preds = %vector.memcheck261, %.preheader105.us.i, %middle.block281
  %.161150.us.i.ph = phi ptr [ %.060154.us.i, %vector.memcheck261 ], [ %.060154.us.i, %.preheader105.us.i ], [ %i.io, %middle.block281 ] ; 2 uses
  %.169149.us.i.ph = phi ptr [ %.068153.us.i, %vector.memcheck261 ], [ %.068153.us.i, %.preheader105.us.i ], [ %i.ip, %middle.block281 ] ; 2 uses
  %.078148.us.i.ph = phi i32 [ 0, %vector.memcheck261 ], [ 0, %.preheader105.us.i ], [ %i.im, %middle.block281 ] ; 4 uses
  %i.iw = add i32 %i.ep, %.078148.us.i.ph
  %i.ix = sub i32 %i.eo, %i.iw
  %xtraiter375 = and i32 %i.ix, 7                 ; 2 uses
  %lcmp.mod376.not = icmp eq i32 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol

scalar.ph269.prol:                                ; preds = %scalar.ph269.preheader, %scalar.ph269.prol
  %.161150.us.i.prol = phi ptr [ %i.ja, %scalar.ph269.prol ], [ %.161150.us.i.ph, %scalar.ph269.preheader ] ; 2 uses
  %.169149.us.i.prol = phi ptr [ %i.jb, %scalar.ph269.prol ], [ %.169149.us.i.ph, %scalar.ph269.preheader ] ; 2 uses
  %.078148.us.i.prol = phi i32 [ %i.jc, %scalar.ph269.prol ], [ %.078148.us.i.ph, %scalar.ph269.preheader ]
  %prol.iter377 = phi i32 [ %prol.iter377.next, %scalar.ph269.prol ], [ 0, %scalar.ph269.preheader ]
  %i.iy = load i32, ptr %.169149.us.i.prol, align 4, !tbaa !3
  %i.iz = trunc i32 %i.iy to i8
  store i8 %i.iz, ptr %.161150.us.i.prol, align 1, !tbaa !9
  %i.ja = getelementptr inbounds nuw i8, ptr %.161150.us.i.prol, i64 1 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.169149.us.i.prol, i64 4 ; 3 uses
  %i.jc = add nuw i32 %.078148.us.i.prol, 1       ; 2 uses
  %prol.iter377.next = add i32 %prol.iter377, 1   ; 2 uses
  %prol.iter377.cmp.not = icmp eq i32 %prol.iter377.next, %xtraiter375
  br i1 %prol.iter377.cmp.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol, !llvm.loop !373

scalar.ph269.prol.loopexit:                       ; preds = %scalar.ph269.prol, %scalar.ph269.preheader
  %.lcssa352.unr = phi ptr [ poison, %scalar.ph269.preheader ], [ %i.ja, %scalar.ph269.prol ]
  %.lcssa351.unr = phi ptr [ poison, %scalar.ph269.preheader ], [ %i.jb, %scalar.ph269.prol ]
  %.161150.us.i.unr = phi ptr [ %.161150.us.i.ph, %scalar.ph269.preheader ], [ %i.ja, %scalar.ph269.prol ]
  %.169149.us.i.unr = phi ptr [ %.169149.us.i.ph, %scalar.ph269.preheader ], [ %i.jb, %scalar.ph269.prol ]
  %.078148.us.i.unr = phi i32 [ %.078148.us.i.ph, %scalar.ph269.preheader ], [ %i.jc, %scalar.ph269.prol ]
  %i.jd = add i32 %i.in, %.078148.us.i.ph
  %i.je = icmp ugt i32 %i.jd, -8
  br i1 %i.je, label %._crit_edge.us156.i, label %scalar.ph269

scalar.ph269:                                     ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269
  %.161150.us.i = phi ptr [ %i.kj, %scalar.ph269 ], [ %.161150.us.i.unr, %scalar.ph269.prol.loopexit ] ; 9 uses
  %.169149.us.i = phi ptr [ %i.kk, %scalar.ph269 ], [ %.169149.us.i.unr, %scalar.ph269.prol.loopexit ] ; 9 uses
  %.078148.us.i = phi i32 [ %i.kl, %scalar.ph269 ], [ %.078148.us.i.unr, %scalar.ph269.prol.loopexit ]
  %i.jf = load i32, ptr %.169149.us.i, align 4, !tbaa !3
  %i.jg = trunc i32 %i.jf to i8
  store i8 %i.jg, ptr %.161150.us.i, align 1, !tbaa !9
  %i.jh = getelementptr inbounds nuw i8, ptr %.161150.us.i, i64 1
  %i.ji = getelementptr inbounds nuw i8, ptr %.169149.us.i, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !3
  %i.jk = trunc i32 %i.jj to i8
  store i8 %i.jk, ptr %i.jh, align 1, !tbaa !9
  %i.jl = getelementptr inbounds nuw i8, ptr %.161150.us.i, i64 2
  %i.jm = getelementptr inbounds nuw i8, ptr %.169149.us.i, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !3
  %i.jo = trunc i32 %i.jn to i8
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !9
  %i.jp = getelementptr inbounds nuw i8, ptr %.161150.us.i, i64 3
  %i.jq = getelementptr inbounds nuw i8, ptr %.169149.us.i, i64 12
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3
  %i.js = trunc i32 %i.jr to i8
  store i8 %i.js, ptr %i.jp, align 1, !tbaa !9
  %i.jt = getelementptr inbounds nuw i8, ptr %.161150.us.i, i64 4
  %i.ju = getelementptr inbounds nuw i8, ptr %.169149.us.i, i64 16
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3
  %i.jw = trunc i32 %i.jv to i8
  store i8 %i.jw, ptr %i.jt, align 1, !tbaa !9
  %i.jx = getelementptr inbounds nuw i8, ptr %.161150.us.i, i64 5
  %i.jy = getelementptr inbounds nuw i8, ptr %.169149.us.i, i64 20
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3
  %i.ka = trunc i32 %i.jz to i8
  store i8 %i.ka, ptr %i.jx, align 1, !tbaa !9
  %i.kb = getelementptr inbounds nuw i8, ptr %.161150.us.i, i64 6
  %i.kc = getelementptr inbounds nuw i8, ptr %.169149.us.i, i64 24
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !3
  %i.ke = trunc i32 %i.kd to i8
  store i8 %i.ke, ptr %i.kb, align 1, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %.161150.us.i, i64 7
  %i.kg = getelementptr inbounds nuw i8, ptr %.169149.us.i, i64 28
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !3
  %i.ki = trunc i32 %i.kh to i8
  store i8 %i.ki, ptr %i.kf, align 1, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %.161150.us.i, i64 8 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.169149.us.i, i64 32 ; 2 uses
  %i.kl = add nuw i32 %.078148.us.i, 8            ; 2 uses
  %exitcond206.not.i.7 = icmp eq i32 %i.kl, %i.eq
  br i1 %exitcond206.not.i.7, label %._crit_edge.us156.i, label %scalar.ph269, !llvm.loop !374

._crit_edge.us156.i:                              ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269, %middle.block281
  %.lcssa242 = phi ptr [ %i.io, %middle.block281 ], [ %.lcssa352.unr, %scalar.ph269.prol.loopexit ], [ %i.kj, %scalar.ph269 ] ; 2 uses
  %.lcssa241 = phi ptr [ %i.ip, %middle.block281 ], [ %.lcssa351.unr, %scalar.ph269.prol.loopexit ], [ %i.kk, %scalar.ph269 ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.lcssa241, i64 %i.ie
  %i.kn = add nuw i32 %.073152.us.i, 1            ; 2 uses
  %exitcond207.not.i = icmp eq i32 %i.kn, %i.ev
  br i1 %exitcond207.not.i, label %.loopexit.i, label %.preheader105.us.i, !llvm.loop !375

.preheader109.i:                                  ; preds = %bb.p
  br i1 %.not181.i, label %.loopexit.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader109.i
  %.not182.i = icmp eq i32 %i.eo, %i.ep
  %i.ko = zext i32 %i.fv to i64
  br i1 %.not182.i, label %.loopexit.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.i
  %i.kp = xor i32 %i.ep, -1
  %i.kq = add i32 %i.eo, %i.kp
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %i.ks = shl nuw nsw i64 %i.kr, 2
  %5 = xor i32 %i.ep, -1
  %6 = add i32 %i.eo, %5                          ; 2 uses
  %i.kt = zext i32 %6 to i64
  %i.ku = add nuw nsw i64 %i.kt, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %6, 7
  %n.vec = and i64 %i.ku, 8589934584              ; 5 uses
  %i.kv = shl nuw nsw i64 %n.vec, 2
  %i.kw = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %i.ku, %n.vec
  %i.kx = sub i32 %i.ep, %i.eo
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us167.i
  %.262165.us.i = phi ptr [ %.lcssa244, %._crit_edge.us167.i ], [ %.065171.i, %.preheader.us.i.preheader ] ; 6 uses
  %.270164.us.i = phi ptr [ %i.mw, %._crit_edge.us167.i ], [ %i.gd, %.preheader.us.i.preheader ] ; 6 uses
  %.174163.us.i = phi i32 [ %i.mx, %._crit_edge.us167.i ], [ 0, %.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.i
  %scevgep = getelementptr i8, ptr %.262165.us.i, i64 1
  %scevgep254 = getelementptr i8, ptr %scevgep, i64 %i.kr
  %scevgep255 = getelementptr i8, ptr %.270164.us.i, i64 4
  %scevgep256 = getelementptr i8, ptr %scevgep255, i64 %i.ks
  %bound0 = icmp ult ptr %.262165.us.i, %scevgep256
  %bound1 = icmp ult ptr %.270164.us.i, %scevgep254
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ky = getelementptr i8, ptr %.262165.us.i, i64 %n.vec ; 2 uses
  %i.kz = getelementptr i8, ptr %.270164.us.i, i64 %i.kv ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.262165.us.i, i64 %index ; 2 uses
  %i.la = shl i64 %index, 2
  %next.gep257 = getelementptr i8, ptr %.270164.us.i, i64 %i.la ; 2 uses
  %i.lb = getelementptr i8, ptr %next.gep257, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep257, align 4, !tbaa !3, !alias.scope !376
  %wide.load258 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !3, !alias.scope !376
  %i.lc = trunc <4 x i32> %wide.load to <4 x i8>
  %i.ld = trunc <4 x i32> %wide.load258 to <4 x i8>
  %i.le = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.lc, ptr %next.gep, align 1, !tbaa !9, !alias.scope !379, !noalias !376
  store <4 x i8> %i.ld, ptr %i.le, align 1, !tbaa !9, !alias.scope !379, !noalias !376
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lf = icmp eq i64 %index.next, %n.vec
  br i1 %i.lf, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us167.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.i, %middle.block
  %.363161.us.i.ph = phi ptr [ %.262165.us.i, %vector.memcheck ], [ %.262165.us.i, %.preheader.us.i ], [ %i.ky, %middle.block ] ; 2 uses
  %.371160.us.i.ph = phi ptr [ %.270164.us.i, %vector.memcheck ], [ %.270164.us.i, %.preheader.us.i ], [ %i.kz, %middle.block ] ; 2 uses
  %.179159.us.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i ], [ %i.kw, %middle.block ] ; 4 uses
  %i.lg = add i32 %i.ep, %.179159.us.i.ph
  %i.lh = sub i32 %i.eo, %i.lg
  %xtraiter378 = and i32 %i.lh, 7                 ; 2 uses
  %lcmp.mod379.not = icmp eq i32 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.363161.us.i.prol = phi ptr [ %i.lk, %scalar.ph.prol ], [ %.363161.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.371160.us.i.prol = phi ptr [ %i.ll, %scalar.ph.prol ], [ %.371160.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.179159.us.i.prol = phi i32 [ %i.lm, %scalar.ph.prol ], [ %.179159.us.i.ph, %scalar.ph.preheader ]
  %prol.iter380 = phi i32 [ %prol.iter380.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.li = load i32, ptr %.371160.us.i.prol, align 4, !tbaa !3
  %i.lj = trunc i32 %i.li to i8
  store i8 %i.lj, ptr %.363161.us.i.prol, align 1, !tbaa !9
  %i.lk = getelementptr inbounds nuw i8, ptr %.363161.us.i.prol, i64 1 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.371160.us.i.prol, i64 4 ; 3 uses
  %i.lm = add nuw i32 %.179159.us.i.prol, 1       ; 2 uses
  %prol.iter380.next = add i32 %prol.iter380, 1   ; 2 uses
  %prol.iter380.cmp.not = icmp eq i32 %prol.iter380.next, %xtraiter378
  br i1 %prol.iter380.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !382

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa354.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.lk, %scalar.ph.prol ]
  %.lcssa353.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ll, %scalar.ph.prol ]
  %.363161.us.i.unr = phi ptr [ %.363161.us.i.ph, %scalar.ph.preheader ], [ %i.lk, %scalar.ph.prol ]
  %.371160.us.i.unr = phi ptr [ %.371160.us.i.ph, %scalar.ph.preheader ], [ %i.ll, %scalar.ph.prol ]
  %.179159.us.i.unr = phi i32 [ %.179159.us.i.ph, %scalar.ph.preheader ], [ %i.lm, %scalar.ph.prol ]
  %i.ln = add i32 %i.kx, %.179159.us.i.ph
  %i.lo = icmp ugt i32 %i.ln, -8
  br i1 %i.lo, label %._crit_edge.us167.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.363161.us.i = phi ptr [ %i.mt, %scalar.ph ], [ %.363161.us.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.371160.us.i = phi ptr [ %i.mu, %scalar.ph ], [ %.371160.us.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.179159.us.i = phi i32 [ %i.mv, %scalar.ph ], [ %.179159.us.i.unr, %scalar.ph.prol.loopexit ]
  %i.lp = load i32, ptr %.371160.us.i, align 4, !tbaa !3
  %i.lq = trunc i32 %i.lp to i8
  store i8 %i.lq, ptr %.363161.us.i, align 1, !tbaa !9
  %i.lr = getelementptr inbounds nuw i8, ptr %.363161.us.i, i64 1
  %i.ls = getelementptr inbounds nuw i8, ptr %.371160.us.i, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !3
  %i.lu = trunc i32 %i.lt to i8
  store i8 %i.lu, ptr %i.lr, align 1, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %.363161.us.i, i64 2
  %i.lw = getelementptr inbounds nuw i8, ptr %.371160.us.i, i64 8
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !3
  %i.ly = trunc i32 %i.lx to i8
  store i8 %i.ly, ptr %i.lv, align 1, !tbaa !9
  %i.lz = getelementptr inbounds nuw i8, ptr %.363161.us.i, i64 3
  %i.ma = getelementptr inbounds nuw i8, ptr %.371160.us.i, i64 12
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !3
  %i.mc = trunc i32 %i.mb to i8
  store i8 %i.mc, ptr %i.lz, align 1, !tbaa !9
  %i.md = getelementptr inbounds nuw i8, ptr %.363161.us.i, i64 4
  %i.me = getelementptr inbounds nuw i8, ptr %.371160.us.i, i64 16
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !3
  %i.mg = trunc i32 %i.mf to i8
  store i8 %i.mg, ptr %i.md, align 1, !tbaa !9
  %i.mh = getelementptr inbounds nuw i8, ptr %.363161.us.i, i64 5
  %i.mi = getelementptr inbounds nuw i8, ptr %.371160.us.i, i64 20
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = trunc i32 %i.mj to i8
  store i8 %i.mk, ptr %i.mh, align 1, !tbaa !9
  %i.ml = getelementptr inbounds nuw i8, ptr %.363161.us.i, i64 6
  %i.mm = getelementptr inbounds nuw i8, ptr %.371160.us.i, i64 24
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = trunc i32 %i.mn to i8
  store i8 %i.mo, ptr %i.ml, align 1, !tbaa !9
  %i.mp = getelementptr inbounds nuw i8, ptr %.363161.us.i, i64 7
  %i.mq = getelementptr inbounds nuw i8, ptr %.371160.us.i, i64 28
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !3
  %i.ms = trunc i32 %i.mr to i8
  store i8 %i.ms, ptr %i.mp, align 1, !tbaa !9
  %i.mt = getelementptr inbounds nuw i8, ptr %.363161.us.i, i64 8 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.371160.us.i, i64 32 ; 2 uses
  %i.mv = add nuw i32 %.179159.us.i, 8            ; 2 uses
  %exitcond208.not.i.7 = icmp eq i32 %i.mv, %i.eq
  br i1 %exitcond208.not.i.7, label %._crit_edge.us167.i, label %scalar.ph, !llvm.loop !383

._crit_edge.us167.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa244 = phi ptr [ %i.ky, %middle.block ], [ %.lcssa354.unr, %scalar.ph.prol.loopexit ], [ %i.mt, %scalar.ph ] ; 2 uses
  %.lcssa243 = phi ptr [ %i.kz, %middle.block ], [ %.lcssa353.unr, %scalar.ph.prol.loopexit ], [ %i.mu, %scalar.ph ]
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.lcssa243, i64 %i.ko
  %i.mx = add nuw i32 %.174163.us.i, 1            ; 2 uses
  %exitcond209.not.i = icmp eq i32 %i.mx, %i.ev
  br i1 %exitcond209.not.i, label %.loopexit.i, label %.preheader.us.i, !llvm.loop !384

bb.q:                                             ; preds = %opj_get_tile_dimensions.exit.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !119
  %.not.i94 = icmp eq i32 %i.mz, 0
  %.not177.i = icmp eq i32 %i.es, %i.eu           ; 2 uses
  br i1 %.not.i94, label %.preheader112.i, label %.preheader114.i

.preheader114.i:                                  ; preds = %bb.q
  br i1 %.not177.i, label %.loopexit.i, label %.preheader107.lr.ph.i

.preheader107.lr.ph.i:                            ; preds = %.preheader114.i
  %.not176.i = icmp eq i32 %i.eo, %i.ep
  %i.na = zext i32 %i.fv to i64
  br i1 %.not176.i, label %.loopexit.i, label %.preheader107.us.i.preheader

.preheader107.us.i.preheader:                     ; preds = %.preheader107.lr.ph.i
  %i.nb = xor i32 %i.ep, -1
  %i.nc = add i32 %i.eo, %i.nb                    ; 2 uses
  %i.nd = zext i32 %i.nc to i64
  %i.ne = add nuw nsw i64 %i.nd, 1                ; 2 uses
  %min.iters.check304 = icmp ult i32 %i.nc, 7
  %n.vec307 = and i64 %i.ne, 8589934584           ; 5 uses
  %i.nf = shl nuw nsw i64 %n.vec307, 1
  %i.ng = shl nuw nsw i64 %n.vec307, 2
  %i.nh = trunc i64 %n.vec307 to i32
  %cmp.n316 = icmp eq i64 %i.ne, %n.vec307
  br label %.preheader107.us.i

.preheader107.us.i:                               ; preds = %.preheader107.us.i.preheader, %._crit_edge.us134.i
  %.058132.us.i = phi ptr [ %.lcssa237, %._crit_edge.us134.i ], [ %.065171.i, %.preheader107.us.i.preheader ] ; 3 uses
  %.472131.us.i = phi ptr [ %i.nw, %._crit_edge.us134.i ], [ %i.gd, %.preheader107.us.i.preheader ] ; 3 uses
  %.275130.us.i = phi i32 [ %i.nx, %._crit_edge.us134.i ], [ 0, %.preheader107.us.i.preheader ]
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.ph305

vector.ph305:                                     ; preds = %.preheader107.us.i
  %i.ni = getelementptr i8, ptr %.058132.us.i, i64 %i.nf ; 2 uses
  %i.nj = getelementptr i8, ptr %.472131.us.i, i64 %i.ng ; 2 uses
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph305
  %index309 = phi i64 [ 0, %vector.ph305 ], [ %index.next314, %vector.body308 ] ; 3 uses
  %i.nk = shl i64 %index309, 1
  %next.gep310 = getelementptr i8, ptr %.058132.us.i, i64 %i.nk ; 2 uses
  %i.nl = shl i64 %index309, 2
  %next.gep311 = getelementptr i8, ptr %.472131.us.i, i64 %i.nl ; 2 uses
  %i.nm = getelementptr i8, ptr %next.gep311, i64 16
  %wide.load312 = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !3
  %wide.load313 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !3
  %i.nn = trunc <4 x i32> %wide.load312 to <4 x i16>
  %i.no = trunc <4 x i32> %wide.load313 to <4 x i16>
  %i.np = getelementptr i8, ptr %next.gep310, i64 8
  store <4 x i16> %i.nn, ptr %next.gep310, align 2, !tbaa !154
  store <4 x i16> %i.no, ptr %i.np, align 2, !tbaa !154
  %index.next314 = add nuw i64 %index309, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.nq, label %middle.block315, label %vector.body308, !llvm.loop !385

middle.block315:                                  ; preds = %vector.body308
  br i1 %cmp.n316, label %._crit_edge.us134.i, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %.preheader107.us.i, %middle.block315
end_hunk_0
