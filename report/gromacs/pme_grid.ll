Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z16gmx_sum_qgrid_ddP9gmx_pme_tN3gmx8ArrayRefIfEEi:bb.a
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %wide.load426 = load <8 x float>, ptr %i.br, align 4, !tbaa !108
  %wide.load427 = load <8 x float>, ptr %i.bs, align 4, !tbaa !108
  %wide.load428 = load <8 x float>, ptr %i.bt, align 4, !tbaa !108
  %wide.load429 = load <8 x float>, ptr %i.bu, align 4, !tbaa !108
  %i.bv = getelementptr [4 x i8], ptr %i.bn, i64 %index425 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  store <8 x float> %wide.load426, ptr %i.bv, align 4, !tbaa !108
  store <8 x float> %wide.load427, ptr %i.bw, align 4, !tbaa !108
  store <8 x float> %wide.load428, ptr %i.bx, align 4, !tbaa !108
  store <8 x float> %wide.load429, ptr %i.by, align 4, !tbaa !108
  %index.next430 = add nuw i64 %index425, 32      ; 2 uses
  %i.bz = icmp eq i64 %index.next430, %n.vec423
  br i1 %i.bz, label %middle.block431, label %vector.body424, !llvm.loop !165

middle.block431:                                  ; preds = %vector.body424
  br i1 %cmp.n432, label %._crit_edge.us.us, label %vec.epilog.iter.check434

vec.epilog.iter.check434:                         ; preds = %middle.block431
  br i1 %min.epilog.iters.check436, label %vec.epilog.scalar.ph435.preheader, label %vec.epilog.ph437, !prof !112

vec.epilog.ph437:                                 ; preds = %vector.main.loop.iter.check420, %vec.epilog.iter.check434
  %vec.epilog.resume.val438 = phi i64 [ %n.vec423, %vec.epilog.iter.check434 ], [ 0, %vector.main.loop.iter.check420 ]
  %i.ca = add i64 %.1200237.us.us, %n.vec439      ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %i.az, i64 %.1200237.us.us
  br label %vec.epilog.vector.body440

vec.epilog.vector.body440:                        ; preds = %vec.epilog.vector.body440, %vec.epilog.ph437
  %index441 = phi i64 [ %vec.epilog.resume.val438, %vec.epilog.ph437 ], [ %index.next443, %vec.epilog.vector.body440 ] ; 3 uses
  %i.cc = trunc nuw nsw i64 %index441 to i32
  %i.cd = add i32 %reass.mul230.us.us, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ce
  %wide.load442 = load <4 x float>, ptr %i.cf, align 4, !tbaa !108
  %i.cg = getelementptr [4 x i8], ptr %i.cb, i64 %index441
  store <4 x float> %wide.load442, ptr %i.cg, align 4, !tbaa !108
  %index.next443 = add nuw i64 %index441, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next443, %n.vec439
  br i1 %i.ch, label %vec.epilog.middle.block444, label %vec.epilog.vector.body440, !llvm.loop !166

vec.epilog.middle.block444:                       ; preds = %vec.epilog.vector.body440
  br i1 %cmp.n445, label %._crit_edge.us.us, label %vec.epilog.scalar.ph435.preheader

vec.epilog.scalar.ph435.preheader:                ; preds = %iter.check433, %vector.scevcheck414, %vector.memcheck418, %vec.epilog.iter.check434, %vec.epilog.middle.block444
  %indvars.iv298.ph = phi i64 [ 0, %iter.check433 ], [ 0, %vector.scevcheck414 ], [ 0, %vector.memcheck418 ], [ %n.vec423, %vec.epilog.iter.check434 ], [ %n.vec439, %vec.epilog.middle.block444 ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %.1200237.us.us, %iter.check433 ], [ %.1200237.us.us, %vector.scevcheck414 ], [ %.1200237.us.us, %vector.memcheck418 ], [ %i.bm, %vec.epilog.iter.check434 ], [ %i.ca, %vec.epilog.middle.block444 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph435.prol.loopexit, label %vec.epilog.scalar.ph435.prol

vec.epilog.scalar.ph435.prol:                     ; preds = %vec.epilog.scalar.ph435.preheader, %vec.epilog.scalar.ph435.prol
  %indvars.iv298.prol = phi i64 [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph435.prol ], [ %indvars.iv298.ph, %vec.epilog.scalar.ph435.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph435.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph435.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph435.prol ], [ 0, %vec.epilog.scalar.ph435.preheader ]
  %i.ci = trunc nuw nsw i64 %indvars.iv298.prol to i32
  %i.cj = add i32 %reass.mul230.us.us, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !108
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.prol
  store float %i.cm, ptr %i.cn, align 4, !tbaa !108
  %indvars.iv.next299.prol = add nuw nsw i64 %indvars.iv298.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph435.prol.loopexit, label %vec.epilog.scalar.ph435.prol, !llvm.loop !167

vec.epilog.scalar.ph435.prol.loopexit:            ; preds = %vec.epilog.scalar.ph435.prol, %vec.epilog.scalar.ph435.preheader
  %indvars.iv.next.lcssa491.unr = phi i64 [ poison, %vec.epilog.scalar.ph435.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph435.prol ]
  %indvars.iv298.unr = phi i64 [ %indvars.iv298.ph, %vec.epilog.scalar.ph435.preheader ], [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph435.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph435.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph435.prol ]
  %i.co = sub nsw i64 %indvars.iv298.ph, %wide.trip.count
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %._crit_edge.us.us, label %vec.epilog.scalar.ph435.preheader.new

vec.epilog.scalar.ph435.preheader.new:            ; preds = %vec.epilog.scalar.ph435.prol.loopexit
  %invariant.op503 = add i32 1, %reass.mul230.us.us
  %invariant.op504 = add i32 2, %reass.mul230.us.us
  %invariant.op506 = add i32 3, %reass.mul230.us.us
  br label %vec.epilog.scalar.ph435

vec.epilog.scalar.ph435:                          ; preds = %vec.epilog.scalar.ph435, %vec.epilog.scalar.ph435.preheader.new
  %indvars.iv298 = phi i64 [ %indvars.iv298.unr, %vec.epilog.scalar.ph435.preheader.new ], [ %indvars.iv.next299.3, %vec.epilog.scalar.ph435 ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph435.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph435 ] ; 5 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv298 to i32
  %i.cr = add i32 %reass.mul230.us.us, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !108
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %i.cu, ptr %i.cv, align 4, !tbaa !108
  %i.cw = trunc i64 %indvars.iv298 to i32
  %.reass = add i32 %i.cw, %invariant.op503
  %i.cx = sext i32 %.reass to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !108
  %i.da = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.db = getelementptr i8, ptr %i.da, i64 4
  store float %i.cz, ptr %i.db, align 4, !tbaa !108
  %i.dc = trunc i64 %indvars.iv298 to i32
  %.reass505 = add i32 %i.dc, %invariant.op504
  %i.dd = sext i32 %.reass505 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !108
  %i.dg = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  store float %i.df, ptr %i.dh, align 4, !tbaa !108
  %i.di = trunc i64 %indvars.iv298 to i32
  %.reass507 = add i32 %i.di, %invariant.op506
  %i.dj = sext i32 %.reass507 to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !108
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.dn = getelementptr i8, ptr %i.dm, i64 12
  store float %i.dl, ptr %i.dn, align 4, !tbaa !108
  %indvars.iv.next299.3 = add nuw nsw i64 %indvars.iv298, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next299.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph435, !llvm.loop !168

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph435.prol.loopexit, %vec.epilog.scalar.ph435, %vec.epilog.middle.block444, %middle.block431
  %indvars.iv.next.lcssa = phi i64 [ %i.ca, %vec.epilog.middle.block444 ], [ %i.bm, %middle.block431 ], [ %indvars.iv.next.lcssa491.unr, %vec.epilog.scalar.ph435.prol.loopexit ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph435 ] ; 2 uses
  %i.do = add nuw nsw i32 %.0203236.us.us, 1      ; 2 uses
  %exitcond303.not = icmp eq i32 %i.do, %.0212
  br i1 %exitcond303.not, label %._crit_edge239.split.us.us, label %iter.check433, !llvm.loop !169

._crit_edge239.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.dp = add nuw nsw i32 %.0205242.us, 1         ; 2 uses
  %exitcond304.not = icmp eq i32 %i.dp, %i.as
  br i1 %exitcond304.not, label %._crit_edge.split, label %.preheader232.us, !llvm.loop !170

._crit_edge.split:                                ; preds = %._crit_edge239.split.us.us, %.preheader232.lr.ph.split, %bb.d
  %i.dq = mul nsw i32 %.pre, %i.as                ; 2 uses
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.ds = mul nsw i32 %i.dq, %.0212
  %i.dt = trunc i64 %.0194284 to i32              ; 2 uses
  %i.du = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.dv = mul nsw i32 %i.dq, %.0208
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !204
  %i.dx = call noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.dr, i32 noundef %i.ds, ptr noundef %i.q, i32 noundef %.0197, i32 noundef %i.dt, ptr noundef %i.du, i32 noundef %i.dv, ptr noundef %i.q, i32 noundef %.0196, i32 noundef %i.dt, ptr noundef %i.dw, ptr noundef nonnull %4) ; 0 uses
  %i.dy = load ptr, ptr @debug, align 8, !tbaa !12 ; 2 uses
  %.not221 = icmp eq ptr %i.dy, null
  br i1 %.not221, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.split
  %i.dz = load i32, ptr %i.i, align 4, !tbaa !197
  %i.ea = load i32, ptr %i.j, align 4, !tbaa !202
  %i.eb = load i32, ptr %i.k, align 8, !tbaa !203 ; 2 uses
  %i.ec = sub nsw i32 %.0210, %i.eb               ; 2 uses
  %i.ed = add nsw i32 %i.ec, %.0208
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dy, ptr noundef nonnull @.str.1, i32 noundef %i.dz, i32 noundef %i.ea, i32 noundef %.0196, i32 noundef %i.eb, i32 noundef %i.ec, i32 noundef %i.ed) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.split
  %i.ef = load i32, ptr %i.l, align 4, !tbaa !103 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  %i.eh = icmp sgt i32 %.0208, 0
  %or.cond355 = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond355, label %.preheader231.lr.ph.split.us, label %._crit_edge274

.preheader231.lr.ph.split.us:                     ; preds = %bb.f
  %i.ei = load i32, ptr %i.k, align 8, !tbaa !203
  %invariant.op259.us = sub i32 %.0210, %i.ei     ; 2 uses
  %i.ej = load i32, ptr %i.m, align 8, !tbaa !104 ; 6 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.preheader231.lr.ph.split.us.split.us, label %._crit_edge274

.preheader231.lr.ph.split.us.split.us:            ; preds = %.preheader231.lr.ph.split.us
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !107 ; 17 uses
  %i.em = load i32, ptr %i.n, align 8, !tbaa !105 ; 2 uses
  %i.en = load i32, ptr %i.o, align 4, !tbaa !106 ; 2 uses
  %wide.trip.count323 = zext nneg i32 %i.ej to i64 ; 19 uses
  br i1 %i.h, label %.preheader231.us.us.us.preheader, label %.preheader231.us.us.preheader

.preheader231.us.us.preheader:                    ; preds = %.preheader231.lr.ph.split.us.split.us
  %i.eo = ptrtoaddr ptr %i.el to i64
  %i.ep = add nsw i64 %wide.trip.count323, -1     ; 2 uses
  %i.eq = sub i64 %i.a, %i.eo
  %min.iters.check384 = icmp ult i32 %i.ej, 4
  %i.er = trunc nsw i64 %i.ep to i32
  %i.es = icmp ugt i64 %i.ep, 4294967295
  %invariant.op516.a = add i64 %i.eq, -1
  %min.iters.check387 = icmp ult i32 %i.ej, 32
  %i.et = and i64 %wide.trip.count323, 28
  %n.vec389 = and i64 %wide.trip.count323, 2147483616 ; 5 uses
  %cmp.n398 = icmp eq i64 %n.vec389, %wide.trip.count323
  %min.epilog.iters.check402 = icmp eq i64 %i.et, 0
  %n.vec405 = and i64 %wide.trip.count323, 2147483644 ; 4 uses
  %cmp.n411 = icmp eq i64 %n.vec405, %wide.trip.count323
  %xtraiter494 = and i64 %wide.trip.count323, 3   ; 2 uses
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br label %.preheader231.us.us

.preheader231.us.us.us.preheader:                 ; preds = %.preheader231.lr.ph.split.us.split.us
  %i.eu = add nsw i64 %wide.trip.count323, -1     ; 2 uses
  %i.ev = shl nuw nsw i64 %wide.trip.count323, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.ev
  %scevgep367 = getelementptr i8, ptr %i.el, i64 %i.ev
  %min.iters.check = icmp ult i32 %i.ej, 4
  %5 = trunc nsw i64 %i.eu to i32
  %6 = icmp ugt i64 %i.eu, 4294967295
  %min.iters.check367 = icmp ult i32 %i.ej, 32
  %i.ew = and i64 %wide.trip.count323, 28
  %n.vec = and i64 %wide.trip.count323, 2147483616 ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count323
  %min.epilog.iters.check = icmp eq i64 %i.ew, 0
  %n.vec375 = and i64 %wide.trip.count323, 2147483644 ; 4 uses
  %cmp.n380 = icmp eq i64 %n.vec375, %wide.trip.count323
  %xtraiter497 = and i64 %wide.trip.count323, 3   ; 2 uses
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br label %.preheader231.us.us.us

.preheader231.us.us.us:                           ; preds = %.preheader231.us.us.us.preheader, %._crit_edge257.split.us.split.us.us.us.us
  %.3273.us.us.us = phi i64 [ %indvars.iv.next317.lcssa, %._crit_edge257.split.us.split.us.us.us.us ], [ 0, %.preheader231.us.us.us.preheader ]
  %.1206270.us.us.us = phi i32 [ %i.hy, %._crit_edge257.split.us.split.us.us.us.us ], [ 0, %.preheader231.us.us.us.preheader ] ; 2 uses
  %i.ex = mul i32 %i.em, %.1206270.us.us.us
  %invariant.op269.us.us.us = add i32 %invariant.op259.us, %i.ex
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge252.split.us.us.us.us.us.us, %.preheader231.us.us.us
  %.4255.us.us.us.us.us = phi i64 [ %.3273.us.us.us, %.preheader231.us.us.us ], [ %indvars.iv.next317.lcssa, %._crit_edge252.split.us.us.us.us.us.us ] ; 8 uses
  %.1204254.us.us.us.us.us = phi i32 [ 0, %.preheader231.us.us.us ], [ %i.hx, %._crit_edge252.split.us.us.us.us.us.us ] ; 2 uses
  %reass.add226.us.us.us.reass.us.us.us = add i32 %.1204254.us.us.us.us.us, %invariant.op269.us.us.us
  %reass.mul227.us.us.us.us.us.us = mul i32 %reass.add226.us.us.us.reass.us.us.us, %i.en ; 10 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ey = add i32 %reass.mul227.us.us.us.us.us.us, %5
  %i.ez = icmp slt i32 %i.ey, %reass.mul227.us.us.us.us.us.us
  %i.fa = or i1 %i.ez, %6
  br i1 %i.fa, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fb = shl i64 %.4255.us.us.us.us.us, 2        ; 2 uses
  %i.fc = getelementptr nuw i8, ptr %i.el, i64 %i.fb
  %gep = getelementptr i8, ptr %scevgep367, i64 %i.fb
  %i.fd = sext i32 %reass.mul227.us.us.us.us.us.us to i64
  %i.fe = shl nsw i64 %i.fd, 2                    ; 2 uses
  %i.ff = getelementptr i8, ptr %1, i64 %i.fe
  %gep525 = getelementptr i8, ptr %scevgep, i64 %i.fe
  %bound0 = icmp ult ptr %i.fc, %gep525
  %bound1 = icmp ult ptr %i.ff, %gep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check367, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fg = add i64 %.4255.us.us.us.us.us, %n.vec   ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %i.el, i64 %.4255.us.us.us.us.us
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %index ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  %wide.load = load <8 x float>, ptr %i.fi, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load368 = load <8 x float>, ptr %i.fj, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load369 = load <8 x float>, ptr %i.fk, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load370 = load <8 x float>, ptr %i.fl, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %i.fm = trunc nuw nsw i64 %index to i32
  %i.fn = add i32 %reass.mul227.us.us.us.us.us.us, %i.fm
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fo ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 64 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 96 ; 2 uses
  %wide.load371 = load <8 x float>, ptr %i.fp, align 4, !tbaa !108, !alias.scope !206
  %wide.load372 = load <8 x float>, ptr %i.fq, align 4, !tbaa !108, !alias.scope !206
  %wide.load373 = load <8 x float>, ptr %i.fr, align 4, !tbaa !108, !alias.scope !206
  %wide.load374 = load <8 x float>, ptr %i.fs, align 4, !tbaa !108, !alias.scope !206
  %i.ft = fadd <8 x float> %wide.load, %wide.load371
  %i.fu = fadd <8 x float> %wide.load368, %wide.load372
  %i.fv = fadd <8 x float> %wide.load369, %wide.load373
  %i.fw = fadd <8 x float> %wide.load370, %wide.load374
  store <8 x float> %i.ft, ptr %i.fp, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.fu, ptr %i.fq, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.fv, ptr %i.fr, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.fw, ptr %i.fs, align 4, !tbaa !108, !alias.scope !206
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fy = add i64 %.4255.us.us.us.us.us, %n.vec375 ; 2 uses
  %i.fz = getelementptr [4 x i8], ptr %i.el, i64 %.4255.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ] ; 3 uses
  %i.ga = getelementptr [4 x i8], ptr %i.fz, i64 %index376
  %wide.load377 = load <4 x float>, ptr %i.ga, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %i.gb = trunc nuw nsw i64 %index376 to i32
  %i.gc = add i32 %reass.mul227.us.us.us.us.us.us, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gd ; 2 uses
  %wide.load378 = load <4 x float>, ptr %i.ge, align 4, !tbaa !108, !alias.scope !206
  %i.gf = fadd <4 x float> %wide.load377, %wide.load378
  store <4 x float> %i.gf, ptr %i.ge, align 4, !tbaa !108, !alias.scope !206
  %index.next379 = add nuw i64 %index376, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next379, %n.vec375
  br i1 %i.gg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n380, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv318.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec375, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv316.ph = phi i64 [ %.4255.us.us.us.us.us, %iter.check ], [ %.4255.us.us.us.us.us, %vector.scevcheck ], [ %.4255.us.us.us.us.us, %vector.memcheck ], [ %i.fg, %vec.epilog.iter.check ], [ %i.fy, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod498.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv318.prol = phi i64 [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv316.prol = phi i64 [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter499 = phi i64 [ %prol.iter499.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv316.prol
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !108
  %i.gj = trunc nuw nsw i64 %indvars.iv318.prol to i32
  %i.gk = add i32 %reass.mul227.us.us.us.us.us.us, %i.gj
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gl ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !108
  %i.go = fadd float %i.gi, %i.gn
  store float %i.go, ptr %i.gm, align 4, !tbaa !108
  %indvars.iv.next317.prol = add nsw i64 %indvars.iv316.prol, 1 ; 3 uses
  %indvars.iv.next319.prol = add nuw nsw i64 %indvars.iv318.prol, 1 ; 2 uses
  %prol.iter499.next = add i64 %prol.iter499, 1   ; 2 uses
  %prol.iter499.cmp.not = icmp eq i64 %prol.iter499.next, %xtraiter497
  br i1 %prol.iter499.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !176

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next317.lcssa493.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv318.unr = phi i64 [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv316.unr = phi i64 [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %i.gp = sub nsw i64 %indvars.iv318.ph, %wide.trip.count323
  %i.gq = icmp ugt i64 %i.gp, -4
  br i1 %i.gq, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op518 = add i32 1, %reass.mul227.us.us.us.us.us.us
  %invariant.op520 = add i32 2, %reass.mul227.us.us.us.us.us.us
  %invariant.op522 = add i32 3, %reass.mul227.us.us.us.us.us.us
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv318 = phi i64 [ %indvars.iv318.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next319.3, %vec.epilog.scalar.ph ] ; 5 uses
  %indvars.iv316 = phi i64 [ %indvars.iv316.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv316
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !108
  %i.gt = trunc nuw nsw i64 %indvars.iv318 to i32
  %i.gu = add i32 %reass.mul227.us.us.us.us.us.us, %i.gt
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gv ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !108
  %i.gy = fadd float %i.gs, %i.gx
  store float %i.gy, ptr %i.gw, align 4, !tbaa !108
  %i.gz = getelementptr [4 x i8], ptr %i.el, i64 %indvars.iv316
  %i.ha = getelementptr i8, ptr %i.gz, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !108
  %i.hc = trunc i64 %indvars.iv318 to i32
  %.reass519.a = add i32 %i.hc, %invariant.op518
  %i.hd = sext i32 %.reass519.a to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hd ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !108
  %i.hg = fadd float %i.hb, %i.hf
  store float %i.hg, ptr %i.he, align 4, !tbaa !108
  %i.hh = getelementptr [4 x i8], ptr %i.el, i64 %indvars.iv316
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !108
  %i.hk = trunc i64 %indvars.iv318 to i32
  %.reass521 = add i32 %i.hk, %invariant.op520
  %i.hl = sext i32 %.reass521 to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hl ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !108
  %i.ho = fadd float %i.hj, %i.hn
  store float %i.ho, ptr %i.hm, align 4, !tbaa !108
  %i.hp = getelementptr [4 x i8], ptr %i.el, i64 %indvars.iv316
  %i.hq = getelementptr i8, ptr %i.hp, i64 12
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !108
  %i.hs = trunc i64 %indvars.iv318 to i32
  %.reass523 = add i32 %i.hs, %invariant.op522
  %i.ht = sext i32 %.reass523 to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ht ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !108
  %i.hw = fadd float %i.hr, %i.hv
  store float %i.hw, ptr %i.hu, align 4, !tbaa !108
  %indvars.iv.next317.3 = add nsw i64 %indvars.iv316, 4 ; 2 uses
  %indvars.iv.next319.3 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %exitcond324.not.3 = icmp eq i64 %indvars.iv.next319.3, %wide.trip.count323
  br i1 %exitcond324.not.3, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !177

._crit_edge252.split.us.us.us.us.us.us:           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next317.lcssa = phi i64 [ %i.fy, %vec.epilog.middle.block ], [ %i.fg, %middle.block ], [ %indvars.iv.next317.lcssa493.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 2 uses
  %i.hx = add nuw nsw i32 %.1204254.us.us.us.us.us, 1 ; 2 uses
  %exitcond325.not = icmp eq i32 %i.hx, %.0208
  br i1 %exitcond325.not, label %._crit_edge257.split.us.split.us.us.us.us, label %iter.check, !llvm.loop !178

._crit_edge257.split.us.split.us.us.us.us:        ; preds = %._crit_edge252.split.us.us.us.us.us.us
  %i.hy = add nuw nsw i32 %.1206270.us.us.us, 1   ; 2 uses
  %exitcond326.not = icmp eq i32 %i.hy, %i.ef
  br i1 %exitcond326.not, label %._crit_edge274, label %.preheader231.us.us.us, !llvm.loop !179

.preheader231.us.us:                              ; preds = %.preheader231.us.us.preheader, %._crit_edge257.split.us.split.us282.us
  %.3273.us.us = phi i64 [ %indvars.iv.next306.lcssa, %._crit_edge257.split.us.split.us282.us ], [ 0, %.preheader231.us.us.preheader ]
  %.1206270.us.us = phi i32 [ %i.kj, %._crit_edge257.split.us.split.us282.us ], [ 0, %.preheader231.us.us.preheader ] ; 2 uses
  %i.hz = mul i32 %i.em, %.1206270.us.us
  %invariant.op268.us.us = add i32 %invariant.op259.us, %i.hz
  br label %iter.check399

iter.check399:                                    ; preds = %._crit_edge252.split.us264.us.us, %.preheader231.us.us
  %.4255.us.us280.us = phi i64 [ %.3273.us.us, %.preheader231.us.us ], [ %indvars.iv.next306.lcssa, %._crit_edge252.split.us264.us.us ] ; 8 uses
  %.1204254.us.us281.us = phi i32 [ 0, %.preheader231.us.us ], [ %i.ki, %._crit_edge252.split.us264.us.us ] ; 2 uses
  %reass.add.us.reass.us.us = add i32 %.1204254.us.us281.us, %invariant.op268.us.us
  %reass.mul.us.us.us = mul i32 %reass.add.us.reass.us.us, %i.en ; 10 uses
  br i1 %min.iters.check384, label %vec.epilog.scalar.ph401.preheader, label %vector.scevcheck382

vector.scevcheck382:                              ; preds = %iter.check399
  %i.ia = add i32 %reass.mul.us.us.us, %i.er
  %i.ib = icmp slt i32 %i.ia, %reass.mul.us.us.us
  %i.ic = or i1 %i.ib, %i.es
  br i1 %i.ic, label %vec.epilog.scalar.ph401.preheader, label %vector.memcheck385

vector.memcheck385:                               ; preds = %vector.scevcheck382
  %i.id = sext i32 %reass.mul.us.us.us to i64
  %i.ie = sub i64 %i.id, %.4255.us.us280.us
  %i.if = shl i64 %i.ie, 2
  %.reass517.a = add i64 %i.if, %invariant.op516.a
  %diff.check = icmp ult i64 %.reass517.a, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph401.preheader, label %vector.main.loop.iter.check386

end_hunk_0
begin_hunk_1_@_Z21wrap_periodic_pmegridPK9gmx_pme_tN3gmx8ArrayRefIfEE:bb.a
  %bound1 = icmp ult ptr %scevgep176, %scevgep177
  %found.conflict = and i1 %bound0, %bound1
  %i.al = or i1 %found.conflict, %stride.check
  br label %iter.check

iter.check:                                       ; preds = %.preheader87, %._crit_edge
  %indvars.iv117 = phi i64 [ 0, %.preheader87 ], [ %indvars.iv.next118, %._crit_edge ] ; 2 uses
  %i.am = add nuw nsw i64 %indvars.iv117, %i.ak
  %i.an = mul nsw i64 %i.am, %i.s                 ; 2 uses
  %gep164 = getelementptr [4 x i8], ptr %invariant.gep163, i64 %i.an ; 11 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.an ; 11 uses
  %brmerge299 = select i1 %min.iters.check, i1 true, i1 %i.al
  br i1 %brmerge299, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %gep164, i64 %index ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = getelementptr i8, ptr %i.ao, i64 64
  %i.ar = getelementptr i8, ptr %i.ao, i64 96
  %wide.load = load <8 x float>, ptr %i.ao, align 4, !tbaa !108, !alias.scope !251
  %wide.load180 = load <8 x float>, ptr %i.ap, align 4, !tbaa !108, !alias.scope !251
  %wide.load181 = load <8 x float>, ptr %i.aq, align 4, !tbaa !108, !alias.scope !251
  %wide.load182 = load <8 x float>, ptr %i.ar, align 4, !tbaa !108, !alias.scope !251
  %i.as = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32     ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 64     ; 2 uses
  %i.av = getelementptr i8, ptr %i.as, i64 96     ; 2 uses
  %wide.load183 = load <8 x float>, ptr %i.as, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load184 = load <8 x float>, ptr %i.at, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load185 = load <8 x float>, ptr %i.au, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load186 = load <8 x float>, ptr %i.av, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %i.aw = fadd <8 x float> %wide.load, %wide.load183
  %i.ax = fadd <8 x float> %wide.load180, %wide.load184
  %i.ay = fadd <8 x float> %wide.load181, %wide.load185
  %i.az = fadd <8 x float> %wide.load182, %wide.load186
  store <8 x float> %i.aw, ptr %i.as, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.ax, ptr %i.at, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.ay, ptr %i.au, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.az, ptr %i.av, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index188 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %gep164, i64 %index188
  %wide.load189 = load <4 x float>, ptr %i.bb, align 4, !tbaa !108, !alias.scope !251
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep, i64 %index188 ; 2 uses
  %wide.load190 = load <4 x float>, ptr %i.bc, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %i.bd = fadd <4 x float> %wide.load189, %wide.load190
  store <4 x float> %i.bd, ptr %i.bc, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %index.next191 = add nuw i64 %index188, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next191, %n.vec187
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !228

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n192, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec187, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.bf = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bg = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !108
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol ; 2 uses
  %i.bi = load float, ptr %gep.prol, align 4, !tbaa !108
  %i.bj = fadd float %i.bh, %i.bi
  store float %i.bj, ptr %gep.prol, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !229

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -8
  br i1 %i.bl, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bm = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !108
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bo = load float, ptr %gep, align 4, !tbaa !108
  %i.bp = fadd float %i.bn, %i.bo
  store float %i.bp, ptr %gep, align 4, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next
  %i.br = load float, ptr %i.bq, align 4, !tbaa !108
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bs = load float, ptr %gep.1, align 4, !tbaa !108
  %i.bt = fadd float %i.br, %i.bs
  store float %i.bt, ptr %gep.1, align 4, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.1
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !108
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1 ; 2 uses
  %i.bw = load float, ptr %gep.2, align 4, !tbaa !108
  %i.bx = fadd float %i.bv, %i.bw
  store float %i.bx, ptr %gep.2, align 4, !tbaa !108
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.2
  %i.bz = load float, ptr %i.by, align 4, !tbaa !108
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2 ; 2 uses
  %i.ca = load float, ptr %gep.3, align 4, !tbaa !108
  %i.cb = fadd float %i.bz, %i.ca
  store float %i.cb, ptr %gep.3, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.3
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !108
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3 ; 2 uses
  %i.ce = load float, ptr %gep.4, align 4, !tbaa !108
  %i.cf = fadd float %i.cd, %i.ce
  store float %i.cf, ptr %gep.4, align 4, !tbaa !108
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !108
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4 ; 2 uses
  %i.ci = load float, ptr %gep.5, align 4, !tbaa !108
  %i.cj = fadd float %i.ch, %i.ci
  store float %i.cj, ptr %gep.5, align 4, !tbaa !108
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.5
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !108
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5 ; 2 uses
  %i.cm = load float, ptr %gep.6, align 4, !tbaa !108
  %i.cn = fadd float %i.cl, %i.cm
  store float %i.cn, ptr %gep.6, align 4, !tbaa !108
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.6
  %i.cp = load float, ptr %i.co, align 4, !tbaa !108
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6 ; 2 uses
  %i.cq = load float, ptr %gep.7, align 4, !tbaa !108
  %i.cr = fadd float %i.cp, %i.cq
  store float %i.cr, ptr %gep.7, align 4, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !230

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge90, label %iter.check, !llvm.loop !231

._crit_edge90:                                    ; preds = %._crit_edge
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge92.split, label %.preheader87, !llvm.loop !232

._crit_edge92.split:                              ; preds = %._crit_edge90
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !141
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.preheader84.lr.ph, label %.thread

._crit_edge92.split.thread161:                    ; preds = %.preheader87.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !141
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %.preheader84.lr.ph, label %.thread

._crit_edge92.split.thread:                       ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !141
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %._crit_edge101.split, label %.thread

.preheader84.lr.ph:                               ; preds = %._crit_edge92.split, %._crit_edge92.split.thread161
  %i.db = icmp slt i32 %i.l, 2
  %i.dc = icmp slt i32 %i.f, 1
  %brmerge112 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %brmerge112, label %._crit_edge101.split, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph
  %i.dd = sext i32 %i.j to i64                    ; 3 uses
  %i.de = sext i32 %i.h to i64                    ; 2 uses
  %wide.trip.count140 = zext nneg i32 %i.o to i64
  %wide.trip.count135 = zext i32 %i.m to i64      ; 2 uses
  %wide.trip.count130 = zext nneg i32 %i.f to i64 ; 10 uses
  %3 = shl nuw nsw i64 %wide.trip.count130, 2
  %scevgep202 = getelementptr i8, ptr %1, i64 %3
  %i.df = add nuw nsw i64 %wide.trip.count135, 4611686018427387903
  %i.dg = mul i64 %i.df, %i.dd
  %i.dh = add i64 %i.dg, %wide.trip.count130
  %i.di = shl i64 %i.dh, 2
  %i.dj = mul nsw i64 %i.dd, %i.de
  %i.dk = shl i64 %i.dj, 2
  %i.dl = getelementptr i8, ptr %1, i64 %i.di
  %min.iters.check204 = icmp ult i32 %i.f, 4
  %stride.check209 = icmp slt i32 %i.j, 0
  %min.iters.check211 = icmp ult i32 %i.f, 32
  %i.dm = and i64 %wide.trip.count130, 28
  %n.vec213 = and i64 %wide.trip.count130, 2147483616 ; 4 uses
  %cmp.n226 = icmp eq i64 %n.vec213, %wide.trip.count130
  %min.epilog.iters.check230 = icmp eq i64 %i.dm, 0
  %n.vec233 = and i64 %wide.trip.count130, 2147483644 ; 3 uses
  %cmp.n240 = icmp eq i64 %n.vec233, %wide.trip.count130
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.preheader, %._crit_edge98
  %indvars.iv137 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next138, %._crit_edge98 ] ; 3 uses
  %i.dn = mul i64 %i.dk, %indvars.iv137           ; 2 uses
  %scevgep202.a = getelementptr i8, ptr %i.dl, i64 %i.dn
  %scevgep203 = getelementptr i8, ptr %1, i64 %i.dn
  %i.do = mul nsw i64 %indvars.iv137, %i.de       ; 2 uses
  %i.dp = trunc nsw i64 %i.do to i32
  %invariant.op99 = add i32 %i.d, %i.dp
  br label %iter.check227

iter.check227:                                    ; preds = %.preheader84, %._crit_edge96
  %indvars.iv132 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next133, %._crit_edge96 ] ; 3 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv132 to i32
  %.reass.reass = add i32 %invariant.op99, %i.dq
  %i.dr = mul nsw i32 %.reass.reass, %i.j
  %i.ds = add nsw i64 %indvars.iv132, %i.do
  %i.dt = mul nsw i64 %i.ds, %i.dd
  %i.du = sext i32 %i.dr to i64                   ; 2 uses
  %invariant.gep165 = getelementptr [4 x i8], ptr %1, i64 %i.du ; 12 uses
  %invariant.gep167 = getelementptr [4 x i8], ptr %1, i64 %i.dt ; 11 uses
  br i1 %min.iters.check204, label %vec.epilog.scalar.ph229.preheader, label %vector.memcheck205

vector.memcheck205:                               ; preds = %iter.check227
  %i.dv = shl nsw i64 %i.du, 2
  %i.dw = getelementptr i8, ptr %scevgep202, i64 %i.dv
  %bound0206 = icmp ult ptr %scevgep203, %i.dw
  %bound1207 = icmp ult ptr %invariant.gep165, %scevgep202.a
  %found.conflict208 = and i1 %bound0206, %bound1207
  %i.dx = or i1 %found.conflict208, %stride.check209
  br i1 %i.dx, label %vec.epilog.scalar.ph229.preheader, label %vector.main.loop.iter.check210

vector.main.loop.iter.check210:                   ; preds = %vector.memcheck205
  br i1 %min.iters.check211, label %vec.epilog.ph231, label %vector.body214

vector.body214:                                   ; preds = %vector.main.loop.iter.check210, %vector.body214
  %index215 = phi i64 [ %index.next224, %vector.body214 ], [ 0, %vector.main.loop.iter.check210 ] ; 3 uses
  %i.dy = getelementptr [4 x i8], ptr %invariant.gep165, i64 %index215 ; 4 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 32
  %i.ea = getelementptr i8, ptr %i.dy, i64 64
  %i.eb = getelementptr i8, ptr %i.dy, i64 96
  %wide.load216 = load <8 x float>, ptr %i.dy, align 4, !tbaa !108, !alias.scope !253
  %wide.load217 = load <8 x float>, ptr %i.dz, align 4, !tbaa !108, !alias.scope !253
  %wide.load218 = load <8 x float>, ptr %i.ea, align 4, !tbaa !108, !alias.scope !253
  %wide.load219 = load <8 x float>, ptr %i.eb, align 4, !tbaa !108, !alias.scope !253
  %i.ec = getelementptr [4 x i8], ptr %invariant.gep167, i64 %index215 ; 5 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 32     ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 64     ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ec, i64 96     ; 2 uses
  %wide.load220 = load <8 x float>, ptr %i.ec, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load221 = load <8 x float>, ptr %i.ed, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load222 = load <8 x float>, ptr %i.ee, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load223 = load <8 x float>, ptr %i.ef, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %i.eg = fadd <8 x float> %wide.load216, %wide.load220
  %i.eh = fadd <8 x float> %wide.load217, %wide.load221
  %i.ei = fadd <8 x float> %wide.load218, %wide.load222
  %i.ej = fadd <8 x float> %wide.load219, %wide.load223
  store <8 x float> %i.eg, ptr %i.ec, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.eh, ptr %i.ed, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.ei, ptr %i.ee, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.ej, ptr %i.ef, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %index.next224 = add nuw i64 %index215, 32      ; 2 uses
  %i.ek = icmp eq i64 %index.next224, %n.vec213
  br i1 %i.ek, label %middle.block225, label %vector.body214, !llvm.loop !236

middle.block225:                                  ; preds = %vector.body214
  br i1 %cmp.n226, label %._crit_edge96, label %vec.epilog.iter.check228

vec.epilog.iter.check228:                         ; preds = %middle.block225
  br i1 %min.epilog.iters.check230, label %vec.epilog.scalar.ph229.preheader, label %vec.epilog.ph231, !prof !112

vec.epilog.ph231:                                 ; preds = %vector.main.loop.iter.check210, %vec.epilog.iter.check228
  %vec.epilog.resume.val232 = phi i64 [ %n.vec213, %vec.epilog.iter.check228 ], [ 0, %vector.main.loop.iter.check210 ]
  br label %vec.epilog.vector.body234

vec.epilog.vector.body234:                        ; preds = %vec.epilog.vector.body234, %vec.epilog.ph231
  %index235 = phi i64 [ %vec.epilog.resume.val232, %vec.epilog.ph231 ], [ %index.next238, %vec.epilog.vector.body234 ] ; 3 uses
  %i.el = getelementptr [4 x i8], ptr %invariant.gep165, i64 %index235
  %wide.load236 = load <4 x float>, ptr %i.el, align 4, !tbaa !108, !alias.scope !253
  %i.em = getelementptr [4 x i8], ptr %invariant.gep167, i64 %index235 ; 2 uses
  %wide.load237 = load <4 x float>, ptr %i.em, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %i.en = fadd <4 x float> %wide.load236, %wide.load237
  store <4 x float> %i.en, ptr %i.em, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %index.next238 = add nuw i64 %index235, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.eo, label %vec.epilog.middle.block239, label %vec.epilog.vector.body234, !llvm.loop !237

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body234
  br i1 %cmp.n240, label %._crit_edge96, label %vec.epilog.scalar.ph229.preheader

vec.epilog.scalar.ph229.preheader:                ; preds = %iter.check227, %vector.memcheck205, %vec.epilog.iter.check228, %vec.epilog.middle.block239
  %indvars.iv127.ph = phi i64 [ 0, %iter.check227 ], [ 0, %vector.memcheck205 ], [ %n.vec213, %vec.epilog.iter.check228 ], [ %n.vec233, %vec.epilog.middle.block239 ] ; 4 uses
  %i.ep = sub nsw i64 %wide.trip.count130, %indvars.iv127.ph
  %xtraiter293 = and i64 %i.ep, 7                 ; 2 uses
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %vec.epilog.scalar.ph229.prol.loopexit, label %vec.epilog.scalar.ph229.prol

vec.epilog.scalar.ph229.prol:                     ; preds = %vec.epilog.scalar.ph229.preheader, %vec.epilog.scalar.ph229.prol
  %indvars.iv127.prol = phi i64 [ %indvars.iv.next128.prol, %vec.epilog.scalar.ph229.prol ], [ %indvars.iv127.ph, %vec.epilog.scalar.ph229.preheader ] ; 3 uses
  %prol.iter295 = phi i64 [ %prol.iter295.next, %vec.epilog.scalar.ph229.prol ], [ 0, %vec.epilog.scalar.ph229.preheader ]
  %gep166.prol = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv127.prol
  %i.eq = load float, ptr %gep166.prol, align 4, !tbaa !108
  %gep168.prol = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv127.prol ; 2 uses
  %i.er = load float, ptr %gep168.prol, align 4, !tbaa !108
  %i.es = fadd float %i.eq, %i.er
  store float %i.es, ptr %gep168.prol, align 4, !tbaa !108
  %indvars.iv.next128.prol = add nuw nsw i64 %indvars.iv127.prol, 1 ; 2 uses
  %prol.iter295.next = add i64 %prol.iter295, 1   ; 2 uses
  %prol.iter295.cmp.not = icmp eq i64 %prol.iter295.next, %xtraiter293
  br i1 %prol.iter295.cmp.not, label %vec.epilog.scalar.ph229.prol.loopexit, label %vec.epilog.scalar.ph229.prol, !llvm.loop !238

vec.epilog.scalar.ph229.prol.loopexit:            ; preds = %vec.epilog.scalar.ph229.prol, %vec.epilog.scalar.ph229.preheader
  %indvars.iv127.unr = phi i64 [ %indvars.iv127.ph, %vec.epilog.scalar.ph229.preheader ], [ %indvars.iv.next128.prol, %vec.epilog.scalar.ph229.prol ]
  %i.et = sub nsw i64 %indvars.iv127.ph, %wide.trip.count130
  %i.eu = icmp ugt i64 %i.et, -8
  br i1 %i.eu, label %._crit_edge96, label %vec.epilog.scalar.ph229

vec.epilog.scalar.ph229:                          ; preds = %vec.epilog.scalar.ph229.prol.loopexit, %vec.epilog.scalar.ph229
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.7, %vec.epilog.scalar.ph229 ], [ %indvars.iv127.unr, %vec.epilog.scalar.ph229.prol.loopexit ] ; 10 uses
  %gep166 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv127
  %i.ev = load float, ptr %gep166, align 4, !tbaa !108
  %gep168 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv127 ; 2 uses
  %i.ew = load float, ptr %gep168, align 4, !tbaa !108
  %i.ex = fadd float %i.ev, %i.ew
  store float %i.ex, ptr %gep168, align 4, !tbaa !108
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %gep166.1 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128
  %i.ey = load float, ptr %gep166.1, align 4, !tbaa !108
  %gep168.1 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128 ; 2 uses
  %i.ez = load float, ptr %gep168.1, align 4, !tbaa !108
  %i.fa = fadd float %i.ey, %i.ez
  store float %i.fa, ptr %gep168.1, align 4, !tbaa !108
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %gep166.2 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.1
  %i.fb = load float, ptr %gep166.2, align 4, !tbaa !108
  %gep168.2 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.1 ; 2 uses
  %i.fc = load float, ptr %gep168.2, align 4, !tbaa !108
  %i.fd = fadd float %i.fb, %i.fc
  store float %i.fd, ptr %gep168.2, align 4, !tbaa !108
  %indvars.iv.next128.2 = add nuw nsw i64 %indvars.iv127, 3 ; 2 uses
  %gep166.3 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.2
  %i.fe = load float, ptr %gep166.3, align 4, !tbaa !108
  %gep168.3 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.2 ; 2 uses
  %i.ff = load float, ptr %gep168.3, align 4, !tbaa !108
  %i.fg = fadd float %i.fe, %i.ff
  store float %i.fg, ptr %gep168.3, align 4, !tbaa !108
  %indvars.iv.next128.3 = add nuw nsw i64 %indvars.iv127, 4 ; 2 uses
  %gep166.4 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.3
  %i.fh = load float, ptr %gep166.4, align 4, !tbaa !108
  %gep168.4 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.3 ; 2 uses
  %i.fi = load float, ptr %gep168.4, align 4, !tbaa !108
  %i.fj = fadd float %i.fh, %i.fi
  store float %i.fj, ptr %gep168.4, align 4, !tbaa !108
  %indvars.iv.next128.4 = add nuw nsw i64 %indvars.iv127, 5 ; 2 uses
  %gep166.5 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.4
  %i.fk = load float, ptr %gep166.5, align 4, !tbaa !108
  %gep168.5 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.4 ; 2 uses
  %i.fl = load float, ptr %gep168.5, align 4, !tbaa !108
  %i.fm = fadd float %i.fk, %i.fl
  store float %i.fm, ptr %gep168.5, align 4, !tbaa !108
  %indvars.iv.next128.5 = add nuw nsw i64 %indvars.iv127, 6 ; 2 uses
  %gep166.6 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.5
  %i.fn = load float, ptr %gep166.6, align 4, !tbaa !108
  %gep168.6 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.5 ; 2 uses
  %i.fo = load float, ptr %gep168.6, align 4, !tbaa !108
  %i.fp = fadd float %i.fn, %i.fo
  store float %i.fp, ptr %gep168.6, align 4, !tbaa !108
  %indvars.iv.next128.6 = add nuw nsw i64 %indvars.iv127, 7 ; 2 uses
  %gep166.7 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.6
  %i.fq = load float, ptr %gep166.7, align 4, !tbaa !108
  %gep168.7 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.6 ; 2 uses
  %i.fr = load float, ptr %gep168.7, align 4, !tbaa !108
  %i.fs = fadd float %i.fq, %i.fr
  store float %i.fs, ptr %gep168.7, align 4, !tbaa !108
  %indvars.iv.next128.7 = add nuw nsw i64 %indvars.iv127, 8 ; 2 uses
  %exitcond131.not.7 = icmp eq i64 %indvars.iv.next128.7, %wide.trip.count130
  br i1 %exitcond131.not.7, label %._crit_edge96, label %vec.epilog.scalar.ph229, !llvm.loop !239

._crit_edge96:                                    ; preds = %vec.epilog.scalar.ph229.prol.loopexit, %vec.epilog.scalar.ph229, %vec.epilog.middle.block239, %middle.block225
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge98, label %iter.check227, !llvm.loop !240

._crit_edge98:                                    ; preds = %._crit_edge96
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge101.split, label %.preheader84, !llvm.loop !241

._crit_edge101.split:                             ; preds = %._crit_edge98, %._crit_edge92.split.thread, %.preheader84.lr.ph
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !142
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %.thread81, label %.loopexit

.thread:                                          ; preds = %._crit_edge92.split.thread161, %._crit_edge92.split.thread, %._crit_edge92.split
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !142
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %.thread81, label %.loopexit

.thread81:                                        ; preds = %.thread, %._crit_edge101.split
  %i.fz = phi i32 [ %i.d, %._crit_edge101.split ], [ %i.h, %.thread ] ; 2 uses
  %i.ga = icmp sgt i32 %i.l, 1
  br i1 %i.ga, label %.preheader82.lr.ph, label %.loopexit

.preheader82.lr.ph:                               ; preds = %.thread81
  %i.gb = icmp slt i32 %i.fz, 1
  %i.gc = icmp slt i32 %i.f, 1
  %brmerge115 = select i1 %i.gb, i1 true, i1 %i.gc
  br i1 %brmerge115, label %.loopexit, label %.preheader82.preheader

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.gd = sext i32 %i.j to i64                    ; 6 uses
  %i.ge = sext i32 %i.b to i64                    ; 3 uses
  %i.gf = sext i32 %i.h to i64                    ; 5 uses
  %wide.trip.count155 = zext nneg i32 %i.m to i64
  %wide.trip.count150 = zext nneg i32 %i.fz to i64 ; 3 uses
  %wide.trip.count145 = zext nneg i32 %i.f to i64 ; 10 uses
  %i.gg = mul nsw i64 %i.ge, %i.gf
  %i.gh = add i64 %i.gg, %wide.trip.count150
  %i.gi = shl i64 %i.gh, 2
  %i.gj = add i64 %i.gi, -4
  %i.gk = mul i64 %i.gj, %i.gd
  %i.gl = shl nuw nsw i64 %wide.trip.count145, 2
  %i.gm = mul nsw i64 %i.gd, %i.gf
  %i.gn = shl i64 %i.gm, 2
end_hunk_1
