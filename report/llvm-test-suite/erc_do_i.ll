inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ercPixConcealIMB:bb.a
  %i.ci = sdiv i32 %i.ch, %i.bv
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = and i16 %i.cj, 255
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink176.i.us.us.us.us71 = phi i16 [ %i.ck, %bb.p ], [ %i.bz, %bb.o ]
  %gep162.i.us.us.us.us72 = getelementptr [2 x i8], ptr %invariant.gep161.sink.i.us.us, i64 %indvars.iv.i.us.us.us.us69
  store i16 %.sink176.i.us.us.us.us71, ptr %gep162.i.us.us.us.us72, align 2, !tbaa !30
  %indvars.iv.next.i.us.us.us.us73 = add nuw nsw i64 %indvars.iv.i.us.us.us.us69, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us74 = icmp eq i64 %indvars.iv.next.i.us.us.us.us73, %wide.trip.count141.i
  br i1 %exitcond.not.i.us.us.us.us74, label %._crit_edge.split.i.split.us.us.split.us.split.us75, label %bb.n, !llvm.loop !32

._crit_edge.split.i.split.us.us.split.us.split.us75: ; preds = %bb.q
  %indvars.iv.next93.i.us.us = add nuw nsw i64 %indvars.iv92.i.us.us, 1 ; 2 uses
  %indvars.iv.next95.i.us.us = add nsw i64 %indvars.iv94.i.us.us, %i.ay
  %exitcond100.not.i.us.us = icmp eq i64 %indvars.iv.next93.i.us.us, %wide.trip.count141.i
  br i1 %exitcond100.not.i.us.us, label %pixMeanInterpolateBlock.exit, label %.preheader.i.us.us, !llvm.loop !33

.preheader.i.us:                                  ; preds = %.preheader.i.preheader.split.us, %._crit_edge.split.i.split.us.us.split
  %indvars.iv94.i.us = phi i64 [ %indvars.iv.next95.i.us, %._crit_edge.split.i.split.us.us.split ], [ 0, %.preheader.i.preheader.split.us ] ; 2 uses
  %indvars.iv92.i.us = phi i64 [ %indvars.iv.next93.i.us, %._crit_edge.split.i.split.us.us.split ], [ 0, %.preheader.i.preheader.split.us ] ; 3 uses
  %i.cl = mul nsw i64 %indvars.iv92.i.us, %i.ay
  %gep.i.us = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.cl
  %indvars.iv.next93.i.us = add nuw nsw i64 %indvars.iv92.i.us, 1 ; 3 uses
  %i.cm = trunc i64 %indvars.iv92.i.us to i32
  %i.cn = sub i32 %i.ao, %i.cm                    ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv.next93.i.us to i32 ; 2 uses
  %invariant.gep161.sink.i.us = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv94.i.us
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.preheader.i.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next.i.us.us, %bb.w ] ; 5 uses
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.i.us.us
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !30
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nsw i32 %i.cn, %i.cr
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.058.i.us.us = phi i32 [ %i.cs, %bb.s ], [ 0, %bb.r ]
  %.057.i.us.us = phi i32 [ %i.cn, %bb.s ], [ 0, %bb.r ]
  %i.ct = trunc i64 %indvars.iv.i.us.us to i32
  %i.cu = sub i32 %i.ao, %i.ct                    ; 2 uses
  %i.cv = add nsw i32 %.057.i.us.us, %i.cu
  %i.cw = add nsw i32 %i.cv, %i.co                ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = load ptr, ptr @img, align 8
  %.in.i.us.us = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.in.v.i
  %i.cz = load i32, ptr %.in.i.us.us, align 4, !tbaa !4
  %i.da = trunc i32 %i.cz to i16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.i.us.us
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !30
  %i.dd = zext i16 %i.dc to i32
  %i.de = mul nuw nsw i32 %i.dd, %i.co
  %i.df = load i16, ptr %gep.i.us, align 2, !tbaa !30
  %i.dg = zext i16 %i.df to i32
  %i.dh = mul nsw i32 %i.cu, %i.dg
  %i.di = add nsw i32 %i.dh, %.058.i.us.us
  %i.dj = add nsw i32 %i.de, %i.di
  %i.dk = sdiv i32 %i.dj, %i.cw
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = and i16 %i.dl, 255
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink176.i.us.us = phi i16 [ %i.dm, %bb.v ], [ %i.da, %bb.u ]
  %gep162.i.us.us = getelementptr [2 x i8], ptr %invariant.gep161.sink.i.us, i64 %indvars.iv.i.us.us
  store i16 %.sink176.i.us.us, ptr %gep162.i.us.us, align 2, !tbaa !30
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count141.i
  br i1 %exitcond.not.i.us.us, label %._crit_edge.split.i.split.us.us.split, label %bb.r, !llvm.loop !32

._crit_edge.split.i.split.us.us.split:            ; preds = %bb.w
  %indvars.iv.next95.i.us = add nsw i64 %indvars.iv94.i.us, %i.ay
  %exitcond100.not.i.us = icmp eq i64 %indvars.iv.next93.i.us, %wide.trip.count141.i
  br i1 %exitcond100.not.i.us, label %pixMeanInterpolateBlock.exit, label %.preheader.i.us, !llvm.loop !33

.preheader.lr.ph.split.split.us.i:                ; preds = %.preheader.lr.ph.i
  br i1 %.not71.i, label %.preheader.lr.ph.split.split.us.split.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.split.us.i
  br i1 %.not70.i, label %.preheader.us.i.preheader.split.us, label %.preheader.us.i

.preheader.us.i.preheader.split.us:               ; preds = %.preheader.us.i.preheader
  br i1 %.not.i, label %.preheader.us.i.us.us, label %.preheader.us.i.us

.preheader.us.i.us.us:                            ; preds = %.preheader.us.i.preheader.split.us, %._crit_edge.split.us.us.split.i.split.us.split.us.us.us
  %indvars.iv108.i.us.us = phi i64 [ %indvars.iv.next109.i.us.us, %._crit_edge.split.us.us.split.i.split.us.split.us.us.us ], [ 0, %.preheader.us.i.preheader.split.us ] ; 2 uses
  %indvars.iv106.i.us.us = phi i64 [ %indvars.iv.next107.i.us.us, %._crit_edge.split.us.us.split.i.split.us.split.us.us.us ], [ 0, %.preheader.us.i.preheader.split.us ] ; 2 uses
  %i.dn = mul nsw i64 %indvars.iv106.i.us.us, %i.ay
  %i.do = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.dn ; 4 uses
  %invariant.gep165.sink.i.us.us = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv108.i.us.us ; 4 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader.us.i.us.us
  %indvars.iv101.i.us.us.us.us = phi i64 [ 0, %.preheader.us.i.us.us ], [ %indvars.iv.next102.i.us.us.us.us.3, %bb.x ] ; 5 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !30
  %i.dq = and i16 %i.dp, 255
  %gep166.i.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep165.sink.i.us.us, i64 %indvars.iv101.i.us.us.us.us
  store i16 %i.dq, ptr %gep166.i.us.us.us.us, align 2, !tbaa !30
  %i.dr = load i16, ptr %i.do, align 2, !tbaa !30
  %i.ds = and i16 %i.dr, 255
  %i.dt = getelementptr [2 x i8], ptr %invariant.gep165.sink.i.us.us, i64 %indvars.iv101.i.us.us.us.us
  %gep166.i.us.us.us.us.1 = getelementptr i8, ptr %i.dt, i64 2
  store i16 %i.ds, ptr %gep166.i.us.us.us.us.1, align 2, !tbaa !30
  %i.du = load i16, ptr %i.do, align 2, !tbaa !30
  %i.dv = and i16 %i.du, 255
  %i.dw = getelementptr [2 x i8], ptr %invariant.gep165.sink.i.us.us, i64 %indvars.iv101.i.us.us.us.us
  %gep166.i.us.us.us.us.2 = getelementptr i8, ptr %i.dw, i64 4
  store i16 %i.dv, ptr %gep166.i.us.us.us.us.2, align 2, !tbaa !30
  %indvars.iv.next102.i.us.us.us.us.3 = add nuw nsw i64 %indvars.iv101.i.us.us.us.us, 4 ; 2 uses
  %i.dx = load i16, ptr %i.do, align 2, !tbaa !30
  %i.dy = and i16 %i.dx, 255
  %i.dz = getelementptr [2 x i8], ptr %invariant.gep165.sink.i.us.us, i64 %indvars.iv101.i.us.us.us.us
  %gep166.i.us.us.us.us.3 = getelementptr i8, ptr %i.dz, i64 6
  store i16 %i.dy, ptr %gep166.i.us.us.us.us.3, align 2, !tbaa !30
  %exitcond105.not.i.us.us.us.us.3 = icmp eq i64 %indvars.iv.next102.i.us.us.us.us.3, %wide.trip.count141.i
  br i1 %exitcond105.not.i.us.us.us.us.3, label %._crit_edge.split.us.us.split.i.split.us.split.us.us.us, label %bb.x, !llvm.loop !32

._crit_edge.split.us.us.split.i.split.us.split.us.us.us: ; preds = %bb.x
  %indvars.iv.next107.i.us.us = add nuw nsw i64 %indvars.iv106.i.us.us, 1 ; 2 uses
  %indvars.iv.next109.i.us.us = add nsw i64 %indvars.iv108.i.us.us, %i.ay
  %exitcond114.not.i.us.us = icmp eq i64 %indvars.iv.next107.i.us.us, %wide.trip.count141.i
  br i1 %exitcond114.not.i.us.us, label %pixMeanInterpolateBlock.exit, label %.preheader.us.i.us.us, !llvm.loop !33

.preheader.us.i.us:                               ; preds = %.preheader.us.i.preheader.split.us, %._crit_edge.split.us.us.split.i.split.us.split.us83
  %indvars.iv108.i.us = phi i64 [ %indvars.iv.next109.i.us, %._crit_edge.split.us.us.split.i.split.us.split.us83 ], [ 0, %.preheader.us.i.preheader.split.us ] ; 2 uses
  %indvars.iv106.i.us = phi i64 [ %indvars.iv.next107.i.us, %._crit_edge.split.us.us.split.i.split.us.split.us83 ], [ 0, %.preheader.us.i.preheader.split.us ] ; 3 uses
  %i.ea = mul nsw i64 %indvars.iv106.i.us, %i.ay
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.ea
  %i.ec = trunc i64 %indvars.iv106.i.us to i32
  %i.ed = sub i32 %i.ao, %i.ec                    ; 2 uses
  %invariant.gep165.sink.i.us = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv108.i.us
  br label %bb.y

bb.y:                                             ; preds = %.preheader.us.i.us, %bb.ab
  %indvars.iv101.i.us.us77 = phi i64 [ %indvars.iv.next102.i.us.us78, %bb.ab ], [ 0, %.preheader.us.i.us ] ; 3 uses
  %indvars.iv.next102.i.us.us78 = add nuw nsw i64 %indvars.iv101.i.us.us77, 1 ; 3 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv.next102.i.us.us78 to i32 ; 2 uses
  %i.ef = add nsw i32 %i.ed, %i.ee                ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = load ptr, ptr @img, align 8
  %.in.us.us.i.us.us79 = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.in.v.i
  %i.ei = load i32, ptr %.in.us.us.i.us.us79, align 4, !tbaa !4
  %i.ej = trunc i32 %i.ei to i16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv101.i.us.us77
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !30
  %i.em = zext i16 %i.el to i32
  %i.en = mul nsw i32 %i.ed, %i.em
  %i.eo = load i16, ptr %i.eb, align 2, !tbaa !30
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.ep, %i.ee
  %i.er = add nsw i32 %i.eq, %i.en
  %i.es = sdiv i32 %i.er, %i.ef
  %i.et = trunc i32 %i.es to i16
  %i.eu = and i16 %i.et, 255
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink175.i.us.us80 = phi i16 [ %i.eu, %bb.aa ], [ %i.ej, %bb.z ]
  %gep166.i.us.us81 = getelementptr [2 x i8], ptr %invariant.gep165.sink.i.us, i64 %indvars.iv101.i.us.us77
  store i16 %.sink175.i.us.us80, ptr %gep166.i.us.us81, align 2, !tbaa !30
  %exitcond105.not.i.us.us82 = icmp eq i64 %indvars.iv.next102.i.us.us78, %wide.trip.count141.i
  br i1 %exitcond105.not.i.us.us82, label %._crit_edge.split.us.us.split.i.split.us.split.us83, label %bb.y, !llvm.loop !32

._crit_edge.split.us.us.split.i.split.us.split.us83: ; preds = %bb.ab
  %indvars.iv.next107.i.us = add nuw nsw i64 %indvars.iv106.i.us, 1 ; 2 uses
  %indvars.iv.next109.i.us = add nsw i64 %indvars.iv108.i.us, %i.ay
  %exitcond114.not.i.us = icmp eq i64 %indvars.iv.next107.i.us, %wide.trip.count141.i
  br i1 %exitcond114.not.i.us, label %pixMeanInterpolateBlock.exit, label %.preheader.us.i.us, !llvm.loop !33

.preheader.lr.ph.split.split.us.split.us.i:       ; preds = %.preheader.lr.ph.split.split.us.i
  br i1 %.not70.i, label %.preheader.lr.ph.split.split.us.split.us.split.us.i, label %.preheader.us.us.i.preheader

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.split.us.split.us.i
  br i1 %.not.i, label %.preheader.us.us.i.us.preheader, label %.preheader.us.us.i.preheader93

.preheader.us.us.i.us.preheader:                  ; preds = %.preheader.us.us.i.preheader
  %i.ev = add nsw i64 %.pre106, %i.am
  %i.ew = shl nsw i64 %i.ev, 1
  %i.ex = add i64 %i.ew, %i.a
  %i.ey = sub i64 %i.ex, %.sroa.11.0140
  %i.ez = shl nsw i64 %i.ay, 1
  %min.iters.check = icmp eq i32 %i.ao, 0
  %invariant.op = add i64 %i.ey, -1
  %min.iters.check141 = icmp ult i32 %i.ao, 16
  %n.mod.vf = and i64 %wide.trip.count141.i, 8
  %n.vec = and i64 %wide.trip.count141.i, 4294967280 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count141.i
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br label %iter.check

.preheader.us.us.i.preheader93:                   ; preds = %.preheader.us.us.i.preheader
  %i.fa = or disjoint i32 %i.ao, 1                ; 2 uses
  br label %.preheader.us.us.i.split.split.us.preheader

iter.check:                                       ; preds = %.preheader.us.us.i.us.preheader, %._crit_edge.split.us.us.split.us.us.split.i.split.us.us
  %indvar = phi i64 [ 0, %.preheader.us.us.i.us.preheader ], [ %indvar.next, %._crit_edge.split.us.us.split.us.us.split.i.split.us.us ] ; 2 uses
  %indvars.iv120.i.us = phi i64 [ 0, %.preheader.us.us.i.us.preheader ], [ %indvars.iv.next121.i.us, %._crit_edge.split.us.us.split.us.us.split.i.split.us.us ] ; 2 uses
  %.075.us.us.i.us = phi i32 [ 0, %.preheader.us.us.i.us.preheader ], [ %i.ga, %._crit_edge.split.us.us.split.us.us.split.i.split.us.us ]
  %invariant.gep169.sink.i.us = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv120.i.us ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fb = mul i64 %i.ez, %indvar
  %i.fc = add i64 %i.fb, %invariant.op
  %diff.check = icmp ult i64 %i.fc, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check141, label %vec.epilog.vector.body.preheader, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load = load <8 x i16>, ptr %i.fd, align 2, !tbaa !30
  %wide.load142 = load <8 x i16>, ptr %i.fe, align 2, !tbaa !30
  %i.ff = and <8 x i16> %wide.load, splat (i16 255)
  %i.fg = and <8 x i16> %wide.load142, splat (i16 255)
  %i.fh = getelementptr [2 x i8], ptr %invariant.gep169.sink.i.us, i64 %index ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  store <8 x i16> %i.ff, ptr %i.fh, align 2, !tbaa !30
  store <8 x i16> %i.fg, ptr %i.fi, align 2, !tbaa !30
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.split.us.us.split.i.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !37

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index145.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv115.i.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index145 = phi i64 [ %index.next147, %vec.epilog.vector.body ], [ %index145.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %index145
  %wide.load146 = load <8 x i16>, ptr %i.fk, align 2, !tbaa !30
  %i.fl = and <8 x i16> %wide.load146, splat (i16 255)
  %i.fm = getelementptr [2 x i8], ptr %invariant.gep169.sink.i.us, i64 %index145
  store <8 x i16> %i.fl, ptr %i.fm, align 2, !tbaa !30
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next147, %wide.trip.count141.i
  br i1 %i.fn, label %._crit_edge.split.us.us.split.us.us.split.i.split.us.us, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %indvars.iv115.i.us.us = phi i64 [ %indvars.iv115.i.us.us.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next116.i.us.us.3, %vec.epilog.scalar.ph ] ; 6 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv115.i.us.us
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !30
  %i.fq = and i16 %i.fp, 255
  %gep170.i.us.us = getelementptr [2 x i8], ptr %invariant.gep169.sink.i.us, i64 %indvars.iv115.i.us.us
  store i16 %i.fq, ptr %gep170.i.us.us, align 2, !tbaa !30
  %indvars.iv.next116.i.us.us = or disjoint i64 %indvars.iv115.i.us.us, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next116.i.us.us
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !30
  %i.ft = and i16 %i.fs, 255
  %gep170.i.us.us.1 = getelementptr [2 x i8], ptr %invariant.gep169.sink.i.us, i64 %indvars.iv.next116.i.us.us
  store i16 %i.ft, ptr %gep170.i.us.us.1, align 2, !tbaa !30
  %indvars.iv.next116.i.us.us.1 = or disjoint i64 %indvars.iv115.i.us.us, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next116.i.us.us.1
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !30
  %i.fw = and i16 %i.fv, 255
  %gep170.i.us.us.2 = getelementptr [2 x i8], ptr %invariant.gep169.sink.i.us, i64 %indvars.iv.next116.i.us.us.1
  store i16 %i.fw, ptr %gep170.i.us.us.2, align 2, !tbaa !30
  %indvars.iv.next116.i.us.us.2 = or disjoint i64 %indvars.iv115.i.us.us, 3 ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next116.i.us.us.2
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !30
  %i.fz = and i16 %i.fy, 255
  %gep170.i.us.us.3 = getelementptr [2 x i8], ptr %invariant.gep169.sink.i.us, i64 %indvars.iv.next116.i.us.us.2
  store i16 %i.fz, ptr %gep170.i.us.us.3, align 2, !tbaa !30
  %indvars.iv.next116.i.us.us.3 = add nuw nsw i64 %indvars.iv115.i.us.us, 4 ; 2 uses
  %exitcond119.not.i.us.us.3 = icmp eq i64 %indvars.iv.next116.i.us.us.3, %wide.trip.count141.i
  br i1 %exitcond119.not.i.us.us.3, label %._crit_edge.split.us.us.split.us.us.split.i.split.us.us, label %vec.epilog.scalar.ph, !llvm.loop !39

._crit_edge.split.us.us.split.us.us.split.i.split.us.us: ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ga = add nuw nsw i32 %.075.us.us.i.us, 1     ; 2 uses
  %indvars.iv.next121.i.us = add nsw i64 %indvars.iv120.i.us, %i.ay
  %exitcond123.not.i.us = icmp eq i32 %i.ga, %i.ao
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond123.not.i.us, label %pixMeanInterpolateBlock.exit, label %iter.check, !llvm.loop !33

.preheader.lr.ph.split.split.us.split.us.split.us.i: ; preds = %.preheader.lr.ph.split.split.us.split.us.i
  br i1 %.not.i, label %.preheader.us.us.us.us.i, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader

.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader: ; preds = %.preheader.lr.ph.split.split.us.split.us.split.us.i
  %i.gb = add nsw i64 %.pre106, %i.am
  %i.gc = shl nsw i64 %i.gb, 1
  %i.gd = add i64 %i.gc, %i.a
  %i.ge = shl nsw i64 %i.au, 1
  %i.gf = add i64 %i.ge, %.sroa.7.0150
  %i.gg = sub i64 %i.gd, %i.gf
  %i.gh = shl nsw i64 %i.ay, 1
  %min.iters.check154 = icmp eq i32 %i.ao, 0
  %invariant.op196 = add i64 %i.gg, -1
  %min.iters.check156 = icmp ult i32 %i.ao, 16
  %n.mod.vf158 = and i64 %wide.trip.count141.i, 8
  %n.vec159 = and i64 %wide.trip.count141.i, 4294967280 ; 4 uses
  %cmp.n166 = icmp eq i64 %n.vec159, %wide.trip.count141.i
  %min.epilog.iters.check171.not.not = icmp eq i64 %n.mod.vf158, 0
  br label %iter.check168

.preheader.us.us.us.us.i:                         ; preds = %.preheader.lr.ph.split.split.us.split.us.split.us.i, %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i ], [ 0, %.preheader.lr.ph.split.split.us.split.us.split.us.i ] ; 2 uses
  %.075.us.us.us.us.i = phi i32 [ %i.gx, %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i ], [ 0, %.preheader.lr.ph.split.split.us.split.us.split.us.i ]
  %invariant.gep173.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv143.i ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.preheader.us.us.us.us.i
  %indvars.iv138.i = phi i64 [ 0, %.preheader.us.us.us.us.i ], [ %indvars.iv.next139.i.3, %bb.ac ] ; 5 uses
  %i.gi = load ptr, ptr @img, align 8
  %.in.us.us.us.us.us.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.in.v.i
  %i.gj = load i32, ptr %.in.us.us.us.us.us.us.us.us.i, align 4, !tbaa !4
  %i.gk = trunc i32 %i.gj to i16
  %gep174.i = getelementptr [2 x i8], ptr %invariant.gep173.i, i64 %indvars.iv138.i
  store i16 %i.gk, ptr %gep174.i, align 2, !tbaa !30
  %i.gl = load ptr, ptr @img, align 8
  %.in.us.us.us.us.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.in.v.i
  %i.gm = load i32, ptr %.in.us.us.us.us.us.us.us.us.i.1, align 4, !tbaa !4
  %i.gn = trunc i32 %i.gm to i16
  %i.go = getelementptr [2 x i8], ptr %invariant.gep173.i, i64 %indvars.iv138.i
  %gep174.i.1 = getelementptr i8, ptr %i.go, i64 2
  store i16 %i.gn, ptr %gep174.i.1, align 2, !tbaa !30
  %i.gp = load ptr, ptr @img, align 8
  %.in.us.us.us.us.us.us.us.us.i.2 = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.in.v.i
  %i.gq = load i32, ptr %.in.us.us.us.us.us.us.us.us.i.2, align 4, !tbaa !4
  %i.gr = trunc i32 %i.gq to i16
  %i.gs = getelementptr [2 x i8], ptr %invariant.gep173.i, i64 %indvars.iv138.i
  %gep174.i.2 = getelementptr i8, ptr %i.gs, i64 4
  store i16 %i.gr, ptr %gep174.i.2, align 2, !tbaa !30
  %i.gt = load ptr, ptr @img, align 8
  %.in.us.us.us.us.us.us.us.us.i.3 = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.in.v.i
  %i.gu = load i32, ptr %.in.us.us.us.us.us.us.us.us.i.3, align 4, !tbaa !4
  %i.gv = trunc i32 %i.gu to i16
  %i.gw = getelementptr [2 x i8], ptr %invariant.gep173.i, i64 %indvars.iv138.i
  %gep174.i.3 = getelementptr i8, ptr %i.gw, i64 6
  store i16 %i.gv, ptr %gep174.i.3, align 2, !tbaa !30
  %indvars.iv.next139.i.3 = add nuw nsw i64 %indvars.iv138.i, 4 ; 2 uses
  %exitcond142.not.i.3 = icmp eq i64 %indvars.iv.next139.i.3, %wide.trip.count141.i
  br i1 %exitcond142.not.i.3, label %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i, label %bb.ac, !llvm.loop !32

._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i: ; preds = %bb.ac
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i, %i.ay
  %i.gx = add nuw nsw i32 %.075.us.us.us.us.i, 1  ; 2 uses
  %exitcond146.not.i = icmp eq i32 %i.gx, %i.ao
  br i1 %exitcond146.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.us.us.us.i, !llvm.loop !33

iter.check168:                                    ; preds = %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i
  %indvar151 = phi i64 [ 0, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader ], [ %indvar.next152, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i ] ; 2 uses
  %indvars.iv134.i = phi i64 [ 0, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader ], [ %indvars.iv.next135.i, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i ] ; 2 uses
  %.075.us.us.us.i = phi i32 [ 0, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader ], [ %i.hl, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i ]
  %invariant.gep171.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv134.i ; 6 uses
  br i1 %min.iters.check154, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %iter.check168
  %i.gy = mul i64 %i.gh, %indvar151
  %i.gz = add i64 %i.gy, %invariant.op196
  %diff.check153 = icmp ult i64 %i.gz, 31
  br i1 %diff.check153, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader, label %vector.main.loop.iter.check155

vector.main.loop.iter.check155:                   ; preds = %vector.memcheck149
  br i1 %min.iters.check156, label %vec.epilog.vector.body175.preheader, label %vector.body160

vector.body160:                                   ; preds = %vector.main.loop.iter.check155, %vector.body160
  %index161 = phi i64 [ %index.next164, %vector.body160 ], [ 0, %vector.main.loop.iter.check155 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index161 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load162 = load <8 x i16>, ptr %i.ha, align 2, !tbaa !30
  %wide.load163 = load <8 x i16>, ptr %i.hb, align 2, !tbaa !30
  %i.hc = and <8 x i16> %wide.load162, splat (i16 255)
  %i.hd = and <8 x i16> %wide.load163, splat (i16 255)
  %i.he = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %index161 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 16
  store <8 x i16> %i.hc, ptr %i.he, align 2, !tbaa !30
  store <8 x i16> %i.hd, ptr %i.hf, align 2, !tbaa !30
  %index.next164 = add nuw i64 %index161, 16      ; 2 uses
  %i.hg = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.hg, label %middle.block165, label %vector.body160, !llvm.loop !40

middle.block165:                                  ; preds = %vector.body160
  br i1 %cmp.n166, label %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i, label %vec.epilog.iter.check170

vec.epilog.iter.check170:                         ; preds = %middle.block165
  br i1 %min.epilog.iters.check171.not.not, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader, label %vec.epilog.vector.body175.preheader, !prof !37

vec.epilog.vector.body175.preheader:              ; preds = %vector.main.loop.iter.check155, %vec.epilog.iter.check170
  %index176.ph = phi i64 [ 0, %vector.main.loop.iter.check155 ], [ %n.vec159, %vec.epilog.iter.check170 ]
  br label %vec.epilog.vector.body175

.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader: ; preds = %vector.memcheck149, %iter.check168, %vec.epilog.iter.check170
  %indvars.iv129.i.ph = phi i64 [ 0, %vector.memcheck149 ], [ %n.vec159, %vec.epilog.iter.check170 ], [ 0, %iter.check168 ]
  br label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i

vec.epilog.vector.body175:                        ; preds = %vec.epilog.vector.body175.preheader, %vec.epilog.vector.body175
  %index176 = phi i64 [ %index.next178, %vec.epilog.vector.body175 ], [ %index176.ph, %vec.epilog.vector.body175.preheader ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index176
  %wide.load177 = load <8 x i16>, ptr %i.hh, align 2, !tbaa !30
  %i.hi = and <8 x i16> %wide.load177, splat (i16 255)
  %i.hj = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %index176
  store <8 x i16> %i.hi, ptr %i.hj, align 2, !tbaa !30
  %index.next178 = add nuw i64 %index176, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next178, %wide.trip.count141.i
  br i1 %i.hk, label %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i, label %vec.epilog.vector.body175, !llvm.loop !41

._crit_edge.split.us.us.split.us.us.split.us.split.us85.i: ; preds = %vec.epilog.vector.body175, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i, %middle.block165
  %indvars.iv.next135.i = add nsw i64 %indvars.iv134.i, %i.ay
  %i.hl = add nuw nsw i32 %.075.us.us.us.i, 1     ; 2 uses
  %exitcond137.not.i = icmp eq i32 %i.hl, %i.ao
  %indvar.next152 = add i64 %indvar151, 1
  br i1 %exitcond137.not.i, label %pixMeanInterpolateBlock.exit, label %iter.check168, !llvm.loop !33

.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i: ; preds = %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader
  %indvars.iv129.i = phi i64 [ %indvars.iv129.i.ph, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader ], [ %indvars.iv.next130.i.3, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i ] ; 6 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv129.i
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !30
  %i.ho = and i16 %i.hn, 255
  %gep172.i = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv129.i
  store i16 %i.ho, ptr %gep172.i, align 2, !tbaa !30
  %indvars.iv.next130.i = or disjoint i64 %indvars.iv129.i, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next130.i
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !30
  %i.hr = and i16 %i.hq, 255
  %gep172.i.1 = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv.next130.i
  store i16 %i.hr, ptr %gep172.i.1, align 2, !tbaa !30
  %indvars.iv.next130.i.1 = or disjoint i64 %indvars.iv129.i, 2 ; 2 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next130.i.1
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !30
  %i.hu = and i16 %i.ht, 255
  %gep172.i.2 = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv.next130.i.1
  store i16 %i.hu, ptr %gep172.i.2, align 2, !tbaa !30
  %indvars.iv.next130.i.2 = or disjoint i64 %indvars.iv129.i, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next130.i.2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !30
  %i.hx = and i16 %i.hw, 255
  %gep172.i.3 = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv.next130.i.2
  store i16 %i.hx, ptr %gep172.i.3, align 2, !tbaa !30
  %indvars.iv.next130.i.3 = add nuw nsw i64 %indvars.iv129.i, 4 ; 2 uses
  %exitcond133.not.i.3 = icmp eq i64 %indvars.iv.next130.i.3, %wide.trip.count141.i
  br i1 %exitcond133.not.i.3, label %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i, !llvm.loop !42

.preheader.us.us.i.split.split.us.preheader:      ; preds = %._crit_edge.split.us.us.split.us.us.split.i.split, %.preheader.us.us.i.preheader93
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %._crit_edge.split.us.us.split.us.us.split.i.split ], [ 0, %.preheader.us.us.i.preheader93 ] ; 2 uses
  %.075.us.us.i = phi i32 [ %i.hz, %._crit_edge.split.us.us.split.us.us.split.i.split ], [ 0, %.preheader.us.us.i.preheader93 ] ; 2 uses
  %i.hy = sub nsw i32 %i.ao, %.075.us.us.i        ; 2 uses
  %i.hz = add nuw nsw i32 %.075.us.us.i, 1        ; 4 uses
  %invariant.gep169.sink.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv120.i ; 2 uses
  br label %.preheader.us.us.i.split.split.us

.preheader.us.us.i.split.split.us:                ; preds = %.preheader.us.us.i.split.split.us, %.preheader.us.us.i.split.split.us.preheader
  %indvars.iv115.i.us85 = phi i64 [ 0, %.preheader.us.us.i.split.split.us.preheader ], [ %indvars.iv.next116.i.us88.1, %.preheader.us.us.i.split.split.us ] ; 5 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv115.i.us85
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !30
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nsw i32 %i.hy, %i.ic
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv115.i.us85
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !30
  %i.ig = zext i16 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.hz, %i.ig
  %i.ii = add nsw i32 %i.ih, %i.id
  %i.ij = sdiv i32 %i.ii, %i.fa
  %i.ik = trunc i32 %i.ij to i16
  %i.il = and i16 %i.ik, 255
  %gep170.i.us87 = getelementptr [2 x i8], ptr %invariant.gep169.sink.i, i64 %indvars.iv115.i.us85
  store i16 %i.il, ptr %gep170.i.us87, align 2, !tbaa !30
  %indvars.iv.next116.i.us88 = or disjoint i64 %indvars.iv115.i.us85, 1 ; 3 uses
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next116.i.us88
  %i.in = load i16, ptr %i.im, align 2, !tbaa !30
  %i.io = zext i16 %i.in to i32
  %i.ip = mul nsw i32 %i.hy, %i.io
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next116.i.us88
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !30
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.hz, %i.is
  %i.iu = add nsw i32 %i.it, %i.ip
  %i.iv = sdiv i32 %i.iu, %i.fa
  %i.iw = trunc i32 %i.iv to i16
  %i.ix = and i16 %i.iw, 255
  %gep170.i.us87.1 = getelementptr [2 x i8], ptr %invariant.gep169.sink.i, i64 %indvars.iv.next116.i.us88
  store i16 %i.ix, ptr %gep170.i.us87.1, align 2, !tbaa !30
  %indvars.iv.next116.i.us88.1 = add nuw nsw i64 %indvars.iv115.i.us85, 2 ; 2 uses
  %exitcond119.not.i.us89.1 = icmp eq i64 %indvars.iv.next116.i.us88.1, %wide.trip.count141.i
  br i1 %exitcond119.not.i.us89.1, label %._crit_edge.split.us.us.split.us.us.split.i.split, label %.preheader.us.us.i.split.split.us, !llvm.loop !32

._crit_edge.split.us.us.split.us.us.split.i.split: ; preds = %.preheader.us.us.i.split.split.us
  %indvars.iv.next121.i = add nsw i64 %indvars.iv120.i, %i.ay
  %exitcond123.not.i = icmp eq i32 %i.hz, %i.ao
  br i1 %exitcond123.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.us.i.split.split.us.preheader, !llvm.loop !33

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.split.i.split
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %._crit_edge.split.us.us.split.i.split ], [ 0, %.preheader.us.i.preheader ] ; 2 uses
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i, %._crit_edge.split.us.us.split.i.split ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 3 uses
  %i.iy = mul nsw i64 %indvars.iv106.i, %i.ay
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.iy
  %i.ja = trunc i64 %indvars.iv106.i to i32
  %i.jb = sub i32 %i.ao, %i.ja                    ; 2 uses
  %i.jc = trunc nuw nsw i64 %indvars.iv.next107.i to i32 ; 2 uses
  %invariant.gep165.sink.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv108.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ai, %.preheader.us.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %bb.ai ], [ 0, %.preheader.us.i ] ; 4 uses
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv101.i
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !30
  %i.jf = zext i16 %i.je to i32
  %i.jg = mul nsw i32 %i.jb, %i.jf
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.058.us.us.i = phi i32 [ %i.jg, %bb.ae ], [ 0, %bb.ad ]
  %.057.us.us.i = phi i32 [ %i.jb, %bb.ae ], [ 0, %bb.ad ]
  %i.jh = add nsw i32 %.057.us.us.i, %i.jc
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 3 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv.next102.i to i32 ; 2 uses
  %i.jj = add nsw i32 %i.jh, %i.ji                ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jl = load ptr, ptr @img, align 8
  %.in.us.us.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 %.in.v.i
  %i.jm = load i32, ptr %.in.us.us.i, align 4, !tbaa !4
  %i.jn = trunc i32 %i.jm to i16
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv101.i
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !30
  %i.jq = zext i16 %i.jp to i32
  %i.jr = mul nuw nsw i32 %i.jq, %i.jc
  %i.js = add nsw i32 %i.jr, %.058.us.us.i
  %i.jt = load i16, ptr %i.iz, align 2, !tbaa !30
  %i.ju = zext i16 %i.jt to i32
  %i.jv = mul nuw nsw i32 %i.ju, %i.ji
  %i.jw = add nsw i32 %i.jv, %i.js
  %i.jx = sdiv i32 %i.jw, %i.jj
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = and i16 %i.jy, 255
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink175.i = phi i16 [ %i.jz, %bb.ah ], [ %i.jn, %bb.ag ]
  %gep166.i = getelementptr [2 x i8], ptr %invariant.gep165.sink.i, i64 %indvars.iv101.i
  store i16 %.sink175.i, ptr %gep166.i, align 2, !tbaa !30
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count141.i
  br i1 %exitcond105.not.i, label %._crit_edge.split.us.us.split.i.split, label %bb.ad, !llvm.loop !32

._crit_edge.split.us.us.split.i.split:            ; preds = %bb.ai
  %indvars.iv.next109.i = add nsw i64 %indvars.iv108.i, %i.ay
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next107.i, %wide.trip.count141.i
  br i1 %exitcond114.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.i, !llvm.loop !33

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.i.split
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %._crit_edge.split.i.split ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %._crit_edge.split.i.split ], [ 0, %.preheader.i.preheader ] ; 3 uses
end_hunk_0
