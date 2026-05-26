inline.NumInlined: 157
inline.NumDeleted: 65
begin_hunk_0_@opj_j2k_encode:bb.a
.preheader:                                       ; preds = %opj_j2k_pre_write_tile.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !348
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !57 ; 3 uses
  %.not145 = icmp eq i32 %i.bv, 0
  br i1 %.not145, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  br i1 %.275202, label %.lr.ph132.split.us, label %.lr.ph132.split

.lr.ph132.split.us:                               ; preds = %.lr.ph132, %bb.d
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %bb.d ], [ 0, %.lr.ph132 ] ; 2 uses
  %i.bw = load ptr, ptr %i.az, align 8, !tbaa !258
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !262
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !353
  %i.ca = getelementptr inbounds nuw [112 x i8], ptr %i.bz, i64 %indvars.iv177
  %i.cb = tail call i32 @opj_alloc_tile_component_data(ptr noundef %i.ca) #21
  %.not91.us = icmp eq i32 %i.cb, 0
  br i1 %.not91.us, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph132.split.us
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !348
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !57
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp samesign ult i64 %indvars.iv.next178, %i.ch
  br i1 %i.ci, label %.lr.ph132.split.us, label %._crit_edge, !llvm.loop !354

.lr.ph132.split:                                  ; preds = %.lr.ph132
  %wide.trip.count175 = zext i32 %i.bv to i64     ; 2 uses
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !258
  %.pre185 = load ptr, ptr %.pre, align 8, !tbaa !262
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre185, i64 24
  %.pre186 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !353 ; 5 uses
  %.pre187 = load ptr, ptr %i.ba, align 8, !tbaa !348
  %.phi.trans.insert188 = getelementptr inbounds nuw i8, ptr %.pre187, i64 24
  %.pre189 = load ptr, ptr %.phi.trans.insert188, align 8, !tbaa !71 ; 5 uses
  %xtraiter = and i64 %wide.trip.count175, 3      ; 3 uses
  %i.cj = icmp ult i32 %i.bv, 4
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph132.split.new

.lr.ph132.split.new:                              ; preds = %.lr.ph132.split
  %unroll_iter = and i64 %wide.trip.count175, 4294967292
  br label %bb.f

.loopexit:                                        ; preds = %opj_j2k_pre_write_tile.exit, %opj_j2k_pre_write_tile.exit.thread
  %.not83 = icmp eq ptr %.076135, null
  br i1 %.not83, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.loopexit
  tail call void @opj_free(ptr noundef nonnull %.076135) #21
  br label %.critedge

bb.f:                                             ; preds = %bb.f, %.lr.ph132.split.new
  %indvars.iv172 = phi i64 [ 0, %.lr.ph132.split.new ], [ %indvars.iv.next173.3, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph132.split.new ], [ %niter.next.3, %bb.f ]
  %i.ck = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv172 ; 2 uses
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv172
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !333
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !355
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store i32 0, ptr %i.cp, align 8, !tbaa !358
  %indvars.iv.next173 = or disjoint i64 %indvars.iv172, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv.next173 ; 2 uses
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv.next173
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !333
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !355
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store i32 0, ptr %i.cv, align 8, !tbaa !358
  %indvars.iv.next173.1 = or disjoint i64 %indvars.iv172, 2 ; 2 uses
  %i.cw = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv.next173.1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv.next173.1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !333
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !355
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store i32 0, ptr %i.db, align 8, !tbaa !358
  %indvars.iv.next173.2 = or disjoint i64 %indvars.iv172, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv.next173.2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv.next173.2
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !333
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !355
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  store i32 0, ptr %i.dh, align 8, !tbaa !358
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %bb.f, !llvm.loop !354

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph132.split
  %indvars.iv172.epil.init = phi i64 [ 0, %.lr.ph132.split ], [ %indvars.iv.next173.3, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod378 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod378)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv172.epil = phi i64 [ %indvars.iv172.epil.init, %.epil.preheader ], [ %indvars.iv.next173.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.di = getelementptr inbounds nuw [112 x i8], ptr %.pre186, i64 %indvars.iv172.epil ; 2 uses
  %i.dj = getelementptr inbounds nuw [64 x i8], ptr %.pre189, i64 %indvars.iv172.epil
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !333
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !355
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  store i32 0, ptr %i.dn, align 8, !tbaa !358
  %indvars.iv.next173.epil = add nuw nsw i64 %indvars.iv172.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %bb.g, !llvm.loop !359

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge.thread.unr-lcssa
  %i.do = tail call i64 @opj_tcd_get_encoder_input_buffer_size(ptr noundef nonnull %i.br) #21 ; 0 uses
  br label %bb.q

.split.us:                                        ; preds = %.lr.ph132.split.us
  %i.dp = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.101) #21 ; 0 uses
  %.not92 = icmp eq ptr %.076135, null
  br i1 %.not92, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.split.us
  tail call void @opj_free(ptr noundef nonnull %.076135) #21
  br label %.critedge

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.lcssa = phi ptr [ %i.br, %.preheader ], [ %i.cc, %bb.d ]
  %i.dq = tail call i64 @opj_tcd_get_encoder_input_buffer_size(ptr noundef nonnull %.lcssa) #21 ; 4 uses
  br i1 %.275202, label %bb.i, label %bb.q

bb.i:                                             ; preds = %._crit_edge
  %i.dr = icmp ugt i64 %i.dq, %.069137
  br i1 %i.dr, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ds = tail call ptr @opj_realloc(ptr noundef %.076135, i64 noundef %i.dq) #21 ; 2 uses
  %.not85.not = icmp eq ptr %i.ds, null
  br i1 %.not85.not, label %bb.k, label %.thread99

bb.k:                                             ; preds = %bb.j
  %.not86 = icmp eq ptr %.076135, null
  br i1 %.not86, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @opj_free(ptr noundef nonnull %.076135) #21
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.l
  %i.dt = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.102) #21 ; 0 uses
  br label %.critedge

bb.m:                                             ; preds = %bb.i
  %i.du = icmp eq ptr %.076135, null
  br i1 %i.du, label %.critedge, label %.thread99

.thread99:                                        ; preds = %bb.j, %bb.m
  %.271103 = phi i64 [ %.069137, %bb.m ], [ %i.dq, %bb.j ]
  %.278102 = phi ptr [ %.076135, %bb.m ], [ %i.ds, %bb.j ] ; 4 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !348 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !57
  %.not172.i = icmp eq i32 %i.dz, 0
  br i1 %.not172.i, label %opj_j2k_get_tile_data.exit, label %opj_get_tile_dimensions.exit.lr.ph.i

opj_get_tile_dimensions.exit.lr.ph.i:             ; preds = %.thread99
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  br label %opj_get_tile_dimensions.exit.i

opj_get_tile_dimensions.exit.i:                   ; preds = %.loopexit.i, %opj_get_tile_dimensions.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %opj_get_tile_dimensions.exit.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.eb = phi ptr [ %i.dx, %opj_get_tile_dimensions.exit.lr.ph.i ], [ %i.pa, %.loopexit.i ] ; 4 uses
  %.065171.i = phi ptr [ %.278102, %opj_get_tile_dimensions.exit.lr.ph.i ], [ %.166.i, %.loopexit.i ] ; 16 uses
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !258
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !262
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !353
  %i.eg = getelementptr inbounds nuw [112 x i8], ptr %i.ef, i64 %indvars.iv.i ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !71
  %i.ej = getelementptr inbounds nuw [64 x i8], ptr %i.ei, i64 %indvars.iv.i ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !75 ; 2 uses
  %i.em = lshr i32 %i.el, 3                       ; 2 uses
  %i.en = and i32 %i.el, 7
  %.not.i.i = icmp ne i32 %i.en, 0                ; 2 uses
  %i.eo = zext i1 %.not.i.i to i32
  %i.ep = add nuw nsw i32 %i.em, %i.eo
  %.fr.i = freeze i32 %i.ep                       ; 2 uses
  %i.eq = icmp eq i32 %.fr.i, 3
  %spec.select.i = select i1 %.not.i.i, i32 %.fr.i, i32 %i.em
  %.0104.i = select i1 %i.eq, i32 4, i32 %spec.select.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.es = load i32, ptr %i.er, align 8, !tbaa !360 ; 17 uses
  %i.et = load i32, ptr %i.eg, align 8, !tbaa !361 ; 18 uses
  %i.eu = sub i32 %i.es, %i.et                    ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !362 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !363 ; 5 uses
  %i.ez = sub i32 %i.ew, %i.ey                    ; 5 uses
  %i.fa = load i32, ptr %i.eb, align 8, !tbaa !149 ; 2 uses
  %i.fb = load i32, ptr %i.ej, align 8, !tbaa !76
  %i.fc = zext i32 %i.fa to i64
  %i.fd = zext i32 %i.fb to i64                   ; 3 uses
  %i.fe = add nsw i64 %i.fd, -1                   ; 2 uses
  %i.ff = add nsw i64 %i.fe, %i.fc
  %i.fg = udiv i64 %i.ff, %i.fd
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !150
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !77
  %i.fm = zext i32 %i.fj to i64
  %i.fn = zext i32 %i.fl to i64                   ; 2 uses
  %i.fo = add nsw i64 %i.fm, -1
  %i.fp = add nsw i64 %i.fo, %i.fn
  %i.fq = udiv i64 %i.fp, %i.fn
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !84
  %i.fu = sub i32 %i.ft, %i.fa
  %i.fv = zext i32 %i.fu to i64
  %i.fw = add nsw i64 %i.fe, %i.fv
  %i.fx = udiv i64 %i.fw, %i.fd
  %i.fy = trunc i64 %i.fx to i32                  ; 2 uses
  %i.fz = sub i32 %i.fy, %i.eu                    ; 5 uses
  %i.ga = sub i32 %i.et, %i.fh
  %i.gb = sub i32 %i.ey, %i.fr
  %i.gc = mul i32 %i.gb, %i.fy
  %i.gd = add i32 %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !333
  %i.gg = zext i32 %i.gd to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gg ; 5 uses
  switch i32 %.0104.i, label %.loopexit.i [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 4, label %.preheader116.i
  ]

.preheader116.i:                                  ; preds = %opj_get_tile_dimensions.exit.i
  %.not173.i = icmp eq i32 %i.ew, %i.ey
  br i1 %.not173.i, label %.loopexit.i, label %.preheader108.lr.ph.i

.preheader108.lr.ph.i:                            ; preds = %.preheader116.i
  %.not174.i = icmp eq i32 %i.es, %i.et
  %i.gi = zext i32 %i.fz to i64
  br i1 %.not174.i, label %.loopexit.i, label %.preheader108.us.i.preheader

.preheader108.us.i.preheader:                     ; preds = %.preheader108.lr.ph.i
  %i.gj = xor i32 %i.et, -1
  %i.gk = add i32 %i.es, %i.gj                    ; 2 uses
  %i.gl = zext i32 %i.gk to i64
  %i.gm = add nuw nsw i64 %i.gl, 1                ; 2 uses
  %min.iters.check335 = icmp ult i32 %i.gk, 7
  %n.vec338 = and i64 %i.gm, 8589934584           ; 4 uses
  %i.gn = shl nuw nsw i64 %n.vec338, 2            ; 2 uses
  %i.go = trunc i64 %n.vec338 to i32
  %cmp.n347 = icmp eq i64 %i.gm, %n.vec338
  %i.gp = sub i32 %i.et, %i.es
  br label %.preheader108.us.i

.preheader108.us.i:                               ; preds = %.preheader108.us.i.preheader, %._crit_edge.us.i
  %.0124.us.i = phi ptr [ %.lcssa235, %._crit_edge.us.i ], [ %.065171.i, %.preheader108.us.i.preheader ] ; 4 uses
  %.8123.us.i = phi ptr [ %i.ie, %._crit_edge.us.i ], [ %i.gh, %.preheader108.us.i.preheader ] ; 4 uses
  %.477122.us.i = phi i32 [ %i.if, %._crit_edge.us.i ], [ 0, %.preheader108.us.i.preheader ]
  %.8123.us.i333 = ptrtoaddr ptr %.8123.us.i to i64
  %.0124.us.i332 = ptrtoaddr ptr %.0124.us.i to i64
  %i.gq = sub i64 %.0124.us.i332, %.8123.us.i333
  %diff.check = icmp ult i64 %i.gq, 32
  %or.cond = select i1 %min.iters.check335, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph334.preheader, label %vector.ph336

vector.ph336:                                     ; preds = %.preheader108.us.i
  %i.gr = getelementptr i8, ptr %.0124.us.i, i64 %i.gn ; 2 uses
  %i.gs = getelementptr i8, ptr %.8123.us.i, i64 %i.gn ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph336
  %index340 = phi i64 [ 0, %vector.ph336 ], [ %index.next345, %vector.body339 ] ; 2 uses
  %i.gt = shl i64 %index340, 2                    ; 2 uses
  %next.gep341 = getelementptr i8, ptr %.0124.us.i, i64 %i.gt ; 2 uses
  %next.gep342 = getelementptr i8, ptr %.8123.us.i, i64 %i.gt ; 2 uses
  %i.gu = getelementptr i8, ptr %next.gep342, i64 16
  %wide.load343 = load <4 x i32>, ptr %next.gep342, align 4, !tbaa !3
  %wide.load344 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !3
  %i.gv = getelementptr i8, ptr %next.gep341, i64 16
  store <4 x i32> %wide.load343, ptr %next.gep341, align 4, !tbaa !3
  store <4 x i32> %wide.load344, ptr %i.gv, align 4, !tbaa !3
  %index.next345 = add nuw i64 %index340, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next345, %n.vec338
  br i1 %i.gw, label %middle.block346, label %vector.body339, !llvm.loop !364

middle.block346:                                  ; preds = %vector.body339
  br i1 %cmp.n347, label %._crit_edge.us.i, label %scalar.ph334.preheader

scalar.ph334.preheader:                           ; preds = %.preheader108.us.i, %middle.block346
  %.1120.us.i.ph = phi ptr [ %.0124.us.i, %.preheader108.us.i ], [ %i.gr, %middle.block346 ] ; 2 uses
  %.9119.us.i.ph = phi ptr [ %.8123.us.i, %.preheader108.us.i ], [ %i.gs, %middle.block346 ] ; 2 uses
  %.482118.us.i.ph = phi i32 [ 0, %.preheader108.us.i ], [ %i.go, %middle.block346 ] ; 4 uses
  %i.gx = add i32 %i.et, %.482118.us.i.ph
  %i.gy = sub i32 %i.es, %i.gx
  %xtraiter379 = and i32 %i.gy, 7                 ; 2 uses
  %lcmp.mod380.not = icmp eq i32 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %scalar.ph334.prol.loopexit, label %scalar.ph334.prol

scalar.ph334.prol:                                ; preds = %scalar.ph334.preheader, %scalar.ph334.prol
  %.1120.us.i.prol = phi ptr [ %i.hb, %scalar.ph334.prol ], [ %.1120.us.i.ph, %scalar.ph334.preheader ] ; 2 uses
  %.9119.us.i.prol = phi ptr [ %i.gz, %scalar.ph334.prol ], [ %.9119.us.i.ph, %scalar.ph334.preheader ] ; 2 uses
  %.482118.us.i.prol = phi i32 [ %i.hc, %scalar.ph334.prol ], [ %.482118.us.i.ph, %scalar.ph334.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph334.prol ], [ 0, %scalar.ph334.preheader ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.9119.us.i.prol, i64 4 ; 3 uses
  %i.ha = load i32, ptr %.9119.us.i.prol, align 4, !tbaa !3
  %i.hb = getelementptr inbounds nuw i8, ptr %.1120.us.i.prol, i64 4 ; 3 uses
  store i32 %i.ha, ptr %.1120.us.i.prol, align 4, !tbaa !3
  %i.hc = add nuw i32 %.482118.us.i.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter379
  br i1 %prol.iter.cmp.not, label %scalar.ph334.prol.loopexit, label %scalar.ph334.prol, !llvm.loop !365

scalar.ph334.prol.loopexit:                       ; preds = %scalar.ph334.prol, %scalar.ph334.preheader
  %.lcssa358.unr = phi ptr [ poison, %scalar.ph334.preheader ], [ %i.gz, %scalar.ph334.prol ]
  %.lcssa357.unr = phi ptr [ poison, %scalar.ph334.preheader ], [ %i.hb, %scalar.ph334.prol ]
  %.1120.us.i.unr = phi ptr [ %.1120.us.i.ph, %scalar.ph334.preheader ], [ %i.hb, %scalar.ph334.prol ]
  %.9119.us.i.unr = phi ptr [ %.9119.us.i.ph, %scalar.ph334.preheader ], [ %i.gz, %scalar.ph334.prol ]
  %.482118.us.i.unr = phi i32 [ %.482118.us.i.ph, %scalar.ph334.preheader ], [ %i.hc, %scalar.ph334.prol ]
  %i.hd = add i32 %i.gp, %.482118.us.i.ph
  %i.he = icmp ugt i32 %i.hd, -8
  br i1 %i.he, label %._crit_edge.us.i, label %scalar.ph334

scalar.ph334:                                     ; preds = %scalar.ph334.prol.loopexit, %scalar.ph334
  %.1120.us.i = phi ptr [ %i.ic, %scalar.ph334 ], [ %.1120.us.i.unr, %scalar.ph334.prol.loopexit ] ; 9 uses
  %.9119.us.i = phi ptr [ %i.ia, %scalar.ph334 ], [ %.9119.us.i.unr, %scalar.ph334.prol.loopexit ] ; 9 uses
  %.482118.us.i = phi i32 [ %i.id, %scalar.ph334 ], [ %.482118.us.i.unr, %scalar.ph334.prol.loopexit ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 4
  %i.hg = load i32, ptr %.9119.us.i, align 4, !tbaa !3
  %i.hh = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 4
  store i32 %i.hg, ptr %.1120.us.i, align 4, !tbaa !3
  %i.hi = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 8
  %i.hj = load i32, ptr %i.hf, align 4, !tbaa !3
  %i.hk = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 8
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !3
  %i.hl = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 12
  %i.hm = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hn = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 12
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !3
  %i.ho = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 16
  %i.hp = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hq = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 16
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 20
  %i.hs = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.ht = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 20
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !3
  %i.hu = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 24
  %i.hv = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.hw = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 24
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !3
  %i.hx = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 28
  %i.hy = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hz = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 28
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !3
  %i.ia = getelementptr inbounds nuw i8, ptr %.9119.us.i, i64 32 ; 2 uses
  %i.ib = load i32, ptr %i.hx, align 4, !tbaa !3
  %i.ic = getelementptr inbounds nuw i8, ptr %.1120.us.i, i64 32 ; 2 uses
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !3
  %i.id = add nuw i32 %.482118.us.i, 8            ; 2 uses
  %exitcond.not.i.7 = icmp eq i32 %i.id, %i.eu
  br i1 %exitcond.not.i.7, label %._crit_edge.us.i, label %scalar.ph334, !llvm.loop !366

._crit_edge.us.i:                                 ; preds = %scalar.ph334.prol.loopexit, %scalar.ph334, %middle.block346
  %.lcssa236 = phi ptr [ %i.gs, %middle.block346 ], [ %.lcssa358.unr, %scalar.ph334.prol.loopexit ], [ %i.ia, %scalar.ph334 ]
  %.lcssa235 = phi ptr [ %i.gr, %middle.block346 ], [ %.lcssa357.unr, %scalar.ph334.prol.loopexit ], [ %i.ic, %scalar.ph334 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.lcssa236, i64 %i.gi
  %i.if = add nuw i32 %.477122.us.i, 1            ; 2 uses
  %exitcond201.not.i = icmp eq i32 %i.if, %i.ez
  br i1 %exitcond201.not.i, label %.loopexit.i, label %.preheader108.us.i, !llvm.loop !367

bb.n:                                             ; preds = %opj_get_tile_dimensions.exit.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !119
  %.not83.i = icmp eq i32 %i.ih, 0
  %.not181.i = icmp eq i32 %i.ew, %i.ey           ; 2 uses
  br i1 %.not83.i, label %.preheader109.i, label %.preheader110.i

.preheader110.i:                                  ; preds = %bb.n
  br i1 %.not181.i, label %.loopexit.i, label %.preheader105.lr.ph.i

.preheader105.lr.ph.i:                            ; preds = %.preheader110.i
  %.not180.i = icmp eq i32 %i.es, %i.et
  %i.ii = zext i32 %i.fz to i64
end_hunk_0
