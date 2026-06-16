inline.NumInlined: 9
inline.NumDeleted: 2
begin_hunk_0_@FT_Bitmap_Embolden:bb.a
  br label %bb.aj

ft_bitmap_assure_buffer.exit:                     ; preds = %bb.k, %bb.ad
  %.0.i133 = phi i32 [ %i.dr, %bb.ad ], [ 18, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.av

thread-pre-split:                                 ; preds = %.lr.ph.split.i.prol.loopexit, %bb.ac, %.lr.ph.split.us.i.prol.loopexit, %bb.z, %bb.r, %bb.q
  %.pr = load i32, ptr %i.bm, align 8, !tbaa !7
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split, %.loopexit.i
  %i.fe = phi i32 [ %.pr, %thread-pre-split ], [ %storemerge.i, %.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.fh = mul nsw i32 %i.fe, %.0104203
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi
  %.pre176 = load i32, ptr %1, align 8, !tbaa !25
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fk = sub nsw i32 0, %i.fe                    ; 2 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.fm = load i32, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.fn = add i32 %i.fm, -1
  %i.fo = mul i32 %i.fn, %i.fk
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fp
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fr = phi i32 [ %.pre176, %bb.ak ], [ %i.fm, %bb.al ]
  %.0112 = phi ptr [ %i.fj, %bb.ak ], [ %i.fq, %bb.al ]
  %.0107 = phi i32 [ %i.fe, %bb.ak ], [ %i.fk, %bb.al ] ; 6 uses
  %.not162 = icmp eq i32 %i.fr, 0
  br i1 %.not162, label %._crit_edge, label %.preheader136.lr.ph

.preheader136.lr.ph:                              ; preds = %bb.am
  %.0108144 = add nsw i32 %.0107, -1
  %.not219 = icmp eq i32 %.0107, 0
  %.not128140 = icmp slt i32 %.0105200, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.not127152 = icmp slt i32 %.0104203, 1         ; 2 uses
  %i.ft = zext i32 %.0108144 to i64
  %wide.trip.count = zext nneg i32 %.0107 to i64  ; 9 uses
  %min.iters.check = icmp ult i32 %.0107, 4
  %min.iters.check227 = icmp ult i32 %.0107, 32
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec232 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n237 = icmp eq i64 %n.vec232, %wide.trip.count
  %xtraiter246 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.lr.ph, %._crit_edge155
  %.0106158 = phi i32 [ 0, %.preheader136.lr.ph ], [ %i.jz, %._crit_edge155 ]
  %.1113156 = phi ptr [ %.0112, %.preheader136.lr.ph ], [ %i.jy, %._crit_edge155 ] ; 15 uses
  br i1 %.not219, label %._crit_edge155, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader136
  br i1 %.not128140, label %.preheader.thread210, label %.lr.ph

.preheader:                                       ; preds = %.loopexit
  br i1 %.not127152, label %._crit_edge155, label %.lr.ph151.us.preheader

.preheader.thread210:                             ; preds = %.lr.ph149
  br i1 %.not127152, label %._crit_edge155, label %.lr.ph151.us.preheader

.lr.ph151.us.preheader:                           ; preds = %.preheader, %.preheader.thread210
  %scevgep = getelementptr i8, ptr %.1113156, i64 %wide.trip.count ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph151.us.preheader, %._crit_edge.us
  %.1109153.us = phi i32 [ %i.hl, %._crit_edge.us ], [ 1, %.lr.ph151.us.preheader ] ; 3 uses
  %i.fu = load i32, ptr %i.bm, align 8, !tbaa !7
  %i.fv = mul nsw i32 %i.fu, %.1109153.us
  %i.fw = sext i32 %i.fv to i64
  %i.fx = sub nsw i64 0, %i.fw                    ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.1113156, i64 %i.fx ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep226 = getelementptr i8, ptr %scevgep, i64 %i.fx
  %bound0 = icmp ult ptr %i.fy, %scevgep
  %bound1 = icmp ult ptr %.1113156, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check227, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1113156, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load = load <16 x i8>, ptr %i.fz, align 1, !tbaa !23, !alias.scope !36
  %wide.load228 = load <16 x i8>, ptr %i.ga, align 1, !tbaa !23, !alias.scope !36
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %index ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load229 = load <16 x i8>, ptr %i.gb, align 1, !tbaa !23, !alias.scope !39, !noalias !36
  %wide.load230 = load <16 x i8>, ptr %i.gc, align 1, !tbaa !23, !alias.scope !39, !noalias !36
  %i.gd = or <16 x i8> %wide.load229, %wide.load
  %i.ge = or <16 x i8> %wide.load230, %wide.load228
  store <16 x i8> %i.gd, ptr %i.gb, align 1, !tbaa !23, !alias.scope !39, !noalias !36
  store <16 x i8> %i.ge, ptr %i.gc, align 1, !tbaa !23, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index233 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.1113156, i64 %index233
  %wide.load234 = load <4 x i8>, ptr %i.gg, align 1, !tbaa !23, !alias.scope !36
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %index233 ; 2 uses
  %wide.load235 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !23, !alias.scope !39, !noalias !36
  %i.gi = or <4 x i8> %wide.load235, %wide.load234
  store <4 x i8> %i.gi, ptr %i.gh, align 1, !tbaa !23, !alias.scope !39, !noalias !36
  %index.next236 = add nuw i64 %index233, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next236, %n.vec232
  br i1 %i.gj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n237, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv172.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec232, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod247.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv172.prol = phi i64 [ %indvars.iv.next173.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv172.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter248 = phi i64 [ %prol.iter248.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.1113156, i64 %indvars.iv172.prol
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !23
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv172.prol ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !23
  %i.go = or i8 %i.gn, %i.gl
  store i8 %i.go, ptr %i.gm, align 1, !tbaa !23
  %indvars.iv.next173.prol = add nuw nsw i64 %indvars.iv172.prol, 1 ; 2 uses
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !46

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next173.prol, %vec.epilog.scalar.ph.prol ]
  %i.gp = sub nsw i64 %indvars.iv172.ph, %wide.trip.count
  %i.gq = icmp ugt i64 %i.gp, -4
  br i1 %i.gq, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.3, %vec.epilog.scalar.ph ], [ %indvars.iv172.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.1113156, i64 %indvars.iv172
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !23
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv172 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !23
  %i.gv = or i8 %i.gu, %i.gs
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !23
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1113156, i64 %indvars.iv.next173
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !23
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv.next173 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !23
  %i.ha = or i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %i.gy, align 1, !tbaa !23
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.1113156, i64 %indvars.iv.next173.1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv.next173.1 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !23
  %i.hf = or i8 %i.he, %i.hc
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !23
  %indvars.iv.next173.2 = add nuw nsw i64 %indvars.iv172, 3 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.1113156, i64 %indvars.iv.next173.2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !23
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv.next173.2 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !23
  %i.hk = or i8 %i.hj, %i.hh
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !23
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next173.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !47

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.hl = add nuw nsw i32 %.1109153.us, 1
  %exitcond175.not = icmp eq i32 %.1109153.us, %.0104203
  br i1 %exitcond175.not, label %._crit_edge155, label %iter.check, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph149, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %i.ft, %.lr.ph149 ] ; 5 uses
  %.0108.in145 = phi i32 [ %i.jv, %.loopexit ], [ %.0107, %.lr.ph149 ]
  %.0108.in145.fr = freeze i32 %.0108.in145       ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.1113156, i64 %indvars.iv ; 7 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !23  ; 3 uses
  %i.ho = zext i8 %i.hn to i32                    ; 2 uses
  %.not130 = icmp eq i32 %.0108.in145.fr, 1
  %i.hp = zext nneg i32 %.0108.in145.fr to i64
  %i.hq = getelementptr i8, ptr %.1113156, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -2
  %i.hs = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not130, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us.backedge
  %i.ht = phi i8 [ %i.ip, %.lr.ph.split.us.backedge ], [ %i.hn, %.lr.ph ] ; 2 uses
  %.0110141.us = phi i32 [ %.0110140.us.be, %.lr.ph.split.us.backedge ], [ 1, %.lr.ph ] ; 4 uses
  %i.hu = load i8, ptr %i.m, align 2, !tbaa !30
  %i.hv = icmp eq i8 %i.hu, 1
  br i1 %i.hv, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us
  %i.hw = sub nsw i32 %i.hs, %.0110141.us         ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, -1
  br i1 %i.hx, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.hy = zext i8 %i.ht to i32
  %i.hz = zext nneg i32 %i.hw to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %.1113156, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !23
  %i.ic = zext i8 %i.ib to i32
  %i.id = add nuw nsw i32 %i.ic, %i.hy            ; 3 uses
  %i.ie = load i16, ptr %i.fs, align 8, !tbaa !49
  %i.if = zext i16 %i.ie to i32
  %5 = add nsw i32 %i.if, -1                      ; 2 uses
  %6 = icmp sgt i32 %i.id, %5
  br i1 %6, label %.split.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = trunc i32 %i.id to i8                   ; 2 uses
  store i8 %i.ig, ptr %i.hm, align 1, !tbaa !23
  %i.ih = and i32 %i.id, 255
  %i.ii = load i16, ptr %i.fs, align 8, !tbaa !49
  %i.ij = zext i16 %i.ii to i32
  %i.ik = add nsw i32 %i.ij, -1
  %i.il = icmp eq i32 %i.ih, %i.ik
  %7 = add nuw nsw i32 %.0110141.us, 1            ; 2 uses
  %.not128.us = icmp sgt i32 %7, %.0105200
  %or.cond159 = select i1 %i.il, i1 true, i1 %.not128.us
  br i1 %or.cond159, label %.loopexit, label %.lr.ph.split.us.backedge

bb.aq:                                            ; preds = %.lr.ph.split.us
  %i.im = lshr i32 %i.ho, %.0110141.us
  %i.in = trunc nuw i32 %i.im to i8
  %i.io = or i8 %i.ht, %i.in                      ; 2 uses
  store i8 %i.io, ptr %i.hm, align 1, !tbaa !23
  %.old = add nuw nsw i32 %.0110141.us, 1         ; 2 uses
  %.not128.us.old = icmp sgt i32 %.old, %.0105200
  br i1 %.not128.us.old, label %.loopexit, label %.lr.ph.split.us.backedge

.lr.ph.split.us.backedge:                         ; preds = %bb.aq, %bb.ap
  %i.ip = phi i8 [ %i.ig, %bb.ap ], [ %i.io, %bb.aq ]
  %.0110140.us.be = phi i32 [ %7, %bb.ap ], [ %.old, %bb.aq ]
  br label %.lr.ph.split.us, !llvm.loop !50

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %i.iq = phi i8 [ %i.jc, %.lr.ph.split.backedge ], [ %i.hn, %.lr.ph ] ; 2 uses
  %.0110141 = phi i32 [ %.0110140.be, %.lr.ph.split.backedge ], [ 1, %.lr.ph ] ; 5 uses
  %i.ir = load i8, ptr %i.m, align 2, !tbaa !30
  %i.is = icmp eq i8 %i.ir, 1
  br i1 %i.is, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split
  %i.it = lshr i32 %i.ho, %.0110141
  %i.iu = trunc nuw i32 %i.it to i8
  %i.iv = or i8 %i.iq, %i.iu                      ; 2 uses
  store i8 %i.iv, ptr %i.hm, align 1, !tbaa !23
  %i.iw = load i8, ptr %i.hr, align 1, !tbaa !23
  %i.ix = zext i8 %i.iw to i32
  %i.iy = sub nsw i32 8, %.0110141
  %i.iz = shl i32 %i.ix, %i.iy
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = or i8 %i.iv, %i.ja                      ; 2 uses
  store i8 %i.jb, ptr %i.hm, align 1, !tbaa !23
  %.old159 = add nuw nsw i32 %.0110141, 1         ; 2 uses
  %.not128.old = icmp sgt i32 %.old159, %.0105200
  br i1 %.not128.old, label %.loopexit, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %bb.ar, %bb.au
  %i.jc = phi i8 [ %i.jo, %bb.au ], [ %i.jb, %bb.ar ]
  %.0110140.be = phi i32 [ %10, %bb.au ], [ %.old159, %bb.ar ]
  br label %.lr.ph.split, !llvm.loop !50

bb.as:                                            ; preds = %.lr.ph.split
  %i.jd = sub nsw i32 %i.hs, %.0110141            ; 2 uses
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.jf = zext i8 %i.iq to i32
  %i.jg = zext nneg i32 %i.jd to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %.1113156, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !23
  %i.jj = zext i8 %i.ji to i32
  %i.jk = add nuw nsw i32 %i.jj, %i.jf            ; 3 uses
  %i.jl = load i16, ptr %i.fs, align 8, !tbaa !49
  %i.jm = zext i16 %i.jl to i32
  %8 = add nsw i32 %i.jm, -1                      ; 2 uses
  %9 = icmp sgt i32 %i.jk, %8
  br i1 %9, label %.split.us, label %bb.au

.split.us:                                        ; preds = %bb.at, %bb.ao
  %.us-phi = phi i32 [ %5, %bb.ao ], [ %8, %bb.at ]
  %i.jn = trunc i32 %.us-phi to i8
  store i8 %i.jn, ptr %i.hm, align 1, !tbaa !23
  br label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.jo = trunc i32 %i.jk to i8                   ; 2 uses
  store i8 %i.jo, ptr %i.hm, align 1, !tbaa !23
  %i.jp = and i32 %i.jk, 255
  %i.jq = load i16, ptr %i.fs, align 8, !tbaa !49
  %i.jr = zext i16 %i.jq to i32
  %i.js = add nsw i32 %i.jr, -1
  %i.jt = icmp eq i32 %i.jp, %i.js
  %10 = add nuw nsw i32 %.0110141, 1              ; 2 uses
  %.not128 = icmp sgt i32 %10, %.0105200
  %or.cond161 = select i1 %i.jt, i1 true, i1 %.not128
  br i1 %or.cond161, label %.loopexit, label %.lr.ph.split.backedge

.loopexit:                                        ; preds = %bb.ar, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.an, %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ju = icmp sgt i64 %indvars.iv, 0
  %i.jv = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.ju, label %.lr.ph, label %.preheader, !llvm.loop !51

._crit_edge155:                                   ; preds = %._crit_edge.us, %.preheader, %.preheader136, %.preheader.thread210
  %i.jw = load i32, ptr %i.bm, align 8, !tbaa !7
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %.1113156, i64 %i.jx
  %i.jz = add nuw i32 %.0106158, 1                ; 2 uses
  %i.ka = load i32, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.kb = icmp ult i32 %i.jz, %i.ka
  br i1 %i.kb, label %.preheader136, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %._crit_edge155, %bb.am
  %.lcssa138 = phi i32 [ 0, %bb.am ], [ %i.ka, %._crit_edge155 ]
  %i.kc = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.kd = add i32 %i.kc, %.0105200
  store i32 %i.kd, ptr %i.bp, align 4, !tbaa !31
  %i.ke = add i32 %.lcssa138, %.0104203
  store i32 %i.ke, ptr %1, align 8, !tbaa !25
  br label %bb.av

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.av

bb.av:                                            ; preds = %ft_bitmap_assure_buffer.exit, %bb.g, %.critedge, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a, %._crit_edge
  %.1 = phi i32 [ 6, %bb.b ], [ 6, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %._crit_edge ], [ %.0.i133, %ft_bitmap_assure_buffer.exit ], [ %i.o, %.critedge ], [ 33, %bb.a ], [ 6, %bb.c ], [ 6, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @FT_Bitmap_Convert(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !30
  %.off = add i8 %i.f, -1
  %switch = icmp ult i8 %.off, 7
  br i1 %switch, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !7    ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !7
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %FT_Bitmap_Done.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = icmp slt i32 %i.j, 0
  br label %FT_Bitmap_Done.exit

FT_Bitmap_Done.exit:                              ; preds = %bb.e, %bb.f
  %i.p = phi i1 [ true, %bb.e ], [ %i.o, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.r) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 2, ptr %i.s, align 2, !tbaa !30
  %i.t = load <2 x i32>, ptr %1, align 8, !tbaa !3
  %i.u = load i32, ptr %1, align 8, !tbaa !25
  store <2 x i32> %i.t, ptr %2, align 8, !tbaa !3
  %.not217 = icmp eq i32 %3, 0
  br i1 %.not217, label %bb.i, label %bb.g

bb.g:                                             ; preds = %FT_Bitmap_Done.exit
  %i.v = srem i32 %i.h, %3                        ; 3 uses
  %.not218 = icmp eq i32 %i.v, 0
  br i1 %.not218, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %3, 0
  %i.x = add i32 %i.h, %3
  %i.y = sub i32 %i.x, %i.v
  %i.z = add i32 %3, %i.v
  %i.aa = sub i32 %i.h, %i.z
  %i.ab = select i1 %i.w, i32 %i.y, i32 %i.aa
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %FT_Bitmap_Done.exit
  %.1207 = phi i32 [ %i.h, %FT_Bitmap_Done.exit ], [ %i.ab, %bb.h ], [ %i.h, %bb.g ] ; 3 uses
  %i.ac = sext i32 %.1207 to i64
  %i.ad = zext i32 %i.u to i64
  %i.ae = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef %i.ac, i64 noundef 0, i64 noundef %i.ad, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 2 uses
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !19
  %i.af = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not219 = icmp eq i32 %i.af, 0
  br i1 %.not219, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ag = sub nsw i32 0, %.1207
  %i.ah = select i1 %i.p, i32 %i.ag, i32 %.1207
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !7
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  store i32 6, ptr %i.a, align 4, !tbaa !3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ai = phi ptr [ %i.ae, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !7  ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %1, align 8, !tbaa !25
  %i.ap = add i32 %i.ao, -1
  %i.aq = mul nsw i32 %i.ap, %i.am
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ak, i64 %i.as
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0183 = phi ptr [ %i.at, %bb.m ], [ %i.ak, %bb.l ] ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !7  ; 3 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %2, align 8, !tbaa !25
  %i.ay = add i32 %i.ax, -1
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = sext i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ai, i64 %i.bb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0192 = phi ptr [ %i.bc, %bb.o ], [ %i.ai, %bb.n ] ; 7 uses
  %i.bd = load i8, ptr %i.e, align 2, !tbaa !30
  switch i8 %i.bd, label %.loopexit238 [
    i8 1, label %bb.q
    i8 2, label %bb.z
    i8 5, label %bb.z
    i8 6, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.af
    i8 7, label %bb.aj
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 2, ptr %i.be, align 8, !tbaa !49
  %i.bf = load i32, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not230304 = icmp eq i32 %i.bf, 0
  br i1 %.not230304, label %.loopexit238, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph309, %.loopexit
  %.1184307 = phi ptr [ %.0183, %.lr.ph309 ], [ %i.cp, %.loopexit ] ; 3 uses
  %.1193306 = phi ptr [ %.0192, %.lr.ph309 ], [ %i.cs, %.loopexit ] ; 3 uses
  %.0205305 = phi i32 [ %i.bf, %.lr.ph309 ], [ %i.ct, %.loopexit ]
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31 ; 2 uses
  %i.bi = lshr i32 %i.bh, 3                       ; 2 uses
  %.not231292 = icmp eq i32 %i.bi, 0
  br i1 %.not231292, label %._crit_edge298, label %.lr.ph297

.lr.ph297:                                        ; preds = %bb.r, %.lr.ph297
  %.0200295 = phi i32 [ %i.bq, %.lr.ph297 ], [ %i.bi, %bb.r ]
  %.0202294 = phi ptr [ %i.bo, %.lr.ph297 ], [ %.1193306, %bb.r ] ; 2 uses
  %.0204293 = phi ptr [ %i.bp, %.lr.ph297 ], [ %.1184307, %bb.r ] ; 2 uses
  %i.bj = load i8, ptr %.0204293, align 1, !tbaa !23
  %i.bk = insertelement <8 x i8> poison, i8 %i.bj, i64 0
end_hunk_0
