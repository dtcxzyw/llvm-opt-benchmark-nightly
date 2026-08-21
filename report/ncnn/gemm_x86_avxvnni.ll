inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  br i1 %i.lw, label %vec.epilog.middle.block355, label %vec.epilog.vector.body343, !llvm.loop !41

vec.epilog.middle.block355:                       ; preds = %vec.epilog.vector.body343
  %i.lx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.lv) ; 2 uses
  %ind.escape356 = getelementptr i8, ptr %i.ll, i64 -4
  br i1 %cmp.n357, label %._crit_edge365.i.us, label %.lr.ph364.i.us.preheader

.lr.ph364.i.us.preheader:                         ; preds = %vector.memcheck295, %iter.check337, %vec.epilog.iter.check339, %vec.epilog.middle.block355
  %.0362.i.us.ph = phi i32 [ 0, %iter.check337 ], [ 0, %vector.memcheck295 ], [ %i.lj, %vec.epilog.iter.check339 ], [ %i.lx, %vec.epilog.middle.block355 ]
  %.0200361.i.us.ph = phi i32 [ 0, %iter.check337 ], [ 0, %vector.memcheck295 ], [ %i.jq, %vec.epilog.iter.check339 ], [ %i.jt, %vec.epilog.middle.block355 ]
  %.0201360.i.us.ph = phi ptr [ %i.kk, %iter.check337 ], [ %i.kk, %vector.memcheck295 ], [ %i.ko, %vec.epilog.iter.check339 ], [ %i.lk, %vec.epilog.middle.block355 ]
  %.16359.i.us.ph = phi ptr [ %.15378.i.us, %iter.check337 ], [ %.15378.i.us, %vector.memcheck295 ], [ %i.kp, %vec.epilog.iter.check339 ], [ %i.ll, %vec.epilog.middle.block355 ]
  br label %.lr.ph364.i.us

.lr.ph364.i.us:                                   ; preds = %.lr.ph364.i.us.preheader, %.lr.ph364.i.us
  %.0362.i.us = phi i32 [ %i.mp, %.lr.ph364.i.us ], [ %.0362.i.us.ph, %.lr.ph364.i.us.preheader ]
  %.0200361.i.us = phi i32 [ %i.ms, %.lr.ph364.i.us ], [ %.0200361.i.us.ph, %.lr.ph364.i.us.preheader ]
  %.0201360.i.us = phi ptr [ %i.mr, %.lr.ph364.i.us ], [ %.0201360.i.us.ph, %.lr.ph364.i.us.preheader ] ; 5 uses
  %.16359.i.us = phi ptr [ %i.mq, %.lr.ph364.i.us ], [ %.16359.i.us.ph, %.lr.ph364.i.us.preheader ] ; 6 uses
  %i.ly = load i8, ptr %.0201360.i.us, align 1, !tbaa !17 ; 2 uses
  store i8 %i.ly, ptr %.16359.i.us, align 1, !tbaa !17
  %i.lz = getelementptr inbounds nuw i8, ptr %.0201360.i.us, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !17  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.16359.i.us, i64 1
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.0201360.i.us, i64 2
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !17  ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.16359.i.us, i64 2
  store i8 %i.md, ptr %i.me, align 1, !tbaa !17
  %i.mf = getelementptr inbounds nuw i8, ptr %.0201360.i.us, i64 3
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !17  ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.16359.i.us, i64 3
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !17
  %i.mi = sext i8 %i.ly to i32
  %i.mj = add nsw i32 %.0362.i.us, %i.mi
  %i.mk = sext i8 %i.ma to i32
  %i.ml = add nsw i32 %i.mj, %i.mk
  %i.mm = sext i8 %i.md to i32
  %i.mn = add nsw i32 %i.ml, %i.mm
  %i.mo = sext i8 %i.mg to i32
  %i.mp = add nsw i32 %i.mn, %i.mo                ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.16359.i.us, i64 4 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0201360.i.us, i64 4 ; 2 uses
  %i.ms = add nuw nsw i32 %.0200361.i.us, 4       ; 2 uses
  %i.mt = or disjoint i32 %i.ms, 3
  %i.mu = icmp slt i32 %i.mt, %5
  br i1 %i.mu, label %.lr.ph364.i.us, label %._crit_edge365.i.us, !llvm.loop !42

._crit_edge365.i.us:                              ; preds = %.lr.ph364.i.us, %vec.epilog.middle.block355, %middle.block329
  %.16359.i.us.lcssa = phi ptr [ %ind.escape356, %vec.epilog.middle.block355 ], [ %ind.escape330, %middle.block329 ], [ %.16359.i.us, %.lr.ph364.i.us ]
  %.lcssa97.a = phi i32 [ %i.lx, %vec.epilog.middle.block355 ], [ %i.lj, %middle.block329 ], [ %i.mp, %.lr.ph364.i.us ]
  %.lcssa96 = phi ptr [ %i.ll, %vec.epilog.middle.block355 ], [ %i.kp, %middle.block329 ], [ %i.mq, %.lr.ph364.i.us ]
  %.lcssa = phi ptr [ %i.lk, %vec.epilog.middle.block355 ], [ %i.ko, %middle.block329 ], [ %i.mr, %.lr.ph364.i.us ] ; 6 uses
  %i.mv = mul nsw i32 %.lcssa97.a, 127
  store i32 %i.mv, ptr %.lcssa96, align 4, !tbaa !43
  %i.mw = getelementptr inbounds nuw i8, ptr %.16359.i.us.lcssa, i64 8 ; 7 uses
  br i1 %.not, label %._crit_edge375.i.us, label %iter.check278

iter.check278:                                    ; preds = %._crit_edge365.i.us
  br i1 %min.iters.check258, label %.lr.ph374.i.us.preheader, label %vector.memcheck255

vector.memcheck255:                               ; preds = %iter.check278
  %i.mx = mul i64 %i.ka, %i.kh
  %i.my = mul i64 %i.mx, %i.kf
  %i.mz = add i64 %i.my, %i.iz
  %i.na = add i64 %i.mz, %i.kd
  %i.nb = sub i64 %.15378.i.us256, %i.na
  %i.nc = add i64 %i.nb, 3
  %diff.check = icmp ult i64 %i.nc, 127
  br i1 %diff.check, label %.lr.ph374.i.us.preheader, label %vector.main.loop.iter.check259

vector.main.loop.iter.check259:                   ; preds = %vector.memcheck255
  br i1 %min.iters.check260, label %vec.epilog.ph282, label %vector.ph261

vector.ph261:                                     ; preds = %vector.main.loop.iter.check259
  %i.nd = getelementptr i8, ptr %.lcssa, i64 %n.vec262
  %i.ne = getelementptr i8, ptr %i.mw, i64 %n.vec262 ; 2 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next271, %vector.body263 ] ; 3 uses
  %next.gep265 = getelementptr i8, ptr %.lcssa, i64 %index264 ; 4 uses
  %next.gep266 = getelementptr i8, ptr %i.mw, i64 %index264 ; 4 uses
  %i.nf = getelementptr i8, ptr %next.gep265, i64 32
  %i.ng = getelementptr i8, ptr %next.gep265, i64 64
  %i.nh = getelementptr i8, ptr %next.gep265, i64 96
  %wide.load267 = load <32 x i8>, ptr %next.gep265, align 1, !tbaa !17
  %wide.load268 = load <32 x i8>, ptr %i.nf, align 1, !tbaa !17
  %wide.load269 = load <32 x i8>, ptr %i.ng, align 1, !tbaa !17
  %wide.load270 = load <32 x i8>, ptr %i.nh, align 1, !tbaa !17
  %i.ni = getelementptr i8, ptr %next.gep266, i64 32
  %i.nj = getelementptr i8, ptr %next.gep266, i64 64
  %i.nk = getelementptr i8, ptr %next.gep266, i64 96
  store <32 x i8> %wide.load267, ptr %next.gep266, align 1, !tbaa !17
  store <32 x i8> %wide.load268, ptr %i.ni, align 1, !tbaa !17
  store <32 x i8> %wide.load269, ptr %i.nj, align 1, !tbaa !17
  store <32 x i8> %wide.load270, ptr %i.nk, align 1, !tbaa !17
  %index.next271 = add nuw i64 %index264, 128     ; 2 uses
  %i.nl = icmp eq i64 %index.next271, %n.vec262
  br i1 %i.nl, label %middle.block272, label %vector.body263, !llvm.loop !44

middle.block272:                                  ; preds = %vector.body263
  br i1 %cmp.n273, label %._crit_edge375.i.us, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block272
  br i1 %min.epilog.iters.check281, label %.lr.ph374.i.us.preheader, label %vec.epilog.ph282, !prof !45

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check259, %vec.epilog.iter.check280
  %vec.epilog.resume.val274 = phi i64 [ %n.vec262, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check259 ]
  %i.nm = getelementptr i8, ptr %.lcssa, i64 %n.vec283
  %i.nn = getelementptr i8, ptr %i.mw, i64 %n.vec283 ; 2 uses
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph282
  %index285 = phi i64 [ %vec.epilog.resume.val274, %vec.epilog.ph282 ], [ %index.next289, %vec.epilog.vector.body284 ] ; 3 uses
  %next.gep286 = getelementptr i8, ptr %.lcssa, i64 %index285
  %next.gep287 = getelementptr i8, ptr %i.mw, i64 %index285
  %wide.load288 = load <8 x i8>, ptr %next.gep286, align 1, !tbaa !17
  store <8 x i8> %wide.load288, ptr %next.gep287, align 1, !tbaa !17
  %index.next289 = add nuw i64 %index285, 8       ; 2 uses
  %i.no = icmp eq i64 %index.next289, %n.vec283
  br i1 %i.no, label %vec.epilog.middle.block290, label %vec.epilog.vector.body284, !llvm.loop !46

vec.epilog.middle.block290:                       ; preds = %vec.epilog.vector.body284
  br i1 %cmp.n291, label %._crit_edge375.i.us, label %.lr.ph374.i.us.preheader

.lr.ph374.i.us.preheader:                         ; preds = %vector.memcheck255, %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block290
  %.1372.i.us.ph = phi i32 [ %i.jb, %iter.check278 ], [ %i.jb, %vector.memcheck255 ], [ %i.jx, %vec.epilog.iter.check280 ], [ %i.jz, %vec.epilog.middle.block290 ] ; 4 uses
  %.1202371.i.us.ph = phi ptr [ %.lcssa, %iter.check278 ], [ %.lcssa, %vector.memcheck255 ], [ %i.nd, %vec.epilog.iter.check280 ], [ %i.nm, %vec.epilog.middle.block290 ] ; 2 uses
  %.18370.i.us.ph = phi ptr [ %i.mw, %iter.check278 ], [ %i.mw, %vector.memcheck255 ], [ %i.ne, %vec.epilog.iter.check280 ], [ %i.nn, %vec.epilog.middle.block290 ] ; 2 uses
  %i.np = sub i32 %5, %.1372.i.us.ph
  %xtraiter429 = and i32 %i.np, 7                 ; 2 uses
  %lcmp.mod430.not = icmp eq i32 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %.lr.ph374.i.us.prol.loopexit, label %.lr.ph374.i.us.prol

.lr.ph374.i.us.prol:                              ; preds = %.lr.ph374.i.us.preheader, %.lr.ph374.i.us.prol
  %.1372.i.us.prol = phi i32 [ %i.nt, %.lr.ph374.i.us.prol ], [ %.1372.i.us.ph, %.lr.ph374.i.us.preheader ]
  %.1202371.i.us.prol = phi ptr [ %i.ns, %.lr.ph374.i.us.prol ], [ %.1202371.i.us.ph, %.lr.ph374.i.us.preheader ] ; 2 uses
  %.18370.i.us.prol = phi ptr [ %i.nr, %.lr.ph374.i.us.prol ], [ %.18370.i.us.ph, %.lr.ph374.i.us.preheader ] ; 2 uses
  %prol.iter431 = phi i32 [ %prol.iter431.next, %.lr.ph374.i.us.prol ], [ 0, %.lr.ph374.i.us.preheader ]
  %i.nq = load i8, ptr %.1202371.i.us.prol, align 1, !tbaa !17
  store i8 %i.nq, ptr %.18370.i.us.prol, align 1, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %.18370.i.us.prol, i64 1 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.1202371.i.us.prol, i64 1 ; 2 uses
  %i.nt = add nuw nsw i32 %.1372.i.us.prol, 1     ; 2 uses
  %prol.iter431.next = add i32 %prol.iter431, 1   ; 2 uses
  %prol.iter431.cmp.not = icmp eq i32 %prol.iter431.next, %xtraiter429
  br i1 %prol.iter431.cmp.not, label %.lr.ph374.i.us.prol.loopexit, label %.lr.ph374.i.us.prol, !llvm.loop !47

.lr.ph374.i.us.prol.loopexit:                     ; preds = %.lr.ph374.i.us.prol, %.lr.ph374.i.us.preheader
  %.lcssa371.unr = phi ptr [ poison, %.lr.ph374.i.us.preheader ], [ %i.nr, %.lr.ph374.i.us.prol ]
  %.1372.i.us.unr = phi i32 [ %.1372.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.nt, %.lr.ph374.i.us.prol ]
  %.1202371.i.us.unr = phi ptr [ %.1202371.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.ns, %.lr.ph374.i.us.prol ]
  %.18370.i.us.unr = phi ptr [ %.18370.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.nr, %.lr.ph374.i.us.prol ]
  %i.nu = sub i32 %.1372.i.us.ph, %5
  %i.nv = icmp ugt i32 %i.nu, -8
  br i1 %i.nv, label %._crit_edge375.i.us, label %.lr.ph374.i.us

.lr.ph374.i.us:                                   ; preds = %.lr.ph374.i.us.prol.loopexit, %.lr.ph374.i.us
  %.1372.i.us = phi i32 [ %i.ou, %.lr.ph374.i.us ], [ %.1372.i.us.unr, %.lr.ph374.i.us.prol.loopexit ]
  %.1202371.i.us = phi ptr [ %i.ot, %.lr.ph374.i.us ], [ %.1202371.i.us.unr, %.lr.ph374.i.us.prol.loopexit ] ; 9 uses
  %.18370.i.us = phi ptr [ %i.os, %.lr.ph374.i.us ], [ %.18370.i.us.unr, %.lr.ph374.i.us.prol.loopexit ] ; 9 uses
  %i.nw = load i8, ptr %.1202371.i.us, align 1, !tbaa !17
  store i8 %i.nw, ptr %.18370.i.us, align 1, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 1
  %i.ny = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !17
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !17
  %i.oa = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !17
  store i8 %i.oc, ptr %i.oa, align 1, !tbaa !17
  %i.od = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 3
  %i.oe = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 3
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !17
  store i8 %i.of, ptr %i.od, align 1, !tbaa !17
  %i.og = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 4
  %i.oh = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 4
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !17
  store i8 %i.oi, ptr %i.og, align 1, !tbaa !17
  %i.oj = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 5
  %i.ok = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 5
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !17
  store i8 %i.ol, ptr %i.oj, align 1, !tbaa !17
  %i.om = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 6
  %i.on = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 6
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !17
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !17
  %i.op = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 7
  %i.oq = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 7
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !17
  store i8 %i.or, ptr %i.op, align 1, !tbaa !17
  %i.os = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 8
  %i.ou = add nuw nsw i32 %.1372.i.us, 8          ; 2 uses
  %exitcond424.not.i.us.7 = icmp eq i32 %i.ou, %5
  br i1 %exitcond424.not.i.us.7, label %._crit_edge375.i.us, label %.lr.ph374.i.us, !llvm.loop !48

._crit_edge375.i.us:                              ; preds = %.lr.ph374.i.us.prol.loopexit, %.lr.ph374.i.us, %middle.block272, %vec.epilog.middle.block290, %._crit_edge365.i.us
  %.18.lcssa.i.us = phi ptr [ %i.mw, %._crit_edge365.i.us ], [ %i.nn, %vec.epilog.middle.block290 ], [ %i.ne, %middle.block272 ], [ %.lcssa371.unr, %.lr.ph374.i.us.prol.loopexit ], [ %i.os, %.lr.ph374.i.us ]
  %indvars.iv.next426.i.us = add nsw i64 %indvars.iv425.i.us, 1 ; 2 uses
  %exitcond428.not.i.us = icmp eq i64 %indvars.iv.next426.i.us, %wide.trip.count.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond428.not.i.us, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check337, !llvm.loop !49

.lr.ph379.i.split:                                ; preds = %.lr.ph379.i
  %i.ov = icmp sgt i32 %5, 0
  br i1 %i.ov, label %._crit_edge365.i.preheader, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

._crit_edge365.i.preheader:                       ; preds = %.lr.ph379.i.split
  %exitcond424.not.i = icmp eq i32 %5, 1
  %exitcond424.not.i.1 = icmp eq i32 %5, 2
  br label %._crit_edge365.i

bb.f:                                             ; preds = %._crit_edge352.i, %.lr.ph356.i
  %indvars.iv421.i = phi i64 [ %i.en, %.lr.ph356.i ], [ %indvars.iv.next422.i, %._crit_edge352.i ] ; 2 uses
  %.10355.i = phi ptr [ %.5.lcssa.i, %.lr.ph356.i ], [ %.14.lcssa.i, %._crit_edge352.i ] ; 8 uses
  %i.ow = add i64 %indvars.iv421.i, %i.ep         ; 2 uses
  %i.ox = load ptr, ptr %0, align 8, !tbaa !9     ; 4 uses
  %i.oy = load i32, ptr %i.ei, align 4, !tbaa !15
  %i.oz = sext i32 %i.oy to i64
  %i.pa = load i64, ptr %i.ej, align 8, !tbaa !16
  %i.pb = mul i64 %i.pa, %i.oz                    ; 2 uses
  %i.pc = mul i64 %i.pb, %i.ow                    ; 2 uses
  %i.pd = getelementptr i8, ptr %i.ox, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 %i.ek  ; 6 uses
  %i.pf = add nsw i64 %i.ow, 1
  %i.pg = mul i64 %i.pb, %i.pf                    ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.pg
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 %i.ek ; 5 uses
  br i1 %i.el, label %.lr.ph329.i.preheader, label %._crit_edge330.i

.lr.ph329.i.preheader:                            ; preds = %bb.f
  br i1 %min.iters.check228, label %.lr.ph329.i.preheader374, label %vector.memcheck214

vector.memcheck214:                               ; preds = %.lr.ph329.i.preheader
  %i.pj = getelementptr i8, ptr %.10355.i, i64 %i.ev
  %scevgep215 = getelementptr i8, ptr %i.pj, i64 8 ; 2 uses
  %scevgep216 = getelementptr i8, ptr %i.ox, i64 %i.ek
  %scevgep217 = getelementptr i8, ptr %scevgep216, i64 %i.pg
  %i.pk = getelementptr i8, ptr %i.ox, i64 %i.ew
  %i.pl = getelementptr i8, ptr %i.pk, i64 %i.ek
  %scevgep218 = getelementptr i8, ptr %i.pl, i64 4 ; 2 uses
  %scevgep219 = getelementptr i8, ptr %scevgep218, i64 %i.pg
  %scevgep220 = getelementptr i8, ptr %scevgep218, i64 %i.pc
  %bound0221 = icmp ult ptr %.10355.i, %scevgep219
  %bound1222 = icmp ult ptr %scevgep217, %scevgep215
  %found.conflict223 = and i1 %bound0221, %bound1222
  %bound0224 = icmp ult ptr %.10355.i, %scevgep220
  %bound1225 = icmp ult ptr %i.pe, %scevgep215
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %found.conflict223, %found.conflict226
  br i1 %conflict.rdx227, label %.lr.ph329.i.preheader374, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck214
  %i.pm = getelementptr i8, ptr %i.pi, i64 %i.fc  ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pe, i64 %i.fc  ; 2 uses
  %i.po = getelementptr i8, ptr %.10355.i, i64 %i.fd ; 3 uses
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next248, %vector.body231 ] ; 3 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph229 ], [ %i.qm, %vector.body231 ]
  %vec.phi233 = phi <8 x i32> [ zeroinitializer, %vector.ph229 ], [ %i.qe, %vector.body231 ]
  %i.pp = shl i64 %index232, 2                    ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.pi, i64 %i.pp
  %next.gep235 = getelementptr i8, ptr %i.pe, i64 %i.pp
  %i.pq = shl i64 %index232, 3
  %next.gep236 = getelementptr i8, ptr %.10355.i, i64 %i.pq
  %wide.vec237 = load <32 x i8>, ptr %next.gep235, align 1, !tbaa !17, !alias.scope !50 ; 4 uses
  %strided.vec238 = shufflevector <32 x i8> %wide.vec237, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec239 = shufflevector <32 x i8> %wide.vec237, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec240 = shufflevector <32 x i8> %wide.vec237, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec241 = shufflevector <32 x i8> %wide.vec237, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %wide.vec242 = load <32 x i8>, ptr %next.gep234, align 1, !tbaa !17, !alias.scope !53 ; 4 uses
  %strided.vec243 = shufflevector <32 x i8> %wide.vec242, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec244 = shufflevector <32 x i8> %wide.vec242, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec245 = shufflevector <32 x i8> %wide.vec242, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec246 = shufflevector <32 x i8> %wide.vec242, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.pr = shufflevector <8 x i8> %strided.vec238, <8 x i8> %strided.vec239, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ps = shufflevector <8 x i8> %strided.vec240, <8 x i8> %strided.vec241, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pt = shufflevector <8 x i8> %strided.vec243, <8 x i8> %strided.vec244, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pu = shufflevector <8 x i8> %strided.vec245, <8 x i8> %strided.vec246, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pv = shufflevector <16 x i8> %i.pr, <16 x i8> %i.ps, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pw = shufflevector <16 x i8> %i.pt, <16 x i8> %i.pu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec247 = shufflevector <32 x i8> %i.pv, <32 x i8> %i.pw, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i8> %interleaved.vec247, ptr %next.gep236, align 1, !tbaa !17, !alias.scope !55, !noalias !57
  %i.px = sext <8 x i8> %strided.vec238 to <8 x i32>
  %i.py = add <8 x i32> %vec.phi233, %i.px
  %i.pz = sext <8 x i8> %strided.vec239 to <8 x i32>
  %i.qa = add <8 x i32> %i.py, %i.pz
  %i.qb = sext <8 x i8> %strided.vec240 to <8 x i32>
  %i.qc = add <8 x i32> %i.qa, %i.qb
  %i.qd = sext <8 x i8> %strided.vec241 to <8 x i32>
  %i.qe = add <8 x i32> %i.qc, %i.qd              ; 2 uses
  %i.qf = sext <8 x i8> %strided.vec243 to <8 x i32>
  %i.qg = add <8 x i32> %vec.phi, %i.qf
  %i.qh = sext <8 x i8> %strided.vec244 to <8 x i32>
  %i.qi = add <8 x i32> %i.qg, %i.qh
  %i.qj = sext <8 x i8> %strided.vec245 to <8 x i32>
  %i.qk = add <8 x i32> %i.qi, %i.qj
  %i.ql = sext <8 x i8> %strided.vec246 to <8 x i32>
  %i.qm = add <8 x i32> %i.qk, %i.ql              ; 2 uses
  %index.next248 = add nuw i64 %index232, 8       ; 2 uses
  %i.qn = icmp eq i64 %index.next248, %n.vec230
  br i1 %i.qn, label %middle.block249, label %vector.body231, !llvm.loop !58

middle.block249:                                  ; preds = %vector.body231
  %i.qo = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.qm) ; 2 uses
  %i.qp = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.qe) ; 2 uses
  %ind.escape = getelementptr i8, ptr %i.po, i64 -8
  br i1 %cmp.n250, label %.loopexit, label %.lr.ph329.i.preheader374

.lr.ph329.i.preheader374:                         ; preds = %vector.memcheck214, %.lr.ph329.i.preheader, %middle.block249
  %.0203327.i.ph = phi i32 [ 0, %vector.memcheck214 ], [ 0, %.lr.ph329.i.preheader ], [ %i.qo, %middle.block249 ]
  %.0204326.i.ph = phi i32 [ 0, %vector.memcheck214 ], [ 0, %.lr.ph329.i.preheader ], [ %i.qp, %middle.block249 ]
  %.0205325.i.ph = phi i32 [ 0, %vector.memcheck214 ], [ 0, %.lr.ph329.i.preheader ], [ %i.fb, %middle.block249 ]
  %.0207324.i.ph = phi ptr [ %i.pi, %vector.memcheck214 ], [ %i.pi, %.lr.ph329.i.preheader ], [ %i.pm, %middle.block249 ]
  %.0210323.i.ph = phi ptr [ %i.pe, %vector.memcheck214 ], [ %i.pe, %.lr.ph329.i.preheader ], [ %i.pn, %middle.block249 ]
  %.11322.i.ph = phi ptr [ %.10355.i, %vector.memcheck214 ], [ %.10355.i, %.lr.ph329.i.preheader ], [ %i.po, %middle.block249 ]
  br label %.lr.ph329.i

.lr.ph329.i:                                      ; preds = %.lr.ph329.i.preheader374, %.lr.ph329.i
  %.0203327.i = phi i32 [ %i.sa, %.lr.ph329.i ], [ %.0203327.i.ph, %.lr.ph329.i.preheader374 ]
  %.0204326.i = phi i32 [ %i.rs, %.lr.ph329.i ], [ %.0204326.i.ph, %.lr.ph329.i.preheader374 ]
  %.0205325.i = phi i32 [ %i.se, %.lr.ph329.i ], [ %.0205325.i.ph, %.lr.ph329.i.preheader374 ]
  %.0207324.i = phi ptr [ %i.sd, %.lr.ph329.i ], [ %.0207324.i.ph, %.lr.ph329.i.preheader374 ] ; 5 uses
  %.0210323.i = phi ptr [ %i.sc, %.lr.ph329.i ], [ %.0210323.i.ph, %.lr.ph329.i.preheader374 ] ; 5 uses
  %.11322.i = phi ptr [ %i.sb, %.lr.ph329.i ], [ %.11322.i.ph, %.lr.ph329.i.preheader374 ] ; 10 uses
  %i.qq = load i8, ptr %.0210323.i, align 1, !tbaa !17 ; 2 uses
  store i8 %i.qq, ptr %.11322.i, align 1, !tbaa !17
  %i.qr = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 1
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !17  ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.11322.i, i64 1
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !17
  %i.qu = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 2
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !17  ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.11322.i, i64 2
  store i8 %i.qv, ptr %i.qw, align 1, !tbaa !17
  %i.qx = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 3
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !17  ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.11322.i, i64 3
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !17
  %i.ra = load i8, ptr %.0207324.i, align 1, !tbaa !17 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.11322.i, i64 4
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 1
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !17  ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.11322.i, i64 5
  store i8 %i.rd, ptr %i.re, align 1, !tbaa !17
  %i.rf = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 2
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !17  ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.11322.i, i64 6
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !17
  %i.ri = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 3
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !17  ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.11322.i, i64 7
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !17
  %i.rl = sext i8 %i.qq to i32
  %i.rm = add nsw i32 %.0204326.i, %i.rl
  %i.rn = sext i8 %i.qs to i32
  %i.ro = add nsw i32 %i.rm, %i.rn
  %i.rp = sext i8 %i.qv to i32
  %i.rq = add nsw i32 %i.ro, %i.rp
  %i.rr = sext i8 %i.qy to i32
  %i.rs = add nsw i32 %i.rq, %i.rr                ; 2 uses
  %i.rt = sext i8 %i.ra to i32
  %i.ru = add nsw i32 %.0203327.i, %i.rt
  %i.rv = sext i8 %i.rd to i32
  %i.rw = add nsw i32 %i.ru, %i.rv
  %i.rx = sext i8 %i.rg to i32
  %i.ry = add nsw i32 %i.rw, %i.rx
  %i.rz = sext i8 %i.rj to i32
  %i.sa = add nsw i32 %i.ry, %i.rz                ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.11322.i, i64 8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 4 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 4 ; 2 uses
  %i.se = add nuw nsw i32 %.0205325.i, 4          ; 2 uses
  %i.sf = or disjoint i32 %i.se, 3
  %i.sg = icmp slt i32 %i.sf, %5
  br i1 %i.sg, label %.lr.ph329.i, label %.loopexit, !llvm.loop !59

.loopexit:                                        ; preds = %.lr.ph329.i, %middle.block249
  %.11322.i.lcssa = phi ptr [ %ind.escape, %middle.block249 ], [ %.11322.i, %.lr.ph329.i ] ; 2 uses
  %.lcssa104.a = phi i32 [ %i.qp, %middle.block249 ], [ %i.rs, %.lr.ph329.i ]
  %.lcssa103.a = phi i32 [ %i.qo, %middle.block249 ], [ %i.sa, %.lr.ph329.i ]
  %.lcssa102.a = phi ptr [ %i.po, %middle.block249 ], [ %i.sb, %.lr.ph329.i ]
  %.lcssa101.a = phi ptr [ %i.pn, %middle.block249 ], [ %i.sc, %.lr.ph329.i ]
  %.lcssa100 = phi ptr [ %i.pm, %middle.block249 ], [ %i.sd, %.lr.ph329.i ]
  %i.sh = mul nsw i32 %.lcssa104.a, 127
  %i.si = mul nsw i32 %.lcssa103.a, 127
  store i32 %i.sh, ptr %.lcssa102.a, align 4, !tbaa !43
  %i.sj = getelementptr inbounds nuw i8, ptr %.11322.i.lcssa, i64 12
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !43
  %i.sk = getelementptr inbounds nuw i8, ptr %.11322.i.lcssa, i64 16
  br label %._crit_edge330.i

._crit_edge330.i:                                 ; preds = %.loopexit, %bb.f
  %.0205.lcssa465.i = phi i32 [ %i.em, %.loopexit ], [ 0, %bb.f ] ; 8 uses
  %.0207.lcssa463.i = phi ptr [ %.lcssa100, %.loopexit ], [ %i.pi, %bb.f ] ; 9 uses
  %.0210.lcssa461.i = phi ptr [ %.lcssa101.a, %.loopexit ], [ %i.pe, %bb.f ] ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  %i.ug = shl nuw nsw i64 %n.vec, 1
  %i.uh = getelementptr i8, ptr %.13.lcssa.i, i64 %i.ug ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.1208.lcssa.i, i64 %index
  %next.gep133 = getelementptr i8, ptr %.1211.lcssa.i, i64 %index
  %i.ui = shl i64 %index, 1
  %next.gep134 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.ui
  %wide.load = load <32 x i8>, ptr %next.gep133, align 1, !tbaa !17, !alias.scope !71
  %wide.load135 = load <32 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !74
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load135, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep134, align 1, !tbaa !17, !alias.scope !76, !noalias !78
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.uj = icmp eq i64 %index.next, %n.vec
  br i1 %i.uj, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tw, %n.vec
  br i1 %cmp.n, label %._crit_edge352.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ub, 0
  br i1 %min.epilog.iters.check, label %.lr.ph351.i.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec139 = and i64 %i.tw, 8589934584           ; 6 uses
  %i.uk = trunc i64 %n.vec139 to i32
  %i.ul = add i32 %.1206.lcssa.i, %i.uk
  %i.um = getelementptr i8, ptr %.1208.lcssa.i, i64 %n.vec139
  %i.un = getelementptr i8, ptr %.1211.lcssa.i, i64 %n.vec139
  %i.uo = shl nuw nsw i64 %n.vec139, 1
  %i.up = getelementptr i8, ptr %.13.lcssa.i, i64 %i.uo ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index140 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 4 uses
  %next.gep141 = getelementptr i8, ptr %.1208.lcssa.i, i64 %index140
  %next.gep142 = getelementptr i8, ptr %.1211.lcssa.i, i64 %index140
  %i.uq = shl i64 %index140, 1
  %next.gep143 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.uq
  %wide.load144 = load <8 x i8>, ptr %next.gep142, align 1, !tbaa !17, !alias.scope !71
  %wide.load145 = load <8 x i8>, ptr %next.gep141, align 1, !tbaa !17, !alias.scope !74
  %interleaved.vec146 = shufflevector <8 x i8> %wide.load144, <8 x i8> %wide.load145, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec146, ptr %next.gep143, align 1, !tbaa !17, !alias.scope !76, !noalias !78
  %index.next147 = add nuw i64 %index140, 8       ; 2 uses
  %i.ur = icmp eq i64 %index.next147, %n.vec139
  br i1 %i.ur, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !80

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.tw, %n.vec139
  br i1 %cmp.n148, label %._crit_edge352.i, label %.lr.ph351.i.preheader

.lr.ph351.i.preheader:                            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2350.i.ph = phi i32 [ %.1206.lcssa.i, %iter.check ], [ %.1206.lcssa.i, %vector.memcheck ], [ %i.ud, %vec.epilog.iter.check ], [ %i.ul, %vec.epilog.middle.block ] ; 4 uses
  %.2209349.i.ph = phi ptr [ %.1208.lcssa.i, %iter.check ], [ %.1208.lcssa.i, %vector.memcheck ], [ %i.ue, %vec.epilog.iter.check ], [ %i.um, %vec.epilog.middle.block ] ; 2 uses
  %.2212348.i.ph = phi ptr [ %.1211.lcssa.i, %iter.check ], [ %.1211.lcssa.i, %vector.memcheck ], [ %i.uf, %vec.epilog.iter.check ], [ %i.un, %vec.epilog.middle.block ] ; 2 uses
  %.14347.i.ph = phi ptr [ %.13.lcssa.i, %iter.check ], [ %.13.lcssa.i, %vector.memcheck ], [ %i.uh, %vec.epilog.iter.check ], [ %i.up, %vec.epilog.middle.block ] ; 2 uses
  %i.us = sub i32 %5, %.2350.i.ph
  %xtraiter426 = and i32 %i.us, 3                 ; 2 uses
  %lcmp.mod427.not = icmp eq i32 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %.lr.ph351.i.prol.loopexit, label %.lr.ph351.i.prol

.lr.ph351.i.prol:                                 ; preds = %.lr.ph351.i.preheader, %.lr.ph351.i.prol
  %.2350.i.prol = phi i32 [ %i.uz, %.lr.ph351.i.prol ], [ %.2350.i.ph, %.lr.ph351.i.preheader ]
  %.2209349.i.prol = phi ptr [ %i.uy, %.lr.ph351.i.prol ], [ %.2209349.i.ph, %.lr.ph351.i.preheader ] ; 2 uses
  %.2212348.i.prol = phi ptr [ %i.ux, %.lr.ph351.i.prol ], [ %.2212348.i.ph, %.lr.ph351.i.preheader ] ; 2 uses
  %.14347.i.prol = phi ptr [ %i.uw, %.lr.ph351.i.prol ], [ %.14347.i.ph, %.lr.ph351.i.preheader ] ; 3 uses
  %prol.iter428 = phi i32 [ %prol.iter428.next, %.lr.ph351.i.prol ], [ 0, %.lr.ph351.i.preheader ]
  %i.ut = load i8, ptr %.2212348.i.prol, align 1, !tbaa !17
  store i8 %i.ut, ptr %.14347.i.prol, align 1, !tbaa !17
  %i.uu = load i8, ptr %.2209349.i.prol, align 1, !tbaa !17
  %i.uv = getelementptr inbounds nuw i8, ptr %.14347.i.prol, i64 1
  store i8 %i.uu, ptr %i.uv, align 1, !tbaa !17
  %i.uw = getelementptr inbounds nuw i8, ptr %.14347.i.prol, i64 2 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.2212348.i.prol, i64 1 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.2209349.i.prol, i64 1 ; 2 uses
  %i.uz = add nuw nsw i32 %.2350.i.prol, 1        ; 2 uses
  %prol.iter428.next = add i32 %prol.iter428, 1   ; 2 uses
  %prol.iter428.cmp.not = icmp eq i32 %prol.iter428.next, %xtraiter426
  br i1 %prol.iter428.cmp.not, label %.lr.ph351.i.prol.loopexit, label %.lr.ph351.i.prol, !llvm.loop !81

.lr.ph351.i.prol.loopexit:                        ; preds = %.lr.ph351.i.prol, %.lr.ph351.i.preheader
  %.lcssa387.unr = phi ptr [ poison, %.lr.ph351.i.preheader ], [ %i.uw, %.lr.ph351.i.prol ]
  %.2350.i.unr = phi i32 [ %.2350.i.ph, %.lr.ph351.i.preheader ], [ %i.uz, %.lr.ph351.i.prol ]
  %.2209349.i.unr = phi ptr [ %.2209349.i.ph, %.lr.ph351.i.preheader ], [ %i.uy, %.lr.ph351.i.prol ]
  %.2212348.i.unr = phi ptr [ %.2212348.i.ph, %.lr.ph351.i.preheader ], [ %i.ux, %.lr.ph351.i.prol ]
  %.14347.i.unr = phi ptr [ %.14347.i.ph, %.lr.ph351.i.preheader ], [ %i.uw, %.lr.ph351.i.prol ]
  %i.va = sub i32 %.2350.i.ph, %5
  %i.vb = icmp ugt i32 %i.va, -4
  br i1 %i.vb, label %._crit_edge352.i, label %.lr.ph351.i

.lr.ph342.i:                                      ; preds = %.lr.ph342.i.preheader, %.lr.ph342.i
  %.1206340.i = phi i32 [ %i.vo, %.lr.ph342.i ], [ %.1206340.i.ph, %.lr.ph342.i.preheader ]
  %.1208339.i = phi ptr [ %i.vn, %.lr.ph342.i ], [ %.1208339.i.ph, %.lr.ph342.i.preheader ] ; 3 uses
  %.1211338.i = phi ptr [ %i.vm, %.lr.ph342.i ], [ %.1211338.i.ph, %.lr.ph342.i.preheader ] ; 3 uses
  %.13337.i = phi ptr [ %i.vl, %.lr.ph342.i ], [ %.13337.i.ph, %.lr.ph342.i.preheader ] ; 5 uses
  %i.vc = load i8, ptr %.1211338.i, align 1, !tbaa !17
  store i8 %i.vc, ptr %.13337.i, align 1, !tbaa !17
  %i.vd = getelementptr inbounds nuw i8, ptr %.1211338.i, i64 1
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !17
  %i.vf = getelementptr inbounds nuw i8, ptr %.13337.i, i64 1
  store i8 %i.ve, ptr %i.vf, align 1, !tbaa !17
  %i.vg = load i8, ptr %.1208339.i, align 1, !tbaa !17
  %i.vh = getelementptr inbounds nuw i8, ptr %.13337.i, i64 2
  store i8 %i.vg, ptr %i.vh, align 1, !tbaa !17
  %i.vi = getelementptr inbounds nuw i8, ptr %.1208339.i, i64 1
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !17
  %i.vk = getelementptr inbounds nuw i8, ptr %.13337.i, i64 3
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !17
  %i.vl = getelementptr inbounds nuw i8, ptr %.13337.i, i64 4 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.1211338.i, i64 2 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.1208339.i, i64 2 ; 2 uses
  %i.vo = add nuw nsw i32 %.1206340.i, 2          ; 3 uses
  %i.vp = or disjoint i32 %i.vo, 1
  %i.vq = icmp slt i32 %i.vp, %5
  br i1 %i.vq, label %.lr.ph342.i, label %.preheader261.i, !llvm.loop !82

.lr.ph351.i:                                      ; preds = %.lr.ph351.i.prol.loopexit, %.lr.ph351.i
  %.2350.i = phi i32 [ %i.wp, %.lr.ph351.i ], [ %.2350.i.unr, %.lr.ph351.i.prol.loopexit ]
  %.2209349.i = phi ptr [ %i.wo, %.lr.ph351.i ], [ %.2209349.i.unr, %.lr.ph351.i.prol.loopexit ] ; 5 uses
  %.2212348.i = phi ptr [ %i.wn, %.lr.ph351.i ], [ %.2212348.i.unr, %.lr.ph351.i.prol.loopexit ] ; 5 uses
  %.14347.i = phi ptr [ %i.wm, %.lr.ph351.i ], [ %.14347.i.unr, %.lr.ph351.i.prol.loopexit ] ; 9 uses
  %i.vr = load i8, ptr %.2212348.i, align 1, !tbaa !17
  store i8 %i.vr, ptr %.14347.i, align 1, !tbaa !17
  %i.vs = load i8, ptr %.2209349.i, align 1, !tbaa !17
  %i.vt = getelementptr inbounds nuw i8, ptr %.14347.i, i64 1
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !17
  %i.vu = getelementptr inbounds nuw i8, ptr %.14347.i, i64 2
  %i.vv = getelementptr inbounds nuw i8, ptr %.2212348.i, i64 1
  %i.vw = getelementptr inbounds nuw i8, ptr %.2209349.i, i64 1
  %i.vx = load i8, ptr %i.vv, align 1, !tbaa !17
  store i8 %i.vx, ptr %i.vu, align 1, !tbaa !17
  %i.vy = load i8, ptr %i.vw, align 1, !tbaa !17
  %i.vz = getelementptr inbounds nuw i8, ptr %.14347.i, i64 3
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !17
  %i.wa = getelementptr inbounds nuw i8, ptr %.14347.i, i64 4
  %i.wb = getelementptr inbounds nuw i8, ptr %.2212348.i, i64 2
  %i.wc = getelementptr inbounds nuw i8, ptr %.2209349.i, i64 2
  %i.wd = load i8, ptr %i.wb, align 1, !tbaa !17
  store i8 %i.wd, ptr %i.wa, align 1, !tbaa !17
  %i.we = load i8, ptr %i.wc, align 1, !tbaa !17
  %i.wf = getelementptr inbounds nuw i8, ptr %.14347.i, i64 5
  store i8 %i.we, ptr %i.wf, align 1, !tbaa !17
  %i.wg = getelementptr inbounds nuw i8, ptr %.14347.i, i64 6
  %i.wh = getelementptr inbounds nuw i8, ptr %.2212348.i, i64 3
  %i.wi = getelementptr inbounds nuw i8, ptr %.2209349.i, i64 3
  %i.wj = load i8, ptr %i.wh, align 1, !tbaa !17
  store i8 %i.wj, ptr %i.wg, align 1, !tbaa !17
  %i.wk = load i8, ptr %i.wi, align 1, !tbaa !17
  %i.wl = getelementptr inbounds nuw i8, ptr %.14347.i, i64 7
  store i8 %i.wk, ptr %i.wl, align 1, !tbaa !17
  %i.wm = getelementptr inbounds nuw i8, ptr %.14347.i, i64 8 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.2212348.i, i64 4
  %i.wo = getelementptr inbounds nuw i8, ptr %.2209349.i, i64 4
  %i.wp = add nuw nsw i32 %.2350.i, 4             ; 2 uses
  %exitcond420.not.i.3 = icmp eq i32 %i.wp, %5
  br i1 %exitcond420.not.i.3, label %._crit_edge352.i, label %.lr.ph351.i, !llvm.loop !83

._crit_edge352.i:                                 ; preds = %.lr.ph351.i.prol.loopexit, %.lr.ph351.i, %middle.block, %vec.epilog.middle.block, %.preheader261.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader261.i ], [ %i.up, %vec.epilog.middle.block ], [ %i.uh, %middle.block ], [ %.lcssa387.unr, %.lr.ph351.i.prol.loopexit ], [ %i.wm, %.lr.ph351.i ] ; 2 uses
  %indvars.iv.next422.i = add nuw nsw i64 %indvars.iv421.i, 2 ; 3 uses
  %i.wq = icmp slt i64 %indvars.iv.next422.i, %invariant.op506.i
  br i1 %i.wq, label %bb.f, label %.preheader.loopexit.i, !llvm.loop !84

._crit_edge365.i:                                 ; preds = %._crit_edge365.i.preheader, %._crit_edge375.i.loopexit
  %indvars.iv425.i = phi i64 [ %indvars.iv.next426.i, %._crit_edge375.i.loopexit ], [ %i.jc, %._crit_edge365.i.preheader ] ; 2 uses
  %.15378.i = phi ptr [ %.lcssa373, %._crit_edge375.i.loopexit ], [ %.10.lcssa.i, %._crit_edge365.i.preheader ] ; 4 uses
  %i.wr = load ptr, ptr %0, align 8, !tbaa !9
  %i.ws = add nsw i64 %indvars.iv425.i, %i.jd
  %i.wt = load i32, ptr %i.ix, align 4, !tbaa !15
  %i.wu = sext i32 %i.wt to i64
  %i.wv = mul nsw i64 %i.ws, %i.wu
  %i.ww = load i64, ptr %i.iy, align 8, !tbaa !16
  %i.wx = mul i64 %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wx
  %i.wz = getelementptr inbounds i8, ptr %i.wy, i64 %i.iz ; 3 uses
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !17
  store i8 %i.xa, ptr %.15378.i, align 1, !tbaa !17
  %i.xb = getelementptr inbounds nuw i8, ptr %.15378.i, i64 1 ; 2 uses
  br i1 %exitcond424.not.i, label %._crit_edge375.i.loopexit, label %.lr.ph374.i.1

.lr.ph374.i.1:                                    ; preds = %._crit_edge365.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 1
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !17
  store i8 %i.xd, ptr %i.xb, align 1, !tbaa !17
  %i.xe = getelementptr inbounds nuw i8, ptr %.15378.i, i64 2 ; 2 uses
  br i1 %exitcond424.not.i.1, label %._crit_edge375.i.loopexit, label %.lr.ph374.i.2

.lr.ph374.i.2:                                    ; preds = %.lr.ph374.i.1
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wz, i64 2
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !17
  store i8 %i.xg, ptr %i.xe, align 1, !tbaa !17
  %i.xh = getelementptr inbounds nuw i8, ptr %.15378.i, i64 3
  br label %._crit_edge375.i.loopexit

._crit_edge375.i.loopexit:                        ; preds = %.lr.ph374.i.2, %.lr.ph374.i.1, %._crit_edge365.i
  %.lcssa373 = phi ptr [ %i.xb, %._crit_edge365.i ], [ %i.xe, %.lr.ph374.i.1 ], [ %i.xh, %.lr.ph374.i.2 ]
  %indvars.iv.next426.i = add nsw i64 %indvars.iv425.i, 1 ; 2 uses
  %exitcond428.not.i = icmp eq i64 %indvars.iv.next426.i, %wide.trip.count.i
  br i1 %exitcond428.not.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %._crit_edge365.i, !llvm.loop !49

_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge375.i.loopexit, %._crit_edge375.i.us, %.lr.ph379.i.split, %bb.b, %.preheader.i
  ret void
}

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #1

declare void @_ZN4ncnn28pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32>, <16 x i8>, <16 x i8>) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn34transpose_pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn38transpose_pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15   ; 16 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.e = icmp sgt i32 %3, 7
  br i1 %i.e, label %.lr.ph323.i, label %.preheader297.i

.lr.ph323.i:                                      ; preds = %bb.c
  %i.f = sext i32 %4 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp sgt i32 %5, 3
  %i.i = sext i32 %i.c to i64                     ; 11 uses
  %i.j = shl nsw i32 %i.c, 1
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = mul nsw i32 %i.c, 3
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i32 %i.c, 2
  %i.o = sext i32 %i.n to i64
  %i.p = and i32 %5, -4
  %i.q = zext nneg i32 %3 to i64
  %i.r = sext i32 %2 to i64
  br label %bb.d

.preheader297.loopexit.i:                         ; preds = %._crit_edge318.i
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader297.i

.preheader297.i:                                  ; preds = %.preheader297.loopexit.i, %bb.c
  %.0261.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.s, %.preheader297.loopexit.i ] ; 3 uses
  %.0258.lcssa.i = phi ptr [ %i.d, %bb.c ], [ %.4.lcssa.i, %.preheader297.loopexit.i ] ; 2 uses
  %i.t = or disjoint i32 %.0261.lcssa.i, 3
  %i.u = icmp slt i32 %i.t, %3
  br i1 %i.u, label %.lr.ph352.i, label %.preheader295.i

.lr.ph352.i:                                      ; preds = %.preheader297.i
  %i.v = sext i32 %4 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.z = mul <4 x i32> %i.y, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.aa = icmp sgt i32 %5, 3
  %i.ab = shl nsw i32 %i.c, 2
  %i.ac = sext i32 %i.ab to i64                   ; 5 uses
  %i.ad = sext i32 %i.c to i64                    ; 4 uses
  %i.ae = shl nsw i32 %i.c, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = and i32 %5, -4
  %i.ah = zext nneg i32 %.0261.lcssa.i to i64
  %i.ai = sext i32 %3 to i64
  %i.aj = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.ai, -3
  %i.ak = add i32 %5, -4                          ; 2 uses
  %i.al = lshr i32 %i.ak, 2
  %i.am = add nuw nsw i32 %i.al, 1                ; 2 uses
  %xtraiter143 = and i32 %i.am, 3                 ; 3 uses
  %i.an = icmp ult i32 %i.ak, 12
  %unroll_iter = and i32 %i.am, 2147483644
  %lcmp.mod144.not = icmp eq i32 %xtraiter143, 0
  %lcmp.mod149 = icmp ne i32 %xtraiter143, 0
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge318.i, %.lr.ph323.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph323.i ], [ %indvars.iv.next.i, %._crit_edge318.i ] ; 2 uses
  %.0258321.i = phi ptr [ %i.d, %.lr.ph323.i ], [ %.4.lcssa.i, %._crit_edge318.i ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !9
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !15
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, %i.f
  %i.as = load i64, ptr %i.g, align 8, !tbaa !16
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.r   ; 2 uses
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.1259302.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.0258321.i, %bb.d ] ; 3 uses
  %.0265301.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.aw, %bb.d ] ; 5 uses
  %.0268300.i = phi i32 [ %i.bt, %.lr.ph.i ], [ 0, %bb.d ]
  %i.ax = phi <8 x i32> [ %i.bq, %.lr.ph.i ], [ zeroinitializer, %bb.d ]
  %i.ay = load i64, ptr %.0265301.i, align 1, !tbaa !17
  %i.az = insertelement <2 x i64> poison, i64 %i.ay, i64 0
  %i.ba = getelementptr inbounds i8, ptr %.0265301.i, i64 %i.i
  %i.bb = load i64, ptr %i.ba, align 1, !tbaa !17
  %i.bc = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %i.bd = getelementptr inbounds i8, ptr %.0265301.i, i64 %i.k
  %i.be = load i64, ptr %i.bd, align 1, !tbaa !17
  %i.bf = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %i.bg = getelementptr inbounds i8, ptr %.0265301.i, i64 %i.m
  %i.bh = load i64, ptr %i.bg, align 1, !tbaa !17
  %i.bi = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %i.bj = bitcast <2 x i64> %i.az to <16 x i8>
  %i.bk = bitcast <2 x i64> %i.bc to <16 x i8>
  %i.bl = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bm = bitcast <2 x i64> %i.bf to <16 x i8>
  %i.bn = bitcast <2 x i64> %i.bi to <16 x i8>
  %i.bo = shufflevector <16 x i8> %i.bm, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bp = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bo, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ax, <32 x i8> splat (i8 127), <32 x i8> %i.bp) ; 2 uses
  store <32 x i8> %i.bp, ptr %.1259302.i, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.1259302.i, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.0265301.i, i64 %i.o ; 2 uses
  %i.bt = add nuw nsw i32 %.0268300.i, 4          ; 2 uses
  %i.bu = or disjoint i32 %i.bt, 3
  %i.bv = icmp slt i32 %i.bu, %5
  br i1 %i.bv, label %.lr.ph.i, label %bb.e, !llvm.loop !85

bb.e:                                             ; preds = %.lr.ph.i
  store <8 x i32> %i.bq, ptr %i.br, align 1, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.1259302.i, i64 64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %.0265.lcssa467.i = phi ptr [ %i.bs, %bb.e ], [ %i.aw, %bb.d ] ; 2 uses
  %.0268.lcssa465.i = phi i32 [ %i.p, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %.2260.i = phi ptr [ %i.bw, %bb.e ], [ %.0258321.i, %bb.d ] ; 2 uses
  %i.bx = or disjoint i32 %.0268.lcssa465.i, 1
  %i.by = icmp slt i32 %i.bx, %5
  br i1 %i.by, label %.lr.ph310.i, label %.preheader298.i

.preheader298.i:                                  ; preds = %.lr.ph310.i, %._crit_edge.i
  %.1269.lcssa.i = phi i32 [ %.0268.lcssa465.i, %._crit_edge.i ], [ %i.cr, %.lr.ph310.i ] ; 5 uses
  %.1266.lcssa.i = phi ptr [ %.0265.lcssa467.i, %._crit_edge.i ], [ %i.cq, %.lr.ph310.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.2260.i, %._crit_edge.i ], [ %i.cp, %.lr.ph310.i ] ; 3 uses
  %i.bz = icmp slt i32 %.1269.lcssa.i, %5
  br i1 %i.bz, label %.lr.ph317.i.preheader, label %._crit_edge318.i

.lr.ph317.i.preheader:                            ; preds = %.preheader298.i
  %i.ca = sub i32 %5, %.1269.lcssa.i
  %xtraiter = and i32 %i.ca, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph317.i.prol.loopexit, label %.lr.ph317.i.prol

.lr.ph317.i.prol:                                 ; preds = %.lr.ph317.i.preheader, %.lr.ph317.i.prol
  %.4316.i.prol = phi ptr [ %i.cc, %.lr.ph317.i.prol ], [ %.3.lcssa.i, %.lr.ph317.i.preheader ] ; 2 uses
  %.2267315.i.prol = phi ptr [ %i.cd, %.lr.ph317.i.prol ], [ %.1266.lcssa.i, %.lr.ph317.i.preheader ] ; 2 uses
  %.2270314.i.prol = phi i32 [ %i.ce, %.lr.ph317.i.prol ], [ %.1269.lcssa.i, %.lr.ph317.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph317.i.prol ], [ 0, %.lr.ph317.i.preheader ]
  %i.cb = load i64, ptr %.2267315.i.prol, align 1, !tbaa !17
  store i64 %i.cb, ptr %.4316.i.prol, align 1, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.4316.i.prol, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %.2267315.i.prol, i64 %i.i ; 2 uses
  %i.ce = add nuw nsw i32 %.2270314.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph317.i.prol.loopexit, label %.lr.ph317.i.prol, !llvm.loop !86

.lr.ph317.i.prol.loopexit:                        ; preds = %.lr.ph317.i.prol, %.lr.ph317.i.preheader
  %.lcssa142.unr = phi ptr [ poison, %.lr.ph317.i.preheader ], [ %i.cc, %.lr.ph317.i.prol ]
  %.4316.i.unr = phi ptr [ %.3.lcssa.i, %.lr.ph317.i.preheader ], [ %i.cc, %.lr.ph317.i.prol ]
  %.2267315.i.unr = phi ptr [ %.1266.lcssa.i, %.lr.ph317.i.preheader ], [ %i.cd, %.lr.ph317.i.prol ]
  %.2270314.i.unr = phi i32 [ %.1269.lcssa.i, %.lr.ph317.i.preheader ], [ %i.ce, %.lr.ph317.i.prol ]
  %i.cf = sub i32 %.1269.lcssa.i, %5
  %i.cg = icmp ugt i32 %i.cf, -8
  br i1 %i.cg, label %._crit_edge318.i, label %.lr.ph317.i

.lr.ph310.i:                                      ; preds = %._crit_edge.i, %.lr.ph310.i
  %.3308.i = phi ptr [ %i.cp, %.lr.ph310.i ], [ %.2260.i, %._crit_edge.i ] ; 2 uses
  %.1266307.i = phi ptr [ %i.cq, %.lr.ph310.i ], [ %.0265.lcssa467.i, %._crit_edge.i ] ; 3 uses
  %.1269306.i = phi i32 [ %i.cr, %.lr.ph310.i ], [ %.0268.lcssa465.i, %._crit_edge.i ]
  %i.ch = load i64, ptr %.1266307.i, align 1, !tbaa !17
  %i.ci = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %i.cj = getelementptr inbounds i8, ptr %.1266307.i, i64 %i.i
  %i.ck = load i64, ptr %i.cj, align 1, !tbaa !17
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.ci to <16 x i8>
end_hunk_1
begin_hunk_2_@_ZN4ncnn34transpose_pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  %.2254346.i = phi i32 [ %i.iu, %.lr.ph347.i ], [ %.2254346.i.unr, %.lr.ph347.i.prol.loopexit ]
  %.2257345.i = phi ptr [ %i.it, %.lr.ph347.i ], [ %.2257345.i.unr, %.lr.ph347.i.prol.loopexit ] ; 5 uses
  %.9344.i = phi ptr [ %i.is, %.lr.ph347.i ], [ %.9344.i.unr, %.lr.ph347.i.prol.loopexit ] ; 9 uses
  %i.hw = load i8, ptr %.2257345.i, align 1, !tbaa !17
  store i8 %i.hw, ptr %.9344.i, align 1, !tbaa !17
  %i.hx = getelementptr inbounds nuw i8, ptr %.2257345.i, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !17
  %i.hz = getelementptr inbounds nuw i8, ptr %.9344.i, i64 1
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !17
  %i.ia = getelementptr inbounds nuw i8, ptr %.2257345.i, i64 2
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !17
  %i.ic = getelementptr inbounds nuw i8, ptr %.9344.i, i64 2
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %.2257345.i, i64 3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !17
  %i.if = getelementptr inbounds nuw i8, ptr %.9344.i, i64 3
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !17
  %i.ig = getelementptr inbounds nuw i8, ptr %.9344.i, i64 4
  %i.ih = getelementptr inbounds i8, ptr %.2257345.i, i64 %i.ad ; 5 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !17
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !17
  %i.il = getelementptr inbounds nuw i8, ptr %.9344.i, i64 5
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !17
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.in = load i8, ptr %i.im, align 1, !tbaa !17
  %i.io = getelementptr inbounds nuw i8, ptr %.9344.i, i64 6
  store i8 %i.in, ptr %i.io, align 1, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 3
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !17
  %i.ir = getelementptr inbounds nuw i8, ptr %.9344.i, i64 7
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %.9344.i, i64 8 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.ih, i64 %i.ad
  %i.iu = add nuw nsw i32 %.2254346.i, 2          ; 2 uses
  %exitcond442.not.i.1 = icmp eq i32 %i.iu, %5
  br i1 %exitcond442.not.i.1, label %._crit_edge348.i, label %.lr.ph347.i, !llvm.loop !93

._crit_edge348.i:                                 ; preds = %.lr.ph347.i.prol.loopexit, %.lr.ph347.i, %.preheader296.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader296.i ], [ %.lcssa135.unr, %.lr.ph347.i.prol.loopexit ], [ %i.is, %.lr.ph347.i ] ; 2 uses
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 4 ; 3 uses
  %i.iv = icmp slt i64 %indvars.iv.next444.i, %invariant.op.i
  br i1 %i.iv, label %bb.f, label %.preheader295.loopexit.i, !llvm.loop !94

.preheader.loopexit.i:                            ; preds = %._crit_edge380.i
  %i.iw = trunc nsw i64 %indvars.iv.next448.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader295.i
  %.2263.lcssa.i = phi i32 [ %.1262.lcssa.i, %.preheader295.i ], [ %i.iw, %.preheader.loopexit.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader295.i ], [ %.14.lcssa.i, %.preheader.loopexit.i ] ; 2 uses
  %i.ix = icmp slt i32 %.2263.lcssa.i, %3
  br i1 %i.ix, label %.lr.ph407.i, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph407.i:                                      ; preds = %.preheader.i
  %i.iy = sext i32 %4 to i64                      ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ja = icmp sgt i32 %5, 3
  %i.jb = sext i32 %i.c to i64                    ; 12 uses
  %i.jc = shl nsw i32 %i.c, 1
  %i.jd = sext i32 %i.jc to i64
  %i.je = mul nsw i32 %i.c, 3
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i32 %i.c, 2
  %i.jh = sext i32 %i.jg to i64
  %i.ji = and i32 %5, -4                          ; 4 uses
  %i.jj = sext i32 %.2263.lcssa.i to i64          ; 2 uses
  %i.jk = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  br i1 %i.ja, label %.lr.ph407.i.split.us, label %.lr.ph407.i.split

.lr.ph407.i.split.us:                             ; preds = %.lr.ph407.i
  %.not = icmp eq i32 %i.ji, %5
  %i.jl = and i32 %5, 3                           ; 2 uses
  %lcmp.mod157.not = icmp eq i32 %i.jl, 0
  %i.jm = sub nsw i32 %i.ji, %5
  %i.jn = icmp ugt i32 %i.jm, -8
  br label %.lr.ph392.i.preheader.us

.lr.ph392.i.preheader.us:                         ; preds = %._crit_edge403.i.us, %.lr.ph407.i.split.us
  %indvars.iv451.i.us = phi i64 [ %i.jj, %.lr.ph407.i.split.us ], [ %indvars.iv.next452.i.us, %._crit_edge403.i.us ] ; 2 uses
  %.15406.i.us = phi ptr [ %.10.lcssa.i, %.lr.ph407.i.split.us ], [ %.18.lcssa.i.us, %._crit_edge403.i.us ]
  %i.jo = load ptr, ptr %0, align 8, !tbaa !9
  %i.jp = load i32, ptr %i.b, align 4, !tbaa !15
  %i.jq = sext i32 %i.jp to i64
  %i.jr = mul nsw i64 %i.jq, %i.iy
  %i.js = load i64, ptr %i.iz, align 8, !tbaa !16
  %i.jt = mul i64 %i.jr, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.ju, i64 %indvars.iv451.i.us
  %i.jw = getelementptr i8, ptr %i.jv, i64 %i.jk
  br label %.lr.ph392.i.us

.lr.ph392.i.us:                                   ; preds = %.lr.ph392.i.preheader.us, %.lr.ph392.i.us
  %.0390.i.us = phi i32 [ %i.ko, %.lr.ph392.i.us ], [ 0, %.lr.ph392.i.preheader.us ]
  %.0242389.i.us = phi i32 [ %i.kr, %.lr.ph392.i.us ], [ 0, %.lr.ph392.i.preheader.us ]
  %.0243388.i.us = phi ptr [ %i.kq, %.lr.ph392.i.us ], [ %i.jw, %.lr.ph392.i.preheader.us ] ; 5 uses
  %.16387.i.us = phi ptr [ %i.kp, %.lr.ph392.i.us ], [ %.15406.i.us, %.lr.ph392.i.preheader.us ] ; 6 uses
  %i.jx = load i8, ptr %.0243388.i.us, align 1, !tbaa !17 ; 2 uses
  store i8 %i.jx, ptr %.16387.i.us, align 1, !tbaa !17
  %i.jy = getelementptr inbounds i8, ptr %.0243388.i.us, i64 %i.jb
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !17  ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.16387.i.us, i64 1
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !17
  %i.kb = getelementptr inbounds i8, ptr %.0243388.i.us, i64 %i.jd
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !17  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.16387.i.us, i64 2
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !17
  %i.ke = getelementptr inbounds i8, ptr %.0243388.i.us, i64 %i.jf
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !17  ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.16387.i.us, i64 3
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !17
  %i.kh = sext i8 %i.jx to i32
  %i.ki = add nsw i32 %.0390.i.us, %i.kh
  %i.kj = sext i8 %i.jz to i32
  %i.kk = add nsw i32 %i.ki, %i.kj
  %i.kl = sext i8 %i.kc to i32
  %i.km = add nsw i32 %i.kk, %i.kl
  %i.kn = sext i8 %i.kf to i32
  %i.ko = add nsw i32 %i.km, %i.kn                ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.16387.i.us, i64 4 ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %.0243388.i.us, i64 %i.jh ; 3 uses
  %i.kr = add nuw nsw i32 %.0242389.i.us, 4       ; 2 uses
  %i.ks = or disjoint i32 %i.kr, 3
  %i.kt = icmp slt i32 %i.ks, %5
  br i1 %i.kt, label %.lr.ph392.i.us, label %._crit_edge393.i.us, !llvm.loop !95

._crit_edge393.i.us:                              ; preds = %.lr.ph392.i.us
  %i.ku = mul nsw i32 %i.ko, 127
  store i32 %i.ku, ptr %i.kp, align 4, !tbaa !43
  %i.kv = getelementptr inbounds nuw i8, ptr %.16387.i.us, i64 8 ; 3 uses
  br i1 %.not, label %._crit_edge403.i.us, label %.lr.ph402.i.us.preheader

.lr.ph402.i.us.preheader:                         ; preds = %._crit_edge393.i.us
  br i1 %lcmp.mod157.not, label %.lr.ph402.i.us.prol.loopexit, label %.lr.ph402.i.us.prol

.lr.ph402.i.us.prol:                              ; preds = %.lr.ph402.i.us.preheader, %.lr.ph402.i.us.prol
  %.1400.i.us.prol = phi i32 [ %i.kz, %.lr.ph402.i.us.prol ], [ %i.ji, %.lr.ph402.i.us.preheader ]
  %.1244399.i.us.prol = phi ptr [ %i.ky, %.lr.ph402.i.us.prol ], [ %i.kq, %.lr.ph402.i.us.preheader ] ; 2 uses
  %.18398.i.us.prol = phi ptr [ %i.kx, %.lr.ph402.i.us.prol ], [ %i.kv, %.lr.ph402.i.us.preheader ] ; 2 uses
  %prol.iter158 = phi i32 [ %prol.iter158.next, %.lr.ph402.i.us.prol ], [ 0, %.lr.ph402.i.us.preheader ]
  %i.kw = load i8, ptr %.1244399.i.us.prol, align 1, !tbaa !17
  store i8 %i.kw, ptr %.18398.i.us.prol, align 1, !tbaa !17
  %i.kx = getelementptr inbounds nuw i8, ptr %.18398.i.us.prol, i64 1 ; 3 uses
  %i.ky = getelementptr inbounds i8, ptr %.1244399.i.us.prol, i64 %i.jb ; 2 uses
  %i.kz = add nuw nsw i32 %.1400.i.us.prol, 1     ; 2 uses
  %prol.iter158.next = add i32 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i32 %prol.iter158.next, %i.jl
  br i1 %prol.iter158.cmp.not, label %.lr.ph402.i.us.prol.loopexit, label %.lr.ph402.i.us.prol, !llvm.loop !96

.lr.ph402.i.us.prol.loopexit:                     ; preds = %.lr.ph402.i.us.prol, %.lr.ph402.i.us.preheader
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph402.i.us.preheader ], [ %i.kx, %.lr.ph402.i.us.prol ]
  %.1400.i.us.unr = phi i32 [ %i.ji, %.lr.ph402.i.us.preheader ], [ %i.kz, %.lr.ph402.i.us.prol ]
  %.1244399.i.us.unr = phi ptr [ %i.kq, %.lr.ph402.i.us.preheader ], [ %i.ky, %.lr.ph402.i.us.prol ]
  %.18398.i.us.unr = phi ptr [ %i.kv, %.lr.ph402.i.us.preheader ], [ %i.kx, %.lr.ph402.i.us.prol ]
  br i1 %i.jn, label %._crit_edge403.i.us, label %.lr.ph402.i.us

.lr.ph402.i.us:                                   ; preds = %.lr.ph402.i.us.prol.loopexit, %.lr.ph402.i.us
  %.1400.i.us = phi i32 [ %i.ly, %.lr.ph402.i.us ], [ %.1400.i.us.unr, %.lr.ph402.i.us.prol.loopexit ]
  %.1244399.i.us = phi ptr [ %i.lx, %.lr.ph402.i.us ], [ %.1244399.i.us.unr, %.lr.ph402.i.us.prol.loopexit ] ; 2 uses
  %.18398.i.us = phi ptr [ %i.lw, %.lr.ph402.i.us ], [ %.18398.i.us.unr, %.lr.ph402.i.us.prol.loopexit ] ; 9 uses
  %i.la = load i8, ptr %.1244399.i.us, align 1, !tbaa !17
  store i8 %i.la, ptr %.18398.i.us, align 1, !tbaa !17
  %i.lb = getelementptr inbounds nuw i8, ptr %.18398.i.us, i64 1
  %i.lc = getelementptr inbounds i8, ptr %.1244399.i.us, i64 %i.jb ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !17
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %.18398.i.us, i64 2
  %i.lf = getelementptr inbounds i8, ptr %i.lc, i64 %i.jb ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !17
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !17
  %i.lh = getelementptr inbounds nuw i8, ptr %.18398.i.us, i64 3
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 %i.jb ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !17
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !17
  %i.lk = getelementptr inbounds nuw i8, ptr %.18398.i.us, i64 4
  %i.ll = getelementptr inbounds i8, ptr %i.li, i64 %i.jb ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !17
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !17
  %i.ln = getelementptr inbounds nuw i8, ptr %.18398.i.us, i64 5
  %i.lo = getelementptr inbounds i8, ptr %i.ll, i64 %i.jb ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !17
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !17
  %i.lq = getelementptr inbounds nuw i8, ptr %.18398.i.us, i64 6
  %i.lr = getelementptr inbounds i8, ptr %i.lo, i64 %i.jb ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !17
  store i8 %i.ls, ptr %i.lq, align 1, !tbaa !17
  %i.lt = getelementptr inbounds nuw i8, ptr %.18398.i.us, i64 7
  %i.lu = getelementptr inbounds i8, ptr %i.lr, i64 %i.jb ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !17
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !17
  %i.lw = getelementptr inbounds nuw i8, ptr %.18398.i.us, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds i8, ptr %i.lu, i64 %i.jb
  %i.ly = add nuw nsw i32 %.1400.i.us, 8          ; 2 uses
  %exitcond450.not.i.us.7 = icmp eq i32 %i.ly, %5
  br i1 %exitcond450.not.i.us.7, label %._crit_edge403.i.us, label %.lr.ph402.i.us, !llvm.loop !97

._crit_edge403.i.us:                              ; preds = %.lr.ph402.i.us.prol.loopexit, %.lr.ph402.i.us, %._crit_edge393.i.us
  %.18.lcssa.i.us = phi ptr [ %i.kv, %._crit_edge393.i.us ], [ %.lcssa118.unr, %.lr.ph402.i.us.prol.loopexit ], [ %i.lw, %.lr.ph402.i.us ]
  %indvars.iv.next452.i.us = add nsw i64 %indvars.iv451.i.us, 1 ; 2 uses
  %exitcond454.not.i.us = icmp eq i64 %indvars.iv.next452.i.us, %wide.trip.count.i
  br i1 %exitcond454.not.i.us, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph392.i.preheader.us, !llvm.loop !98

.lr.ph407.i.split:                                ; preds = %.lr.ph407.i
  %i.lz = icmp sgt i32 %5, 0
  br i1 %i.lz, label %._crit_edge393.i.preheader, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

._crit_edge393.i.preheader:                       ; preds = %.lr.ph407.i.split
  %exitcond450.not.i = icmp eq i32 %5, 1
  %exitcond450.not.i.1 = icmp eq i32 %5, 2
  br label %._crit_edge393.i

bb.g:                                             ; preds = %._crit_edge380.i, %.lr.ph384.i
  %indvars.iv447.i = phi i64 [ %i.ej, %.lr.ph384.i ], [ %indvars.iv.next448.i, %._crit_edge380.i ] ; 2 uses
  %.10383.i = phi ptr [ %.5.lcssa.i, %.lr.ph384.i ], [ %.14.lcssa.i, %._crit_edge380.i ] ; 2 uses
  %i.ma = load ptr, ptr %0, align 8, !tbaa !9
  %i.mb = load i32, ptr %i.b, align 4, !tbaa !15
  %i.mc = sext i32 %i.mb to i64
  %i.md = mul nsw i64 %i.mc, %i.dy
  %i.me = load i64, ptr %i.dz, align 8, !tbaa !16
  %i.mf = mul i64 %i.md, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 %indvars.iv447.i
  %i.mi = getelementptr i8, ptr %i.mh, i64 %i.el  ; 2 uses
  br i1 %i.ea, label %.lr.ph361.i, label %._crit_edge362.i

.lr.ph361.i:                                      ; preds = %bb.g, %.lr.ph361.i
  %.0245359.i = phi i32 [ %i.nu, %.lr.ph361.i ], [ 0, %bb.g ]
  %.0246358.i = phi i32 [ %i.nm, %.lr.ph361.i ], [ 0, %bb.g ]
  %.0247357.i = phi i32 [ %i.nx, %.lr.ph361.i ], [ 0, %bb.g ]
  %.0249356.i = phi ptr [ %i.nw, %.lr.ph361.i ], [ %i.mi, %bb.g ] ; 6 uses
  %.11355.i = phi ptr [ %i.nv, %.lr.ph361.i ], [ %.10383.i, %bb.g ] ; 11 uses
  %i.mj = load i8, ptr %.0249356.i, align 1, !tbaa !17 ; 2 uses
  store i8 %i.mj, ptr %.11355.i, align 1, !tbaa !17
  %i.mk = getelementptr inbounds i8, ptr %.0249356.i, i64 %i.eb ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !17  ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.11355.i, i64 1
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !17
  %i.mn = getelementptr inbounds i8, ptr %.0249356.i, i64 %i.ed ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !17  ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.11355.i, i64 2
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !17
  %i.mq = getelementptr inbounds i8, ptr %.0249356.i, i64 %i.ef ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !17  ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.11355.i, i64 3
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !17
  %i.mt = getelementptr inbounds nuw i8, ptr %.0249356.i, i64 1
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !17  ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.11355.i, i64 4
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !17
  %i.mw = getelementptr i8, ptr %i.mk, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !17  ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.11355.i, i64 5
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !17
  %i.mz = getelementptr i8, ptr %i.mn, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !17  ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.11355.i, i64 6
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !17
  %i.nc = getelementptr i8, ptr %i.mq, i64 1
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !17  ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.11355.i, i64 7
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !17
  %i.nf = sext i8 %i.mj to i32
  %i.ng = add nsw i32 %.0246358.i, %i.nf
  %i.nh = sext i8 %i.ml to i32
  %i.ni = add nsw i32 %i.ng, %i.nh
  %i.nj = sext i8 %i.mo to i32
  %i.nk = add nsw i32 %i.ni, %i.nj
  %i.nl = sext i8 %i.mr to i32
  %i.nm = add nsw i32 %i.nk, %i.nl                ; 2 uses
  %i.nn = sext i8 %i.mu to i32
  %i.no = add nsw i32 %.0245359.i, %i.nn
  %i.np = sext i8 %i.mx to i32
  %i.nq = add nsw i32 %i.no, %i.np
  %i.nr = sext i8 %i.na to i32
  %i.ns = add nsw i32 %i.nq, %i.nr
  %i.nt = sext i8 %i.nd to i32
  %i.nu = add nsw i32 %i.ns, %i.nt                ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.11355.i, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds i8, ptr %.0249356.i, i64 %i.eh ; 2 uses
  %i.nx = add nuw nsw i32 %.0247357.i, 4          ; 2 uses
  %i.ny = or disjoint i32 %i.nx, 3
  %i.nz = icmp slt i32 %i.ny, %5
  br i1 %i.nz, label %.lr.ph361.i, label %bb.h, !llvm.loop !99

bb.h:                                             ; preds = %.lr.ph361.i
  %i.oa = mul nsw i32 %i.nm, 127
  %i.ob = mul nsw i32 %i.nu, 127
  store i32 %i.oa, ptr %i.nv, align 4, !tbaa !43
  %i.oc = getelementptr inbounds nuw i8, ptr %.11355.i, i64 12
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !43
  %i.od = getelementptr inbounds nuw i8, ptr %.11355.i, i64 16
  br label %._crit_edge362.i

._crit_edge362.i:                                 ; preds = %bb.h, %bb.g
  %.0247.lcssa488.i = phi i32 [ %i.ei, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.0249.lcssa486.i = phi ptr [ %i.nw, %bb.h ], [ %i.mi, %bb.g ] ; 2 uses
  %.12.i = phi ptr [ %i.od, %bb.h ], [ %.10383.i, %bb.g ] ; 2 uses
  %i.oe = or disjoint i32 %.0247.lcssa488.i, 1
  %i.of = icmp slt i32 %i.oe, %5
  br i1 %i.of, label %.lr.ph372.i, label %.preheader294.i

.preheader294.i:                                  ; preds = %.lr.ph372.i, %._crit_edge362.i
  %.13.lcssa.i = phi ptr [ %.12.i, %._crit_edge362.i ], [ %i.pb, %.lr.ph372.i ] ; 3 uses
  %.1250.lcssa.i = phi ptr [ %.0249.lcssa486.i, %._crit_edge362.i ], [ %i.pc, %.lr.ph372.i ] ; 2 uses
  %.1248.lcssa.i = phi i32 [ %.0247.lcssa488.i, %._crit_edge362.i ], [ %i.pd, %.lr.ph372.i ] ; 5 uses
  %i.og = icmp slt i32 %.1248.lcssa.i, %5
  br i1 %i.og, label %.lr.ph379.i.preheader, label %._crit_edge380.i

.lr.ph379.i.preheader:                            ; preds = %.preheader294.i
  %i.oh = sub i32 %5, %.1248.lcssa.i
  %xtraiter153 = and i32 %i.oh, 3                 ; 2 uses
  %lcmp.mod154.not = icmp eq i32 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.lr.ph379.i.prol.loopexit, label %.lr.ph379.i.prol

.lr.ph379.i.prol:                                 ; preds = %.lr.ph379.i.preheader, %.lr.ph379.i.prol
  %.2378.i.prol = phi i32 [ %i.oo, %.lr.ph379.i.prol ], [ %.1248.lcssa.i, %.lr.ph379.i.preheader ]
  %.2251377.i.prol = phi ptr [ %i.on, %.lr.ph379.i.prol ], [ %.1250.lcssa.i, %.lr.ph379.i.preheader ] ; 3 uses
  %.14376.i.prol = phi ptr [ %i.om, %.lr.ph379.i.prol ], [ %.13.lcssa.i, %.lr.ph379.i.preheader ] ; 3 uses
  %prol.iter155 = phi i32 [ %prol.iter155.next, %.lr.ph379.i.prol ], [ 0, %.lr.ph379.i.preheader ]
  %i.oi = load i8, ptr %.2251377.i.prol, align 1, !tbaa !17
  store i8 %i.oi, ptr %.14376.i.prol, align 1, !tbaa !17
  %i.oj = getelementptr inbounds nuw i8, ptr %.2251377.i.prol, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !17
  %i.ol = getelementptr inbounds nuw i8, ptr %.14376.i.prol, i64 1
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !17
  %i.om = getelementptr inbounds nuw i8, ptr %.14376.i.prol, i64 2 ; 3 uses
  %i.on = getelementptr inbounds i8, ptr %.2251377.i.prol, i64 %i.eb ; 2 uses
  %i.oo = add nuw nsw i32 %.2378.i.prol, 1        ; 2 uses
  %prol.iter155.next = add i32 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i32 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.lr.ph379.i.prol.loopexit, label %.lr.ph379.i.prol, !llvm.loop !100

.lr.ph379.i.prol.loopexit:                        ; preds = %.lr.ph379.i.prol, %.lr.ph379.i.preheader
  %.lcssa128.unr = phi ptr [ poison, %.lr.ph379.i.preheader ], [ %i.om, %.lr.ph379.i.prol ]
  %.2378.i.unr = phi i32 [ %.1248.lcssa.i, %.lr.ph379.i.preheader ], [ %i.oo, %.lr.ph379.i.prol ]
  %.2251377.i.unr = phi ptr [ %.1250.lcssa.i, %.lr.ph379.i.preheader ], [ %i.on, %.lr.ph379.i.prol ]
  %.14376.i.unr = phi ptr [ %.13.lcssa.i, %.lr.ph379.i.preheader ], [ %i.om, %.lr.ph379.i.prol ]
  %i.op = sub i32 %.1248.lcssa.i, %5
  %i.oq = icmp ugt i32 %i.op, -4
  br i1 %i.oq, label %._crit_edge380.i, label %.lr.ph379.i

.lr.ph372.i:                                      ; preds = %._crit_edge362.i, %.lr.ph372.i
  %.1248370.i = phi i32 [ %i.pd, %.lr.ph372.i ], [ %.0247.lcssa488.i, %._crit_edge362.i ]
  %.1250369.i = phi ptr [ %i.pc, %.lr.ph372.i ], [ %.0249.lcssa486.i, %._crit_edge362.i ] ; 4 uses
  %.13368.i = phi ptr [ %i.pb, %.lr.ph372.i ], [ %.12.i, %._crit_edge362.i ] ; 5 uses
  %i.or = load i8, ptr %.1250369.i, align 1, !tbaa !17
  store i8 %i.or, ptr %.13368.i, align 1, !tbaa !17
  %i.os = getelementptr inbounds i8, ptr %.1250369.i, i64 %i.eb ; 2 uses
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !17
  %i.ou = getelementptr inbounds nuw i8, ptr %.13368.i, i64 1
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !17
  %i.ov = getelementptr inbounds nuw i8, ptr %.1250369.i, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !17
  %i.ox = getelementptr inbounds nuw i8, ptr %.13368.i, i64 2
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !17
  %i.oy = getelementptr i8, ptr %i.os, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !17
  %i.pa = getelementptr inbounds nuw i8, ptr %.13368.i, i64 3
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !17
  %i.pb = getelementptr inbounds nuw i8, ptr %.13368.i, i64 4 ; 2 uses
  %i.pc = getelementptr inbounds i8, ptr %.1250369.i, i64 %i.ed ; 2 uses
  %i.pd = add nuw nsw i32 %.1248370.i, 2          ; 3 uses
  %i.pe = or disjoint i32 %i.pd, 1
  %i.pf = icmp slt i32 %i.pe, %5
  br i1 %i.pf, label %.lr.ph372.i, label %.preheader294.i, !llvm.loop !101

.lr.ph379.i:                                      ; preds = %.lr.ph379.i.prol.loopexit, %.lr.ph379.i
  %.2378.i = phi i32 [ %i.qe, %.lr.ph379.i ], [ %.2378.i.unr, %.lr.ph379.i.prol.loopexit ]
  %.2251377.i = phi ptr [ %i.qd, %.lr.ph379.i ], [ %.2251377.i.unr, %.lr.ph379.i.prol.loopexit ] ; 3 uses
  %.14376.i = phi ptr [ %i.qc, %.lr.ph379.i ], [ %.14376.i.unr, %.lr.ph379.i.prol.loopexit ] ; 9 uses
  %i.pg = load i8, ptr %.2251377.i, align 1, !tbaa !17
  store i8 %i.pg, ptr %.14376.i, align 1, !tbaa !17
  %i.ph = getelementptr inbounds nuw i8, ptr %.2251377.i, i64 1
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !17
  %i.pj = getelementptr inbounds nuw i8, ptr %.14376.i, i64 1
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !17
  %i.pk = getelementptr inbounds nuw i8, ptr %.14376.i, i64 2
  %i.pl = getelementptr inbounds i8, ptr %.2251377.i, i64 %i.eb ; 3 uses
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !17
  store i8 %i.pm, ptr %i.pk, align 1, !tbaa !17
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 1
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !17
  %i.pp = getelementptr inbounds nuw i8, ptr %.14376.i, i64 3
  store i8 %i.po, ptr %i.pp, align 1, !tbaa !17
  %i.pq = getelementptr inbounds nuw i8, ptr %.14376.i, i64 4
  %i.pr = getelementptr inbounds i8, ptr %i.pl, i64 %i.eb ; 3 uses
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !17
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !17
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !17
  %i.pv = getelementptr inbounds nuw i8, ptr %.14376.i, i64 5
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !17
  %i.pw = getelementptr inbounds nuw i8, ptr %.14376.i, i64 6
  %i.px = getelementptr inbounds i8, ptr %i.pr, i64 %i.eb ; 3 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !17
  store i8 %i.py, ptr %i.pw, align 1, !tbaa !17
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 1
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !17
  %i.qb = getelementptr inbounds nuw i8, ptr %.14376.i, i64 7
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !17
  %i.qc = getelementptr inbounds nuw i8, ptr %.14376.i, i64 8 ; 2 uses
  %i.qd = getelementptr inbounds i8, ptr %i.px, i64 %i.eb
  %i.qe = add nuw nsw i32 %.2378.i, 4             ; 2 uses
  %exitcond446.not.i.3 = icmp eq i32 %i.qe, %5
  br i1 %exitcond446.not.i.3, label %._crit_edge380.i, label %.lr.ph379.i, !llvm.loop !102

._crit_edge380.i:                                 ; preds = %.lr.ph379.i.prol.loopexit, %.lr.ph379.i, %.preheader294.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader294.i ], [ %.lcssa128.unr, %.lr.ph379.i.prol.loopexit ], [ %i.qc, %.lr.ph379.i ] ; 2 uses
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 2 ; 3 uses
  %i.qf = icmp slt i64 %indvars.iv.next448.i, %invariant.op527.i
  br i1 %i.qf, label %bb.g, label %.preheader.loopexit.i, !llvm.loop !103

._crit_edge393.i:                                 ; preds = %._crit_edge393.i.preheader, %._crit_edge403.i.loopexit
  %indvars.iv451.i = phi i64 [ %indvars.iv.next452.i, %._crit_edge403.i.loopexit ], [ %i.jj, %._crit_edge393.i.preheader ] ; 2 uses
  %.15406.i = phi ptr [ %.lcssa120, %._crit_edge403.i.loopexit ], [ %.10.lcssa.i, %._crit_edge393.i.preheader ] ; 4 uses
  %i.qg = load ptr, ptr %0, align 8, !tbaa !9
  %i.qh = load i32, ptr %i.b, align 4, !tbaa !15
  %i.qi = sext i32 %i.qh to i64
  %i.qj = mul nsw i64 %i.qi, %i.iy
  %i.qk = load i64, ptr %i.iz, align 8, !tbaa !16
  %i.ql = mul i64 %i.qj, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 %indvars.iv451.i
  %i.qo = getelementptr i8, ptr %i.qn, i64 %i.jk  ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !17
  store i8 %i.qp, ptr %.15406.i, align 1, !tbaa !17
  %i.qq = getelementptr inbounds nuw i8, ptr %.15406.i, i64 1 ; 2 uses
  br i1 %exitcond450.not.i, label %._crit_edge403.i.loopexit, label %.lr.ph402.i.1

.lr.ph402.i.1:                                    ; preds = %._crit_edge393.i
  %i.qr = getelementptr inbounds i8, ptr %i.qo, i64 %i.jb ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !17
  store i8 %i.qs, ptr %i.qq, align 1, !tbaa !17
  %i.qt = getelementptr inbounds nuw i8, ptr %.15406.i, i64 2 ; 2 uses
  br i1 %exitcond450.not.i.1, label %._crit_edge403.i.loopexit, label %.lr.ph402.i.2

.lr.ph402.i.2:                                    ; preds = %.lr.ph402.i.1
  %i.qu = getelementptr inbounds i8, ptr %i.qr, i64 %i.jb
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !17
  store i8 %i.qv, ptr %i.qt, align 1, !tbaa !17
  %i.qw = getelementptr inbounds nuw i8, ptr %.15406.i, i64 3
  br label %._crit_edge403.i.loopexit

._crit_edge403.i.loopexit:                        ; preds = %.lr.ph402.i.2, %.lr.ph402.i.1, %._crit_edge393.i
  %.lcssa120 = phi ptr [ %i.qq, %._crit_edge393.i ], [ %i.qt, %.lr.ph402.i.1 ], [ %i.qw, %.lr.ph402.i.2 ]
  %indvars.iv.next452.i = add nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond454.not.i = icmp eq i64 %indvars.iv.next452.i, %wide.trip.count.i
  br i1 %exitcond454.not.i, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %._crit_edge393.i, !llvm.loop !98

_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge403.i.loopexit, %._crit_edge403.i.us, %.lr.ph407.i.split, %bb.b, %.preheader.i
  ret void
}

declare void @_ZN4ncnn38transpose_pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.c = icmp sgt i32 %3, 7
  br i1 %i.c, label %.lr.ph235.i, label %.preheader212.i

.lr.ph235.i:                                      ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sext i32 %4 to i64
  %i.g = icmp sgt i32 %5, 3
  %i.h = and i32 %5, -4                           ; 2 uses
  %i.i = zext nneg i32 %3 to i64
  %i.j = sext i32 %2 to i64
  %i.k = add i32 %5, -4                           ; 2 uses
  %i.l = lshr i32 %i.k, 2
  %i.m = add nuw nsw i32 %i.l, 1                  ; 2 uses
  %xtraiter = and i32 %i.m, 3                     ; 3 uses
  %i.n = icmp ult i32 %i.k, 12
  %unroll_iter = and i32 %i.m, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod384 = icmp ne i32 %xtraiter, 0
  br label %bb.d

.preheader212.loopexit.i:                         ; preds = %._crit_edge.i
  %i.o = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader212.i

.preheader212.i:                                  ; preds = %.preheader212.loopexit.i, %bb.c
  %.0179.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.o, %.preheader212.loopexit.i ] ; 3 uses
  %.0176.lcssa.i = phi ptr [ %i.b, %bb.c ], [ %.3.lcssa.i, %.preheader212.loopexit.i ] ; 2 uses
  %i.p = or disjoint i32 %.0179.lcssa.i, 3
  %i.q = icmp slt i32 %i.p, %3
  br i1 %i.q, label %.lr.ph261.i, label %.preheader209.i

.lr.ph261.i:                                      ; preds = %.preheader212.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = sext i32 %4 to i64
  %i.u = icmp sgt i32 %5, 3
  %i.v = and i32 %5, -4                           ; 2 uses
  %i.w = zext nneg i32 %.0179.lcssa.i to i64
  %i.x = sext i32 %3 to i64
  %i.y = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.x, -3
  %i.z = add i32 %5, -4                           ; 2 uses
  %i.aa = lshr i32 %i.z, 2
  %i.ab = add nuw nsw i32 %i.aa, 1                ; 2 uses
  %xtraiter387 = and i32 %i.ab, 3                 ; 3 uses
  %i.ac = icmp ult i32 %i.z, 12
  %unroll_iter393 = and i32 %i.ab, 2147483644
  %lcmp.mod389.not = icmp eq i32 %xtraiter387, 0
  %lcmp.mod392 = icmp ne i32 %xtraiter387, 0
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph235.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph235.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0176233.i = phi ptr [ %i.b, %.lr.ph235.i ], [ %.3.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ad = add nsw i64 %indvars.iv.i, %i.j
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = load i32, ptr %i.d, align 4, !tbaa !15  ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ad, %i.ag
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !16
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.f ; 3 uses
  %i.am = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %i.an = shufflevector <8 x i32> %i.am, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ao = mul <8 x i32> %i.an, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 11 uses
  br i1 %i.g, label %.lr.ph.i.preheader, label %.preheader214.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader214.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader214.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader214.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.1177217.i.epil.init = phi ptr [ %.0176233.i, %.lr.ph.i.preheader ], [ %i.bo, %.preheader214.i.loopexit.unr-lcssa ]
  %.0183216.i.epil.init = phi ptr [ %i.al, %.lr.ph.i.preheader ], [ %i.bp, %.preheader214.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod384)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.1177217.i.epil = phi ptr [ %i.as, %.lr.ph.i.epil ], [ %.1177217.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0183216.i.epil = phi ptr [ %i.at, %.lr.ph.i.epil ], [ %.0183216.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ap = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0183216.i.epil, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.aq = bitcast <8 x i32> %i.ap to <32 x i8>
  %i.ar = add <32 x i8> %i.aq, splat (i8 127)
  store <32 x i8> %i.ar, ptr %.1177217.i.epil, align 1, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %.1177217.i.epil, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0183216.i.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader214.i, label %.lr.ph.i.epil, !llvm.loop !104

.preheader214.i:                                  ; preds = %.preheader214.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.d
  %.0192.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.h, %.lr.ph.i.epil ], [ %i.h, %.preheader214.i.loopexit.unr-lcssa ] ; 3 uses
  %.0183.lcssa.i = phi ptr [ %i.al, %bb.d ], [ %i.bp, %.preheader214.i.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.i.epil ] ; 2 uses
  %.1177.lcssa.i = phi ptr [ %.0176233.i, %bb.d ], [ %i.bo, %.preheader214.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.i.epil ] ; 2 uses
  %i.au = or disjoint i32 %.0192.lcssa.i, 1
  %i.av = icmp slt i32 %i.au, %5
  br i1 %i.av, label %.lr.ph223.i, label %.preheader213.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1177217.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.0176233.i, %.lr.ph.i.preheader ] ; 5 uses
  %.0183216.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.al, %.lr.ph.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.aw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0183216.i, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.ax = bitcast <8 x i32> %i.aw to <32 x i8>
  %i.ay = add <32 x i8> %i.ax, splat (i8 127)
  store <32 x i8> %i.ay, ptr %.1177217.i, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.1177217.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0183216.i, i64 4
  %i.bb = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.ba, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bc = bitcast <8 x i32> %i.bb to <32 x i8>
  %i.bd = add <32 x i8> %i.bc, splat (i8 127)
  store <32 x i8> %i.bd, ptr %i.az, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.1177217.i, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0183216.i, i64 8
  %i.bg = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bf, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bh = bitcast <8 x i32> %i.bg to <32 x i8>
  %i.bi = add <32 x i8> %i.bh, splat (i8 127)
  store <32 x i8> %i.bi, ptr %i.be, align 1, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.1177217.i, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %.0183216.i, i64 12
  %i.bl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bk, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bm = bitcast <8 x i32> %i.bl to <32 x i8>
  %i.bn = add <32 x i8> %i.bm, splat (i8 127)
  store <32 x i8> %i.bn, ptr %i.bj, align 1, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.1177217.i, i64 128 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0183216.i, i64 16 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader214.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !105

.preheader213.i:                                  ; preds = %.lr.ph223.i, %.preheader214.i
  %.1193.lcssa.i = phi i32 [ %.0192.lcssa.i, %.preheader214.i ], [ %i.cl, %.lr.ph223.i ] ; 5 uses
  %.1184.lcssa.i = phi ptr [ %.0183.lcssa.i, %.preheader214.i ], [ %i.ck, %.lr.ph223.i ] ; 2 uses
  %.2178.lcssa.i = phi ptr [ %.1177.lcssa.i, %.preheader214.i ], [ %i.cj, %.lr.ph223.i ] ; 3 uses
  %i.bq = icmp slt i32 %.1193.lcssa.i, %5
  br i1 %i.bq, label %.lr.ph230.i.preheader, label %._crit_edge.i

.lr.ph230.i.preheader:                            ; preds = %.preheader213.i
  %i.br = sub i32 %5, %.1193.lcssa.i
  %xtraiter385 = and i32 %i.br, 3                 ; 2 uses
  %lcmp.mod386.not = icmp eq i32 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph230.i.prol.loopexit, label %.lr.ph230.i.prol

.lr.ph230.i.prol:                                 ; preds = %.lr.ph230.i.preheader, %.lr.ph230.i.prol
  %.3229.i.prol = phi ptr [ %i.bz, %.lr.ph230.i.prol ], [ %.2178.lcssa.i, %.lr.ph230.i.preheader ] ; 2 uses
  %.2185228.i.prol = phi ptr [ %i.ca, %.lr.ph230.i.prol ], [ %.1184.lcssa.i, %.lr.ph230.i.preheader ] ; 2 uses
  %.2194227.i.prol = phi i32 [ %i.cb, %.lr.ph230.i.prol ], [ %.1193.lcssa.i, %.lr.ph230.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph230.i.prol ], [ 0, %.lr.ph230.i.preheader ]
  %i.bs = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.2185228.i.prol, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bt = bitcast <8 x i32> %i.bs to <32 x i8>
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = bitcast <32 x i8> %i.bu to <8 x i32>
  %i.bw = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bx = bitcast <4 x i32> %i.bw to <2 x i64>
  %i.by = extractelement <2 x i64> %i.bx, i64 0
  store i64 %i.by, ptr %.3229.i.prol, align 1, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.3229.i.prol, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.2185228.i.prol, i64 1 ; 2 uses
  %i.cb = add nuw nsw i32 %.2194227.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter385
  br i1 %prol.iter.cmp.not, label %.lr.ph230.i.prol.loopexit, label %.lr.ph230.i.prol, !llvm.loop !106

.lr.ph230.i.prol.loopexit:                        ; preds = %.lr.ph230.i.prol, %.lr.ph230.i.preheader
  %.lcssa381.unr = phi ptr [ poison, %.lr.ph230.i.preheader ], [ %i.bz, %.lr.ph230.i.prol ]
  %.3229.i.unr = phi ptr [ %.2178.lcssa.i, %.lr.ph230.i.preheader ], [ %i.bz, %.lr.ph230.i.prol ]
  %.2185228.i.unr = phi ptr [ %.1184.lcssa.i, %.lr.ph230.i.preheader ], [ %i.ca, %.lr.ph230.i.prol ]
  %.2194227.i.unr = phi i32 [ %.1193.lcssa.i, %.lr.ph230.i.preheader ], [ %i.cb, %.lr.ph230.i.prol ]
  %i.cc = sub i32 %.1193.lcssa.i, %5
  %i.cd = icmp ugt i32 %i.cc, -4
  br i1 %i.cd, label %._crit_edge.i, label %.lr.ph230.i

.lr.ph223.i:                                      ; preds = %.preheader214.i, %.lr.ph223.i
end_hunk_2
begin_hunk_3_@_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  %i.iq = add nuw nsw i32 %.2188254.i, 4          ; 2 uses
  %exitcond344.not.i.3 = icmp eq i32 %i.iq, %5
  br i1 %exitcond344.not.i.3, label %._crit_edge257.i, label %.lr.ph256.i, !llvm.loop !114

._crit_edge257.i:                                 ; preds = %.lr.ph256.i.prol.loopexit, %.lr.ph256.i, %.preheader210.i
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader210.i ], [ %.lcssa375.unr, %.lr.ph256.i.prol.loopexit ], [ %i.io, %.lr.ph256.i ] ; 2 uses
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 4 ; 3 uses
  %i.ir = icmp slt i64 %indvars.iv.next346.i, %invariant.op.i
  br i1 %i.ir, label %bb.e, label %.preheader209.loopexit.i, !llvm.loop !115

.preheader206.loopexit.i:                         ; preds = %._crit_edge288.i
  %i.is = trunc nsw i64 %indvars.iv.next350.i to i32
  br label %.preheader206.i

.preheader206.i:                                  ; preds = %.preheader206.loopexit.i, %.preheader209.i
  %.2181.lcssa.i = phi i32 [ %.1180.lcssa.i, %.preheader209.i ], [ %i.is, %.preheader206.loopexit.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader209.i ], [ %.11.lcssa.i, %.preheader206.loopexit.i ] ; 2 uses
  %i.it = icmp slt i32 %.2181.lcssa.i, %3
  br i1 %i.it, label %.lr.ph311.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph311.i:                                      ; preds = %.preheader206.i
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iw = sext i32 %4 to i64                      ; 4 uses
  %i.ix = icmp sgt i32 %5, 3
  br i1 %i.ix, label %.lr.ph299.us.preheader.i, label %.lr.ph311.split.i

.lr.ph299.us.preheader.i:                         ; preds = %.lr.ph311.i
  %i.iy = and i32 %5, 2147483644                  ; 7 uses
  %i.iz = sext i32 %.2181.lcssa.i to i64          ; 2 uses
  %i.ja = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count360.i = sext i32 %3 to i64
  %.not = icmp eq i32 %i.iy, %5
  %i.jb = add nsw i64 %i.iz, %i.ja
  %i.jc = or disjoint i32 %i.iy, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 %i.jc)
  %i.jd = xor i32 %i.iy, -1
  %i.je = add nsw i32 %smax, %i.jd                ; 3 uses
  %i.jf = zext i32 %i.je to i64
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 5 uses
  %i.jh = add nsw i32 %5, -4                      ; 4 uses
  %i.ji = and i32 %i.jh, -4
  %i.jj = zext i32 %i.ji to i64                   ; 2 uses
  %i.jk = lshr i32 %i.jh, 2
  %narrow356.a = add nuw nsw i32 %i.jk, 1
  %i.jl = zext nneg i32 %narrow356.a to i64       ; 5 uses
  %min.iters.check312 = icmp ult i32 %i.jh, 12
  %min.iters.check314 = icmp ult i32 %i.jh, 124
  %i.jm = and i64 %i.jl, 28
  %n.vec316 = and i64 %i.jl, 2147483616           ; 5 uses
  %i.jn = trunc nuw nsw i64 %n.vec316 to i32
  %i.jo = shl i32 %i.jn, 2
  %i.jp = shl nuw nsw i64 %n.vec316, 2            ; 2 uses
  %cmp.n329 = icmp eq i64 %n.vec316, %i.jl
  %min.epilog.iters.check336 = icmp eq i64 %i.jm, 0
  %n.vec338 = and i64 %i.jl, 2147483644           ; 4 uses
  %i.jq = trunc nuw nsw i64 %n.vec338 to i32
  %i.jr = shl i32 %i.jq, 2
  %i.js = shl nuw nsw i64 %n.vec338, 2            ; 2 uses
  %cmp.n351 = icmp eq i64 %n.vec338, %i.jl
  %min.iters.check269 = icmp ult i32 %i.je, 7
  %min.iters.check271 = icmp ult i32 %i.je, 127
  %i.jt = and i64 %i.jg, 120
  %n.vec273 = and i64 %i.jg, 8589934464           ; 6 uses
  %i.ju = trunc i64 %n.vec273 to i32
  %i.jv = add i32 %i.iy, %i.ju
  %cmp.n284 = icmp eq i64 %i.jg, %n.vec273
  %min.epilog.iters.check291 = icmp eq i64 %i.jt, 0
  %n.vec293 = and i64 %i.jg, 8589934584           ; 5 uses
  %i.jw = trunc i64 %n.vec293 to i32
  %i.jx = add i32 %i.iy, %i.jw
  %cmp.n301 = icmp eq i64 %i.jg, %n.vec293
  br label %iter.check333

iter.check333:                                    ; preds = %._crit_edge307.us.i, %.lr.ph299.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge307.us.i ], [ 0, %.lr.ph299.us.preheader.i ] ; 2 uses
  %indvars.iv357.i = phi i64 [ %indvars.iv.next358.i, %._crit_edge307.us.i ], [ %i.iz, %.lr.ph299.us.preheader.i ] ; 2 uses
  %.12310.us.i = phi ptr [ %.14.lcssa.us.i, %._crit_edge307.us.i ], [ %.8.lcssa.i, %.lr.ph299.us.preheader.i ] ; 9 uses
  %.12310.us.i268 = ptrtoaddr ptr %.12310.us.i to i64
  %i.jy = add i64 %i.jb, %indvar
  %i.jz = add i64 %indvars.iv357.i, %i.ja
  %i.ka = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.kb = ptrtoaddr ptr %i.ka to i64
  %i.kc = load i32, ptr %i.iu, align 4, !tbaa !15
  %i.kd = sext i32 %i.kc to i64                   ; 2 uses
  %i.ke = mul i64 %i.jz, %i.kd
  %i.kf = load i64, ptr %i.iv, align 8, !tbaa !16 ; 2 uses
  %i.kg = mul i64 %i.ke, %i.kf                    ; 2 uses
  %i.kh = getelementptr i8, ptr %i.ka, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.kh, i64 %i.iw  ; 7 uses
  br i1 %min.iters.check312, label %vec.epilog.scalar.ph334.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %iter.check333
  %i.kj = getelementptr i8, ptr %.12310.us.i, i64 %i.jj
  %scevgep306 = getelementptr i8, ptr %i.kj, i64 4
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.jj
  %i.kl = getelementptr i8, ptr %i.kk, i64 %i.iw
  %scevgep307 = getelementptr i8, ptr %i.kl, i64 4
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.kg
  %bound0309 = icmp ult ptr %.12310.us.i, %scevgep308
  %bound1310 = icmp ult ptr %i.ki, %scevgep306
  %found.conflict311 = and i1 %bound0309, %bound1310
  br i1 %found.conflict311, label %vec.epilog.scalar.ph334.preheader, label %vector.main.loop.iter.check313

vector.main.loop.iter.check313:                   ; preds = %vector.memcheck305
  br i1 %min.iters.check314, label %vec.epilog.ph337, label %vector.ph315

vector.ph315:                                     ; preds = %vector.main.loop.iter.check313
  %i.km = getelementptr i8, ptr %i.ki, i64 %i.jp  ; 2 uses
  %i.kn = getelementptr i8, ptr %.12310.us.i, i64 %i.jp ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next327, %vector.body317 ] ; 2 uses
  %i.ko = shl i64 %index318, 2                    ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.ki, i64 %i.ko
  %next.gep320 = getelementptr i8, ptr %.12310.us.i, i64 %i.ko
  %wide.vec321 = load <128 x i8>, ptr %next.gep319, align 1, !tbaa !17, !alias.scope !116
  %interleaved.vec326 = add <128 x i8> %wide.vec321, splat (i8 127)
  store <128 x i8> %interleaved.vec326, ptr %next.gep320, align 1, !tbaa !17, !alias.scope !119, !noalias !116
  %index.next327 = add nuw i64 %index318, 32      ; 2 uses
  %i.kp = icmp eq i64 %index.next327, %n.vec316
  br i1 %i.kp, label %middle.block328, label %vector.body317, !llvm.loop !121

middle.block328:                                  ; preds = %vector.body317
  br i1 %cmp.n329, label %..preheader_crit_edge.us.i, label %vec.epilog.iter.check335

vec.epilog.iter.check335:                         ; preds = %middle.block328
  br i1 %min.epilog.iters.check336, label %vec.epilog.scalar.ph334.preheader, label %vec.epilog.ph337, !prof !122

vec.epilog.ph337:                                 ; preds = %vector.main.loop.iter.check313, %vec.epilog.iter.check335
  %vec.epilog.resume.val330 = phi i64 [ %n.vec316, %vec.epilog.iter.check335 ], [ 0, %vector.main.loop.iter.check313 ]
  %i.kq = getelementptr i8, ptr %i.ki, i64 %i.js  ; 2 uses
  %i.kr = getelementptr i8, ptr %.12310.us.i, i64 %i.js ; 2 uses
  br label %vec.epilog.vector.body339

vec.epilog.vector.body339:                        ; preds = %vec.epilog.vector.body339, %vec.epilog.ph337
  %index340 = phi i64 [ %vec.epilog.resume.val330, %vec.epilog.ph337 ], [ %index.next349, %vec.epilog.vector.body339 ] ; 2 uses
  %i.ks = shl i64 %index340, 2                    ; 2 uses
  %next.gep341 = getelementptr i8, ptr %i.ki, i64 %i.ks
  %next.gep342 = getelementptr i8, ptr %.12310.us.i, i64 %i.ks
  %wide.vec343 = load <16 x i8>, ptr %next.gep341, align 1, !tbaa !17, !alias.scope !116
  %interleaved.vec348 = add <16 x i8> %wide.vec343, splat (i8 127)
  store <16 x i8> %interleaved.vec348, ptr %next.gep342, align 1, !tbaa !17, !alias.scope !119, !noalias !116
  %index.next349 = add nuw i64 %index340, 4       ; 2 uses
  %i.kt = icmp eq i64 %index.next349, %n.vec338
  br i1 %i.kt, label %vec.epilog.middle.block350, label %vec.epilog.vector.body339, !llvm.loop !123

vec.epilog.middle.block350:                       ; preds = %vec.epilog.vector.body339
  br i1 %cmp.n351, label %..preheader_crit_edge.us.i, label %vec.epilog.scalar.ph334.preheader

vec.epilog.scalar.ph334.preheader:                ; preds = %vector.memcheck305, %iter.check333, %vec.epilog.iter.check335, %vec.epilog.middle.block350
  %.0297.us.i.ph = phi i32 [ 0, %iter.check333 ], [ 0, %vector.memcheck305 ], [ %i.jo, %vec.epilog.iter.check335 ], [ %i.jr, %vec.epilog.middle.block350 ]
  %.0166296.us.i.ph = phi ptr [ %i.ki, %iter.check333 ], [ %i.ki, %vector.memcheck305 ], [ %i.km, %vec.epilog.iter.check335 ], [ %i.kq, %vec.epilog.middle.block350 ]
  %.13295.us.i.ph = phi ptr [ %.12310.us.i, %iter.check333 ], [ %.12310.us.i, %vector.memcheck305 ], [ %i.kn, %vec.epilog.iter.check335 ], [ %i.kr, %vec.epilog.middle.block350 ]
  br label %vec.epilog.scalar.ph334

vec.epilog.scalar.ph334:                          ; preds = %vec.epilog.scalar.ph334.preheader, %vec.epilog.scalar.ph334
  %.0297.us.i = phi i32 [ %i.lk, %vec.epilog.scalar.ph334 ], [ %.0297.us.i.ph, %vec.epilog.scalar.ph334.preheader ]
  %.0166296.us.i = phi ptr [ %i.lj, %vec.epilog.scalar.ph334 ], [ %.0166296.us.i.ph, %vec.epilog.scalar.ph334.preheader ] ; 5 uses
  %.13295.us.i = phi ptr [ %i.li, %vec.epilog.scalar.ph334 ], [ %.13295.us.i.ph, %vec.epilog.scalar.ph334.preheader ] ; 5 uses
  %i.ku = load i8, ptr %.0166296.us.i, align 1, !tbaa !17
  %i.kv = add i8 %i.ku, 127
  store i8 %i.kv, ptr %.13295.us.i, align 1, !tbaa !17
  %i.kw = getelementptr inbounds nuw i8, ptr %.0166296.us.i, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !17
  %i.ky = add i8 %i.kx, 127
  %i.kz = getelementptr inbounds nuw i8, ptr %.13295.us.i, i64 1
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !17
  %i.la = getelementptr inbounds nuw i8, ptr %.0166296.us.i, i64 2
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !17
  %i.lc = add i8 %i.lb, 127
  %i.ld = getelementptr inbounds nuw i8, ptr %.13295.us.i, i64 2
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %.0166296.us.i, i64 3
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !17
  %i.lg = add i8 %i.lf, 127
  %i.lh = getelementptr inbounds nuw i8, ptr %.13295.us.i, i64 3
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !17
  %i.li = getelementptr inbounds nuw i8, ptr %.13295.us.i, i64 4 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0166296.us.i, i64 4 ; 2 uses
  %i.lk = add nuw nsw i32 %.0297.us.i, 4          ; 2 uses
  %i.ll = or disjoint i32 %i.lk, 3
  %i.lm = icmp slt i32 %i.ll, %5
  br i1 %i.lm, label %vec.epilog.scalar.ph334, label %..preheader_crit_edge.us.i, !llvm.loop !124

.lr.ph306.us.i:                                   ; preds = %.lr.ph306.us.i.preheader, %.lr.ph306.us.i
  %.1305.us.i = phi i32 [ %i.lq, %.lr.ph306.us.i ], [ %.1305.us.i.ph, %.lr.ph306.us.i.preheader ]
  %.1167304.us.i = phi ptr [ %i.lp, %.lr.ph306.us.i ], [ %.1167304.us.i.ph, %.lr.ph306.us.i.preheader ] ; 2 uses
  %.14303.us.i = phi ptr [ %i.lo, %.lr.ph306.us.i ], [ %.14303.us.i.ph, %.lr.ph306.us.i.preheader ] ; 2 uses
  %i.ln = load i8, ptr %.1167304.us.i, align 1, !tbaa !17
  store i8 %i.ln, ptr %.14303.us.i, align 1, !tbaa !17
  %i.lo = getelementptr inbounds nuw i8, ptr %.14303.us.i, i64 1 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.1167304.us.i, i64 1
  %i.lq = add nuw nsw i32 %.1305.us.i, 1          ; 2 uses
  %i.lr = icmp slt i32 %i.lq, %5
  br i1 %i.lr, label %.lr.ph306.us.i, label %._crit_edge307.us.i, !llvm.loop !125

._crit_edge307.us.i:                              ; preds = %.lr.ph306.us.i, %middle.block283, %vec.epilog.middle.block300, %..preheader_crit_edge.us.i
  %.14.lcssa.us.i = phi ptr [ %.lcssa83, %..preheader_crit_edge.us.i ], [ %i.mh, %vec.epilog.middle.block300 ], [ %i.ly, %middle.block283 ], [ %i.lo, %.lr.ph306.us.i ]
  %indvars.iv.next358.i = add nsw i64 %indvars.iv357.i, 1 ; 2 uses
  %exitcond361.not.i = icmp eq i64 %indvars.iv.next358.i, %wide.trip.count360.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond361.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check333, !llvm.loop !126

..preheader_crit_edge.us.i:                       ; preds = %vec.epilog.scalar.ph334, %vec.epilog.middle.block350, %middle.block328
  %.lcssa83 = phi ptr [ %i.kr, %vec.epilog.middle.block350 ], [ %i.kn, %middle.block328 ], [ %i.li, %vec.epilog.scalar.ph334 ] ; 7 uses
  %.lcssa = phi ptr [ %i.kq, %vec.epilog.middle.block350 ], [ %i.km, %middle.block328 ], [ %i.lj, %vec.epilog.scalar.ph334 ] ; 6 uses
  br i1 %.not, label %._crit_edge307.us.i, label %iter.check288

iter.check288:                                    ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check269, label %.lr.ph306.us.i.preheader, label %vector.memcheck267

vector.memcheck267:                               ; preds = %iter.check288
  %i.ls = mul i64 %i.jy, %i.kf
  %i.lt = mul i64 %i.ls, %i.kd
  %i.lu = add i64 %i.lt, %i.iw
  %i.lv = add i64 %i.lu, %i.kb
  %i.lw = sub i64 %i.lv, %.12310.us.i268
  %diff.check = icmp ugt i64 %i.lw, -128
  br i1 %diff.check, label %.lr.ph306.us.i.preheader, label %vector.main.loop.iter.check270

vector.main.loop.iter.check270:                   ; preds = %vector.memcheck267
  br i1 %min.iters.check271, label %vec.epilog.ph292, label %vector.ph272

vector.ph272:                                     ; preds = %vector.main.loop.iter.check270
  %i.lx = getelementptr i8, ptr %.lcssa, i64 %n.vec273
  %i.ly = getelementptr i8, ptr %.lcssa83, i64 %n.vec273 ; 2 uses
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next282, %vector.body274 ] ; 3 uses
  %next.gep276 = getelementptr i8, ptr %.lcssa, i64 %index275 ; 4 uses
  %next.gep277 = getelementptr i8, ptr %.lcssa83, i64 %index275 ; 4 uses
  %i.lz = getelementptr i8, ptr %next.gep276, i64 32
  %i.ma = getelementptr i8, ptr %next.gep276, i64 64
  %i.mb = getelementptr i8, ptr %next.gep276, i64 96
  %wide.load278 = load <32 x i8>, ptr %next.gep276, align 1, !tbaa !17
  %wide.load279 = load <32 x i8>, ptr %i.lz, align 1, !tbaa !17
  %wide.load280 = load <32 x i8>, ptr %i.ma, align 1, !tbaa !17
  %wide.load281 = load <32 x i8>, ptr %i.mb, align 1, !tbaa !17
  %i.mc = getelementptr i8, ptr %next.gep277, i64 32
  %i.md = getelementptr i8, ptr %next.gep277, i64 64
  %i.me = getelementptr i8, ptr %next.gep277, i64 96
  store <32 x i8> %wide.load278, ptr %next.gep277, align 1, !tbaa !17
  store <32 x i8> %wide.load279, ptr %i.mc, align 1, !tbaa !17
  store <32 x i8> %wide.load280, ptr %i.md, align 1, !tbaa !17
  store <32 x i8> %wide.load281, ptr %i.me, align 1, !tbaa !17
  %index.next282 = add nuw i64 %index275, 128     ; 2 uses
  %i.mf = icmp eq i64 %index.next282, %n.vec273
  br i1 %i.mf, label %middle.block283, label %vector.body274, !llvm.loop !127

middle.block283:                                  ; preds = %vector.body274
  br i1 %cmp.n284, label %._crit_edge307.us.i, label %vec.epilog.iter.check290

vec.epilog.iter.check290:                         ; preds = %middle.block283
  br i1 %min.epilog.iters.check291, label %.lr.ph306.us.i.preheader, label %vec.epilog.ph292, !prof !45

vec.epilog.ph292:                                 ; preds = %vector.main.loop.iter.check270, %vec.epilog.iter.check290
  %vec.epilog.resume.val285 = phi i64 [ %n.vec273, %vec.epilog.iter.check290 ], [ 0, %vector.main.loop.iter.check270 ]
  %i.mg = getelementptr i8, ptr %.lcssa, i64 %n.vec293
  %i.mh = getelementptr i8, ptr %.lcssa83, i64 %n.vec293 ; 2 uses
  br label %vec.epilog.vector.body294

vec.epilog.vector.body294:                        ; preds = %vec.epilog.vector.body294, %vec.epilog.ph292
  %index295 = phi i64 [ %vec.epilog.resume.val285, %vec.epilog.ph292 ], [ %index.next299, %vec.epilog.vector.body294 ] ; 3 uses
  %next.gep296 = getelementptr i8, ptr %.lcssa, i64 %index295
  %next.gep297 = getelementptr i8, ptr %.lcssa83, i64 %index295
  %wide.load298 = load <8 x i8>, ptr %next.gep296, align 1, !tbaa !17
  store <8 x i8> %wide.load298, ptr %next.gep297, align 1, !tbaa !17
  %index.next299 = add nuw i64 %index295, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next299, %n.vec293
  br i1 %i.mi, label %vec.epilog.middle.block300, label %vec.epilog.vector.body294, !llvm.loop !128

vec.epilog.middle.block300:                       ; preds = %vec.epilog.vector.body294
  br i1 %cmp.n301, label %._crit_edge307.us.i, label %.lr.ph306.us.i.preheader

.lr.ph306.us.i.preheader:                         ; preds = %vector.memcheck267, %iter.check288, %vec.epilog.iter.check290, %vec.epilog.middle.block300
  %.1305.us.i.ph = phi i32 [ %i.iy, %iter.check288 ], [ %i.iy, %vector.memcheck267 ], [ %i.jv, %vec.epilog.iter.check290 ], [ %i.jx, %vec.epilog.middle.block300 ]
  %.1167304.us.i.ph = phi ptr [ %.lcssa, %iter.check288 ], [ %.lcssa, %vector.memcheck267 ], [ %i.lx, %vec.epilog.iter.check290 ], [ %i.mg, %vec.epilog.middle.block300 ]
  %.14303.us.i.ph = phi ptr [ %.lcssa83, %iter.check288 ], [ %.lcssa83, %vector.memcheck267 ], [ %i.ly, %vec.epilog.iter.check290 ], [ %i.mh, %vec.epilog.middle.block300 ]
  br label %.lr.ph306.us.i

.lr.ph311.split.i:                                ; preds = %.lr.ph311.i
  %i.mj = icmp sgt i32 %5, 0
  br i1 %i.mj, label %.preheader.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.preheader.preheader.i:                           ; preds = %.lr.ph311.split.i
  %i.mk = sext i32 %.2181.lcssa.i to i64
  %i.ml = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %exitcond352.not.i = icmp eq i32 %5, 1
  %exitcond352.not.i.1 = icmp eq i32 %5, 2
  br label %.preheader.i

bb.f:                                             ; preds = %._crit_edge288.i, %.lr.ph292.i
  %indvars.iv349.i = phi i64 [ %i.ej, %.lr.ph292.i ], [ %indvars.iv.next350.i, %._crit_edge288.i ] ; 2 uses
  %.8291.i = phi ptr [ %.4.lcssa.i, %.lr.ph292.i ], [ %.11.lcssa.i, %._crit_edge288.i ] ; 10 uses
  %i.mm = add i64 %indvars.iv349.i, %i.el         ; 2 uses
  %i.mn = load ptr, ptr %0, align 8, !tbaa !9     ; 4 uses
  %i.mo = load i32, ptr %i.ee, align 4, !tbaa !15
  %i.mp = sext i32 %i.mo to i64
  %i.mq = load i64, ptr %i.ef, align 8, !tbaa !16
  %i.mr = mul i64 %i.mq, %i.mp                    ; 2 uses
  %i.ms = mul i64 %i.mr, %i.mm                    ; 2 uses
  %i.mt = getelementptr i8, ptr %i.mn, i64 %i.ms
  %i.mu = getelementptr i8, ptr %i.mt, i64 %i.eg  ; 8 uses
  %i.mv = add nsw i64 %i.mm, 1
  %i.mw = mul i64 %i.mr, %i.mv                    ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mw
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.eg ; 7 uses
  br i1 %i.eh, label %iter.check238, label %.preheader208.i

iter.check238:                                    ; preds = %bb.f
  br i1 %min.iters.check210, label %.lr.ph269.i.preheader, label %vector.memcheck196

vector.memcheck196:                               ; preds = %iter.check238
  %i.mz = getelementptr i8, ptr %.8291.i, i64 %i.er
  %scevgep197 = getelementptr i8, ptr %i.mz, i64 8 ; 2 uses
  %scevgep198 = getelementptr i8, ptr %i.mn, i64 %i.eg
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.mw
  %i.na = getelementptr i8, ptr %i.mn, i64 %i.es
  %i.nb = getelementptr i8, ptr %i.na, i64 %i.eg
  %scevgep200 = getelementptr i8, ptr %i.nb, i64 4 ; 2 uses
  %scevgep201 = getelementptr i8, ptr %scevgep200, i64 %i.mw
  %scevgep202 = getelementptr i8, ptr %scevgep200, i64 %i.ms
  %bound0203 = icmp ult ptr %.8291.i, %scevgep201
  %bound1204 = icmp ult ptr %scevgep199, %scevgep197
  %found.conflict205 = and i1 %bound0203, %bound1204
  %bound0206 = icmp ult ptr %.8291.i, %scevgep202
  %bound1207 = icmp ult ptr %i.mu, %scevgep197
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %found.conflict205, %found.conflict208
  br i1 %conflict.rdx209, label %.lr.ph269.i.preheader, label %vector.main.loop.iter.check211

vector.main.loop.iter.check211:                   ; preds = %vector.memcheck196
  br i1 %min.iters.check212, label %vec.epilog.ph242, label %vector.ph213

vector.ph213:                                     ; preds = %vector.main.loop.iter.check211
  %i.nc = getelementptr i8, ptr %i.my, i64 %i.ez  ; 2 uses
  %i.nd = getelementptr i8, ptr %i.mu, i64 %i.ez  ; 2 uses
  %i.ne = getelementptr i8, ptr %.8291.i, i64 %i.fa ; 2 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next231, %vector.body215 ] ; 3 uses
  %i.nf = shl i64 %index216, 2                    ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.my, i64 %i.nf
  %next.gep218 = getelementptr i8, ptr %i.mu, i64 %i.nf
  %i.ng = shl i64 %index216, 3
  %next.gep219 = getelementptr i8, ptr %.8291.i, i64 %i.ng
  %wide.vec220 = load <64 x i8>, ptr %next.gep218, align 1, !tbaa !17, !alias.scope !129
  %wide.vec225 = load <64 x i8>, ptr %next.gep217, align 1, !tbaa !17, !alias.scope !132
  %i.nh = shufflevector <64 x i8> %wide.vec220, <64 x i8> %wide.vec225, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 4, i32 5, i32 6, i32 7, i32 68, i32 69, i32 70, i32 71, i32 8, i32 9, i32 10, i32 11, i32 72, i32 73, i32 74, i32 75, i32 12, i32 13, i32 14, i32 15, i32 76, i32 77, i32 78, i32 79, i32 16, i32 17, i32 18, i32 19, i32 80, i32 81, i32 82, i32 83, i32 20, i32 21, i32 22, i32 23, i32 84, i32 85, i32 86, i32 87, i32 24, i32 25, i32 26, i32 27, i32 88, i32 89, i32 90, i32 91, i32 28, i32 29, i32 30, i32 31, i32 92, i32 93, i32 94, i32 95, i32 32, i32 33, i32 34, i32 35, i32 96, i32 97, i32 98, i32 99, i32 36, i32 37, i32 38, i32 39, i32 100, i32 101, i32 102, i32 103, i32 40, i32 41, i32 42, i32 43, i32 104, i32 105, i32 106, i32 107, i32 44, i32 45, i32 46, i32 47, i32 108, i32 109, i32 110, i32 111, i32 48, i32 49, i32 50, i32 51, i32 112, i32 113, i32 114, i32 115, i32 52, i32 53, i32 54, i32 55, i32 116, i32 117, i32 118, i32 119, i32 56, i32 57, i32 58, i32 59, i32 120, i32 121, i32 122, i32 123, i32 60, i32 61, i32 62, i32 63, i32 124, i32 125, i32 126, i32 127>
  %interleaved.vec230 = add <128 x i8> %i.nh, splat (i8 127)
  store <128 x i8> %interleaved.vec230, ptr %next.gep219, align 1, !tbaa !17, !alias.scope !134, !noalias !136
  %index.next231 = add nuw i64 %index216, 16      ; 2 uses
  %i.ni = icmp eq i64 %index.next231, %n.vec214
  br i1 %i.ni, label %middle.block232, label %vector.body215, !llvm.loop !137

middle.block232:                                  ; preds = %vector.body215
  br i1 %cmp.n233, label %.preheader208.i, label %vec.epilog.iter.check240

vec.epilog.iter.check240:                         ; preds = %middle.block232
  br i1 %min.epilog.iters.check241, label %.lr.ph269.i.preheader, label %vec.epilog.ph242, !prof !40

vec.epilog.ph242:                                 ; preds = %vector.main.loop.iter.check211, %vec.epilog.iter.check240
  %vec.epilog.resume.val234 = phi i64 [ %n.vec214, %vec.epilog.iter.check240 ], [ 0, %vector.main.loop.iter.check211 ]
  %i.nj = getelementptr i8, ptr %i.my, i64 %i.fd  ; 2 uses
  %i.nk = getelementptr i8, ptr %i.mu, i64 %i.fd  ; 2 uses
  %i.nl = getelementptr i8, ptr %.8291.i, i64 %i.fe ; 2 uses
  br label %vec.epilog.vector.body244

vec.epilog.vector.body244:                        ; preds = %vec.epilog.vector.body244, %vec.epilog.ph242
  %index245 = phi i64 [ %vec.epilog.resume.val234, %vec.epilog.ph242 ], [ %index.next260, %vec.epilog.vector.body244 ] ; 3 uses
  %i.nm = shl i64 %index245, 2                    ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.my, i64 %i.nm
  %next.gep247 = getelementptr i8, ptr %i.mu, i64 %i.nm
  %i.nn = shl i64 %index245, 3
  %next.gep248 = getelementptr i8, ptr %.8291.i, i64 %i.nn
  %wide.vec249 = load <16 x i8>, ptr %next.gep247, align 1, !tbaa !17, !alias.scope !129
  %wide.vec254 = load <16 x i8>, ptr %next.gep246, align 1, !tbaa !17, !alias.scope !132
  %i.no = shufflevector <16 x i8> %wide.vec249, <16 x i8> %wide.vec254, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec259 = add <32 x i8> %i.no, splat (i8 127)
  store <32 x i8> %interleaved.vec259, ptr %next.gep248, align 1, !tbaa !17, !alias.scope !134, !noalias !136
  %index.next260 = add nuw i64 %index245, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next260, %n.vec243
  br i1 %i.np, label %vec.epilog.middle.block261, label %vec.epilog.vector.body244, !llvm.loop !138

vec.epilog.middle.block261:                       ; preds = %vec.epilog.vector.body244
  br i1 %cmp.n262, label %.preheader208.i, label %.lr.ph269.i.preheader

.lr.ph269.i.preheader:                            ; preds = %vector.memcheck196, %iter.check238, %vec.epilog.iter.check240, %vec.epilog.middle.block261
  %.0168267.i.ph = phi i32 [ 0, %iter.check238 ], [ 0, %vector.memcheck196 ], [ %i.ey, %vec.epilog.iter.check240 ], [ %i.fc, %vec.epilog.middle.block261 ]
  %.0170266.i.ph = phi ptr [ %i.my, %iter.check238 ], [ %i.my, %vector.memcheck196 ], [ %i.nc, %vec.epilog.iter.check240 ], [ %i.nj, %vec.epilog.middle.block261 ]
  %.0173265.i.ph = phi ptr [ %i.mu, %iter.check238 ], [ %i.mu, %vector.memcheck196 ], [ %i.nd, %vec.epilog.iter.check240 ], [ %i.nk, %vec.epilog.middle.block261 ]
  %.9264.i.ph = phi ptr [ %.8291.i, %iter.check238 ], [ %.8291.i, %vector.memcheck196 ], [ %i.ne, %vec.epilog.iter.check240 ], [ %i.nl, %vec.epilog.middle.block261 ]
  br label %.lr.ph269.i

.preheader208.i:                                  ; preds = %.lr.ph269.i, %middle.block232, %vec.epilog.middle.block261, %bb.f
  %.9.lcssa.i = phi ptr [ %.8291.i, %bb.f ], [ %i.nl, %vec.epilog.middle.block261 ], [ %i.ne, %middle.block232 ], [ %i.qa, %.lr.ph269.i ] ; 10 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  %i.qu = shl nuw nsw i64 %n.vec, 1
  %i.qv = getelementptr i8, ptr %.10.lcssa.i, i64 %i.qu ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.1171.lcssa.i, i64 %index
  %next.gep115 = getelementptr i8, ptr %.1174.lcssa.i, i64 %index
  %i.qw = shl i64 %index, 1
  %next.gep116 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.qw
  %wide.load = load <32 x i8>, ptr %next.gep115, align 1, !tbaa !17, !alias.scope !150
  %wide.load117 = load <32 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !153
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load117, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep116, align 1, !tbaa !17, !alias.scope !155, !noalias !157
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.qx = icmp eq i64 %index.next, %n.vec
  br i1 %i.qx, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qk, %n.vec
  br i1 %cmp.n, label %._crit_edge288.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph287.i.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %i.qk, 8589934584           ; 6 uses
  %i.qy = trunc i64 %n.vec121 to i32
  %i.qz = add i32 %.1169.lcssa.i, %i.qy
  %i.ra = getelementptr i8, ptr %.1171.lcssa.i, i64 %n.vec121
  %i.rb = getelementptr i8, ptr %.1174.lcssa.i, i64 %n.vec121
  %i.rc = shl nuw nsw i64 %n.vec121, 1
  %i.rd = getelementptr i8, ptr %.10.lcssa.i, i64 %i.rc ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ] ; 4 uses
  %next.gep123 = getelementptr i8, ptr %.1171.lcssa.i, i64 %index122
  %next.gep124 = getelementptr i8, ptr %.1174.lcssa.i, i64 %index122
  %i.re = shl i64 %index122, 1
  %next.gep125 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.re
  %wide.load126 = load <8 x i8>, ptr %next.gep124, align 1, !tbaa !17, !alias.scope !150
  %wide.load127 = load <8 x i8>, ptr %next.gep123, align 1, !tbaa !17, !alias.scope !153
  %interleaved.vec128 = shufflevector <8 x i8> %wide.load126, <8 x i8> %wide.load127, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec128, ptr %next.gep125, align 1, !tbaa !17, !alias.scope !155, !noalias !157
  %index.next129 = add nuw i64 %index122, 8       ; 2 uses
  %i.rf = icmp eq i64 %index.next129, %n.vec121
  br i1 %i.rf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n130 = icmp eq i64 %i.qk, %n.vec121
  br i1 %cmp.n130, label %._crit_edge288.i, label %.lr.ph287.i.preheader

.lr.ph287.i.preheader:                            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2286.i.ph = phi i32 [ %.1169.lcssa.i, %iter.check ], [ %.1169.lcssa.i, %vector.memcheck ], [ %i.qr, %vec.epilog.iter.check ], [ %i.qz, %vec.epilog.middle.block ] ; 4 uses
  %.2172285.i.ph = phi ptr [ %.1171.lcssa.i, %iter.check ], [ %.1171.lcssa.i, %vector.memcheck ], [ %i.qs, %vec.epilog.iter.check ], [ %i.ra, %vec.epilog.middle.block ] ; 2 uses
  %.2175284.i.ph = phi ptr [ %.1174.lcssa.i, %iter.check ], [ %.1174.lcssa.i, %vector.memcheck ], [ %i.qt, %vec.epilog.iter.check ], [ %i.rb, %vec.epilog.middle.block ] ; 2 uses
  %.11283.i.ph = phi ptr [ %.10.lcssa.i, %iter.check ], [ %.10.lcssa.i, %vector.memcheck ], [ %i.qv, %vec.epilog.iter.check ], [ %i.rd, %vec.epilog.middle.block ] ; 2 uses
  %i.rg = sub i32 %5, %.2286.i.ph
  %xtraiter398 = and i32 %i.rg, 3                 ; 2 uses
  %lcmp.mod399.not = icmp eq i32 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %.lr.ph287.i.prol.loopexit, label %.lr.ph287.i.prol

.lr.ph287.i.prol:                                 ; preds = %.lr.ph287.i.preheader, %.lr.ph287.i.prol
  %.2286.i.prol = phi i32 [ %i.rn, %.lr.ph287.i.prol ], [ %.2286.i.ph, %.lr.ph287.i.preheader ]
  %.2172285.i.prol = phi ptr [ %i.rm, %.lr.ph287.i.prol ], [ %.2172285.i.ph, %.lr.ph287.i.preheader ] ; 2 uses
  %.2175284.i.prol = phi ptr [ %i.rl, %.lr.ph287.i.prol ], [ %.2175284.i.ph, %.lr.ph287.i.preheader ] ; 2 uses
  %.11283.i.prol = phi ptr [ %i.rk, %.lr.ph287.i.prol ], [ %.11283.i.ph, %.lr.ph287.i.preheader ] ; 3 uses
  %prol.iter400 = phi i32 [ %prol.iter400.next, %.lr.ph287.i.prol ], [ 0, %.lr.ph287.i.preheader ]
  %i.rh = load i8, ptr %.2175284.i.prol, align 1, !tbaa !17
  store i8 %i.rh, ptr %.11283.i.prol, align 1, !tbaa !17
  %i.ri = load i8, ptr %.2172285.i.prol, align 1, !tbaa !17
  %i.rj = getelementptr inbounds nuw i8, ptr %.11283.i.prol, i64 1
  store i8 %i.ri, ptr %i.rj, align 1, !tbaa !17
  %i.rk = getelementptr inbounds nuw i8, ptr %.11283.i.prol, i64 2 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.2175284.i.prol, i64 1 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.2172285.i.prol, i64 1 ; 2 uses
  %i.rn = add nuw nsw i32 %.2286.i.prol, 1        ; 2 uses
  %prol.iter400.next = add i32 %prol.iter400, 1   ; 2 uses
  %prol.iter400.cmp.not = icmp eq i32 %prol.iter400.next, %xtraiter398
  br i1 %prol.iter400.cmp.not, label %.lr.ph287.i.prol.loopexit, label %.lr.ph287.i.prol, !llvm.loop !160

.lr.ph287.i.prol.loopexit:                        ; preds = %.lr.ph287.i.prol, %.lr.ph287.i.preheader
  %.lcssa369.unr = phi ptr [ poison, %.lr.ph287.i.preheader ], [ %i.rk, %.lr.ph287.i.prol ]
  %.2286.i.unr = phi i32 [ %.2286.i.ph, %.lr.ph287.i.preheader ], [ %i.rn, %.lr.ph287.i.prol ]
  %.2172285.i.unr = phi ptr [ %.2172285.i.ph, %.lr.ph287.i.preheader ], [ %i.rm, %.lr.ph287.i.prol ]
  %.2175284.i.unr = phi ptr [ %.2175284.i.ph, %.lr.ph287.i.preheader ], [ %i.rl, %.lr.ph287.i.prol ]
  %.11283.i.unr = phi ptr [ %.11283.i.ph, %.lr.ph287.i.preheader ], [ %i.rk, %.lr.ph287.i.prol ]
  %i.ro = sub i32 %.2286.i.ph, %5
  %i.rp = icmp ugt i32 %i.ro, -4
  br i1 %i.rp, label %._crit_edge288.i, label %.lr.ph287.i

.lr.ph278.i:                                      ; preds = %.lr.ph278.i.preheader, %.lr.ph278.i
  %.1169277.i = phi i32 [ %i.sc, %.lr.ph278.i ], [ %.1169277.i.ph, %.lr.ph278.i.preheader ]
  %.1171276.i = phi ptr [ %i.sb, %.lr.ph278.i ], [ %.1171276.i.ph, %.lr.ph278.i.preheader ] ; 3 uses
  %.1174275.i = phi ptr [ %i.sa, %.lr.ph278.i ], [ %.1174275.i.ph, %.lr.ph278.i.preheader ] ; 3 uses
  %.10274.i = phi ptr [ %i.rz, %.lr.ph278.i ], [ %.10274.i.ph, %.lr.ph278.i.preheader ] ; 5 uses
  %i.rq = load i8, ptr %.1174275.i, align 1, !tbaa !17
  store i8 %i.rq, ptr %.10274.i, align 1, !tbaa !17
  %i.rr = getelementptr inbounds nuw i8, ptr %.1174275.i, i64 1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !17
  %i.rt = getelementptr inbounds nuw i8, ptr %.10274.i, i64 1
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !17
  %i.ru = load i8, ptr %.1171276.i, align 1, !tbaa !17
  %i.rv = getelementptr inbounds nuw i8, ptr %.10274.i, i64 2
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !17
  %i.rw = getelementptr inbounds nuw i8, ptr %.1171276.i, i64 1
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !17
  %i.ry = getelementptr inbounds nuw i8, ptr %.10274.i, i64 3
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !17
  %i.rz = getelementptr inbounds nuw i8, ptr %.10274.i, i64 4 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.1174275.i, i64 2 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.1171276.i, i64 2 ; 2 uses
  %i.sc = add nuw nsw i32 %.1169277.i, 2          ; 3 uses
  %i.sd = or disjoint i32 %i.sc, 1
  %i.se = icmp slt i32 %i.sd, %5
  br i1 %i.se, label %.lr.ph278.i, label %.preheader207.i, !llvm.loop !161

.lr.ph287.i:                                      ; preds = %.lr.ph287.i.prol.loopexit, %.lr.ph287.i
  %.2286.i = phi i32 [ %i.td, %.lr.ph287.i ], [ %.2286.i.unr, %.lr.ph287.i.prol.loopexit ]
  %.2172285.i = phi ptr [ %i.tc, %.lr.ph287.i ], [ %.2172285.i.unr, %.lr.ph287.i.prol.loopexit ] ; 5 uses
  %.2175284.i = phi ptr [ %i.tb, %.lr.ph287.i ], [ %.2175284.i.unr, %.lr.ph287.i.prol.loopexit ] ; 5 uses
  %.11283.i = phi ptr [ %i.ta, %.lr.ph287.i ], [ %.11283.i.unr, %.lr.ph287.i.prol.loopexit ] ; 9 uses
  %i.sf = load i8, ptr %.2175284.i, align 1, !tbaa !17
  store i8 %i.sf, ptr %.11283.i, align 1, !tbaa !17
  %i.sg = load i8, ptr %.2172285.i, align 1, !tbaa !17
  %i.sh = getelementptr inbounds nuw i8, ptr %.11283.i, i64 1
  store i8 %i.sg, ptr %i.sh, align 1, !tbaa !17
  %i.si = getelementptr inbounds nuw i8, ptr %.11283.i, i64 2
  %i.sj = getelementptr inbounds nuw i8, ptr %.2175284.i, i64 1
  %i.sk = getelementptr inbounds nuw i8, ptr %.2172285.i, i64 1
  %i.sl = load i8, ptr %i.sj, align 1, !tbaa !17
  store i8 %i.sl, ptr %i.si, align 1, !tbaa !17
  %i.sm = load i8, ptr %i.sk, align 1, !tbaa !17
  %i.sn = getelementptr inbounds nuw i8, ptr %.11283.i, i64 3
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !17
  %i.so = getelementptr inbounds nuw i8, ptr %.11283.i, i64 4
  %i.sp = getelementptr inbounds nuw i8, ptr %.2175284.i, i64 2
  %i.sq = getelementptr inbounds nuw i8, ptr %.2172285.i, i64 2
  %i.sr = load i8, ptr %i.sp, align 1, !tbaa !17
  store i8 %i.sr, ptr %i.so, align 1, !tbaa !17
  %i.ss = load i8, ptr %i.sq, align 1, !tbaa !17
  %i.st = getelementptr inbounds nuw i8, ptr %.11283.i, i64 5
  store i8 %i.ss, ptr %i.st, align 1, !tbaa !17
  %i.su = getelementptr inbounds nuw i8, ptr %.11283.i, i64 6
  %i.sv = getelementptr inbounds nuw i8, ptr %.2175284.i, i64 3
  %i.sw = getelementptr inbounds nuw i8, ptr %.2172285.i, i64 3
  %i.sx = load i8, ptr %i.sv, align 1, !tbaa !17
  store i8 %i.sx, ptr %i.su, align 1, !tbaa !17
  %i.sy = load i8, ptr %i.sw, align 1, !tbaa !17
  %i.sz = getelementptr inbounds nuw i8, ptr %.11283.i, i64 7
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !17
  %i.ta = getelementptr inbounds nuw i8, ptr %.11283.i, i64 8 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.2175284.i, i64 4
  %i.tc = getelementptr inbounds nuw i8, ptr %.2172285.i, i64 4
  %i.td = add nuw nsw i32 %.2286.i, 4             ; 2 uses
  %exitcond348.not.i.3 = icmp eq i32 %i.td, %5
  br i1 %exitcond348.not.i.3, label %._crit_edge288.i, label %.lr.ph287.i, !llvm.loop !162

._crit_edge288.i:                                 ; preds = %.lr.ph287.i.prol.loopexit, %.lr.ph287.i, %middle.block, %vec.epilog.middle.block, %.preheader207.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader207.i ], [ %i.rd, %vec.epilog.middle.block ], [ %i.qv, %middle.block ], [ %.lcssa369.unr, %.lr.ph287.i.prol.loopexit ], [ %i.ta, %.lr.ph287.i ] ; 2 uses
  %indvars.iv.next350.i = add nuw nsw i64 %indvars.iv349.i, 2 ; 3 uses
  %i.te = icmp slt i64 %indvars.iv.next350.i, %invariant.op391.i
  br i1 %i.te, label %bb.f, label %.preheader206.loopexit.i, !llvm.loop !163

.preheader.i:                                     ; preds = %._crit_edge307.i, %.preheader.preheader.i
  %indvars.iv353.i = phi i64 [ %i.mk, %.preheader.preheader.i ], [ %indvars.iv.next354.i, %._crit_edge307.i ] ; 2 uses
  %.12310.i = phi ptr [ %.8.lcssa.i, %.preheader.preheader.i ], [ %.lcssa361, %._crit_edge307.i ] ; 4 uses
  %i.tf = load ptr, ptr %0, align 8, !tbaa !9
  %i.tg = add nsw i64 %indvars.iv353.i, %i.ml
  %i.th = load i32, ptr %i.iu, align 4, !tbaa !15
  %i.ti = sext i32 %i.th to i64
  %i.tj = mul nsw i64 %i.tg, %i.ti
  %i.tk = load i64, ptr %i.iv, align 8, !tbaa !16
  %i.tl = mul i64 %i.tj, %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.tl
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 %i.iw ; 3 uses
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !17
  store i8 %i.to, ptr %.12310.i, align 1, !tbaa !17
  %i.tp = getelementptr inbounds nuw i8, ptr %.12310.i, i64 1 ; 2 uses
  br i1 %exitcond352.not.i, label %._crit_edge307.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 1
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !17
  store i8 %i.tr, ptr %i.tp, align 1, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %.12310.i, i64 2 ; 2 uses
  br i1 %exitcond352.not.i.1, label %._crit_edge307.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tn, i64 2
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !17
  store i8 %i.tu, ptr %i.ts, align 1, !tbaa !17
  %i.tv = getelementptr inbounds nuw i8, ptr %.12310.i, i64 3
  br label %._crit_edge307.i

._crit_edge307.i:                                 ; preds = %bb.h, %bb.g, %.preheader.i
  %.lcssa361 = phi ptr [ %i.tp, %.preheader.i ], [ %i.ts, %bb.g ], [ %i.tv, %bb.h ]
  %indvars.iv.next354.i = add nsw i64 %indvars.iv353.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next354.i, %wide.trip.count.i
  br i1 %exitcond356.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.preheader.i, !llvm.loop !126

_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge307.i, %._crit_edge307.us.i, %bb.b, %.preheader206.i, %.lr.ph311.split.i
  ret void
}

declare void @_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15   ; 16 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.e = icmp sgt i32 %3, 7
  br i1 %i.e, label %.lr.ph269.i, label %.preheader246.i

.lr.ph269.i:                                      ; preds = %bb.c
  %i.f = sext i32 %4 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp sgt i32 %5, 3
  %i.i = sext i32 %i.c to i64                     ; 11 uses
  %i.j = shl nsw i32 %i.c, 1
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = mul nsw i32 %i.c, 3
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i32 %i.c, 2
  %i.o = sext i32 %i.n to i64
  %i.p = and i32 %5, -4
  %i.q = zext nneg i32 %3 to i64
  %i.r = sext i32 %2 to i64
  br label %bb.d

.preheader246.loopexit.i:                         ; preds = %._crit_edge.i
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader246.i

.preheader246.i:                                  ; preds = %.preheader246.loopexit.i, %bb.c
  %.0225.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.s, %.preheader246.loopexit.i ] ; 3 uses
  %.0216.lcssa.i = phi ptr [ %i.d, %bb.c ], [ %.3.lcssa.i, %.preheader246.loopexit.i ] ; 2 uses
  %i.t = or disjoint i32 %.0225.lcssa.i, 3
  %i.u = icmp slt i32 %i.t, %3
  br i1 %i.u, label %.lr.ph295.i, label %.preheader243.i

.lr.ph295.i:                                      ; preds = %.preheader246.i
  %i.v = sext i32 %4 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.z = mul <4 x i32> %i.y, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.aa = icmp sgt i32 %5, 3
  %i.ab = shl nsw i32 %i.c, 2
  %i.ac = sext i32 %i.ab to i64                   ; 5 uses
  %i.ad = sext i32 %i.c to i64                    ; 4 uses
  %i.ae = shl nsw i32 %i.c, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = and i32 %5, -4                          ; 2 uses
  %i.ah = zext nneg i32 %.0225.lcssa.i to i64
  %i.ai = sext i32 %3 to i64
  %i.aj = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.ai, -3
  %i.ak = add i32 %5, -4                          ; 2 uses
  %i.al = lshr i32 %i.ak, 2
  %i.am = add nuw nsw i32 %i.al, 1                ; 2 uses
  %xtraiter120 = and i32 %i.am, 3                 ; 3 uses
  %i.an = icmp ult i32 %i.ak, 12
  %unroll_iter = and i32 %i.am, 2147483644
  %lcmp.mod121.not = icmp eq i32 %xtraiter120, 0
  %lcmp.mod124 = icmp ne i32 %xtraiter120, 0
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph269.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph269.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0216267.i = phi ptr [ %i.d, %.lr.ph269.i ], [ %.3.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !9
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !15
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, %i.f
  %i.as = load i64, ptr %i.g, align 8, !tbaa !16
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.r   ; 2 uses
  br i1 %i.h, label %.lr.ph.i, label %.preheader248.i

.preheader248.i:                                  ; preds = %.lr.ph.i, %bb.d
  %.0232.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %.0229.lcssa.i = phi ptr [ %i.aw, %bb.d ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %.1217.lcssa.i = phi ptr [ %.0216267.i, %bb.d ], [ %i.bs, %.lr.ph.i ] ; 2 uses
  %i.ax = or disjoint i32 %.0232.lcssa.i, 1
  %i.ay = icmp slt i32 %i.ax, %5
  br i1 %i.ay, label %.lr.ph257.i, label %.preheader247.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.1217251.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.0216267.i, %bb.d ] ; 2 uses
  %.0229250.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.aw, %bb.d ] ; 5 uses
  %.0232249.i = phi i32 [ %i.bu, %.lr.ph.i ], [ 0, %bb.d ]
  %i.az = load i64, ptr %.0229250.i, align 1, !tbaa !17
  %i.ba = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %i.bb = getelementptr inbounds i8, ptr %.0229250.i, i64 %i.i
  %i.bc = load i64, ptr %i.bb, align 1, !tbaa !17
  %i.bd = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %i.be = getelementptr inbounds i8, ptr %.0229250.i, i64 %i.k
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !17
  %i.bg = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %i.bh = getelementptr inbounds i8, ptr %.0229250.i, i64 %i.m
  %i.bi = load i64, ptr %i.bh, align 1, !tbaa !17
  %i.bj = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %i.bk = bitcast <2 x i64> %i.ba to <16 x i8>
  %i.bl = bitcast <2 x i64> %i.bd to <16 x i8>
  %i.bm = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bn = bitcast <2 x i64> %i.bg to <16 x i8>
  %i.bo = bitcast <2 x i64> %i.bj to <16 x i8>
  %i.bp = shufflevector <16 x i8> %i.bn, <16 x i8> %i.bo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bq = shufflevector <16 x i8> %i.bm, <16 x i8> %i.bp, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.br = add <32 x i8> %i.bq, splat (i8 127)
  store <32 x i8> %i.br, ptr %.1217251.i, align 1, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.1217251.i, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.0229250.i, i64 %i.o ; 2 uses
  %i.bu = add nuw nsw i32 %.0232249.i, 4          ; 2 uses
  %i.bv = or disjoint i32 %i.bu, 3
  %i.bw = icmp slt i32 %i.bv, %5
  br i1 %i.bw, label %.lr.ph.i, label %.preheader248.i, !llvm.loop !164

.preheader247.i:                                  ; preds = %.lr.ph257.i, %.preheader248.i
  %.1233.lcssa.i = phi i32 [ %.0232.lcssa.i, %.preheader248.i ], [ %i.cp, %.lr.ph257.i ] ; 5 uses
  %.1230.lcssa.i = phi ptr [ %.0229.lcssa.i, %.preheader248.i ], [ %i.co, %.lr.ph257.i ] ; 2 uses
  %.2218.lcssa.i = phi ptr [ %.1217.lcssa.i, %.preheader248.i ], [ %i.cn, %.lr.ph257.i ] ; 3 uses
  %i.bx = icmp slt i32 %.1233.lcssa.i, %5
  br i1 %i.bx, label %.lr.ph264.i.preheader, label %._crit_edge.i

.lr.ph264.i.preheader:                            ; preds = %.preheader247.i
  %i.by = sub i32 %5, %.1233.lcssa.i
  %xtraiter = and i32 %i.by, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph264.i.prol.loopexit, label %.lr.ph264.i.prol

.lr.ph264.i.prol:                                 ; preds = %.lr.ph264.i.preheader, %.lr.ph264.i.prol
  %.3263.i.prol = phi ptr [ %i.ca, %.lr.ph264.i.prol ], [ %.2218.lcssa.i, %.lr.ph264.i.preheader ] ; 2 uses
  %.2231262.i.prol = phi ptr [ %i.cb, %.lr.ph264.i.prol ], [ %.1230.lcssa.i, %.lr.ph264.i.preheader ] ; 2 uses
  %.2234261.i.prol = phi i32 [ %i.cc, %.lr.ph264.i.prol ], [ %.1233.lcssa.i, %.lr.ph264.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph264.i.prol ], [ 0, %.lr.ph264.i.preheader ]
  %i.bz = load i64, ptr %.2231262.i.prol, align 1, !tbaa !17
  store i64 %i.bz, ptr %.3263.i.prol, align 1, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.3263.i.prol, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.2231262.i.prol, i64 %i.i ; 2 uses
  %i.cc = add nuw nsw i32 %.2234261.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph264.i.prol.loopexit, label %.lr.ph264.i.prol, !llvm.loop !165

.lr.ph264.i.prol.loopexit:                        ; preds = %.lr.ph264.i.prol, %.lr.ph264.i.preheader
  %.lcssa119.unr = phi ptr [ poison, %.lr.ph264.i.preheader ], [ %i.ca, %.lr.ph264.i.prol ]
  %.3263.i.unr = phi ptr [ %.2218.lcssa.i, %.lr.ph264.i.preheader ], [ %i.ca, %.lr.ph264.i.prol ]
  %.2231262.i.unr = phi ptr [ %.1230.lcssa.i, %.lr.ph264.i.preheader ], [ %i.cb, %.lr.ph264.i.prol ]
  %.2234261.i.unr = phi i32 [ %.1233.lcssa.i, %.lr.ph264.i.preheader ], [ %i.cc, %.lr.ph264.i.prol ]
  %i.cd = sub i32 %.1233.lcssa.i, %5
  %i.ce = icmp ugt i32 %i.cd, -8
  br i1 %i.ce, label %._crit_edge.i, label %.lr.ph264.i

.lr.ph257.i:                                      ; preds = %.preheader248.i, %.lr.ph257.i
  %.2218256.i = phi ptr [ %i.cn, %.lr.ph257.i ], [ %.1217.lcssa.i, %.preheader248.i ] ; 2 uses
  %.1230255.i = phi ptr [ %i.co, %.lr.ph257.i ], [ %.0229.lcssa.i, %.preheader248.i ] ; 3 uses
  %.1233254.i = phi i32 [ %i.cp, %.lr.ph257.i ], [ %.0232.lcssa.i, %.preheader248.i ]
  %i.cf = load i64, ptr %.1230255.i, align 1, !tbaa !17
  %i.cg = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.ch = getelementptr inbounds i8, ptr %.1230255.i, i64 %i.i
  %i.ci = load i64, ptr %i.ch, align 1, !tbaa !17
  %i.cj = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %i.ck = bitcast <2 x i64> %i.cg to <16 x i8>
  %i.cl = bitcast <2 x i64> %i.cj to <16 x i8>
  %i.cm = shufflevector <16 x i8> %i.ck, <16 x i8> %i.cl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cm, ptr %.2218256.i, align 1, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %.2218256.i, i64 16 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.1230255.i, i64 %i.k ; 2 uses
  %i.cp = add nuw nsw i32 %.1233254.i, 2          ; 3 uses
  %i.cq = or disjoint i32 %i.cp, 1
  %i.cr = icmp slt i32 %i.cq, %5
  br i1 %i.cr, label %.lr.ph257.i, label %.preheader247.i, !llvm.loop !166

.lr.ph264.i:                                      ; preds = %.lr.ph264.i.prol.loopexit, %.lr.ph264.i
  %.3263.i = phi ptr [ %i.do, %.lr.ph264.i ], [ %.3263.i.unr, %.lr.ph264.i.prol.loopexit ] ; 9 uses
  %.2231262.i = phi ptr [ %i.dp, %.lr.ph264.i ], [ %.2231262.i.unr, %.lr.ph264.i.prol.loopexit ] ; 2 uses
  %.2234261.i = phi i32 [ %i.dq, %.lr.ph264.i ], [ %.2234261.i.unr, %.lr.ph264.i.prol.loopexit ]
  %i.cs = load i64, ptr %.2231262.i, align 1, !tbaa !17
  store i64 %i.cs, ptr %.3263.i, align 1, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %.3263.i, i64 8
  %i.cu = getelementptr inbounds i8, ptr %.2231262.i, i64 %i.i ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 1, !tbaa !17
  store i64 %i.cv, ptr %i.ct, align 1, !tbaa !17
end_hunk_4
begin_hunk_5_@_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  %i.gc = getelementptr inbounds nuw i8, ptr %.1223.lcssa.i, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %.6.lcssa.i, i64 1
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %.1223.lcssa.i, i64 2
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !17
  %i.gh = getelementptr inbounds nuw i8, ptr %.6.lcssa.i, i64 2
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %.1223.lcssa.i, i64 3
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %.6.lcssa.i, i64 3
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !17
  %i.gl = getelementptr inbounds nuw i8, ptr %.6.lcssa.i, i64 4 ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %.1223.lcssa.i, i64 %i.ad
  %i.gn = add nuw nsw i32 %.1220.lcssa.i, 1
  br label %.lr.ph290.i.prol.loopexit

.lr.ph290.i.prol.loopexit:                        ; preds = %.lr.ph290.i.prol, %.lr.ph290.i.preheader
  %.lcssa113.unr = phi ptr [ poison, %.lr.ph290.i.preheader ], [ %i.gl, %.lr.ph290.i.prol ]
  %.7289.i.unr = phi ptr [ %.6.lcssa.i, %.lr.ph290.i.preheader ], [ %i.gl, %.lr.ph290.i.prol ]
  %.2221288.i.unr = phi i32 [ %.1220.lcssa.i, %.lr.ph290.i.preheader ], [ %i.gn, %.lr.ph290.i.prol ]
  %.2224287.i.unr = phi ptr [ %.1223.lcssa.i, %.lr.ph290.i.preheader ], [ %i.gm, %.lr.ph290.i.prol ]
  %i.go = icmp eq i32 %5, %.neg
  br i1 %i.go, label %._crit_edge291.i, label %.lr.ph290.i

.lr.ph283.i:                                      ; preds = %.preheader245.i, %.lr.ph283.i
  %.6282.i = phi ptr [ %i.hl, %.lr.ph283.i ], [ %.5.lcssa.i, %.preheader245.i ] ; 9 uses
  %.1220281.i = phi i32 [ %i.hn, %.lr.ph283.i ], [ %.0219.lcssa.i, %.preheader245.i ]
  %.1223280.i = phi ptr [ %i.hm, %.lr.ph283.i ], [ %.0222.lcssa.i, %.preheader245.i ] ; 6 uses
  %i.gp = load i8, ptr %.1223280.i, align 1, !tbaa !17
  store i8 %i.gp, ptr %.6282.i, align 1, !tbaa !17
  %i.gq = getelementptr inbounds i8, ptr %.1223280.i, i64 %i.ad ; 4 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %.6282.i, i64 1
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %.1223280.i, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !17
  %i.gv = getelementptr inbounds nuw i8, ptr %.6282.i, i64 2
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !17
  %i.gw = getelementptr i8, ptr %i.gq, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !17
  %i.gy = getelementptr inbounds nuw i8, ptr %.6282.i, i64 3
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !17
  %i.gz = getelementptr inbounds nuw i8, ptr %.1223280.i, i64 2
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %.6282.i, i64 4
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !17
  %i.hc = getelementptr i8, ptr %i.gq, i64 2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %.6282.i, i64 5
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %.1223280.i, i64 3
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %.6282.i, i64 6
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !17
  %i.hi = getelementptr i8, ptr %i.gq, i64 3
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %.6282.i, i64 7
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !17
  %i.hl = getelementptr inbounds nuw i8, ptr %.6282.i, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %.1223280.i, i64 %i.af ; 2 uses
  %i.hn = add nuw nsw i32 %.1220281.i, 2          ; 3 uses
  %i.ho = or disjoint i32 %i.hn, 1
  %i.hp = icmp slt i32 %i.ho, %5
  br i1 %i.hp, label %.lr.ph283.i, label %.preheader244.i, !llvm.loop !171

.lr.ph290.i:                                      ; preds = %.lr.ph290.i.prol.loopexit, %.lr.ph290.i
  %.7289.i = phi ptr [ %i.im, %.lr.ph290.i ], [ %.7289.i.unr, %.lr.ph290.i.prol.loopexit ] ; 9 uses
  %.2221288.i = phi i32 [ %i.io, %.lr.ph290.i ], [ %.2221288.i.unr, %.lr.ph290.i.prol.loopexit ]
  %.2224287.i = phi ptr [ %i.in, %.lr.ph290.i ], [ %.2224287.i.unr, %.lr.ph290.i.prol.loopexit ] ; 5 uses
  %i.hq = load i8, ptr %.2224287.i, align 1, !tbaa !17
  store i8 %i.hq, ptr %.7289.i, align 1, !tbaa !17
  %i.hr = getelementptr inbounds nuw i8, ptr %.2224287.i, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !17
  %i.ht = getelementptr inbounds nuw i8, ptr %.7289.i, i64 1
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !17
  %i.hu = getelementptr inbounds nuw i8, ptr %.2224287.i, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %.7289.i, i64 2
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !17
  %i.hx = getelementptr inbounds nuw i8, ptr %.2224287.i, i64 3
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !17
  %i.hz = getelementptr inbounds nuw i8, ptr %.7289.i, i64 3
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !17
  %i.ia = getelementptr inbounds nuw i8, ptr %.7289.i, i64 4
  %i.ib = getelementptr inbounds i8, ptr %.2224287.i, i64 %i.ad ; 5 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !17
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !17
  %i.if = getelementptr inbounds nuw i8, ptr %.7289.i, i64 5
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !17
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !17
  %i.ii = getelementptr inbounds nuw i8, ptr %.7289.i, i64 6
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 3
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !17
  %i.il = getelementptr inbounds nuw i8, ptr %.7289.i, i64 7
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !17
  %i.im = getelementptr inbounds nuw i8, ptr %.7289.i, i64 8 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.ib, i64 %i.ad
  %i.io = add nuw nsw i32 %.2221288.i, 2          ; 2 uses
  %exitcond371.not.i.1 = icmp eq i32 %i.io, %5
  br i1 %exitcond371.not.i.1, label %._crit_edge291.i, label %.lr.ph290.i, !llvm.loop !172

._crit_edge291.i:                                 ; preds = %.lr.ph290.i.prol.loopexit, %.lr.ph290.i, %.preheader244.i
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader244.i ], [ %.lcssa113.unr, %.lr.ph290.i.prol.loopexit ], [ %i.im, %.lr.ph290.i ] ; 2 uses
  %indvars.iv.next373.i = add nuw nsw i64 %indvars.iv372.i, 4 ; 3 uses
  %i.ip = icmp slt i64 %indvars.iv.next373.i, %invariant.op.i
  br i1 %i.ip, label %bb.e, label %.preheader243.loopexit.i, !llvm.loop !173

.preheader240.loopexit.i:                         ; preds = %._crit_edge317.i
  %i.iq = trunc nsw i64 %indvars.iv.next377.i to i32
  br label %.preheader240.i

.preheader240.i:                                  ; preds = %.preheader240.loopexit.i, %.preheader243.i
  %.2227.lcssa.i = phi i32 [ %.1226.lcssa.i, %.preheader243.i ], [ %i.iq, %.preheader240.loopexit.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader243.i ], [ %.11.lcssa.i, %.preheader240.loopexit.i ] ; 2 uses
  %i.ir = icmp slt i32 %.2227.lcssa.i, %3
  br i1 %i.ir, label %.lr.ph340.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph340.i:                                      ; preds = %.preheader240.i
  %i.is = sext i32 %4 to i64                      ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iu = icmp sgt i32 %5, 3
  %i.iv = sext i32 %i.c to i64                    ; 4 uses
  %i.iw = shl nsw i32 %i.c, 1
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i32 %i.c, 3
  %i.iz = sext i32 %i.iy to i64
  %i.ja = shl nsw i32 %i.c, 2
  %i.jb = sext i32 %i.ja to i64
  br i1 %i.iu, label %.lr.ph328.us.preheader.i, label %.lr.ph340.split.i

.lr.ph328.us.preheader.i:                         ; preds = %.lr.ph340.i
  %i.jc = and i32 %5, 2147483644                  ; 2 uses
  %i.jd = sext i32 %.2227.lcssa.i to i64
  %i.je = sext i32 %2 to i64
  %wide.trip.count387.i = sext i32 %3 to i64
  %.not = icmp eq i32 %i.jc, %5
  br label %.lr.ph328.us.i

.lr.ph328.us.i:                                   ; preds = %._crit_edge336.us.i, %.lr.ph328.us.preheader.i
  %indvars.iv384.i = phi i64 [ %i.jd, %.lr.ph328.us.preheader.i ], [ %indvars.iv.next385.i, %._crit_edge336.us.i ] ; 2 uses
  %.12339.us.i = phi ptr [ %.8.lcssa.i, %.lr.ph328.us.preheader.i ], [ %.14.lcssa.us.i, %._crit_edge336.us.i ]
  %i.jf = load ptr, ptr %0, align 8, !tbaa !9
  %i.jg = load i32, ptr %i.b, align 4, !tbaa !15
  %i.jh = sext i32 %i.jg to i64
  %i.ji = mul nsw i64 %i.jh, %i.is
  %i.jj = load i64, ptr %i.it, align 8, !tbaa !16
  %i.jk = mul i64 %i.ji, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 %indvars.iv384.i
  %i.jn = getelementptr i8, ptr %i.jm, i64 %i.je
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph328.us.i
  %.0326.us.i = phi i32 [ 0, %.lr.ph328.us.i ], [ %i.ke, %bb.f ]
  %.0209325.us.i = phi ptr [ %i.jn, %.lr.ph328.us.i ], [ %i.kd, %bb.f ] ; 5 uses
  %.13324.us.i = phi ptr [ %.12339.us.i, %.lr.ph328.us.i ], [ %i.kc, %bb.f ] ; 5 uses
  %i.jo = load i8, ptr %.0209325.us.i, align 1, !tbaa !17
  %i.jp = add i8 %i.jo, 127
  store i8 %i.jp, ptr %.13324.us.i, align 1, !tbaa !17
  %i.jq = getelementptr inbounds i8, ptr %.0209325.us.i, i64 %i.iv
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !17
  %i.js = add i8 %i.jr, 127
  %i.jt = getelementptr inbounds nuw i8, ptr %.13324.us.i, i64 1
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !17
  %i.ju = getelementptr inbounds i8, ptr %.0209325.us.i, i64 %i.ix
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !17
  %i.jw = add i8 %i.jv, 127
  %i.jx = getelementptr inbounds nuw i8, ptr %.13324.us.i, i64 2
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !17
  %i.jy = getelementptr inbounds i8, ptr %.0209325.us.i, i64 %i.iz
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !17
  %i.ka = add i8 %i.jz, 127
  %i.kb = getelementptr inbounds nuw i8, ptr %.13324.us.i, i64 3
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !17
  %i.kc = getelementptr inbounds nuw i8, ptr %.13324.us.i, i64 4 ; 3 uses
  %i.kd = getelementptr inbounds i8, ptr %.0209325.us.i, i64 %i.jb ; 2 uses
  %i.ke = add nuw nsw i32 %.0326.us.i, 4          ; 2 uses
  %i.kf = or disjoint i32 %i.ke, 3
  %i.kg = icmp slt i32 %i.kf, %5
  br i1 %i.kg, label %bb.f, label %..preheader_crit_edge.us.i, !llvm.loop !174

.lr.ph335.us.i:                                   ; preds = %..preheader_crit_edge.us.i, %.lr.ph335.us.i
  %.1334.us.i = phi i32 [ %i.kk, %.lr.ph335.us.i ], [ %i.jc, %..preheader_crit_edge.us.i ]
  %.1210333.us.i = phi ptr [ %i.kj, %.lr.ph335.us.i ], [ %i.kd, %..preheader_crit_edge.us.i ] ; 2 uses
  %.14332.us.i = phi ptr [ %i.ki, %.lr.ph335.us.i ], [ %i.kc, %..preheader_crit_edge.us.i ] ; 2 uses
  %i.kh = load i8, ptr %.1210333.us.i, align 1, !tbaa !17
  store i8 %i.kh, ptr %.14332.us.i, align 1, !tbaa !17
  %i.ki = getelementptr inbounds nuw i8, ptr %.14332.us.i, i64 1 ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %.1210333.us.i, i64 %i.iv
  %i.kk = add nuw nsw i32 %.1334.us.i, 1          ; 2 uses
  %i.kl = icmp slt i32 %i.kk, %5
  br i1 %i.kl, label %.lr.ph335.us.i, label %._crit_edge336.us.i, !llvm.loop !175

._crit_edge336.us.i:                              ; preds = %.lr.ph335.us.i, %..preheader_crit_edge.us.i
  %.14.lcssa.us.i = phi ptr [ %i.kc, %..preheader_crit_edge.us.i ], [ %i.ki, %.lr.ph335.us.i ]
  %indvars.iv.next385.i = add nsw i64 %indvars.iv384.i, 1 ; 2 uses
  %exitcond388.not.i = icmp eq i64 %indvars.iv.next385.i, %wide.trip.count387.i
  br i1 %exitcond388.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph328.us.i, !llvm.loop !176

..preheader_crit_edge.us.i:                       ; preds = %bb.f
  br i1 %.not, label %._crit_edge336.us.i, label %.lr.ph335.us.i

.lr.ph340.split.i:                                ; preds = %.lr.ph340.i
  %i.km = icmp sgt i32 %5, 0
  br i1 %i.km, label %.preheader.preheader.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.preheader.preheader.i:                           ; preds = %.lr.ph340.split.i
  %i.kn = sext i32 %.2227.lcssa.i to i64
  %i.ko = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %exitcond379.not.i = icmp eq i32 %5, 1
  %exitcond379.not.i.1 = icmp eq i32 %5, 2
  br label %.preheader.i

bb.g:                                             ; preds = %._crit_edge317.i, %.lr.ph321.i
  %indvars.iv376.i = phi i64 [ %i.eh, %.lr.ph321.i ], [ %indvars.iv.next377.i, %._crit_edge317.i ] ; 2 uses
  %.8320.i = phi ptr [ %.4.lcssa.i, %.lr.ph321.i ], [ %.11.lcssa.i, %._crit_edge317.i ] ; 2 uses
  %i.kp = load ptr, ptr %0, align 8, !tbaa !9
  %i.kq = load i32, ptr %i.b, align 4, !tbaa !15
  %i.kr = sext i32 %i.kq to i64
  %i.ks = mul nsw i64 %i.kr, %i.dw
  %i.kt = load i64, ptr %i.dx, align 8, !tbaa !16
  %i.ku = mul i64 %i.ks, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 %indvars.iv376.i
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.ej  ; 2 uses
  br i1 %i.dy, label %.lr.ph302.i, label %.preheader242.i

.preheader242.i:                                  ; preds = %.lr.ph302.i, %bb.g
  %.9.lcssa.i = phi ptr [ %.8320.i, %bb.g ], [ %i.me, %.lr.ph302.i ] ; 2 uses
  %.0213.lcssa.i = phi ptr [ %i.kx, %bb.g ], [ %i.mf, %.lr.ph302.i ] ; 2 uses
  %.0211.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.eg, %.lr.ph302.i ] ; 3 uses
  %i.ky = or disjoint i32 %.0211.lcssa.i, 1
  %i.kz = icmp slt i32 %i.ky, %5
  br i1 %i.kz, label %.lr.ph309.i, label %.preheader241.i

.lr.ph302.i:                                      ; preds = %bb.g, %.lr.ph302.i
  %.0211300.i = phi i32 [ %i.mg, %.lr.ph302.i ], [ 0, %bb.g ]
  %.0213299.i = phi ptr [ %i.mf, %.lr.ph302.i ], [ %i.kx, %bb.g ] ; 6 uses
  %.9298.i = phi ptr [ %i.me, %.lr.ph302.i ], [ %.8320.i, %bb.g ] ; 9 uses
  %i.la = load i8, ptr %.0213299.i, align 1, !tbaa !17
  %i.lb = add i8 %i.la, 127
  store i8 %i.lb, ptr %.9298.i, align 1, !tbaa !17
  %i.lc = getelementptr inbounds i8, ptr %.0213299.i, i64 %i.dz ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !17
  %i.le = add i8 %i.ld, 127
  %i.lf = getelementptr inbounds nuw i8, ptr %.9298.i, i64 1
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !17
  %i.lg = getelementptr inbounds i8, ptr %.0213299.i, i64 %i.eb ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !17
  %i.li = add i8 %i.lh, 127
  %i.lj = getelementptr inbounds nuw i8, ptr %.9298.i, i64 2
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !17
  %i.lk = getelementptr inbounds i8, ptr %.0213299.i, i64 %i.ed ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !17
  %i.lm = add i8 %i.ll, 127
  %i.ln = getelementptr inbounds nuw i8, ptr %.9298.i, i64 3
  store i8 %i.lm, ptr %i.ln, align 1, !tbaa !17
  %i.lo = getelementptr inbounds nuw i8, ptr %.0213299.i, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !17
  %i.lq = add i8 %i.lp, 127
  %i.lr = getelementptr inbounds nuw i8, ptr %.9298.i, i64 4
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !17
  %i.ls = getelementptr i8, ptr %i.lc, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !17
  %i.lu = add i8 %i.lt, 127
  %i.lv = getelementptr inbounds nuw i8, ptr %.9298.i, i64 5
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !17
  %i.lw = getelementptr i8, ptr %i.lg, i64 1
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !17
  %i.ly = add i8 %i.lx, 127
  %i.lz = getelementptr inbounds nuw i8, ptr %.9298.i, i64 6
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !17
  %i.ma = getelementptr i8, ptr %i.lk, i64 1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !17
  %i.mc = add i8 %i.mb, 127
  %i.md = getelementptr inbounds nuw i8, ptr %.9298.i, i64 7
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !17
  %i.me = getelementptr inbounds nuw i8, ptr %.9298.i, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %.0213299.i, i64 %i.ef ; 2 uses
  %i.mg = add nuw nsw i32 %.0211300.i, 4          ; 2 uses
  %i.mh = or disjoint i32 %i.mg, 3
  %i.mi = icmp slt i32 %i.mh, %5
  br i1 %i.mi, label %.lr.ph302.i, label %.preheader242.i, !llvm.loop !177

.preheader241.i:                                  ; preds = %.lr.ph309.i, %.preheader242.i
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader242.i ], [ %i.ne, %.lr.ph309.i ] ; 3 uses
  %.1214.lcssa.i = phi ptr [ %.0213.lcssa.i, %.preheader242.i ], [ %i.nf, %.lr.ph309.i ] ; 2 uses
  %.1212.lcssa.i = phi i32 [ %.0211.lcssa.i, %.preheader242.i ], [ %i.ng, %.lr.ph309.i ] ; 5 uses
  %i.mj = icmp slt i32 %.1212.lcssa.i, %5
  br i1 %i.mj, label %.lr.ph316.i.preheader, label %._crit_edge317.i

.lr.ph316.i.preheader:                            ; preds = %.preheader241.i
  %i.mk = sub i32 %5, %.1212.lcssa.i
  %xtraiter128 = and i32 %i.mk, 3                 ; 2 uses
  %lcmp.mod129.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph316.i.prol.loopexit, label %.lr.ph316.i.prol

.lr.ph316.i.prol:                                 ; preds = %.lr.ph316.i.preheader, %.lr.ph316.i.prol
  %.2315.i.prol = phi i32 [ %i.mr, %.lr.ph316.i.prol ], [ %.1212.lcssa.i, %.lr.ph316.i.preheader ]
  %.2215314.i.prol = phi ptr [ %i.mq, %.lr.ph316.i.prol ], [ %.1214.lcssa.i, %.lr.ph316.i.preheader ] ; 3 uses
  %.11313.i.prol = phi ptr [ %i.mp, %.lr.ph316.i.prol ], [ %.10.lcssa.i, %.lr.ph316.i.preheader ] ; 3 uses
  %prol.iter130 = phi i32 [ %prol.iter130.next, %.lr.ph316.i.prol ], [ 0, %.lr.ph316.i.preheader ]
  %i.ml = load i8, ptr %.2215314.i.prol, align 1, !tbaa !17
  store i8 %i.ml, ptr %.11313.i.prol, align 1, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %.2215314.i.prol, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.11313.i.prol, i64 1
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %.11313.i.prol, i64 2 ; 3 uses
  %i.mq = getelementptr inbounds i8, ptr %.2215314.i.prol, i64 %i.dz ; 2 uses
  %i.mr = add nuw nsw i32 %.2315.i.prol, 1        ; 2 uses
  %prol.iter130.next = add i32 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i32 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %.lr.ph316.i.prol.loopexit, label %.lr.ph316.i.prol, !llvm.loop !178

.lr.ph316.i.prol.loopexit:                        ; preds = %.lr.ph316.i.prol, %.lr.ph316.i.preheader
  %.lcssa107.unr = phi ptr [ poison, %.lr.ph316.i.preheader ], [ %i.mp, %.lr.ph316.i.prol ]
  %.2315.i.unr = phi i32 [ %.1212.lcssa.i, %.lr.ph316.i.preheader ], [ %i.mr, %.lr.ph316.i.prol ]
  %.2215314.i.unr = phi ptr [ %.1214.lcssa.i, %.lr.ph316.i.preheader ], [ %i.mq, %.lr.ph316.i.prol ]
  %.11313.i.unr = phi ptr [ %.10.lcssa.i, %.lr.ph316.i.preheader ], [ %i.mp, %.lr.ph316.i.prol ]
  %i.ms = sub i32 %.1212.lcssa.i, %5
  %i.mt = icmp ugt i32 %i.ms, -4
  br i1 %i.mt, label %._crit_edge317.i, label %.lr.ph316.i

.lr.ph309.i:                                      ; preds = %.preheader242.i, %.lr.ph309.i
  %.1212308.i = phi i32 [ %i.ng, %.lr.ph309.i ], [ %.0211.lcssa.i, %.preheader242.i ]
  %.1214307.i = phi ptr [ %i.nf, %.lr.ph309.i ], [ %.0213.lcssa.i, %.preheader242.i ] ; 4 uses
  %.10306.i = phi ptr [ %i.ne, %.lr.ph309.i ], [ %.9.lcssa.i, %.preheader242.i ] ; 5 uses
  %i.mu = load i8, ptr %.1214307.i, align 1, !tbaa !17
  store i8 %i.mu, ptr %.10306.i, align 1, !tbaa !17
  %i.mv = getelementptr inbounds i8, ptr %.1214307.i, i64 %i.dz ; 2 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !17
  %i.mx = getelementptr inbounds nuw i8, ptr %.10306.i, i64 1
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %.1214307.i, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !17
  %i.na = getelementptr inbounds nuw i8, ptr %.10306.i, i64 2
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !17
  %i.nb = getelementptr i8, ptr %i.mv, i64 1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !17
  %i.nd = getelementptr inbounds nuw i8, ptr %.10306.i, i64 3
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %.10306.i, i64 4 ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %.1214307.i, i64 %i.eb ; 2 uses
  %i.ng = add nuw nsw i32 %.1212308.i, 2          ; 3 uses
  %i.nh = or disjoint i32 %i.ng, 1
  %i.ni = icmp slt i32 %i.nh, %5
  br i1 %i.ni, label %.lr.ph309.i, label %.preheader241.i, !llvm.loop !179

.lr.ph316.i:                                      ; preds = %.lr.ph316.i.prol.loopexit, %.lr.ph316.i
  %.2315.i = phi i32 [ %i.oh, %.lr.ph316.i ], [ %.2315.i.unr, %.lr.ph316.i.prol.loopexit ]
  %.2215314.i = phi ptr [ %i.og, %.lr.ph316.i ], [ %.2215314.i.unr, %.lr.ph316.i.prol.loopexit ] ; 3 uses
  %.11313.i = phi ptr [ %i.of, %.lr.ph316.i ], [ %.11313.i.unr, %.lr.ph316.i.prol.loopexit ] ; 9 uses
  %i.nj = load i8, ptr %.2215314.i, align 1, !tbaa !17
  store i8 %i.nj, ptr %.11313.i, align 1, !tbaa !17
  %i.nk = getelementptr inbounds nuw i8, ptr %.2215314.i, i64 1
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !17
  %i.nm = getelementptr inbounds nuw i8, ptr %.11313.i, i64 1
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !17
  %i.nn = getelementptr inbounds nuw i8, ptr %.11313.i, i64 2
  %i.no = getelementptr inbounds i8, ptr %.2215314.i, i64 %i.dz ; 3 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !17
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !17
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !17
  %i.ns = getelementptr inbounds nuw i8, ptr %.11313.i, i64 3
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !17
  %i.nt = getelementptr inbounds nuw i8, ptr %.11313.i, i64 4
  %i.nu = getelementptr inbounds i8, ptr %i.no, i64 %i.dz ; 3 uses
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !17
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !17
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !17
  %i.ny = getelementptr inbounds nuw i8, ptr %.11313.i, i64 5
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !17
  %i.nz = getelementptr inbounds nuw i8, ptr %.11313.i, i64 6
  %i.oa = getelementptr inbounds i8, ptr %i.nu, i64 %i.dz ; 3 uses
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !17
  store i8 %i.ob, ptr %i.nz, align 1, !tbaa !17
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 1
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !17
  %i.oe = getelementptr inbounds nuw i8, ptr %.11313.i, i64 7
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !17
  %i.of = getelementptr inbounds nuw i8, ptr %.11313.i, i64 8 ; 2 uses
  %i.og = getelementptr inbounds i8, ptr %i.oa, i64 %i.dz
  %i.oh = add nuw nsw i32 %.2315.i, 4             ; 2 uses
  %exitcond375.not.i.3 = icmp eq i32 %i.oh, %5
  br i1 %exitcond375.not.i.3, label %._crit_edge317.i, label %.lr.ph316.i, !llvm.loop !180

._crit_edge317.i:                                 ; preds = %.lr.ph316.i.prol.loopexit, %.lr.ph316.i, %.preheader241.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader241.i ], [ %.lcssa107.unr, %.lr.ph316.i.prol.loopexit ], [ %i.of, %.lr.ph316.i ] ; 2 uses
  %indvars.iv.next377.i = add nuw nsw i64 %indvars.iv376.i, 2 ; 3 uses
  %i.oi = icmp slt i64 %indvars.iv.next377.i, %invariant.op416.i
  br i1 %i.oi, label %bb.g, label %.preheader240.loopexit.i, !llvm.loop !181

.preheader.i:                                     ; preds = %._crit_edge336.i, %.preheader.preheader.i
  %indvars.iv380.i = phi i64 [ %i.kn, %.preheader.preheader.i ], [ %indvars.iv.next381.i, %._crit_edge336.i ] ; 2 uses
  %.12339.i = phi ptr [ %.8.lcssa.i, %.preheader.preheader.i ], [ %.lcssa101, %._crit_edge336.i ] ; 4 uses
  %i.oj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ok = load i32, ptr %i.b, align 4, !tbaa !15
  %i.ol = sext i32 %i.ok to i64
  %i.om = mul nsw i64 %i.ol, %i.is
  %i.on = load i64, ptr %i.it, align 8, !tbaa !16
  %i.oo = mul i64 %i.om, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.oo
  %i.oq = getelementptr i8, ptr %i.op, i64 %indvars.iv380.i
  %i.or = getelementptr i8, ptr %i.oq, i64 %i.ko  ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !17
  store i8 %i.os, ptr %.12339.i, align 1, !tbaa !17
  %i.ot = getelementptr inbounds nuw i8, ptr %.12339.i, i64 1 ; 2 uses
  br i1 %exitcond379.not.i, label %._crit_edge336.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %i.ou = getelementptr inbounds i8, ptr %i.or, i64 %i.iv ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !17
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !17
  %i.ow = getelementptr inbounds nuw i8, ptr %.12339.i, i64 2 ; 2 uses
  br i1 %exitcond379.not.i.1, label %._crit_edge336.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ox = getelementptr inbounds i8, ptr %i.ou, i64 %i.iv
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !17
  store i8 %i.oy, ptr %i.ow, align 1, !tbaa !17
  %i.oz = getelementptr inbounds nuw i8, ptr %.12339.i, i64 3
  br label %._crit_edge336.i

._crit_edge336.i:                                 ; preds = %bb.i, %bb.h, %.preheader.i
  %.lcssa101 = phi ptr [ %i.ot, %.preheader.i ], [ %i.ow, %bb.h ], [ %i.oz, %bb.i ]
  %indvars.iv.next381.i = add nsw i64 %indvars.iv380.i, 1 ; 2 uses
  %exitcond383.not.i = icmp eq i64 %indvars.iv.next381.i, %wide.trip.count.i
  br i1 %exitcond383.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.preheader.i, !llvm.loop !176

_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge336.i, %._crit_edge336.us.i, %bb.b, %.preheader240.i, %.lr.ph340.split.i
  ret void
}

declare void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 22 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.n = icmp sgt i32 %3, 7
  br i1 %i.n, label %.lr.ph783.i, label %.preheader701.i

.lr.ph783.i:                                      ; preds = %bb.f
  %i.o = mul nsw i32 %i.c, %4
  %i.p = sext i32 %i.o to i64
  %i.q = sext i32 %2 to i64                       ; 2 uses
  %i.r = icmp sgt i32 %5, 3                       ; 3 uses
  %.idx502.i = shl i64 %i.l, 4                    ; 4 uses
  %.idx494.i = shl i64 %i.l, 3
  %.idx495.i = mul i64 %i.l, 12
  %.idx497.i = mul i64 %i.l, 20
  %.idx498.i = mul i64 %i.l, 24
  %.idx499.i = mul i64 %i.l, 28
  %i.s = trunc i64 %i.l to i32
  %i.t = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %i.u = shufflevector <8 x i32> %i.t, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.v = mul <8 x i32> %i.u, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.w = and i32 %5, -4                           ; 3 uses
  %i.x = zext nneg i32 %3 to i64
  br label %bb.i

.preheader701.loopexit.i:                         ; preds = %.loopexit703.i
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader701.i

.preheader701.i:                                  ; preds = %.preheader701.loopexit.i, %bb.f
  %.0441.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.y, %.preheader701.loopexit.i ] ; 3 uses
  %.0439.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.15.i, %.preheader701.loopexit.i ] ; 4 uses
  %i.z = or disjoint i32 %.0441.lcssa.i, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.lr.ph833.i, label %.preheader694.i

.lr.ph833.i:                                      ; preds = %.preheader701.i
  %i.ab = mul nsw i32 %i.c, %4
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = sext i32 %2 to i64                      ; 4 uses
  %i.ae = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx.i = shl i64 %i.l, 3
  %.idx493.i = mul i64 %i.l, 12
  %i.af = trunc i64 %i.l to i32
  %i.ag = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ah = shufflevector <4 x i32> %i.ag, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ai = mul <4 x i32> %i.ah, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.aj = and i32 %5, -4                          ; 2 uses
  %i.ak = zext i32 %.0441.lcssa.i to i64          ; 5 uses
  %i.al = sext i32 %3 to i64
  %invariant.op.i = add nsw i64 %i.al, -3         ; 3 uses
  switch i32 %i.c, label %.loopexit696.i.preheader [
    i32 4, label %.preheader700.i.us
    i32 1, label %.preheader697.i.us
  ]

.loopexit696.i.preheader:                         ; preds = %.lr.ph833.i
  %i.am = add nuw nsw i64 %i.ak, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.am)
  %i.an = xor i64 %i.ak, -1
  %i.ao = add nsw i64 %smax, %i.an
  %i.ap = and i64 %i.ao, -4
  %i.aq = add i64 %i.ap, %i.ak
  %i.ar = add i64 %i.aq, 4
  br label %.preheader694.loopexit.i

.preheader700.i.us:                               ; preds = %.lr.ph833.i, %.loopexit696.i.us
  %indvars.iv954.i.us = phi i64 [ %indvars.iv.next955.i.us, %.loopexit696.i.us ], [ %i.ak, %.lr.ph833.i ] ; 3 uses
  %.16832.i.us = phi ptr [ %.26.i.us, %.loopexit696.i.us ], [ %.0439.lcssa.i, %.lr.ph833.i ] ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !9
  %i.at = add nsw i64 %indvars.iv954.i.us, %i.ad
  %i.au = mul i64 %i.at, %i.l
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ac ; 2 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !9
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ad
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv954.i.us
  %i.ba = load <4 x float>, ptr %i.az, align 16, !tbaa !17 ; 9 uses
  br i1 %i.ae, label %.lr.ph789.i.us, label %._crit_edge790.i.us

.lr.ph789.i.us:                                   ; preds = %.preheader700.i.us, %.lr.ph789.i.us
  %.17788.i.us = phi ptr [ %i.ci, %.lr.ph789.i.us ], [ %.16832.i.us, %.preheader700.i.us ] ; 3 uses
  %.0473787.i.us = phi ptr [ %i.cj, %.lr.ph789.i.us ], [ %i.aw, %.preheader700.i.us ] ; 5 uses
  %.0480786.i.us = phi i32 [ %i.ck, %.lr.ph789.i.us ], [ 0, %.preheader700.i.us ]
  %i.bb = phi <4 x i32> [ %i.ch, %.lr.ph789.i.us ], [ zeroinitializer, %.preheader700.i.us ]
  %i.bc = load <4 x float>, ptr %.0473787.i.us, align 16, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.0473787.i.us, i64 16
  %i.be = load <4 x float>, ptr %i.bd, align 16, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.0473787.i.us, i64 32
  %i.bg = load <4 x float>, ptr %i.bf, align 16, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.0473787.i.us, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !tbaa !17
  %i.bj = fmul fast <4 x float> %i.bc, %i.ba      ; 2 uses
  %i.bk = fmul fast <4 x float> %i.be, %i.ba      ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bg, %i.ba      ; 2 uses
  %i.bm = fmul fast <4 x float> %i.bi, %i.ba      ; 2 uses
  %i.bn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bj)
  %i.bo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bk)
  %i.bp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bl)
  %i.bq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bm)
  %i.br = fadd fast <4 x float> %i.bn, %i.bj
  %i.bs = fadd fast <4 x float> %i.bo, %i.bk
  %i.bt = fadd fast <4 x float> %i.bp, %i.bl
  %i.bu = fadd fast <4 x float> %i.bq, %i.bm
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br)
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bs)
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bt)
  %i.by = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bu)
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bv, <4 x i32> %i.bw)
  %i.ca = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bx, <4 x i32> %i.by)
  %i.cb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bz, <8 x i16> splat (i16 -127))
  %i.cc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cb, <8 x i16> splat (i16 127))
  %i.cd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 -127))
  %i.ce = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cd, <8 x i16> splat (i16 127))
  %i.cf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cc, <8 x i16> %i.ce)
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.ch = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bb, <16 x i8> splat (i8 127), <16 x i8> %i.cg) ; 2 uses
  store <16 x i8> %i.cg, ptr %.17788.i.us, align 1, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %.17788.i.us, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0473787.i.us, i64 64 ; 2 uses
  %i.ck = add nuw nsw i32 %.0480786.i.us, 4       ; 2 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = icmp slt i32 %i.cl, %5
  br i1 %i.cm, label %.lr.ph789.i.us, label %bb.g, !llvm.loop !185

bb.g:                                             ; preds = %.lr.ph789.i.us
  store <4 x i32> %i.ch, ptr %i.ci, align 1, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %.17788.i.us, i64 32
  br label %._crit_edge790.i.us

._crit_edge790.i.us:                              ; preds = %bb.g, %.preheader700.i.us
  %.0473.lcssa1021.i.us = phi ptr [ %i.cj, %bb.g ], [ %i.aw, %.preheader700.i.us ] ; 2 uses
  %.0480.lcssa1019.i.us = phi i32 [ %i.aj, %bb.g ], [ 0, %.preheader700.i.us ] ; 3 uses
  %.18.i.us = phi ptr [ %i.cn, %bb.g ], [ %.16832.i.us, %.preheader700.i.us ] ; 2 uses
  %i.co = or disjoint i32 %.0480.lcssa1019.i.us, 1
  %i.cp = icmp slt i32 %i.co, %5
  br i1 %i.cp, label %.lr.ph799.i.us, label %.preheader698.i.us

.lr.ph799.i.us:                                   ; preds = %._crit_edge790.i.us, %.lr.ph799.i.us
  %.19797.i.us = phi ptr [ %i.dj, %.lr.ph799.i.us ], [ %.18.i.us, %._crit_edge790.i.us ] ; 2 uses
  %.1474796.i.us = phi ptr [ %i.dk, %.lr.ph799.i.us ], [ %.0473.lcssa1021.i.us, %._crit_edge790.i.us ] ; 3 uses
  %.1481795.i.us = phi i32 [ %i.dl, %.lr.ph799.i.us ], [ %.0480.lcssa1019.i.us, %._crit_edge790.i.us ]
  %i.cq = load <4 x float>, ptr %.1474796.i.us, align 16, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %.1474796.i.us, i64 16
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !tbaa !17
  %i.ct = fmul fast <4 x float> %i.cq, %i.ba      ; 2 uses
  %i.cu = fmul fast <4 x float> %i.cs, %i.ba      ; 2 uses
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cw = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cv)
  %i.cy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cw)
  %i.cz = fadd fast <4 x float> %i.cx, %i.cv
  %i.da = fadd fast <4 x float> %i.cy, %i.cw
  %i.db = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cz)
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.da)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.db, <4 x i32> %i.dc)
  %i.de = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dd, <8 x i16> splat (i16 -127))
  %i.df = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.de, <8 x i16> splat (i16 127))
  %i.dg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.df, <8 x i16> poison)
  %i.dh = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.di = extractelement <2 x i64> %i.dh, i64 0
end_hunk_5
begin_hunk_6_@_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.aeb = mul nsw i32 %i.adv, 127
  store i32 %i.aeb, ptr %i.adw, align 4, !tbaa !43
  %i.aec = getelementptr inbounds nuw i8, ptr %.33868.i, i64 8
  br label %._crit_edge874.i

._crit_edge874.i:                                 ; preds = %bb.p, %bb.o
  %.0436.lcssa1055.i = phi i32 [ %i.xz, %bb.p ], [ 0, %bb.o ] ; 7 uses
  %.0437.lcssa1053.i = phi ptr [ %i.adx, %bb.p ], [ %i.acu, %bb.o ] ; 8 uses
  %.34.i = phi ptr [ %i.aec, %bb.p ], [ %.32887.i, %bb.o ] ; 9 uses
  %i.aed = icmp slt i32 %.0436.lcssa1055.i, %5
  br i1 %i.aed, label %iter.check, label %._crit_edge884.i

iter.check:                                       ; preds = %._crit_edge874.i
  %i.aee = xor i32 %.0436.lcssa1055.i, -1
  %i.aef = add i32 %5, %i.aee                     ; 3 uses
  %i.aeg = zext i32 %i.aef to i64
  %i.aeh = add nuw nsw i64 %i.aeg, 1              ; 5 uses
  %min.iters.check242 = icmp ult i32 %i.aef, 3
  br i1 %min.iters.check242, label %.lr.ph883.i.preheader, label %vector.memcheck233

vector.memcheck233:                               ; preds = %iter.check
  %scevgep234 = getelementptr i8, ptr %.34.i, i64 1
  %i.aei = xor i32 %.0436.lcssa1055.i, -1
  %i.aej = add i32 %5, %i.aei
  %i.aek = zext i32 %i.aej to i64                 ; 2 uses
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.aek
  %scevgep236 = getelementptr i8, ptr %.0437.lcssa1053.i, i64 4
  %i.ael = shl nuw nsw i64 %i.aek, 2
  %scevgep237 = getelementptr i8, ptr %scevgep236, i64 %i.ael
  %bound0238 = icmp ult ptr %.34.i, %scevgep237
  %bound1239 = icmp ult ptr %.0437.lcssa1053.i, %scevgep235
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %.lr.ph883.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck233
  %min.iters.check243 = icmp ult i32 %i.aef, 31
  br i1 %min.iters.check243, label %vec.epilog.ph, label %vector.ph244

vector.ph244:                                     ; preds = %vector.main.loop.iter.check
  %i.aem = and i64 %i.aeh, 28
  %n.vec245 = and i64 %i.aeh, 8589934560          ; 6 uses
  %i.aen = trunc i64 %n.vec245 to i32
  %i.aeo = add i32 %.0436.lcssa1055.i, %i.aen
  %i.aep = shl nuw nsw i64 %n.vec245, 2
  %i.aeq = getelementptr i8, ptr %.0437.lcssa1053.i, i64 %i.aep
  %i.aer = getelementptr i8, ptr %.34.i, i64 %n.vec245 ; 2 uses
  %broadcast.splatinsert246 = insertelement <8 x float> poison, float %i.acx, i64 0
  %broadcast.splat247 = shufflevector <8 x float> %broadcast.splatinsert246, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph244
  %index249 = phi i64 [ 0, %vector.ph244 ], [ %index.next256, %vector.body248 ] ; 3 uses
  %i.aes = shl i64 %index249, 2
  %next.gep250 = getelementptr i8, ptr %.0437.lcssa1053.i, i64 %i.aes ; 4 uses
  %next.gep251 = getelementptr i8, ptr %.34.i, i64 %index249 ; 4 uses
  %i.aet = getelementptr i8, ptr %next.gep250, i64 32
  %i.aeu = getelementptr i8, ptr %next.gep250, i64 64
  %i.aev = getelementptr i8, ptr %next.gep250, i64 96
  %wide.load252 = load <8 x float>, ptr %next.gep250, align 4, !tbaa !203, !alias.scope !219
  %wide.load253 = load <8 x float>, ptr %i.aet, align 4, !tbaa !203, !alias.scope !219
  %wide.load254 = load <8 x float>, ptr %i.aeu, align 4, !tbaa !203, !alias.scope !219
  %wide.load255 = load <8 x float>, ptr %i.aev, align 4, !tbaa !203, !alias.scope !219
  %i.aew = fmul fast <8 x float> %wide.load252, %broadcast.splat247
  %i.aex = fmul fast <8 x float> %wide.load253, %broadcast.splat247
  %i.aey = fmul fast <8 x float> %wide.load254, %broadcast.splat247
  %i.aez = fmul fast <8 x float> %wide.load255, %broadcast.splat247
  %i.afa = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aew)
  %i.afb = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aex)
  %i.afc = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aey)
  %i.afd = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aez)
  %i.afe = fptosi <8 x float> %i.afa to <8 x i32>
  %i.aff = fptosi <8 x float> %i.afb to <8 x i32>
  %i.afg = fptosi <8 x float> %i.afc to <8 x i32>
  %i.afh = fptosi <8 x float> %i.afd to <8 x i32>
  %i.afi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.afe, <8 x i32> splat (i32 -127))
  %i.afj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aff, <8 x i32> splat (i32 -127))
  %i.afk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.afg, <8 x i32> splat (i32 -127))
  %i.afl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.afh, <8 x i32> splat (i32 -127))
  %i.afm = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.afi, <8 x i32> splat (i32 127))
  %i.afn = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.afj, <8 x i32> splat (i32 127))
  %i.afo = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.afk, <8 x i32> splat (i32 127))
  %i.afp = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.afl, <8 x i32> splat (i32 127))
  %i.afq = trunc nsw <8 x i32> %i.afm to <8 x i8>
  %i.afr = trunc nsw <8 x i32> %i.afn to <8 x i8>
  %i.afs = trunc nsw <8 x i32> %i.afo to <8 x i8>
  %i.aft = trunc nsw <8 x i32> %i.afp to <8 x i8>
  %i.afu = getelementptr i8, ptr %next.gep251, i64 8
  %i.afv = getelementptr i8, ptr %next.gep251, i64 16
  %i.afw = getelementptr i8, ptr %next.gep251, i64 24
  store <8 x i8> %i.afq, ptr %next.gep251, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  store <8 x i8> %i.afr, ptr %i.afu, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  store <8 x i8> %i.afs, ptr %i.afv, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  store <8 x i8> %i.aft, ptr %i.afw, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  %index.next256 = add nuw i64 %index249, 32      ; 2 uses
  %i.afx = icmp eq i64 %index.next256, %n.vec245
  br i1 %i.afx, label %middle.block257, label %vector.body248, !llvm.loop !224

middle.block257:                                  ; preds = %vector.body248
  %cmp.n258 = icmp eq i64 %i.aeh, %n.vec245
  br i1 %cmp.n258, label %._crit_edge884.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block257
  %min.epilog.iters.check = icmp eq i64 %i.aem, 0
  br i1 %min.epilog.iters.check, label %.lr.ph883.i.preheader, label %vec.epilog.ph, !prof !122

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec245, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec262 = and i64 %i.aeh, 8589934588          ; 5 uses
  %i.afy = trunc i64 %n.vec262 to i32
  %i.afz = add i32 %.0436.lcssa1055.i, %i.afy
  %i.aga = shl nuw nsw i64 %n.vec262, 2
  %i.agb = getelementptr i8, ptr %.0437.lcssa1053.i, i64 %i.aga
  %i.agc = getelementptr i8, ptr %.34.i, i64 %n.vec262 ; 2 uses
  %broadcast.splatinsert263 = insertelement <4 x float> poison, float %i.acx, i64 0
  %broadcast.splat264 = shufflevector <4 x float> %broadcast.splatinsert263, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index265 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next269, %vec.epilog.vector.body ] ; 3 uses
  %i.agd = shl i64 %index265, 2
  %next.gep266 = getelementptr i8, ptr %.0437.lcssa1053.i, i64 %i.agd
  %next.gep267 = getelementptr i8, ptr %.34.i, i64 %index265
  %wide.load268 = load <4 x float>, ptr %next.gep266, align 4, !tbaa !203, !alias.scope !219
  %i.age = fmul fast <4 x float> %wide.load268, %broadcast.splat264
  %i.agf = tail call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.age)
  %i.agg = fptosi <4 x float> %i.agf to <4 x i32>
  %i.agh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.agg, <4 x i32> splat (i32 -127))
  %i.agi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agh, <4 x i32> splat (i32 127))
  %i.agj = trunc nsw <4 x i32> %i.agi to <4 x i8>
  store <4 x i8> %i.agj, ptr %next.gep267, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  %index.next269 = add nuw i64 %index265, 4       ; 2 uses
  %i.agk = icmp eq i64 %index.next269, %n.vec262
  br i1 %i.agk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n270 = icmp eq i64 %i.aeh, %n.vec262
  br i1 %cmp.n270, label %._crit_edge884.i, label %.lr.ph883.i.preheader

.lr.ph883.i.preheader:                            ; preds = %vector.memcheck233, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1881.i.ph = phi i32 [ %.0436.lcssa1055.i, %iter.check ], [ %.0436.lcssa1055.i, %vector.memcheck233 ], [ %i.aeo, %vec.epilog.iter.check ], [ %i.afz, %vec.epilog.middle.block ] ; 4 uses
  %.1438880.i.ph = phi ptr [ %.0437.lcssa1053.i, %iter.check ], [ %.0437.lcssa1053.i, %vector.memcheck233 ], [ %i.aeq, %vec.epilog.iter.check ], [ %i.agb, %vec.epilog.middle.block ] ; 3 uses
  %.35879.i.ph = phi ptr [ %.34.i, %iter.check ], [ %.34.i, %vector.memcheck233 ], [ %i.aer, %vec.epilog.iter.check ], [ %i.agc, %vec.epilog.middle.block ] ; 3 uses
  %i.agl = sub i32 %5, %.1881.i.ph
  %.neg328 = add i32 %.1881.i.ph, 1
  %xtraiter325 = and i32 %i.agl, 1
  %lcmp.mod326.not = icmp eq i32 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.lr.ph883.i.prol.loopexit, label %.lr.ph883.i.prol

.lr.ph883.i.prol:                                 ; preds = %.lr.ph883.i.preheader
  %i.agm = load float, ptr %.1438880.i.ph, align 4, !tbaa !203
  %i.agn = fmul fast float %i.agm, %i.acx
  %i.ago = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.agn)
  %i.agp = fptosi float %i.ago to i32
  %spec.select.i687.i.prol = tail call i32 @llvm.smax.i32(i32 %i.agp, i32 -127)
  %.0.i688.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i687.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i688.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.35879.i.ph, align 1, !tbaa !17
  %i.agq = getelementptr inbounds nuw i8, ptr %.35879.i.ph, i64 1 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.1438880.i.ph, i64 4
  %i.ags = add nuw nsw i32 %.1881.i.ph, 1
  br label %.lr.ph883.i.prol.loopexit

.lr.ph883.i.prol.loopexit:                        ; preds = %.lr.ph883.i.prol, %.lr.ph883.i.preheader
  %.lcssa276.unr = phi ptr [ poison, %.lr.ph883.i.preheader ], [ %i.agq, %.lr.ph883.i.prol ]
  %.1881.i.unr = phi i32 [ %.1881.i.ph, %.lr.ph883.i.preheader ], [ %i.ags, %.lr.ph883.i.prol ]
  %.1438880.i.unr = phi ptr [ %.1438880.i.ph, %.lr.ph883.i.preheader ], [ %i.agr, %.lr.ph883.i.prol ]
  %.35879.i.unr = phi ptr [ %.35879.i.ph, %.lr.ph883.i.preheader ], [ %i.agq, %.lr.ph883.i.prol ]
  %i.agt = icmp eq i32 %5, %.neg328
  br i1 %i.agt, label %._crit_edge884.i, label %.lr.ph883.i

.lr.ph883.i:                                      ; preds = %.lr.ph883.i.prol.loopexit, %.lr.ph883.i
  %.1881.i = phi i32 [ %i.ahg, %.lr.ph883.i ], [ %.1881.i.unr, %.lr.ph883.i.prol.loopexit ]
  %.1438880.i = phi ptr [ %i.ahf, %.lr.ph883.i ], [ %.1438880.i.unr, %.lr.ph883.i.prol.loopexit ] ; 3 uses
  %.35879.i = phi ptr [ %i.ahe, %.lr.ph883.i ], [ %.35879.i.unr, %.lr.ph883.i.prol.loopexit ] ; 3 uses
  %i.agu = load float, ptr %.1438880.i, align 4, !tbaa !203
  %i.agv = fmul fast float %i.agu, %i.acx
  %i.agw = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.agv)
  %i.agx = fptosi float %i.agw to i32
  %spec.select.i687.i = tail call i32 @llvm.smax.i32(i32 %i.agx, i32 -127)
  %.0.i688.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i687.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i688.i to i8
  store i8 %.0.i.i, ptr %.35879.i, align 1, !tbaa !17
  %i.agy = getelementptr inbounds nuw i8, ptr %.35879.i, i64 1
  %i.agz = getelementptr inbounds nuw i8, ptr %.1438880.i, i64 4
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !203
  %i.ahb = fmul fast float %i.aha, %i.acx
  %i.ahc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ahb)
  %i.ahd = fptosi float %i.ahc to i32
  %spec.select.i687.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ahd, i32 -127)
  %.0.i688.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i687.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i688.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.agy, align 1, !tbaa !17
  %i.ahe = getelementptr inbounds nuw i8, ptr %.35879.i, i64 2 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1438880.i, i64 8
  %i.ahg = add nuw nsw i32 %.1881.i, 2            ; 2 uses
  %exitcond961.not.i.1 = icmp eq i32 %i.ahg, %5
  br i1 %exitcond961.not.i.1, label %._crit_edge884.i, label %.lr.ph883.i, !llvm.loop !226

._crit_edge884.i:                                 ; preds = %.lr.ph883.i.prol.loopexit, %.lr.ph883.i, %middle.block257, %vec.epilog.middle.block, %._crit_edge874.i
  %.35.lcssa.i = phi ptr [ %.34.i, %._crit_edge874.i ], [ %i.agc, %vec.epilog.middle.block ], [ %i.aer, %middle.block257 ], [ %.lcssa276.unr, %.lr.ph883.i.prol.loopexit ], [ %i.ahe, %.lr.ph883.i ]
  %indvars.iv.next963.i = add nsw i64 %indvars.iv962.i, 1 ; 2 uses
  %exitcond965.not.i = icmp eq i64 %indvars.iv.next963.i, %wide.trip.count.i
  br i1 %exitcond965.not.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.o, !llvm.loop !227

_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %._crit_edge884.i, %bb.b, %.preheader.i
  ret void
}

declare void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16>, <16 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn42transpose_pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn46transpose_pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 33 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.n = icmp sgt i32 %3, 7
  br i1 %i.n, label %.lr.ph900.i, label %.preheader850.i

.lr.ph900.i:                                      ; preds = %bb.f
  %i.o = sext i32 %4 to i64
  %i.p = mul i64 %i.l, %i.o
  %i.q = sext i32 %2 to i64                       ; 2 uses
  %i.r = icmp sgt i32 %5, 7
  %.idx623.i = shl i64 %i.l, 5
  %i.s = icmp sgt i32 %5, 3                       ; 3 uses
  %.idx622.i = shl i64 %i.l, 4                    ; 2 uses
  %.idx619.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx620.i = mul i64 %i.l, 12
  %i.t = and i32 %5, -4
  %i.u = zext nneg i32 %3 to i64
  %i.v = sext i32 %i.c to i64
  br label %bb.i

.preheader850.loopexit.i:                         ; preds = %.loopexit852.i
  %i.w = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader850.i

.preheader850.i:                                  ; preds = %.preheader850.loopexit.i, %bb.f
  %.0540.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.w, %.preheader850.loopexit.i ] ; 3 uses
  %.0536.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.11.i, %.preheader850.loopexit.i ] ; 5 uses
  %i.x = or disjoint i32 %.0540.lcssa.i, 3
  %i.y = icmp slt i32 %i.x, %3
  br i1 %i.y, label %.lr.ph946.i, label %.preheader847.i

.lr.ph946.i:                                      ; preds = %.preheader850.i
  %i.z = sext i32 %4 to i64
  %i.aa = mul i64 %i.l, %i.z                      ; 3 uses
  %i.ab = icmp sgt i32 %5, 7
  %.idx617.i = shl i64 %i.l, 5
  %i.ac = icmp sgt i32 %5, 3                      ; 3 uses
  %.idx616.i = shl i64 %i.l, 4                    ; 2 uses
  %i.ad = sext i32 %2 to i64                      ; 4 uses
  %.idx613.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx614.i = mul i64 %i.l, 12
  %i.ae = and i32 %5, -4
  %i.af = zext i32 %.0540.lcssa.i to i64          ; 6 uses
  %i.ag = sext i32 %3 to i64
  %i.ah = sext i32 %i.c to i64                    ; 3 uses
  %invariant.op.i = add nsw i64 %i.ag, -3         ; 4 uses
  switch i32 %i.c, label %.loopexit849.i.preheader [
    i32 8, label %.lr.ph946.i.split.us
    i32 4, label %.lr.ph946.i.split.us49
    i32 1, label %.lr.ph946.i.split.us59
  ]

.loopexit849.i.preheader:                         ; preds = %.lr.ph946.i
  %i.ai = add nuw nsw i64 %i.af, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.ai)
  %i.aj = xor i64 %i.af, -1
  %i.ak = add nsw i64 %smax, %i.aj
  %i.al = and i64 %i.ak, -4
  %i.am = add i64 %i.al, %i.af
  %i.an = add i64 %i.am, 4
  br label %.preheader847.loopexit.i

.lr.ph946.i.split.us:                             ; preds = %.lr.ph946.i, %.loopexit849.i.us
  %indvars.iv1101.i.us = phi i64 [ %indvars.iv.next1102.i.us, %.loopexit849.i.us ], [ %i.af, %.lr.ph946.i ] ; 2 uses
  %.12945.i.us = phi ptr [ %.23.i.us, %.loopexit849.i.us ], [ %.0536.lcssa.i, %.lr.ph946.i ] ; 3 uses
  %i.ao = add nsw i64 %indvars.iv1101.i.us, %i.ad ; 2 uses
  %i.ap = load ptr, ptr %6, align 8, !tbaa !9
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %i.ao ; 4 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !203
  %i.as = insertelement <8 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <8 x float> %i.as, <8 x float> poison, <8 x i32> zeroinitializer
  %i.au = getelementptr i8, ptr %i.aq, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !203
  %i.aw = insertelement <8 x float> poison, float %i.av, i64 0
  %i.ax = shufflevector <8 x float> %i.aw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ay = getelementptr i8, ptr %i.aq, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !203
  %i.ba = insertelement <8 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bc = getelementptr i8, ptr %i.aq, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !203
  %i.be = insertelement <8 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.ab, label %.lr.ph907.i.us.preheader, label %._crit_edge908.i.us

.lr.ph907.i.us.preheader:                         ; preds = %.lr.ph946.i.split.us
  %i.bg = load ptr, ptr %0, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aa
  %i.bi = mul nsw i64 %i.ao, %i.ah
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bi
  br label %.lr.ph907.i.us

._crit_edge908.i.us:                              ; preds = %.lr.ph946.i.split.us
  br i1 %i.ac, label %._crit_edge908.thread.i.us, label %.loopexit849.i.us

.lr.ph907.i.us:                                   ; preds = %.lr.ph907.i.us.preheader, %.lr.ph907.i.us
  %.13905.i.us = phi ptr [ %i.dl, %.lr.ph907.i.us ], [ %.12945.i.us, %.lr.ph907.i.us.preheader ] ; 3 uses
  %.0564904.i.us = phi ptr [ %i.dm, %.lr.ph907.i.us ], [ %i.bj, %.lr.ph907.i.us.preheader ] ; 5 uses
  %.0587903.i.us = phi i32 [ %i.dn, %.lr.ph907.i.us ], [ 0, %.lr.ph907.i.us.preheader ]
  %i.bk = phi <4 x i32> [ %i.dj, %.lr.ph907.i.us ], [ zeroinitializer, %.lr.ph907.i.us.preheader ]
  %i.bl = load <8 x float>, ptr %.0564904.i.us, align 32, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.0564904.i.us, i64 32
  %i.bn = load <8 x float>, ptr %i.bm, align 32, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.0564904.i.us, i64 64
  %i.bp = load <8 x float>, ptr %i.bo, align 32, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.0564904.i.us, i64 96
  %i.br = load <8 x float>, ptr %i.bq, align 32, !tbaa !17
  %i.bs = fmul fast <8 x float> %i.bl, %i.at      ; 2 uses
  %i.bt = fmul fast <8 x float> %i.bn, %i.ax      ; 2 uses
  %i.bu = fmul fast <8 x float> %i.bp, %i.bb      ; 2 uses
  %i.bv = fmul fast <8 x float> %i.br, %i.bf      ; 2 uses
  %i.bw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bs)
  %i.bx = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bu)
  %i.by = fadd fast <8 x float> %i.bw, %i.bs
  %i.bz = fadd fast <8 x float> %i.bx, %i.bu
  %i.ca = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.by)
  %i.cb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bz)
  %i.cc = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ca, <8 x i32> %i.cb)
  %i.cd = bitcast <16 x i16> %i.cc to <4 x i64>
  %i.ce = shufflevector <4 x i64> %i.cd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cf = bitcast <4 x i64> %i.ce to <16 x i16>
end_hunk_6
begin_hunk_7_@_ZN4ncnn42transpose_pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.afm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.afl, <8 x i16> splat (i16 -127))
  %i.afn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.afm, <8 x i16> splat (i16 127))
  %i.afo = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.afn, <8 x i16> poison) ; 5 uses
  %i.afp = bitcast <16 x i8> %i.afo to <2 x i64>
  %i.afq = extractelement <2 x i64> %i.afp, i64 0 ; 2 uses
  store i64 %i.afq, ptr %.371004.i, align 8, !tbaa !186
  %i.afr = trunc i64 %i.afq to i8
  %i.afs = sext i8 %i.afr to i32
  %i.aft = shufflevector <16 x i8> %i.afo, <16 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.afu = extractelement <16 x i8> %i.afo, i64 5
  %i.afv = sext i8 %i.afu to i32
  %i.afw = extractelement <16 x i8> %i.afo, i64 6
  %i.afx = sext i8 %i.afw to i32
  %i.afy = extractelement <16 x i8> %i.afo, i64 7
  %i.afz = sext i8 %i.afy to i32
  %i.aga = sext <4 x i8> %i.aft to <4 x i32>
  %i.agb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aga)
  %op.rdx = add i32 %i.agb, %i.afv
  %op.rdx206 = add nsw i32 %i.afx, %i.afz
  %op.rdx207 = add i32 %.05441003.i, %i.afs
  %op.rdx208 = add i32 %op.rdx, %op.rdx206
  %op.rdx209 = add i32 %op.rdx208, %op.rdx207     ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.371004.i, i64 8 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.05461001.i, i64 %.idx605.i
  %i.age = add nuw nsw i32 %.05451002.i, 8        ; 2 uses
  %i.agf = or disjoint i32 %i.age, 7
  %i.agg = icmp slt i32 %i.agf, %5
  br i1 %i.agg, label %.lr.ph1006.i, label %._crit_edge1007.thread.i, !llvm.loop !246

._crit_edge1007.thread.i:                         ; preds = %.lr.ph1006.i
  %i.agh = mul nsw i32 %op.rdx209, 127
  br label %bb.v

._crit_edge1007.i:                                ; preds = %bb.u
  br i1 %i.ws, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %._crit_edge1007.i, %._crit_edge1007.thread.i
  %.37.lcssa1220.i = phi ptr [ %i.agc, %._crit_edge1007.thread.i ], [ %.361039.i, %._crit_edge1007.i ] ; 2 uses
  %.0544.lcssa1219.i = phi i32 [ %i.agh, %._crit_edge1007.thread.i ], [ 0, %._crit_edge1007.i ]
  store i32 %.0544.lcssa1219.i, ptr %.37.lcssa1220.i, align 4, !tbaa !43
  %i.agi = getelementptr inbounds nuw i8, ptr %.37.lcssa1220.i, i64 4
  br label %.loopexit.i

bb.w:                                             ; preds = %bb.t
  %i.agj = insertelement <4 x float> poison, float %i.afa, i64 0
  %i.agk = shufflevector <4 x float> %i.agj, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ws, label %.lr.ph1016.i, label %.loopexit.i

.lr.ph1016.i:                                     ; preds = %bb.w, %.lr.ph1016.i
  %.401014.i = phi ptr [ %i.ahh, %.lr.ph1016.i ], [ %.361039.i, %bb.w ] ; 3 uses
  %.05381013.i = phi i32 [ %i.ahg, %.lr.ph1016.i ], [ 0, %bb.w ]
  %.05391012.i = phi i32 [ %i.ahj, %.lr.ph1016.i ], [ 0, %bb.w ]
  %.25481011.i = phi ptr [ %i.ahi, %.lr.ph1016.i ], [ %i.aex, %bb.w ] ; 2 uses
  %i.agl = load <4 x float>, ptr %.25481011.i, align 16, !tbaa !17
  %i.agm = fmul fast <4 x float> %i.agl, %i.agk   ; 2 uses
  %i.agn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.agm)
  %i.ago = fadd fast <4 x float> %i.agn, %i.agm
  %i.agp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ago) ; 2 uses
  %i.agq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.agp, <4 x i32> %i.agp)
  %i.agr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.agq, <8 x i16> splat (i16 -127))
  %i.ags = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.agr, <8 x i16> splat (i16 127))
  %i.agt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ags, <8 x i16> poison) ; 4 uses
  %i.agu = bitcast <16 x i8> %i.agt to <4 x i32>
  %i.agv = extractelement <4 x i32> %i.agu, i64 0 ; 2 uses
  store i32 %i.agv, ptr %.401014.i, align 4, !tbaa !43
  %sext.i = shl i32 %i.agv, 24
  %i.agw = ashr exact i32 %sext.i, 24
  %i.agx = extractelement <16 x i8> %i.agt, i64 1
  %i.agy = sext i8 %i.agx to i32
  %i.agz = extractelement <16 x i8> %i.agt, i64 2
  %i.aha = sext i8 %i.agz to i32
  %i.ahb = extractelement <16 x i8> %i.agt, i64 3
  %i.ahc = sext i8 %i.ahb to i32
  %i.ahd = add i32 %.05381013.i, %i.agy
  %i.ahe = add i32 %i.ahd, %i.aha
  %i.ahf = add i32 %i.ahe, %i.ahc
  %i.ahg = add i32 %i.ahf, %i.agw                 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.401014.i, i64 4 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.25481011.i, i64 %.idx604.i
  %i.ahj = add nuw nsw i32 %.05391012.i, 4        ; 2 uses
  %i.ahk = or disjoint i32 %i.ahj, 3
  %i.ahl = icmp slt i32 %i.ahk, %5
  br i1 %i.ahl, label %.lr.ph1016.i, label %bb.x, !llvm.loop !247

bb.x:                                             ; preds = %.lr.ph1016.i
  %i.ahm = mul nsw i32 %i.ahg, 127
  store i32 %i.ahm, ptr %i.ahh, align 4, !tbaa !43
  %i.ahn = getelementptr inbounds nuw i8, ptr %.401014.i, i64 8
  br label %.loopexit.i

bb.y:                                             ; preds = %bb.t
  %i.aho = insertelement <4 x float> poison, float %i.afa, i64 0
  %i.ahp = shufflevector <4 x float> %i.aho, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ws, label %.lr.ph1026.i, label %._crit_edge1027.i

.lr.ph1026.i:                                     ; preds = %bb.y, %.lr.ph1026.i
  %.01024.i = phi i32 [ %i.ail, %.lr.ph1026.i ], [ 0, %bb.y ]
  %.05351023.i = phi i32 [ %i.aio, %.lr.ph1026.i ], [ 0, %bb.y ]
  %.431022.i = phi ptr [ %i.aim, %.lr.ph1026.i ], [ %.361039.i, %bb.y ] ; 3 uses
  %.45501021.i = phi ptr [ %i.ain, %.lr.ph1026.i ], [ %i.aex, %bb.y ] ; 2 uses
  %i.ahq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.45501021.i, <4 x i32> %i.ww, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ahr = fmul fast <4 x float> %i.ahq, %i.ahp   ; 2 uses
  %i.ahs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ahr)
  %i.aht = fadd fast <4 x float> %i.ahs, %i.ahr
  %i.ahu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aht) ; 2 uses
  %i.ahv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ahu, <4 x i32> %i.ahu)
  %i.ahw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahv, <8 x i16> splat (i16 -127))
  %i.ahx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ahw, <8 x i16> splat (i16 127))
  %i.ahy = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ahx, <8 x i16> poison) ; 4 uses
  %i.ahz = bitcast <16 x i8> %i.ahy to <4 x i32>
  %i.aia = extractelement <4 x i32> %i.ahz, i64 0 ; 2 uses
  store i32 %i.aia, ptr %.431022.i, align 4, !tbaa !43
  %sext1123.i = shl i32 %i.aia, 24
  %i.aib = ashr exact i32 %sext1123.i, 24
  %i.aic = extractelement <16 x i8> %i.ahy, i64 1
  %i.aid = sext i8 %i.aic to i32
  %i.aie = extractelement <16 x i8> %i.ahy, i64 2
  %i.aif = sext i8 %i.aie to i32
  %i.aig = extractelement <16 x i8> %i.ahy, i64 3
  %i.aih = sext i8 %i.aig to i32
  %i.aii = add i32 %.01024.i, %i.aid
  %i.aij = add i32 %i.aii, %i.aif
  %i.aik = add i32 %i.aij, %i.aih
  %i.ail = add i32 %i.aik, %i.aib                 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.431022.i, i64 4 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.45501021.i, i64 %.idx604.i ; 2 uses
  %i.aio = add nuw nsw i32 %.05351023.i, 4        ; 2 uses
  %i.aip = or disjoint i32 %i.aio, 3
  %i.aiq = icmp slt i32 %i.aip, %5
  br i1 %i.aiq, label %.lr.ph1026.i, label %bb.z, !llvm.loop !248

bb.z:                                             ; preds = %.lr.ph1026.i
  %i.air = mul nsw i32 %i.ail, 127
  store i32 %i.air, ptr %i.aim, align 4, !tbaa !43
  %i.ais = getelementptr inbounds nuw i8, ptr %.431022.i, i64 8
  br label %._crit_edge1027.i

._crit_edge1027.i:                                ; preds = %bb.z, %bb.y
  %.0535.lcssa1241.i = phi i32 [ %i.wx, %bb.z ], [ 0, %bb.y ] ; 4 uses
  %.4550.lcssa1238.i = phi ptr [ %i.ain, %bb.z ], [ %i.aex, %bb.y ] ; 3 uses
  %.44.i = phi ptr [ %i.ais, %bb.z ], [ %.361039.i, %bb.y ] ; 4 uses
  %i.ait = icmp slt i32 %.0535.lcssa1241.i, %5
  br i1 %i.ait, label %.lr.ph1036.i.preheader, label %.loopexit.i

.lr.ph1036.i.preheader:                           ; preds = %._crit_edge1027.i
  %.neg253 = or disjoint i32 %.0535.lcssa1241.i, 1
  br i1 %lcmp.mod252.not, label %.lr.ph1036.i.prol.loopexit, label %.lr.ph1036.i.prol

.lr.ph1036.i.prol:                                ; preds = %.lr.ph1036.i.preheader
  %i.aiu = load float, ptr %.4550.lcssa1238.i, align 4, !tbaa !203
  %i.aiv = fmul fast float %i.aiu, %i.afa
  %i.aiw = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aiv)
  %i.aix = fptosi float %i.aiw to i32
  %spec.select.i838.i.prol = tail call i32 @llvm.smax.i32(i32 %i.aix, i32 -127)
  %.0.i839.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i838.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i839.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.44.i, align 1, !tbaa !17
  %i.aiy = getelementptr inbounds nuw i8, ptr %.44.i, i64 1 ; 2 uses
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.4550.lcssa1238.i, i64 %i.l
  %i.aja = or disjoint i32 %.0535.lcssa1241.i, 1
  br label %.lr.ph1036.i.prol.loopexit

.lr.ph1036.i.prol.loopexit:                       ; preds = %.lr.ph1036.i.prol, %.lr.ph1036.i.preheader
  %.lcssa212.unr = phi ptr [ poison, %.lr.ph1036.i.preheader ], [ %i.aiy, %.lr.ph1036.i.prol ]
  %.11034.i.unr = phi i32 [ %.0535.lcssa1241.i, %.lr.ph1036.i.preheader ], [ %i.aja, %.lr.ph1036.i.prol ]
  %.451033.i.unr = phi ptr [ %.44.i, %.lr.ph1036.i.preheader ], [ %i.aiy, %.lr.ph1036.i.prol ]
  %.55511032.i.unr = phi ptr [ %.4550.lcssa1238.i, %.lr.ph1036.i.preheader ], [ %i.aiz, %.lr.ph1036.i.prol ]
  %i.ajb = icmp eq i32 %5, %.neg253
  br i1 %i.ajb, label %.loopexit.i, label %.lr.ph1036.i

.lr.ph1036.i:                                     ; preds = %.lr.ph1036.i.prol.loopexit, %.lr.ph1036.i
  %.11034.i = phi i32 [ %i.ajo, %.lr.ph1036.i ], [ %.11034.i.unr, %.lr.ph1036.i.prol.loopexit ]
  %.451033.i = phi ptr [ %i.ajm, %.lr.ph1036.i ], [ %.451033.i.unr, %.lr.ph1036.i.prol.loopexit ] ; 3 uses
  %.55511032.i = phi ptr [ %i.ajn, %.lr.ph1036.i ], [ %.55511032.i.unr, %.lr.ph1036.i.prol.loopexit ] ; 2 uses
  %i.ajc = load float, ptr %.55511032.i, align 4, !tbaa !203
  %i.ajd = fmul fast float %i.ajc, %i.afa
  %i.aje = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ajd)
  %i.ajf = fptosi float %i.aje to i32
  %spec.select.i838.i = tail call i32 @llvm.smax.i32(i32 %i.ajf, i32 -127)
  %.0.i839.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i838.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i839.i to i8
  store i8 %.0.i.i, ptr %.451033.i, align 1, !tbaa !17
  %i.ajg = getelementptr inbounds nuw i8, ptr %.451033.i, i64 1
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %.55511032.i, i64 %i.l ; 2 uses
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !203
  %i.ajj = fmul fast float %i.aji, %i.afa
  %i.ajk = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ajj)
  %i.ajl = fptosi float %i.ajk to i32
  %spec.select.i838.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ajl, i32 -127)
  %.0.i839.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i838.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i839.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.ajg, align 1, !tbaa !17
  %i.ajm = getelementptr inbounds nuw i8, ptr %.451033.i, i64 2 ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %i.l
  %i.ajo = add nuw nsw i32 %.11034.i, 2           ; 2 uses
  %exitcond1108.not.i.1 = icmp eq i32 %i.ajo, %5
  br i1 %exitcond1108.not.i.1, label %.loopexit.i, label %.lr.ph1036.i, !llvm.loop !249

.loopexit.i:                                      ; preds = %.lr.ph1036.i.prol.loopexit, %.lr.ph1036.i, %._crit_edge1027.i, %bb.x, %bb.w, %bb.v, %._crit_edge1007.i, %bb.t
  %.46.i = phi ptr [ %.361039.i, %bb.t ], [ %.44.i, %._crit_edge1027.i ], [ %i.agi, %bb.v ], [ %.361039.i, %bb.w ], [ %i.ahn, %bb.x ], [ %.361039.i, %._crit_edge1007.i ], [ %.lcssa212.unr, %.lr.ph1036.i.prol.loopexit ], [ %i.ajm, %.lr.ph1036.i ]
  %indvars.iv.next1110.i = add nsw i64 %indvars.iv1109.i, 1 ; 2 uses
  %exitcond1112.not.i = icmp eq i64 %indvars.iv.next1110.i, %wide.trip.count.i
  br i1 %exitcond1112.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.t, !llvm.loop !250

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %bb.b, %.preheader.i
  ret void
}

declare void @_ZN4ncnn46transpose_pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn32pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 22 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.n = icmp sgt i32 %3, 7
  br i1 %i.n, label %.lr.ph640.i, label %.preheader568.i

.lr.ph640.i:                                      ; preds = %bb.f
  %i.o = mul nsw i32 %i.c, %4
  %i.p = sext i32 %i.o to i64
  %i.q = insertelement <8 x float> poison, float %6, i64 0
  %i.r = shufflevector <8 x float> %i.q, <8 x float> poison, <8 x i32> zeroinitializer ; 21 uses
  %i.s = icmp sgt i32 %5, 3                       ; 3 uses
  %.idx417.i = shl i64 %i.l, 4                    ; 4 uses
  %.idx409.i = shl i64 %i.l, 3
  %.idx410.i = mul i64 %i.l, 12
  %.idx412.i = mul i64 %i.l, 20
  %.idx413.i = mul i64 %i.l, 24
  %.idx414.i = mul i64 %i.l, 28
  %i.t = trunc i64 %i.l to i32
  %i.u = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %i.v = shufflevector <8 x i32> %i.u, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.w = mul <8 x i32> %i.v, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.x = and i32 %5, -4                           ; 3 uses
  %i.y = zext nneg i32 %3 to i64
  %i.z = sext i32 %2 to i64
  br label %bb.g

.preheader568.loopexit.i:                         ; preds = %.loopexit570.i
  %i.aa = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader568.i

.preheader568.i:                                  ; preds = %.preheader568.loopexit.i, %bb.f
  %.0365.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.aa, %.preheader568.loopexit.i ] ; 3 uses
  %.0363.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.12.i, %.preheader568.loopexit.i ] ; 4 uses
  %i.ab = or disjoint i32 %.0365.lcssa.i, 3
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.lr.ph684.i, label %.preheader559.i

.lr.ph684.i:                                      ; preds = %.preheader568.i
  %i.ad = mul nsw i32 %i.c, %4
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = insertelement <4 x float> poison, float %6, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 18 uses
  %i.ah = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx.i = shl i64 %i.l, 3
  %.idx408.i = mul i64 %i.l, 12
  %i.ai = trunc i64 %i.l to i32
  %i.aj = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.ak = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.al = mul <4 x i32> %i.ak, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.am = and i32 %5, -4                          ; 2 uses
  %i.an = zext i32 %.0365.lcssa.i to i64          ; 5 uses
  %i.ao = sext i32 %3 to i64
  %i.ap = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i = add nsw i64 %i.ao, -3         ; 3 uses
  switch i32 %i.c, label %.loopexit561.i.preheader [
    i32 4, label %.preheader567.i.us
    i32 1, label %.preheader563.i.us
  ]

.loopexit561.i.preheader:                         ; preds = %.lr.ph684.i
  %i.aq = add nuw nsw i64 %i.an, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.aq)
  %i.ar = xor i64 %i.an, -1
  %i.as = add nsw i64 %smax, %i.ar
  %i.at = and i64 %i.as, -4
  %i.au = add i64 %i.at, %i.an
  %i.av = add i64 %i.au, 4
  br label %.preheader559.loopexit.i

.preheader567.i.us:                               ; preds = %.lr.ph684.i, %.loopexit561.i.us
  %indvars.iv784.i.us = phi i64 [ %indvars.iv.next785.i.us, %.loopexit561.i.us ], [ %i.an, %.lr.ph684.i ] ; 2 uses
  %.13683.i.us = phi ptr [ %.21.i.us, %.loopexit561.i.us ], [ %.0363.lcssa.i, %.lr.ph684.i ] ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !9
  %i.ax = add nsw i64 %indvars.iv784.i.us, %i.ap
  %i.ay = mul i64 %i.ax, %i.l
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ae ; 2 uses
  br i1 %i.ah, label %.lr.ph646.i.us, label %.preheader566.i.us

.lr.ph646.i.us:                                   ; preds = %.preheader567.i.us, %.lr.ph646.i.us
  %.14645.i.us = phi ptr [ %i.ch, %.lr.ph646.i.us ], [ %.13683.i.us, %.preheader567.i.us ] ; 2 uses
  %.0395644.i.us = phi ptr [ %i.ci, %.lr.ph646.i.us ], [ %i.ba, %.preheader567.i.us ] ; 5 uses
  %.0405643.i.us = phi i32 [ %i.cj, %.lr.ph646.i.us ], [ 0, %.preheader567.i.us ]
  %i.bb = load <4 x float>, ptr %.0395644.i.us, align 16, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0395644.i.us, i64 16
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.0395644.i.us, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.0395644.i.us, i64 48
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !tbaa !17
  %i.bi = fmul fast <4 x float> %i.bb, %i.ag      ; 2 uses
  %i.bj = fmul fast <4 x float> %i.bd, %i.ag      ; 2 uses
  %i.bk = fmul fast <4 x float> %i.bf, %i.ag      ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bh, %i.ag      ; 2 uses
  %i.bm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bi)
  %i.bn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bj)
  %i.bo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bk)
  %i.bp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bl)
  %i.bq = fadd fast <4 x float> %i.bm, %i.bi
  %i.br = fadd fast <4 x float> %i.bn, %i.bj
  %i.bs = fadd fast <4 x float> %i.bo, %i.bk
  %i.bt = fadd fast <4 x float> %i.bp, %i.bl
  %i.bu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bq)
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br)
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bs)
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bt)
  %i.by = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.bx)
  %i.ca = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.by, <8 x i16> splat (i16 -127))
  %i.cb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 127))
  %i.cc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bz, <8 x i16> splat (i16 -127))
  %i.cd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cc, <8 x i16> splat (i16 127))
  %i.ce = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cb, <8 x i16> %i.cd)
  %i.cf = add <16 x i8> %i.ce, splat (i8 127)
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.cg, ptr %.14645.i.us, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.14645.i.us, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0395644.i.us, i64 64 ; 2 uses
  %i.cj = add nuw nsw i32 %.0405643.i.us, 4       ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 3
  %i.cl = icmp slt i32 %i.ck, %5
  br i1 %i.cl, label %.lr.ph646.i.us, label %.preheader566.i.us, !llvm.loop !251

.preheader566.i.us:                               ; preds = %.lr.ph646.i.us, %.preheader567.i.us
  %.0405.lcssa.i.us = phi i32 [ 0, %.preheader567.i.us ], [ %i.am, %.lr.ph646.i.us ] ; 3 uses
  %.0395.lcssa.i.us = phi ptr [ %i.ba, %.preheader567.i.us ], [ %i.ci, %.lr.ph646.i.us ] ; 2 uses
  %.14.lcssa.i.us = phi ptr [ %.13683.i.us, %.preheader567.i.us ], [ %i.ch, %.lr.ph646.i.us ] ; 2 uses
  %i.cm = or disjoint i32 %.0405.lcssa.i.us, 1
  %i.cn = icmp slt i32 %i.cm, %5
  br i1 %i.cn, label %.lr.ph653.i.us, label %.preheader564.i.us

.lr.ph653.i.us:                                   ; preds = %.preheader566.i.us, %.lr.ph653.i.us
  %.15652.i.us = phi ptr [ %i.dh, %.lr.ph653.i.us ], [ %.14.lcssa.i.us, %.preheader566.i.us ] ; 2 uses
  %.1396651.i.us = phi ptr [ %i.di, %.lr.ph653.i.us ], [ %.0395.lcssa.i.us, %.preheader566.i.us ] ; 3 uses
  %.1406650.i.us = phi i32 [ %i.dj, %.lr.ph653.i.us ], [ %.0405.lcssa.i.us, %.preheader566.i.us ]
  %i.co = load <4 x float>, ptr %.1396651.i.us, align 16, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %.1396651.i.us, i64 16
  %i.cq = load <4 x float>, ptr %i.cp, align 16, !tbaa !17
  %i.cr = fmul fast <4 x float> %i.co, %i.ag      ; 2 uses
  %i.cs = fmul fast <4 x float> %i.cq, %i.ag      ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cu = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ct)
  %i.cw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cu)
  %i.cx = fadd fast <4 x float> %i.cv, %i.ct
  %i.cy = fadd fast <4 x float> %i.cw, %i.cu
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cx)
  %i.da = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cy)
  %i.db = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cz, <4 x i32> %i.da)
  %i.dc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.db, <8 x i16> splat (i16 -127))
  %i.dd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dc, <8 x i16> splat (i16 127))
  %i.de = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.dd, <8 x i16> poison)
  %i.df = bitcast <16 x i8> %i.de to <2 x i64>
  %i.dg = extractelement <2 x i64> %i.df, i64 0
  store i64 %i.dg, ptr %.15652.i.us, align 8, !tbaa !186
  %i.dh = getelementptr inbounds nuw i8, ptr %.15652.i.us, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1396651.i.us, i64 32 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4ncnn32pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif:bb.a

vector.memcheck199:                               ; preds = %iter.check
  %scevgep200 = getelementptr i8, ptr %.27.lcssa.i, i64 1
  %i.aab = xor i32 %.0.lcssa.i, -1
  %i.aac = add i32 %5, %i.aab
  %i.aad = zext i32 %i.aac to i64                 ; 2 uses
  %scevgep201 = getelementptr i8, ptr %scevgep200, i64 %i.aad
  %scevgep202 = getelementptr i8, ptr %.0361.lcssa.i, i64 4
  %i.aae = shl nuw nsw i64 %i.aad, 2
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.aae
  %bound0204 = icmp ult ptr %.27.lcssa.i, %scevgep203
  %bound1205 = icmp ult ptr %.0361.lcssa.i, %scevgep201
  %found.conflict206 = and i1 %bound0204, %bound1205
  br i1 %found.conflict206, label %.lr.ph722.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck199
  %min.iters.check209 = icmp ult i32 %i.zy, 31
  br i1 %min.iters.check209, label %vec.epilog.ph, label %vector.ph210

vector.ph210:                                     ; preds = %vector.main.loop.iter.check
  %i.aaf = and i64 %i.aaa, 28
  %n.vec211 = and i64 %i.aaa, 8589934560          ; 6 uses
  %i.aag = trunc i64 %n.vec211 to i32
  %i.aah = add i32 %.0.lcssa.i, %i.aag
  %i.aai = shl nuw nsw i64 %n.vec211, 2
  %i.aaj = getelementptr i8, ptr %.0361.lcssa.i, i64 %i.aai
  %i.aak = getelementptr i8, ptr %.27.lcssa.i, i64 %n.vec211 ; 2 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph210
  %index215 = phi i64 [ 0, %vector.ph210 ], [ %index.next222, %vector.body214 ] ; 3 uses
  %i.aal = shl i64 %index215, 2
  %next.gep216 = getelementptr i8, ptr %.0361.lcssa.i, i64 %i.aal ; 4 uses
  %next.gep217 = getelementptr i8, ptr %.27.lcssa.i, i64 %index215 ; 4 uses
  %i.aam = getelementptr i8, ptr %next.gep216, i64 32
  %i.aan = getelementptr i8, ptr %next.gep216, i64 64
  %i.aao = getelementptr i8, ptr %next.gep216, i64 96
  %wide.load218 = load <8 x float>, ptr %next.gep216, align 4, !tbaa !203, !alias.scope !281
  %wide.load219 = load <8 x float>, ptr %i.aam, align 4, !tbaa !203, !alias.scope !281
  %wide.load220 = load <8 x float>, ptr %i.aan, align 4, !tbaa !203, !alias.scope !281
  %wide.load221 = load <8 x float>, ptr %i.aao, align 4, !tbaa !203, !alias.scope !281
  %i.aap = fmul fast <8 x float> %wide.load218, %broadcast.splat213
  %i.aaq = fmul fast <8 x float> %wide.load219, %broadcast.splat213
  %i.aar = fmul fast <8 x float> %wide.load220, %broadcast.splat213
  %i.aas = fmul fast <8 x float> %wide.load221, %broadcast.splat213
  %i.aat = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aap)
  %i.aau = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aaq)
  %i.aav = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aar)
  %i.aaw = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aas)
  %i.aax = fptosi <8 x float> %i.aat to <8 x i32>
  %i.aay = fptosi <8 x float> %i.aau to <8 x i32>
  %i.aaz = fptosi <8 x float> %i.aav to <8 x i32>
  %i.aba = fptosi <8 x float> %i.aaw to <8 x i32>
  %i.abb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aax, <8 x i32> splat (i32 -127))
  %i.abc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aay, <8 x i32> splat (i32 -127))
  %i.abd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aaz, <8 x i32> splat (i32 -127))
  %i.abe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aba, <8 x i32> splat (i32 -127))
  %i.abf = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.abb, <8 x i32> splat (i32 127))
  %i.abg = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.abc, <8 x i32> splat (i32 127))
  %i.abh = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.abd, <8 x i32> splat (i32 127))
  %i.abi = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.abe, <8 x i32> splat (i32 127))
  %i.abj = trunc nsw <8 x i32> %i.abf to <8 x i8>
  %i.abk = trunc nsw <8 x i32> %i.abg to <8 x i8>
  %i.abl = trunc nsw <8 x i32> %i.abh to <8 x i8>
  %i.abm = trunc nsw <8 x i32> %i.abi to <8 x i8>
  %i.abn = getelementptr i8, ptr %next.gep217, i64 8
  %i.abo = getelementptr i8, ptr %next.gep217, i64 16
  %i.abp = getelementptr i8, ptr %next.gep217, i64 24
  store <8 x i8> %i.abj, ptr %next.gep217, align 1, !tbaa !17, !alias.scope !284, !noalias !281
  store <8 x i8> %i.abk, ptr %i.abn, align 1, !tbaa !17, !alias.scope !284, !noalias !281
  store <8 x i8> %i.abl, ptr %i.abo, align 1, !tbaa !17, !alias.scope !284, !noalias !281
  store <8 x i8> %i.abm, ptr %i.abp, align 1, !tbaa !17, !alias.scope !284, !noalias !281
  %index.next222 = add nuw i64 %index215, 32      ; 2 uses
  %i.abq = icmp eq i64 %index.next222, %n.vec211
  br i1 %i.abq, label %middle.block223, label %vector.body214, !llvm.loop !286

middle.block223:                                  ; preds = %vector.body214
  %cmp.n224 = icmp eq i64 %i.aaa, %n.vec211
  br i1 %cmp.n224, label %._crit_edge723.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block223
  %min.epilog.iters.check = icmp eq i64 %i.aaf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph722.i.preheader, label %vec.epilog.ph, !prof !122

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec211, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec228 = and i64 %i.aaa, 8589934588          ; 5 uses
  %i.abr = trunc i64 %n.vec228 to i32
  %i.abs = add i32 %.0.lcssa.i, %i.abr
  %i.abt = shl nuw nsw i64 %n.vec228, 2
  %i.abu = getelementptr i8, ptr %.0361.lcssa.i, i64 %i.abt
  %i.abv = getelementptr i8, ptr %.27.lcssa.i, i64 %n.vec228 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next235, %vec.epilog.vector.body ] ; 3 uses
  %i.abw = shl i64 %index231, 2
  %next.gep232 = getelementptr i8, ptr %.0361.lcssa.i, i64 %i.abw
  %next.gep233 = getelementptr i8, ptr %.27.lcssa.i, i64 %index231
  %wide.load234 = load <4 x float>, ptr %next.gep232, align 4, !tbaa !203, !alias.scope !281
  %i.abx = fmul fast <4 x float> %wide.load234, %broadcast.splat230
  %i.aby = tail call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.abx)
  %i.abz = fptosi <4 x float> %i.aby to <4 x i32>
  %i.aca = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abz, <4 x i32> splat (i32 -127))
  %i.acb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aca, <4 x i32> splat (i32 127))
  %i.acc = trunc nsw <4 x i32> %i.acb to <4 x i8>
  store <4 x i8> %i.acc, ptr %next.gep233, align 1, !tbaa !17, !alias.scope !284, !noalias !281
  %index.next235 = add nuw i64 %index231, 4       ; 2 uses
  %i.acd = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.acd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !287

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n236 = icmp eq i64 %i.aaa, %n.vec228
  br i1 %cmp.n236, label %._crit_edge723.i, label %.lr.ph722.i.preheader

.lr.ph722.i.preheader:                            ; preds = %vector.memcheck199, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1721.i.ph = phi i32 [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck199 ], [ %i.aah, %vec.epilog.iter.check ], [ %i.abs, %vec.epilog.middle.block ] ; 4 uses
  %.1362720.i.ph = phi ptr [ %.0361.lcssa.i, %iter.check ], [ %.0361.lcssa.i, %vector.memcheck199 ], [ %i.aaj, %vec.epilog.iter.check ], [ %i.abu, %vec.epilog.middle.block ] ; 3 uses
  %.28719.i.ph = phi ptr [ %.27.lcssa.i, %iter.check ], [ %.27.lcssa.i, %vector.memcheck199 ], [ %i.aak, %vec.epilog.iter.check ], [ %i.abv, %vec.epilog.middle.block ] ; 3 uses
  %i.ace = sub i32 %5, %.1721.i.ph
  %.neg287 = add i32 %.1721.i.ph, 1
  %xtraiter284 = and i32 %i.ace, 1
  %lcmp.mod285.not = icmp eq i32 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %.lr.ph722.i.prol.loopexit, label %.lr.ph722.i.prol

.lr.ph722.i.prol:                                 ; preds = %.lr.ph722.i.preheader
  %i.acf = load float, ptr %.1362720.i.ph, align 4, !tbaa !203
  %i.acg = fmul fast float %i.acf, %6
  %i.ach = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acg)
  %i.aci = fptosi float %i.ach to i32
  %spec.select.i550.i.prol = tail call i32 @llvm.smax.i32(i32 %i.aci, i32 -127)
  %.0.i551.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i550.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i551.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.28719.i.ph, align 1, !tbaa !17
  %i.acj = getelementptr inbounds nuw i8, ptr %.28719.i.ph, i64 1 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.1362720.i.ph, i64 4
  %i.acl = add nuw nsw i32 %.1721.i.ph, 1
  br label %.lr.ph722.i.prol.loopexit

.lr.ph722.i.prol.loopexit:                        ; preds = %.lr.ph722.i.prol, %.lr.ph722.i.preheader
  %.lcssa241.unr = phi ptr [ poison, %.lr.ph722.i.preheader ], [ %i.acj, %.lr.ph722.i.prol ]
  %.1721.i.unr = phi i32 [ %.1721.i.ph, %.lr.ph722.i.preheader ], [ %i.acl, %.lr.ph722.i.prol ]
  %.1362720.i.unr = phi ptr [ %.1362720.i.ph, %.lr.ph722.i.preheader ], [ %i.ack, %.lr.ph722.i.prol ]
  %.28719.i.unr = phi ptr [ %.28719.i.ph, %.lr.ph722.i.preheader ], [ %i.acj, %.lr.ph722.i.prol ]
  %i.acm = icmp eq i32 %5, %.neg287
  br i1 %i.acm, label %._crit_edge723.i, label %.lr.ph722.i

.lr.ph715.i:                                      ; preds = %bb.i, %.lr.ph715.i
  %.0713.i = phi i32 [ %i.ada, %.lr.ph715.i ], [ 0, %bb.i ]
  %.0361712.i = phi ptr [ %i.acz, %.lr.ph715.i ], [ %i.zv, %bb.i ] ; 2 uses
  %.27711.i = phi ptr [ %i.acy, %.lr.ph715.i ], [ %.26726.i, %bb.i ] ; 2 uses
  %i.acn = load <4 x float>, ptr %.0361712.i, align 1, !tbaa !17
  %i.aco = fmul fast <4 x float> %i.acn, %i.vz    ; 2 uses
  %i.acp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aco)
  %i.acq = fadd fast <4 x float> %i.acp, %i.aco
  %i.acr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acq) ; 2 uses
  %i.acs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.acr, <4 x i32> %i.acr)
  %i.act = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.acs, <8 x i16> splat (i16 -127))
  %i.acu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.act, <8 x i16> splat (i16 127))
  %i.acv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.acu, <8 x i16> poison)
  %i.acw = shufflevector <16 x i8> %i.acv, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acx = add <4 x i8> %i.acw, splat (i8 127)
  store <4 x i8> %i.acx, ptr %.27711.i, align 1, !tbaa !17
  %i.acy = getelementptr inbounds nuw i8, ptr %.27711.i, i64 4 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.0361712.i, i64 16 ; 2 uses
  %i.ada = add nuw nsw i32 %.0713.i, 4            ; 2 uses
  %i.adb = or disjoint i32 %i.ada, 3
  %i.adc = icmp slt i32 %i.adb, %5
  br i1 %i.adc, label %.lr.ph715.i, label %.preheader.i, !llvm.loop !288

.lr.ph722.i:                                      ; preds = %.lr.ph722.i.prol.loopexit, %.lr.ph722.i
  %.1721.i = phi i32 [ %i.adp, %.lr.ph722.i ], [ %.1721.i.unr, %.lr.ph722.i.prol.loopexit ]
  %.1362720.i = phi ptr [ %i.ado, %.lr.ph722.i ], [ %.1362720.i.unr, %.lr.ph722.i.prol.loopexit ] ; 3 uses
  %.28719.i = phi ptr [ %i.adn, %.lr.ph722.i ], [ %.28719.i.unr, %.lr.ph722.i.prol.loopexit ] ; 3 uses
  %i.add = load float, ptr %.1362720.i, align 4, !tbaa !203
  %i.ade = fmul fast float %i.add, %6
  %i.adf = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ade)
  %i.adg = fptosi float %i.adf to i32
  %spec.select.i550.i = tail call i32 @llvm.smax.i32(i32 %i.adg, i32 -127)
  %.0.i551.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i550.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i551.i to i8
  store i8 %.0.i.i, ptr %.28719.i, align 1, !tbaa !17
  %i.adh = getelementptr inbounds nuw i8, ptr %.28719.i, i64 1
  %i.adi = getelementptr inbounds nuw i8, ptr %.1362720.i, i64 4
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !203
  %i.adk = fmul fast float %i.adj, %6
  %i.adl = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.adk)
  %i.adm = fptosi float %i.adl to i32
  %spec.select.i550.i.1 = tail call i32 @llvm.smax.i32(i32 %i.adm, i32 -127)
  %.0.i551.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i550.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i551.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.adh, align 1, !tbaa !17
  %i.adn = getelementptr inbounds nuw i8, ptr %.28719.i, i64 2 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.1362720.i, i64 8
  %i.adp = add nuw nsw i32 %.1721.i, 2            ; 2 uses
  %exitcond791.not.i.1 = icmp eq i32 %i.adp, %5
  br i1 %exitcond791.not.i.1, label %._crit_edge723.i, label %.lr.ph722.i, !llvm.loop !289

._crit_edge723.i:                                 ; preds = %.lr.ph722.i.prol.loopexit, %.lr.ph722.i, %middle.block223, %vec.epilog.middle.block, %.preheader.i
  %.28.lcssa.i = phi ptr [ %.27.lcssa.i, %.preheader.i ], [ %i.abv, %vec.epilog.middle.block ], [ %i.aak, %middle.block223 ], [ %.lcssa241.unr, %.lr.ph722.i.prol.loopexit ], [ %i.adn, %.lr.ph722.i ]
  %indvars.iv.next793.i = add nsw i64 %indvars.iv792.i, 1 ; 2 uses
  %exitcond795.not.i = icmp eq i64 %indvars.iv.next793.i, %wide.trip.count.i
  br i1 %exitcond795.not.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.i, !llvm.loop !290

_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %._crit_edge723.i, %bb.b, %.preheader556.i
  ret void
}

declare void @_ZN4ncnn36pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182  ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 33 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !9      ; 5 uses
  %i.n = icmp sgt i32 %3, 7
  br i1 %i.n, label %.lr.ph695.i, label %.preheader658.i

.lr.ph695.i:                                      ; preds = %bb.f
  %i.o = sext i32 %4 to i64
  %i.p = mul i64 %i.l, %i.o                       ; 3 uses
  %i.q = icmp ne i32 %i.c, 8
  %i.r = insertelement <8 x float> poison, float %6, i64 0
  %i.s = shufflevector <8 x float> %i.r, <8 x float> poison, <8 x i32> zeroinitializer ; 19 uses
  %i.t = icmp slt i32 %5, 8
  %.idx496.i = shl i64 %i.l, 5
  %.idx495.i = shl i64 %i.l, 4                    ; 2 uses
  %i.u = icmp eq i32 %i.c, 1
  %i.v = icmp sgt i32 %5, 3
  %.idx492.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx493.i = mul i64 %i.l, 12
  %i.w = and i32 %5, -4
  %i.x = zext nneg i32 %3 to i64                  ; 4 uses
  %i.y = sext i32 %2 to i64                       ; 3 uses
  %i.z = sext i32 %i.c to i64                     ; 3 uses
  %brmerge.i = or i1 %i.t, %i.q
  br i1 %brmerge.i, label %.lr.ph695.i.split.us, label %.lr.ph.i.preheader

.lr.ph695.i.split.us:                             ; preds = %.lr.ph695.i
  %i.aa = icmp slt i32 %5, 4
  %i.ab = icmp ne i32 %i.c, 4
  %brmerge801.i = or i1 %i.aa, %i.ab
  br i1 %brmerge801.i, label %.lr.ph695.i.split.us.split.us, label %.loopexit663.i.us

.lr.ph695.i.split.us.split.us:                    ; preds = %.lr.ph695.i.split.us
  br i1 %i.u, label %.loopexit663.i.us.us.us, label %.loopexit663.i.us.us.preheader

.loopexit663.i.us.us.preheader:                   ; preds = %.lr.ph695.i.split.us.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.x, i64 15)
  %i.ac = and i64 %umax, 2147483640
  br label %.preheader658.loopexit.i

.loopexit663.i.us.us.us:                          ; preds = %.lr.ph695.i.split.us.split.us, %.loopexit660.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us, %.loopexit660.i.us.us.us ], [ 0, %.lr.ph695.i.split.us.split.us ] ; 2 uses
  %.0427694.i.us.us.us = phi ptr [ %.8.i.us.us.us, %.loopexit660.i.us.us.us ], [ %i.m, %.lr.ph695.i.split.us.split.us ] ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.p
  %i.af = add nsw i64 %indvars.iv.i.us.us.us, %i.y
  %i.ag = mul nuw nsw i64 %i.af, %i.z
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag ; 2 uses
  br i1 %i.v, label %.lr.ph677.i.us.us.us, label %.preheader661.i.us.us.us

.lr.ph677.i.us.us.us:                             ; preds = %.loopexit663.i.us.us.us, %.lr.ph677.i.us.us.us
  %.5676.i.us.us.us = phi ptr [ %i.cb, %.lr.ph677.i.us.us.us ], [ %.0427694.i.us.us.us, %.loopexit663.i.us.us.us ] ; 2 uses
  %.4445675.i.us.us.us = phi ptr [ %i.cc, %.lr.ph677.i.us.us.us ], [ %i.ah, %.loopexit663.i.us.us.us ] ; 5 uses
  %.0450674.i.us.us.us = phi i32 [ %i.cd, %.lr.ph677.i.us.us.us ], [ 0, %.loopexit663.i.us.us.us ]
  %i.ai = load <8 x float>, ptr %.4445675.i.us.us.us, align 1, !tbaa !17
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.4445675.i.us.us.us, i64 %i.l
  %i.ak = load <8 x float>, ptr %i.aj, align 1, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %.4445675.i.us.us.us, i64 %.idx492.i
  %i.am = load <8 x float>, ptr %i.al, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %.4445675.i.us.us.us, i64 %.idx493.i
  %i.ao = load <8 x float>, ptr %i.an, align 1, !tbaa !17
  %i.ap = fmul fast <8 x float> %i.ai, %i.s       ; 2 uses
  %i.aq = fmul fast <8 x float> %i.ak, %i.s       ; 2 uses
  %i.ar = fmul fast <8 x float> %i.am, %i.s       ; 2 uses
  %i.as = fmul fast <8 x float> %i.ao, %i.s       ; 2 uses
  %i.at = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ap)
  %i.au = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ar)
  %i.av = fadd fast <8 x float> %i.at, %i.ap
  %i.aw = fadd fast <8 x float> %i.au, %i.ar
  %i.ax = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.av)
  %i.ay = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aw)
  %i.az = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ax, <8 x i32> %i.ay)
  %i.ba = bitcast <16 x i16> %i.az to <4 x i64>
  %i.bb = shufflevector <4 x i64> %i.ba, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bc = bitcast <4 x i64> %i.bb to <16 x i16>
  %i.bd = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bc, <16 x i16> splat (i16 -127))
  %i.be = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.bd, <16 x i16> splat (i16 127))
  %i.bf = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.be, <16 x i16> poison)
  %i.bg = bitcast <32 x i8> %i.bf to <8 x i32>
  %i.bh = shufflevector <8 x i32> %i.bg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bi = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aq)
  %i.bj = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.as)
  %i.bk = fadd fast <8 x float> %i.bi, %i.aq
  %i.bl = fadd fast <8 x float> %i.bj, %i.as
  %i.bm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bk)
  %i.bn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bl)
  %i.bo = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.bm, <8 x i32> %i.bn)
  %i.bp = bitcast <16 x i16> %i.bo to <4 x i64>
  %i.bq = shufflevector <4 x i64> %i.bp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.br = bitcast <4 x i64> %i.bq to <16 x i16>
  %i.bs = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.br, <16 x i16> splat (i16 -127))
  %i.bt = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.bs, <16 x i16> splat (i16 127))
  %i.bu = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.bt, <16 x i16> poison)
  %i.bv = bitcast <32 x i8> %i.bu to <8 x i32>
  %i.bw = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bx = bitcast <4 x i32> %i.bh to <16 x i8>
  %i.by = bitcast <4 x i32> %i.bw to <16 x i8>
  %i.bz = shufflevector <16 x i8> %i.bx, <16 x i8> %i.by, <32 x i32> <i32 0, i32 16, i32 8, i32 24, i32 1, i32 17, i32 9, i32 25, i32 2, i32 18, i32 10, i32 26, i32 3, i32 19, i32 11, i32 27, i32 4, i32 20, i32 12, i32 28, i32 5, i32 21, i32 13, i32 29, i32 6, i32 22, i32 14, i32 30, i32 7, i32 23, i32 15, i32 31>
  %i.ca = add <32 x i8> %i.bz, splat (i8 127)
  store <32 x i8> %i.ca, ptr %.5676.i.us.us.us, align 1, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.5676.i.us.us.us, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.4445675.i.us.us.us, i64 %.idx495.i ; 2 uses
  %i.cd = add nuw nsw i32 %.0450674.i.us.us.us, 4 ; 2 uses
  %i.ce = or disjoint i32 %i.cd, 3
  %i.cf = icmp slt i32 %i.ce, %5
  br i1 %i.cf, label %.lr.ph677.i.us.us.us, label %.preheader661.i.us.us.us, !llvm.loop !291

.preheader661.i.us.us.us:                         ; preds = %.lr.ph677.i.us.us.us, %.loopexit663.i.us.us.us
  %.0450.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit663.i.us.us.us ], [ %i.w, %.lr.ph677.i.us.us.us ] ; 3 uses
  %.4445.lcssa.i.us.us.us = phi ptr [ %i.ah, %.loopexit663.i.us.us.us ], [ %i.cc, %.lr.ph677.i.us.us.us ] ; 2 uses
  %.5.lcssa.i.us.us.us = phi ptr [ %.0427694.i.us.us.us, %.loopexit663.i.us.us.us ], [ %i.cb, %.lr.ph677.i.us.us.us ] ; 2 uses
  %i.cg = or disjoint i32 %.0450.lcssa.i.us.us.us, 1
  %i.ch = icmp slt i32 %i.cg, %5
  br i1 %i.ch, label %.lr.ph684.i.us.us.us, label %.preheader659.i.us.us.us

.lr.ph684.i.us.us.us:                             ; preds = %.preheader661.i.us.us.us, %.lr.ph684.i.us.us.us
  %.6683.i.us.us.us = phi ptr [ %i.de, %.lr.ph684.i.us.us.us ], [ %.5.lcssa.i.us.us.us, %.preheader661.i.us.us.us ] ; 2 uses
  %.5446682.i.us.us.us = phi ptr [ %i.df, %.lr.ph684.i.us.us.us ], [ %.4445.lcssa.i.us.us.us, %.preheader661.i.us.us.us ] ; 3 uses
  %.1451681.i.us.us.us = phi i32 [ %i.dg, %.lr.ph684.i.us.us.us ], [ %.0450.lcssa.i.us.us.us, %.preheader661.i.us.us.us ]
  %i.ci = load <8 x float>, ptr %.5446682.i.us.us.us, align 1, !tbaa !17
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.5446682.i.us.us.us, i64 %i.l
  %i.ck = load <8 x float>, ptr %i.cj, align 1, !tbaa !17
  %i.cl = fmul fast <8 x float> %i.ci, %i.s       ; 2 uses
  %i.cm = fmul fast <8 x float> %i.ck, %i.s       ; 2 uses
  %i.cn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cl)
  %i.co = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cm)
  %i.cp = fadd fast <8 x float> %i.cn, %i.cl
  %i.cq = fadd fast <8 x float> %i.co, %i.cm
  %i.cr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cp)
  %i.cs = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cq)
  %i.ct = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.cr, <8 x i32> %i.cs)
  %i.cu = bitcast <16 x i16> %i.ct to <4 x i64>
  %i.cv = shufflevector <4 x i64> %i.cu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cw = bitcast <4 x i64> %i.cv to <16 x i16>
  %i.cx = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.cw, <16 x i16> splat (i16 -127))
  %i.cy = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.cx, <16 x i16> splat (i16 127))
  %i.cz = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.cy, <16 x i16> poison)
  %i.da = bitcast <32 x i8> %i.cz to <8 x i32>
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dc = bitcast <4 x i32> %i.db to <16 x i8>
  %i.dd = shufflevector <16 x i8> %i.dc, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.dd, ptr %.6683.i.us.us.us, align 1, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %.6683.i.us.us.us, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.5446682.i.us.us.us, i64 %.idx492.i ; 2 uses
  %i.dg = add nuw nsw i32 %.1451681.i.us.us.us, 2 ; 3 uses
  %i.dh = or disjoint i32 %i.dg, 1
  %i.di = icmp slt i32 %i.dh, %5
  br i1 %i.di, label %.lr.ph684.i.us.us.us, label %.preheader659.i.us.us.us, !llvm.loop !292

.preheader659.i.us.us.us:                         ; preds = %.lr.ph684.i.us.us.us, %.preheader661.i.us.us.us
  %.1451.lcssa.i.us.us.us = phi i32 [ %.0450.lcssa.i.us.us.us, %.preheader661.i.us.us.us ], [ %i.dg, %.lr.ph684.i.us.us.us ] ; 2 uses
  %.5446.lcssa.i.us.us.us = phi ptr [ %.4445.lcssa.i.us.us.us, %.preheader661.i.us.us.us ], [ %i.df, %.lr.ph684.i.us.us.us ]
  %.6.lcssa.i.us.us.us = phi ptr [ %.5.lcssa.i.us.us.us, %.preheader661.i.us.us.us ], [ %i.de, %.lr.ph684.i.us.us.us ] ; 2 uses
  %i.dj = icmp slt i32 %.1451.lcssa.i.us.us.us, %5
  br i1 %i.dj, label %.lr.ph691.i.us.us.us, label %.loopexit660.i.us.us.us

.lr.ph691.i.us.us.us:                             ; preds = %.preheader659.i.us.us.us, %.lr.ph691.i.us.us.us
  %.7690.i.us.us.us = phi ptr [ %i.dy, %.lr.ph691.i.us.us.us ], [ %.6.lcssa.i.us.us.us, %.preheader659.i.us.us.us ] ; 2 uses
  %.6447689.i.us.us.us = phi ptr [ %i.dz, %.lr.ph691.i.us.us.us ], [ %.5446.lcssa.i.us.us.us, %.preheader659.i.us.us.us ] ; 2 uses
  %.2452688.i.us.us.us = phi i32 [ %i.ea, %.lr.ph691.i.us.us.us ], [ %.1451.lcssa.i.us.us.us, %.preheader659.i.us.us.us ]
  %i.dk = load <8 x float>, ptr %.6447689.i.us.us.us, align 1, !tbaa !17
end_hunk_8
begin_hunk_9_@_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif:bb.a
  %i.yc = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.yb, <16 x i16> splat (i16 -127))
  %i.yd = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.yc, <16 x i16> splat (i16 127))
  %i.ye = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.yd, <16 x i16> poison)
  %i.yf = bitcast <32 x i8> %i.ye to <8 x i32>
  %i.yg = shufflevector <8 x i32> %i.yf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.yh = shufflevector <4 x i32> %i.xr, <4 x i32> %i.yg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yi = bitcast <4 x i32> %i.yh to <2 x i64>    ; 2 uses
  %i.yj = shufflevector <4 x i32> %i.xr, <4 x i32> %i.yg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.yk = bitcast <4 x i32> %i.yj to <2 x i64>    ; 2 uses
  %i.yl = shufflevector <2 x i64> %i.yi, <2 x i64> %i.yk, <2 x i32> <i32 0, i32 2>
  %i.ym = shufflevector <2 x i64> %i.yi, <2 x i64> %i.yk, <2 x i32> <i32 1, i32 3>
  %i.yn = bitcast <2 x i64> %i.yl to <16 x i8>
  %i.yo = add <16 x i8> %i.yn, splat (i8 127)
  %i.yp = bitcast <2 x i64> %i.ym to <16 x i8>
  %i.yq = add <16 x i8> %i.yp, splat (i8 127)
  store <16 x i8> %i.yo, ptr %.10700.i, align 16, !tbaa !17
  %i.yr = getelementptr inbounds nuw i8, ptr %.10700.i, i64 16
  store <16 x i8> %i.yq, ptr %i.yr, align 16, !tbaa !17
  %i.ys = getelementptr inbounds nuw i8, ptr %.10700.i, i64 32 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.0456699.i, i64 %.idx490.i
  %i.yu = add nuw nsw i32 %.0472698.i, 8          ; 2 uses
  %i.yv = or disjoint i32 %i.yu, 7
  %i.yw = icmp slt i32 %i.yv, %5
  br i1 %i.yw, label %.lr.ph701.i, label %.loopexit654.i.loopexit11, !llvm.loop !307

.loopexit654.i.loopexit11:                        ; preds = %.lr.ph701.i
  %indvars.iv.next866.i = add nuw nsw i64 %indvars.iv865.i, 4 ; 3 uses
  %i.yx = icmp slt i64 %indvars.iv.next866.i, %invariant.op.i
  br i1 %i.yx, label %.lr.ph701.i.preheader, label %.preheader652.loopexit.i, !llvm.loop !299

.preheader645.loopexit.i:                         ; preds = %.loopexit648.i.loopexit9, %.loopexit648.i.loopexit8.us, %.loopexit648.i.us.us.us, %.loopexit651.i.us.us.preheader
  %.us-phi53 = phi ptr [ %.9.lcssa.i, %.loopexit651.i.us.us.preheader ], [ %i.wh, %.loopexit648.i.loopexit8.us ], [ %.26.i.us.us.us, %.loopexit648.i.us.us.us ], [ %i.adc, %.loopexit648.i.loopexit9 ]
  %.us-phi54 = phi i64 [ %i.sf, %.loopexit651.i.us.us.preheader ], [ %indvars.iv.next870.i.us, %.loopexit648.i.loopexit8.us ], [ %indvars.iv.next870.i.us.us.us, %.loopexit648.i.us.us.us ], [ %indvars.iv.next870.i, %.loopexit648.i.loopexit9 ]
  %i.yy = trunc nsw i64 %.us-phi54 to i32
  br label %.preheader645.i

.preheader645.i:                                  ; preds = %.preheader645.loopexit.i, %.preheader652.i
  %.2432.lcssa.i = phi i32 [ %.1431.lcssa.i, %.preheader652.i ], [ %i.yy, %.preheader645.loopexit.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader652.i ], [ %.us-phi53, %.preheader645.loopexit.i ] ; 2 uses
  %i.yz = icmp slt i32 %.2432.lcssa.i, %3
  br i1 %i.yz, label %.lr.ph796.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph796.i:                                      ; preds = %.preheader645.i
  %i.za = sext i32 %4 to i64
  %i.zb = mul i64 %i.l, %i.za                     ; 2 uses
  %i.zc = icmp ne i32 %i.c, 8
  %i.zd = insertelement <8 x float> poison, float %6, i64 0
  %i.ze = shufflevector <8 x float> %i.zd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zf = icmp slt i32 %5, 8
  %.idx478.i = shl i64 %i.l, 5
  %i.zg = icmp ne i32 %i.c, 4
  %i.zh = insertelement <4 x float> poison, float %6, i64 0
  %i.zi = shufflevector <4 x float> %i.zh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zj = icmp slt i32 %5, 4
  %.idx477.i = shl i64 %i.l, 4                    ; 2 uses
  %i.zk = icmp eq i32 %i.c, 1
  %i.zl = icmp sgt i32 %5, 3
  %i.zm = trunc i64 %i.l to i32
  %i.zn = insertelement <4 x i32> poison, i32 %i.zm, i64 0
  %i.zo = shufflevector <4 x i32> %i.zn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zp = mul <4 x i32> %i.zo, <i32 0, i32 1, i32 2, i32 3>
  %i.zq = and i32 %5, -4
  %i.zr = sext i32 %.2432.lcssa.i to i64          ; 2 uses
  %i.zs = sext i32 %2 to i64                      ; 2 uses
  %i.zt = sext i32 %i.c to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %brmerge816.i = or i1 %i.zf, %i.zc
  %brmerge819.i = or i1 %i.zj, %i.zg
  br i1 %brmerge816.i, label %.loopexit644.i.us.preheader, label %.lr.ph773.i.preheader

.loopexit644.i.us.preheader:                      ; preds = %.lr.ph796.i
  %xtraiter211 = and i32 %5, 1
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br label %.loopexit644.i.us

.loopexit644.i.us:                                ; preds = %.loopexit644.i.us.preheader, %.loopexit.i.us
  %indvars.iv873.i.us = phi i64 [ %indvars.iv.next874.i.us, %.loopexit.i.us ], [ %i.zr, %.loopexit644.i.us.preheader ] ; 2 uses
  %.27795.i.us = phi ptr [ %.34.i.us, %.loopexit.i.us ], [ %.18.lcssa.i, %.loopexit644.i.us.preheader ] ; 4 uses
  %i.zu = load ptr, ptr %0, align 8, !tbaa !9
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.zb
  %i.zw = add nsw i64 %indvars.iv873.i.us, %i.zs
  %i.zx = mul nsw i64 %i.zw, %i.zt
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.zv, i64 %i.zx ; 3 uses
  br i1 %brmerge819.i, label %.loopexit643.i.us, label %.lr.ph779.i.us

.lr.ph779.i.us:                                   ; preds = %.loopexit644.i.us, %.lr.ph779.i.us
  %.30778.i.us = phi ptr [ %i.aak, %.lr.ph779.i.us ], [ %.27795.i.us, %.loopexit644.i.us ] ; 2 uses
  %.0429777.i.us = phi i32 [ %i.aam, %.lr.ph779.i.us ], [ 0, %.loopexit644.i.us ]
  %.2437776.i.us = phi ptr [ %i.aal, %.lr.ph779.i.us ], [ %i.zy, %.loopexit644.i.us ] ; 2 uses
  %i.zz = load <4 x float>, ptr %.2437776.i.us, align 16, !tbaa !17
  %i.aaa = fmul fast <4 x float> %i.zz, %i.zi     ; 2 uses
  %i.aab = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aaa)
  %i.aac = fadd fast <4 x float> %i.aab, %i.aaa
  %i.aad = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aac) ; 2 uses
  %i.aae = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aad, <4 x i32> %i.aad)
  %i.aaf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aae, <8 x i16> splat (i16 -127))
  %i.aag = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aaf, <8 x i16> splat (i16 127))
  %i.aah = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aag, <8 x i16> poison)
  %i.aai = shufflevector <16 x i8> %i.aah, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aaj = add <4 x i8> %i.aai, splat (i8 127)
  store <4 x i8> %i.aaj, ptr %.30778.i.us, align 1, !tbaa !17
  %i.aak = getelementptr inbounds nuw i8, ptr %.30778.i.us, i64 4 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.2437776.i.us, i64 %.idx477.i
  %i.aam = add nuw nsw i32 %.0429777.i.us, 4      ; 2 uses
  %i.aan = or disjoint i32 %i.aam, 3
  %i.aao = icmp slt i32 %i.aan, %5
  br i1 %i.aao, label %.lr.ph779.i.us, label %.loopexit.i.us, !llvm.loop !308

.loopexit643.i.us:                                ; preds = %.loopexit644.i.us
  br i1 %i.zk, label %bb.g, label %.loopexit.i.us

bb.g:                                             ; preds = %.loopexit643.i.us
  br i1 %i.zl, label %.lr.ph785.i.us, label %.preheader.i.us

.lr.ph785.i.us:                                   ; preds = %bb.g, %.lr.ph785.i.us
  %.0784.i.us = phi i32 [ %i.abc, %.lr.ph785.i.us ], [ 0, %bb.g ]
  %.32783.i.us = phi ptr [ %i.aba, %.lr.ph785.i.us ], [ %.27795.i.us, %bb.g ] ; 2 uses
  %.4439782.i.us = phi ptr [ %i.abb, %.lr.ph785.i.us ], [ %i.zy, %bb.g ] ; 2 uses
  %i.aap = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.4439782.i.us, <4 x i32> %i.zp, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aaq = fmul fast <4 x float> %i.aap, %i.zi    ; 2 uses
  %i.aar = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aaq)
  %i.aas = fadd fast <4 x float> %i.aar, %i.aaq
  %i.aat = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aas) ; 2 uses
  %i.aau = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aat, <4 x i32> %i.aat)
  %i.aav = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aau, <8 x i16> splat (i16 -127))
  %i.aaw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aav, <8 x i16> splat (i16 127))
  %i.aax = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aaw, <8 x i16> poison)
  %i.aay = shufflevector <16 x i8> %i.aax, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aaz = add <4 x i8> %i.aay, splat (i8 127)
  store <4 x i8> %i.aaz, ptr %.32783.i.us, align 1, !tbaa !17
  %i.aba = getelementptr inbounds nuw i8, ptr %.32783.i.us, i64 4 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.4439782.i.us, i64 %.idx477.i ; 2 uses
  %i.abc = add nuw nsw i32 %.0784.i.us, 4         ; 2 uses
  %i.abd = or disjoint i32 %i.abc, 3
  %i.abe = icmp slt i32 %i.abd, %5
  br i1 %i.abe, label %.lr.ph785.i.us, label %.preheader.i.us, !llvm.loop !309

.preheader.i.us:                                  ; preds = %.lr.ph785.i.us, %bb.g
  %.4439.lcssa.i.us = phi ptr [ %i.zy, %bb.g ], [ %i.abb, %.lr.ph785.i.us ] ; 3 uses
  %.32.lcssa.i.us = phi ptr [ %.27795.i.us, %bb.g ], [ %i.aba, %.lr.ph785.i.us ] ; 4 uses
  %.0.lcssa.i.us = phi i32 [ 0, %bb.g ], [ %i.zq, %.lr.ph785.i.us ] ; 4 uses
  %i.abf = icmp slt i32 %.0.lcssa.i.us, %5
  br i1 %i.abf, label %.lr.ph792.i.us.preheader, label %.loopexit.i.us

.lr.ph792.i.us.preheader:                         ; preds = %.preheader.i.us
  %.neg213 = or disjoint i32 %.0.lcssa.i.us, 1
  br i1 %lcmp.mod212.not, label %.lr.ph792.i.us.prol.loopexit, label %.lr.ph792.i.us.prol

.lr.ph792.i.us.prol:                              ; preds = %.lr.ph792.i.us.preheader
  %i.abg = load float, ptr %.4439.lcssa.i.us, align 4, !tbaa !203
  %i.abh = fmul fast float %i.abg, %6
  %i.abi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abh)
  %i.abj = fptosi float %i.abi to i32
  %spec.select.i637.i.us.prol = tail call i32 @llvm.smax.i32(i32 %i.abj, i32 -127)
  %.0.i638.i.us.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i637.i.us.prol, i32 127)
  %.0.i.i.us.prol = trunc nsw i32 %.0.i638.i.us.prol to i8
  store i8 %.0.i.i.us.prol, ptr %.32.lcssa.i.us, align 1, !tbaa !17
  %i.abk = getelementptr inbounds nuw i8, ptr %.32.lcssa.i.us, i64 1 ; 2 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.4439.lcssa.i.us, i64 %i.l
  %i.abm = or disjoint i32 %.0.lcssa.i.us, 1
  br label %.lr.ph792.i.us.prol.loopexit

.lr.ph792.i.us.prol.loopexit:                     ; preds = %.lr.ph792.i.us.prol, %.lr.ph792.i.us.preheader
  %.lcssa178.unr = phi ptr [ poison, %.lr.ph792.i.us.preheader ], [ %i.abk, %.lr.ph792.i.us.prol ]
  %.1791.i.us.unr = phi i32 [ %.0.lcssa.i.us, %.lr.ph792.i.us.preheader ], [ %i.abm, %.lr.ph792.i.us.prol ]
  %.33790.i.us.unr = phi ptr [ %.32.lcssa.i.us, %.lr.ph792.i.us.preheader ], [ %i.abk, %.lr.ph792.i.us.prol ]
  %.5440789.i.us.unr = phi ptr [ %.4439.lcssa.i.us, %.lr.ph792.i.us.preheader ], [ %i.abl, %.lr.ph792.i.us.prol ]
  %i.abn = icmp eq i32 %5, %.neg213
  br i1 %i.abn, label %.loopexit.i.us, label %.lr.ph792.i.us

.lr.ph792.i.us:                                   ; preds = %.lr.ph792.i.us.prol.loopexit, %.lr.ph792.i.us
  %.1791.i.us = phi i32 [ %i.aca, %.lr.ph792.i.us ], [ %.1791.i.us.unr, %.lr.ph792.i.us.prol.loopexit ]
  %.33790.i.us = phi ptr [ %i.aby, %.lr.ph792.i.us ], [ %.33790.i.us.unr, %.lr.ph792.i.us.prol.loopexit ] ; 3 uses
  %.5440789.i.us = phi ptr [ %i.abz, %.lr.ph792.i.us ], [ %.5440789.i.us.unr, %.lr.ph792.i.us.prol.loopexit ] ; 2 uses
  %i.abo = load float, ptr %.5440789.i.us, align 4, !tbaa !203
  %i.abp = fmul fast float %i.abo, %6
  %i.abq = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abp)
  %i.abr = fptosi float %i.abq to i32
  %spec.select.i637.i.us = tail call i32 @llvm.smax.i32(i32 %i.abr, i32 -127)
  %.0.i638.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i637.i.us, i32 127)
  %.0.i.i.us = trunc nsw i32 %.0.i638.i.us to i8
  store i8 %.0.i.i.us, ptr %.33790.i.us, align 1, !tbaa !17
  %i.abs = getelementptr inbounds nuw i8, ptr %.33790.i.us, i64 1
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %.5440789.i.us, i64 %i.l ; 2 uses
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !203
  %i.abv = fmul fast float %i.abu, %6
  %i.abw = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abv)
  %i.abx = fptosi float %i.abw to i32
  %spec.select.i637.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.abx, i32 -127)
  %.0.i638.i.us.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i637.i.us.1, i32 127)
  %.0.i.i.us.1 = trunc nsw i32 %.0.i638.i.us.1 to i8
  store i8 %.0.i.i.us.1, ptr %i.abs, align 1, !tbaa !17
  %i.aby = getelementptr inbounds nuw i8, ptr %.33790.i.us, i64 2 ; 2 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.l
  %i.aca = add nuw nsw i32 %.1791.i.us, 2         ; 2 uses
  %exitcond872.not.i.us.1 = icmp eq i32 %i.aca, %5
  br i1 %exitcond872.not.i.us.1, label %.loopexit.i.us, label %.lr.ph792.i.us, !llvm.loop !310

.loopexit.i.us:                                   ; preds = %.lr.ph779.i.us, %.lr.ph792.i.us.prol.loopexit, %.lr.ph792.i.us, %.preheader.i.us, %.loopexit643.i.us
  %.34.i.us = phi ptr [ %.27795.i.us, %.loopexit643.i.us ], [ %.32.lcssa.i.us, %.preheader.i.us ], [ %i.aby, %.lr.ph792.i.us ], [ %.lcssa178.unr, %.lr.ph792.i.us.prol.loopexit ], [ %i.aak, %.lr.ph779.i.us ]
  %indvars.iv.next874.i.us = add nsw i64 %indvars.iv873.i.us, 1 ; 2 uses
  %exitcond876.not.i.us = icmp eq i64 %indvars.iv.next874.i.us, %wide.trip.count.i
  br i1 %exitcond876.not.i.us, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.loopexit644.i.us, !llvm.loop !311

.lr.ph737.i.preheader:                            ; preds = %.lr.ph767.i, %.loopexit648.i.loopexit9
  %indvars.iv869.i = phi i64 [ %indvars.iv.next870.i, %.loopexit648.i.loopexit9 ], [ %i.ru, %.lr.ph767.i ] ; 2 uses
  %.18766.i = phi ptr [ %i.adc, %.loopexit648.i.loopexit9 ], [ %.9.lcssa.i, %.lr.ph767.i ]
  %i.acb = load ptr, ptr %0, align 8, !tbaa !9
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.rk
  %i.acd = add nsw i64 %indvars.iv869.i, %i.rw
  %i.ace = mul nsw i64 %i.acd, %i.rx
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.ace
  br label %.lr.ph737.i

.lr.ph737.i:                                      ; preds = %.lr.ph737.i.preheader, %.lr.ph737.i
  %.19736.i = phi ptr [ %i.adc, %.lr.ph737.i ], [ %.18766.i, %.lr.ph737.i.preheader ] ; 2 uses
  %.0464735.i = phi i32 [ %i.ade, %.lr.ph737.i ], [ 0, %.lr.ph737.i.preheader ]
  %.0465734.i = phi ptr [ %i.add, %.lr.ph737.i ], [ %i.acf, %.lr.ph737.i.preheader ] ; 3 uses
  %i.acg = load <8 x float>, ptr %.0465734.i, align 32, !tbaa !17
  %i.ach = getelementptr inbounds nuw i8, ptr %.0465734.i, i64 32
  %i.aci = load <8 x float>, ptr %i.ach, align 32, !tbaa !17
  %i.acj = fmul fast <8 x float> %i.acg, %i.rn    ; 2 uses
  %i.ack = fmul fast <8 x float> %i.aci, %i.rn    ; 2 uses
  %i.acl = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.acj)
  %i.acm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ack)
  %i.acn = fadd fast <8 x float> %i.acl, %i.acj
  %i.aco = fadd fast <8 x float> %i.acm, %i.ack
  %i.acp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acn)
  %i.acq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aco)
  %i.acr = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.acp, <8 x i32> %i.acq)
  %i.acs = bitcast <16 x i16> %i.acr to <4 x i64>
  %i.act = shufflevector <4 x i64> %i.acs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.acu = bitcast <4 x i64> %i.act to <16 x i16>
  %i.acv = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.acu, <16 x i16> splat (i16 -127))
  %i.acw = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.acv, <16 x i16> splat (i16 127))
  %i.acx = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.acw, <16 x i16> poison)
  %i.acy = bitcast <32 x i8> %i.acx to <8 x i32>
  %i.acz = shufflevector <8 x i32> %i.acy, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ada = bitcast <4 x i32> %i.acz to <16 x i8>
  %i.adb = add <16 x i8> %i.ada, splat (i8 127)
  store <16 x i8> %i.adb, ptr %.19736.i, align 16, !tbaa !17
  %i.adc = getelementptr inbounds nuw i8, ptr %.19736.i, i64 16 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.0465734.i, i64 %.idx484.i
  %i.ade = add nuw nsw i32 %.0464735.i, 8         ; 2 uses
  %i.adf = or disjoint i32 %i.ade, 7
  %i.adg = icmp slt i32 %i.adf, %5
  br i1 %i.adg, label %.lr.ph737.i, label %.loopexit648.i.loopexit9, !llvm.loop !312

.loopexit648.i.loopexit9:                         ; preds = %.lr.ph737.i
  %indvars.iv.next870.i = add nuw nsw i64 %indvars.iv869.i, 2 ; 3 uses
  %i.adh = icmp slt i64 %indvars.iv.next870.i, %invariant.op943.i
  br i1 %i.adh, label %.lr.ph737.i.preheader, label %.preheader645.loopexit.i, !llvm.loop !305

.lr.ph773.i.preheader:                            ; preds = %.lr.ph796.i, %.loopexit.i.loopexit7
  %indvars.iv873.i = phi i64 [ %indvars.iv.next874.i, %.loopexit.i.loopexit7 ], [ %i.zr, %.lr.ph796.i ] ; 2 uses
  %.27795.i = phi ptr [ %i.aeb, %.loopexit.i.loopexit7 ], [ %.18.lcssa.i, %.lr.ph796.i ]
  %i.adi = load ptr, ptr %0, align 8, !tbaa !9
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.zb
  %i.adk = add nsw i64 %indvars.iv873.i, %i.zs
  %i.adl = mul nsw i64 %i.adk, %i.zt
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.adl
  br label %.lr.ph773.i

.lr.ph773.i:                                      ; preds = %.lr.ph773.i.preheader, %.lr.ph773.i
  %.28772.i = phi ptr [ %i.aeb, %.lr.ph773.i ], [ %.27795.i, %.lr.ph773.i.preheader ] ; 2 uses
  %.0434771.i = phi i32 [ %i.aed, %.lr.ph773.i ], [ 0, %.lr.ph773.i.preheader ]
  %.0435770.i = phi ptr [ %i.aec, %.lr.ph773.i ], [ %i.adm, %.lr.ph773.i.preheader ] ; 2 uses
  %i.adn = load <8 x float>, ptr %.0435770.i, align 32, !tbaa !17
  %i.ado = fmul fast <8 x float> %i.adn, %i.ze    ; 2 uses
  %i.adp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ado)
  %i.adq = fadd fast <8 x float> %i.adp, %i.ado
  %i.adr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adq)
  %i.ads = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.adr, <8 x i32> poison)
  %i.adt = bitcast <16 x i16> %i.ads to <8 x i32>
  %i.adu = shufflevector <8 x i32> %i.adt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.adv = bitcast <4 x i32> %i.adu to <8 x i16>
  %i.adw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adv, <8 x i16> splat (i16 -127))
  %i.adx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adw, <8 x i16> splat (i16 127))
  %i.ady = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.adx, <8 x i16> poison)
  %i.adz = shufflevector <16 x i8> %i.ady, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aea = add <8 x i8> %i.adz, splat (i8 127)
  store <8 x i8> %i.aea, ptr %.28772.i, align 1, !tbaa !17
  %i.aeb = getelementptr inbounds nuw i8, ptr %.28772.i, i64 8 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.0435770.i, i64 %.idx478.i
  %i.aed = add nuw nsw i32 %.0434771.i, 8         ; 2 uses
  %i.aee = or disjoint i32 %i.aed, 7
  %i.aef = icmp slt i32 %i.aee, %5
  br i1 %i.aef, label %.lr.ph773.i, label %.loopexit.i.loopexit7, !llvm.loop !313

.loopexit.i.loopexit7:                            ; preds = %.lr.ph773.i
  %indvars.iv.next874.i = add nsw i64 %indvars.iv873.i, 1 ; 2 uses
  %exitcond876.not.i = icmp eq i64 %indvars.iv.next874.i, %wide.trip.count.i
  br i1 %exitcond876.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.lr.ph773.i.preheader, !llvm.loop !311

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i.loopexit7, %.loopexit.i.us, %bb.b, %.preheader645.i
  ret void
}

declare void @_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !9      ; 8 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.e = icmp sgt i32 %4, 7
  br i1 %i.e, label %.preheader1892.lr.ph.i, label %.preheader1884.i

.preheader1892.lr.ph.i:                           ; preds = %bb.c
  %i.f = icmp sgt i32 %6, 7
  %i.g = icmp eq i32 %7, 0                        ; 4 uses
  %i.h = icmp sgt i32 %8, 3                       ; 5 uses
  %i.i = shl i32 %8, 3
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %spec.select.idx.i = select i1 %i.h, i64 32, i64 0 ; 2 uses
  %i.k = add i32 %8, -4                           ; 5 uses
  %i.l = and i32 %i.k, -4
  %i.m = add i32 %i.l, 4                          ; 4 uses
  %i.n = and i32 %6, -8
  %i.o = zext i32 %i.k to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 2                         ; 3 uses
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = and i64 %i.o, 4294967292
  %i.t = shl nuw nsw i64 %i.p, 5                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 32                 ; 2 uses
  %scevgep494 = getelementptr i8, ptr %i.b, i64 %i.t
  %i.v = add nsw i64 %spec.select.idx.i, %i.j     ; 2 uses
  %scevgep496 = getelementptr i8, ptr %i.b, i64 %i.u
  %i.w = lshr i32 %i.k, 2                         ; 2 uses
  %i.x = add nuw nsw i32 %i.w, 1                  ; 4 uses
  %i.y = icmp eq i32 %i.w, 0
  %unroll_iter = and i32 %i.x, 2147483646
  %i.z = and i32 %i.k, 4
  %lcmp.mod.not.not = icmp eq i32 %i.z, 0
  %lcmp.mod1947 = trunc i32 %i.x to i1
  %xtraiter1953 = and i32 %i.x, 3                 ; 3 uses
  %i.aa = icmp ult i32 %i.k, 12
  %unroll_iter1959 = and i32 %i.x, 2147483644
  %lcmp.mod1956.not = icmp eq i32 %xtraiter1953, 0
  %lcmp.mod1958 = icmp ne i32 %xtraiter1953, 0
  br label %.preheader1892.i

.preheader1892.i:                                 ; preds = %._crit_edge2146.i, %.preheader1892.lr.ph.i
  %indvars.iv497 = phi ptr [ %scevgep498, %._crit_edge2146.i ], [ %scevgep496, %.preheader1892.lr.ph.i ] ; 4 uses
  %indvars.iv = phi ptr [ %scevgep495, %._crit_edge2146.i ], [ %scevgep494, %.preheader1892.lr.ph.i ] ; 4 uses
  %.010732150.i = phi ptr [ %spec.select.i, %._crit_edge2146.i ], [ %i.b, %.preheader1892.lr.ph.i ] ; 11 uses
  %.011122149.i = phi ptr [ %.41116.lcssa.i, %._crit_edge2146.i ], [ %i.d, %.preheader1892.lr.ph.i ] ; 2 uses
  %.011202148.i = phi i32 [ %i.uc, %._crit_edge2146.i ], [ 0, %.preheader1892.lr.ph.i ]
  br i1 %i.f, label %.lr.ph2034.i, label %.preheader1891.i

.preheader1884.loopexit.i:                        ; preds = %._crit_edge2146.i
  %i.ab = and i32 %4, 2147483640
  br label %.preheader1884.i

.preheader1884.i:                                 ; preds = %.preheader1884.loopexit.i, %bb.c
  %.01120.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ab, %.preheader1884.loopexit.i ] ; 3 uses
  %.01112.lcssa.i = phi ptr [ %i.d, %bb.c ], [ %.41116.lcssa.i, %.preheader1884.loopexit.i ] ; 2 uses
  %.01073.lcssa.i = phi ptr [ %i.b, %bb.c ], [ %spec.select.i, %.preheader1884.loopexit.i ] ; 4 uses
  %i.ac = or disjoint i32 %.01120.lcssa.i, 3
  %i.ad = icmp slt i32 %i.ac, %4
  br i1 %i.ad, label %.preheader1883.lr.ph.i, label %.preheader1875.i

.preheader1883.lr.ph.i:                           ; preds = %.preheader1884.i
  %i.ae = icmp sgt i32 %6, 7
  %i.af = icmp eq i32 %7, 0                       ; 4 uses
  %i.ag = icmp sgt i32 %8, 3                      ; 5 uses
  %i.ah = shl i32 %8, 2
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %spec.select1374.idx.i = select i1 %i.ag, i64 16, i64 0 ; 3 uses
  %i.aj = add i32 %8, -4                          ; 6 uses
  %i.ak = and i32 %i.aj, -4
  %i.al = add i32 %i.ak, 4                        ; 4 uses
  %i.am = and i32 %6, -8
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 2                       ; 3 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4                ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 16               ; 2 uses
  %scevgep2953.i = getelementptr i8, ptr %.01073.lcssa.i, i64 %i.aq
  %i.ar = shl nuw nsw i64 %i.ao, 3
  %i.as = and i64 %i.an, 4294967292
  %i.at = shl nuw nsw i64 %i.ao, 5
  %scevgep500 = getelementptr i8, ptr %.01073.lcssa.i, i64 %i.ap
  %i.au = lshr i32 %i.aj, 2                       ; 3 uses
  %i.av = add nuw nsw i32 %i.au, 1                ; 6 uses
  %i.aw = icmp eq i32 %i.au, 0
  %unroll_iter1982 = and i32 %i.av, 2147483646
  %i.ax = and i32 %i.aj, 4
  %lcmp.mod1975.not.not = icmp eq i32 %i.ax, 0
  %lcmp.mod1981 = trunc i32 %i.av to i1
  %i.ay = icmp eq i32 %i.au, 0
  %unroll_iter1996 = and i32 %i.av, 2147483646
  %i.az = and i32 %i.aj, 4
  %lcmp.mod1991.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1995 = trunc i32 %i.av to i1
  %xtraiter1999 = and i32 %i.av, 3                ; 3 uses
  %i.ba = icmp ult i32 %i.aj, 12
  %unroll_iter2007 = and i32 %i.av, 2147483644
  %lcmp.mod2003.not = icmp eq i32 %xtraiter1999, 0
  %lcmp.mod2006 = icmp ne i32 %xtraiter1999, 0
  br label %.preheader1883.i

.preheader1891.i:                                 ; preds = %._crit_edge2021.i, %.preheader1892.i
  %.01140.lcssa.i = phi i32 [ 0, %.preheader1892.i ], [ %i.n, %._crit_edge2021.i ] ; 3 uses
  %.01124.lcssa.i = phi ptr [ %i.c, %.preheader1892.i ], [ %.31127.lcssa.i, %._crit_edge2021.i ] ; 2 uses
  %.11113.lcssa.i = phi ptr [ %.011122149.i, %.preheader1892.i ], [ %i.he, %._crit_edge2021.i ] ; 2 uses
  %i.bb = or disjoint i32 %.01140.lcssa.i, 3
  %i.bc = icmp slt i32 %i.bb, %6
  br i1 %i.bc, label %.lr.ph2076.i.preheader, label %.preheader1890.i

.lr.ph2076.i.preheader:                           ; preds = %.preheader1891.i
  %i.bd = getelementptr inbounds nuw i8, ptr %indvars.iv, i64 64
  br label %.lr.ph2076.i

.lr.ph2034.i:                                     ; preds = %.preheader1892.i, %._crit_edge2021.i
  %.111132033.i = phi ptr [ %i.he, %._crit_edge2021.i ], [ %.011122149.i, %.preheader1892.i ] ; 17 uses
  %.011242032.i = phi ptr [ %.31127.lcssa.i, %._crit_edge2021.i ], [ %i.c, %.preheader1892.i ] ; 3 uses
  %.011402031.i = phi i32 [ %i.hf, %._crit_edge2021.i ], [ 0, %.preheader1892.i ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph2034.i
  %i.be = load <8 x i32>, ptr %.111132033.i, align 32, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.111132033.i, i64 32
  %i.bg = load <8 x i32>, ptr %i.bf, align 32, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.111132033.i, i64 64
  %i.bi = load <8 x i32>, ptr %i.bh, align 32, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.111132033.i, i64 96
  %i.bk = load <8 x i32>, ptr %i.bj, align 32, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.111132033.i, i64 128
  %i.bm = load <8 x i32>, ptr %i.bl, align 32, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.111132033.i, i64 160
  %i.bo = load <8 x i32>, ptr %i.bn, align 32, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.111132033.i, i64 192
  %i.bq = load <8 x i32>, ptr %i.bp, align 32, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.111132033.i, i64 224
  %i.bs = load <8 x i32>, ptr %i.br, align 32, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph2034.i
  %i.bt = phi <8 x i32> [ %i.bq, %bb.d ], [ zeroinitializer, %.lr.ph2034.i ] ; 2 uses
  %i.bu = phi <8 x i32> [ %i.bo, %bb.d ], [ zeroinitializer, %.lr.ph2034.i ] ; 2 uses
  %i.bv = phi <8 x i32> [ %i.bm, %bb.d ], [ zeroinitializer, %.lr.ph2034.i ] ; 2 uses
  %i.bw = phi <8 x i32> [ %i.bk, %bb.d ], [ zeroinitializer, %.lr.ph2034.i ] ; 2 uses
  %i.bx = phi <8 x i32> [ %i.bi, %bb.d ], [ zeroinitializer, %.lr.ph2034.i ] ; 2 uses
  %i.by = phi <8 x i32> [ %i.bg, %bb.d ], [ zeroinitializer, %.lr.ph2034.i ] ; 2 uses
  %i.bz = phi <8 x i32> [ %i.be, %bb.d ], [ zeroinitializer, %.lr.ph2034.i ] ; 2 uses
  %i.ca = phi <8 x i32> [ %i.bs, %bb.d ], [ zeroinitializer, %.lr.ph2034.i ] ; 2 uses
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.111251990.i = phi ptr [ %i.cy, %.lr.ph.i ], [ %.011242032.i, %bb.e ] ; 2 uses
  %.011441989.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %.010732150.i, %bb.e ] ; 3 uses
  %.011481988.i = phi i32 [ %i.cz, %.lr.ph.i ], [ 0, %bb.e ]
  %i.cb = phi <8 x i32> [ %i.cp, %.lr.ph.i ], [ %i.bz, %bb.e ]
  %i.cc = phi <8 x i32> [ %i.cq, %.lr.ph.i ], [ %i.by, %bb.e ]
  %i.cd = phi <8 x i32> [ %i.cr, %.lr.ph.i ], [ %i.bx, %bb.e ]
  %i.ce = phi <8 x i32> [ %i.cs, %.lr.ph.i ], [ %i.bw, %bb.e ]
  %i.cf = phi <8 x i32> [ %i.ct, %.lr.ph.i ], [ %i.bv, %bb.e ]
  %i.cg = phi <8 x i32> [ %i.cu, %.lr.ph.i ], [ %i.bu, %bb.e ]
  %i.ch = phi <8 x i32> [ %i.cv, %.lr.ph.i ], [ %i.bt, %bb.e ]
  %i.ci = phi <8 x i32> [ %i.cw, %.lr.ph.i ], [ %i.ca, %bb.e ]
  %i.cj = load <32 x i8>, ptr %.011441989.i, align 1, !tbaa !17 ; 5 uses
  %i.ck = load <4 x i64>, ptr %.111251990.i, align 1, !tbaa !17 ; 2 uses
  %i.cl = shufflevector <32 x i8> %i.cj, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 4 uses
  %.cast1372.i = bitcast <4 x i64> %i.ck to <32 x i8> ; 3 uses
  %i.cm = shufflevector <32 x i8> %.cast1372.i, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.cn = shufflevector <4 x i64> %i.ck, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %.cast1373.i = bitcast <4 x i64> %i.cn to <32 x i8> ; 3 uses
  %i.co = shufflevector <32 x i8> %.cast1373.i, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.cp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cb, <32 x i8> %.cast1372.i, <32 x i8> %i.cj) ; 2 uses
  %i.cq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cc, <32 x i8> %i.cm, <32 x i8> %i.cj) ; 2 uses
  %i.cr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cd, <32 x i8> %.cast1372.i, <32 x i8> %i.cl) ; 2 uses
  %i.cs = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ce, <32 x i8> %i.cm, <32 x i8> %i.cl) ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cf, <32 x i8> %.cast1373.i, <32 x i8> %i.cj) ; 2 uses
  %i.cu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cg, <32 x i8> %i.co, <32 x i8> %i.cj) ; 2 uses
  %i.cv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ch, <32 x i8> %.cast1373.i, <32 x i8> %i.cl) ; 2 uses
  %i.cw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ci, <32 x i8> %i.co, <32 x i8> %i.cl) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.011441989.i, i64 32 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.111251990.i, i64 32
  %i.cz = add nuw nsw i32 %.011481988.i, 4        ; 2 uses
  %i.da = or disjoint i32 %i.cz, 3
end_hunk_9
