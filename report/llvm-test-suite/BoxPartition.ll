inline.NumInlined: 93
inline.NumDeleted: 6
begin_hunk_0_@_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_:bb.a
  br i1 %cmp.n130, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader141

.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader141: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader, %middle.block129
  %.0167296.us366.us.us.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader ], [ %i.di, %middle.block129 ]
  br label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us

.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader141, %bb.f
  %.0167296.us366.us.us.us.us.us.us.us.i.us = phi i32 [ %i.du, %bb.f ], [ %.0167296.us366.us.us.us.us.us.us.us.i.us.ph, %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader141 ] ; 2 uses
  %i.dq = add nsw i32 %.0167296.us366.us.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.dr = icmp sge i32 %i.dq, %i.ct
  %i.ds = add nuw nsw i32 %i.dq, %i.dg
  %i.dt = icmp slt i32 %i.ds, 0
  %or.cond730.i.us = select i1 %i.dr, i1 true, i1 %i.dt
  br i1 %or.cond730.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us
  %i.du = add i32 %.0167296.us366.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.du, %i.ay
  br i1 %exitcond.not.i.us, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us, !llvm.loop !15

.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us, %bb.i
  %.3298.us365.us.us.us.us.us.us.i.us = phi i32 [ %.4.us375.us.us.us.us.us.us.i.us, %bb.i ], [ %.2360.us.us.us527.us.us.us.i.us, %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us ] ; 3 uses
  %.0167296.us366.us.us404.us.us.us.us.i.us = phi i32 [ %i.ee, %bb.i ], [ %i.au, %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us ] ; 3 uses
  %i.dv = add nsw i32 %.0167296.us366.us.us404.us.us.us.us.i.us, %i.i ; 2 uses
  %i.dw = add nsw i32 %.0167296.us366.us.us404.us.us.us.us.i.us, %3 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.ct
  br i1 %i.dx, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us
  %i.dy = add nuw nsw i32 %i.dw, %i.dg            ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us
  %.not181.us372.us.us.us.us.us.us.i.us = icmp sle i32 %i.bm, %i.dv
  %i.ea = icmp slt i32 %i.dv, %i.bo
  %or.cond189.us374.us.us.us.us.us.us.i.us = and i1 %.not181.us372.us.us.us.us.us.us.i.us, %i.ea
  br i1 %or.cond189.us374.us.us.us.us.us.us.i.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.eb = add nsw i32 %.3298.us365.us.us.us.us.us.us.i.us, 1
  %i.ec = zext nneg i32 %i.dy to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ec
  store i32 %.3298.us365.us.us.us.us.us.us.i.us, ptr %i.ed, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4.us375.us.us.us.us.us.us.i.us = phi i32 [ %i.eb, %bb.h ], [ %.3298.us365.us.us.us.us.us.us.i.us, %bb.g ] ; 2 uses
  %i.ee = add i32 %.0167296.us366.us.us404.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond762.not.i.us = icmp eq i32 %i.ee, %i.ay
  br i1 %exitcond762.not.i.us, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us, !llvm.loop !16

._crit_edge.split.us376.split.us.us.us.us.us.us.i.us: ; preds = %bb.f, %bb.i, %middle.block129
  %.us-phi.us408.us.us.us.us.i.us = phi i32 [ %.2360.us.us.us527.us.us.us.i.us, %middle.block129 ], [ %.4.us375.us.us.us.us.us.us.i.us, %bb.i ], [ %.2360.us.us.us527.us.us.us.i.us, %bb.f ] ; 2 uses
  %i.ef = add i32 %.0169358.us.us.us528.us.us.us.i.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ef, %i.ax
  br i1 %exitcond.not, label %._crit_edge361.split.us.split.us.us.us.us.us.i.us, label %.preheader.us.us.us526.us.us.us.i.us, !llvm.loop !17

.preheader.us.us.us.us.us.us.us.i.us:             ; preds = %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us
  %.2360.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi515.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1520.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.2161359.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi514.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1160519.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.0169358.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hw, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %i.au, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 5 uses
  %.2205357.us.us.us.us.us.us.us.i.us = phi ptr [ %.us-phi513.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1204517.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.2211356.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi512.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1210516.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %i.eg = add nsw i32 %.0169358.us.us.us.us.us.us.us.i.us, %i.k ; 4 uses
  %i.eh = add i32 %.0169358.us.us.us.us.us.us.us.i.us, %3 ; 5 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  %.not180.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.bq, %i.eg
  %i.ej = icmp slt i32 %i.eg, %i.bs
  %i.ek = and i1 %.not180.us.us.us.us.us.us.us.i.us, %i.ej
  %or.cond187.not222.not227.us.us.us.us.us.us.us.i.us = select i1 %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us, i1 %i.ek, i1 false
  %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us = freeze i1 %or.cond187.not222.not227.us.us.us.us.us.us.us.i.us ; 2 uses
  %i.el = icmp slt i32 %.0169358.us.us.us.us.us.us.us.i.us, %.fr798.i
  %.not183.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.ca, %i.eg
  %i.em = icmp slt i32 %i.eg, %i.cb
  br i1 %i.ei, label %.lr.ph299.split.us378.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.us378.us.us.us.us.us.us.i.us:     ; preds = %.preheader.us.us.us.us.us.us.us.i.us
  %i.en = icmp sgt i32 %.0169358.us.us.us.us.us.us.us.i.us, -1
  %or.cond3.us.us.us.us.us.us.us.i.us = and i1 %i.ci, %i.en
  %or.cond3.us.us.us.fr.us.us.us.us.i.us = freeze i1 %or.cond3.us.us.us.us.us.us.us.i.us
  br i1 %or.cond3.us.us.us.fr.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us

.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us: ; preds = %.lr.ph299.split.us378.us.us.us.us.us.us.i.us
  %i.eo = load i32, ptr %i.n, align 4, !tbaa !4
  %i.ep = add i32 %i.eo, %i.w
  %i.eq = load i32, ptr %i.h, align 4, !tbaa !4
  %i.er = sub i32 %i.ep, %i.eq                    ; 5 uses
  %i.es = load i32, ptr %i.q, align 4, !tbaa !4
  %i.et = add nsw i32 %i.es, %i.w
  %i.eu = load i32, ptr %i.j, align 4, !tbaa !4
  %i.ev = sub i32 %i.et, %i.eu                    ; 2 uses
  %i.ew = load i32, ptr %i.t, align 4, !tbaa !4
  %i.ex = add nsw i32 %i.ew, %i.w
  %i.ey = load i32, ptr %i.l, align 4, !tbaa !4
  %i.ez = sub i32 %i.ex, %i.ey
  %i.fa = icmp slt i32 %i.eh, %i.ev
  %i.fb = icmp slt i32 %i.cf, %i.ez
  %or.cond38.i.us.us.us.us.us542.us.us.us.i.us = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fc = mul nsw i32 %i.ev, %i.cf
  %i.fd = add nuw i32 %i.fc, %i.eh
  %i.fe = mul i32 %i.fd, %i.er                    ; 3 uses
  %or.cond38.i.us.us.us.us.us542.fr.us.us.us.i.us = freeze i1 %or.cond38.i.us.us.us.us.us542.us.us.us.i.us
  br i1 %or.cond38.i.us.us.us.us.us542.fr.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us
  br i1 %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us
  %smax = tail call i32 @llvm.smax.i32(i32 %i.er, i32 0)
  %umin = tail call i32 @llvm.umin.i32(i32 %smax, i32 %i.bd) ; 2 uses
  %i.ff = add nuw i32 %umin, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i32 %umin, 15
  br i1 %min.iters.check, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader136, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader
  %n.vec = and i32 %i.ff, -16                     ; 3 uses
  %i.fg = sub i32 %n.vec, %3
  %broadcast.splatinsert101 = insertelement <16 x i32> poison, i32 %i.er, i64 0
  %broadcast.splat102 = shufflevector <16 x i32> %broadcast.splatinsert101, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <16 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat104 = shufflevector <16 x i32> %broadcast.splatinsert103, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op149 = add <16 x i32> %broadcast.splat, %broadcast.splat104
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.fh = add nsw <16 x i32> %vec.ind, %broadcast.splat
  %i.fi = icmp sge <16 x i32> %i.fh, %broadcast.splat102
  %.reass150 = add <16 x i32> %vec.ind, %invariant.op149
  %i.fj = icmp slt <16 x i32> %.reass150, zeroinitializer
  %i.fk = select <16 x i1> %i.fi, <16 x i1> splat (i1 true), <16 x i1> %i.fj
  %i.fl = freeze <16 x i1> %i.fk
  %i.fm = bitcast <16 x i1> %i.fl to i16
  %.not133 = icmp eq i16 %i.fm, 0
  br i1 %.not133, label %vector.body.interim, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.fn = icmp eq i32 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.ff, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader136

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader136: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader, %middle.block
  %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader ], [ %i.fg, %middle.block ]
  br label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader136, %bb.j
  %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us = phi i32 [ %i.fs, %bb.j ], [ %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us.ph, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader136 ] ; 2 uses
  %i.fo = add nsw i32 %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.fp = icmp sge i32 %i.fo, %i.er
  %i.fq = add nuw nsw i32 %i.fo, %i.fe
  %i.fr = icmp slt i32 %i.fq, 0
  %or.cond735.i.us = select i1 %i.fp, i1 true, i1 %i.fr
  br i1 %or.cond735.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us
  %i.fs = add i32 %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond763.not.i.us = icmp eq i32 %i.fs, %i.ay
  br i1 %exitcond763.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us, !llvm.loop !19

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us, %bb.m
  %.3298.us345.us.us.us.us537.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us547.us.us.us.us.i.us, %bb.m ], [ %.2360.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us ] ; 3 uses
  %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us = phi i32 [ %i.gc, %bb.m ], [ %i.au, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us ] ; 3 uses
  %i.ft = add nsw i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, %i.i ; 2 uses
  %i.fu = add nsw i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, %3 ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %i.er
  br i1 %i.fv, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us
  %i.fw = add nuw nsw i32 %i.fu, %i.fe            ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us
  %.not181.us.us.us.us.us544.us.us.us.us.i.us = icmp sle i32 %i.bm, %i.ft
  %i.fy = icmp slt i32 %i.ft, %i.bo
  %or.cond189.us.us.us.us.us546.us.us.us.us.i.us = and i1 %.not181.us.us.us.us.us544.us.us.us.us.i.us, %i.fy
  br i1 %or.cond189.us.us.us.us.us546.us.us.us.us.i.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fz = add nsw i32 %.3298.us345.us.us.us.us537.us.us.us.us.i.us, 1
  %i.ga = zext nneg i32 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ga
  store i32 %.3298.us345.us.us.us.us537.us.us.us.us.i.us, ptr %i.gb, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4.us.us.us.us.us547.us.us.us.us.i.us = phi i32 [ %i.fz, %bb.l ], [ %.3298.us345.us.us.us.us537.us.us.us.us.i.us, %bb.k ] ; 2 uses
  %i.gc = add i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, 1 ; 2 uses
  %exitcond764.not.i.us = icmp eq i32 %i.gc, %i.ay
  br i1 %exitcond764.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us, !llvm.loop !16

.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us378.us.us.us.us.us.us.i.us, %bb.v
  %.3298.us345.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2360.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 3 uses
  %.3162297.us346.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4163.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2161359.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 4 uses
  %.0167296.us347.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hv, %bb.v ], [ %i.au, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 5 uses
  %.3206295.us348.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.4207.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205357.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 4 uses
  %.3212294.us349.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4213.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211356.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 3 uses
  %i.gd = add nsw i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %i.i ; 4 uses
  %i.ge = load i32, ptr %i.n, align 4, !tbaa !4
  %i.gf = add nsw i32 %i.ge, %i.w
  %i.gg = load i32, ptr %i.h, align 4, !tbaa !4
  %i.gh = sub i32 %i.gf, %i.gg                    ; 2 uses
  %i.gi = load i32, ptr %i.q, align 4, !tbaa !4
  %i.gj = add nsw i32 %i.gi, %i.w
  %i.gk = load i32, ptr %i.j, align 4, !tbaa !4
  %i.gl = sub i32 %i.gj, %i.gk                    ; 2 uses
  %i.gm = add nsw i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.gn = icmp slt i32 %i.gm, %i.gh
  br i1 %i.gn, label %bb.n, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

bb.n:                                             ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us
  %i.go = load i32, ptr %i.t, align 4, !tbaa !4
  %i.gp = add nsw i32 %i.go, %i.w
  %i.gq = load i32, ptr %i.l, align 4, !tbaa !4
  %i.gr = sub i32 %i.gp, %i.gq
  %i.gs = icmp slt i32 %i.eh, %i.gl
  %i.gt = icmp slt i32 %i.cf, %i.gr
  %or.cond38.i.us.us.us.us.us.us.us.us.us.i.us = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond38.i.us.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.n
  %i.gu = mul nsw i32 %i.gl, %i.cf
  %i.gv = add nuw i32 %i.gu, %i.eh
  %i.gw = mul i32 %i.gv, %i.gh
  %i.gx = add nuw nsw i32 %i.gw, %i.gm            ; 3 uses
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us
  %.not181.us.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.bm, %i.gd
  %i.gz = icmp slt i32 %i.gd, %i.bo
  %i.ha = and i1 %.not181.us.us.us.us.us.us.us.us.us.i.us, %i.gz
  %or.cond189.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us, i1 %i.ha, i1 false
  br i1 %or.cond189.us.us.us.us.us.us.us.us.us.i.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hb = add nsw i32 %.3298.us345.us.us.us.us.us.us.us.us.i.us, 1
  %i.hc = zext nneg i32 %i.gx to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hc
  store i32 %.3298.us345.us.us.us.us.us.us.us.us.i.us, ptr %i.hd, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hb, %bb.p ], [ %.3298.us345.us.us.us.us.us.us.us.us.i.us, %bb.o ] ; 2 uses
  %i.he = icmp sgt i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, -1
  %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.us.i.us = and i1 %i.el, %i.he
  %i.hf = icmp slt i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %.fr
  %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.us.i.us = and i1 %i.hf, %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.us.i.us
  %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.us.i.us, i1 %.not182.us.us.us.us.i.us, i1 false
  %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.us.i.us, i1 %i.cj, i1 false
  %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.us.i.us, i1 %.not183.us.us.us.us.us.us.us.i.us, i1 false
  %or.cond196.not255.not.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.us.i.us, i1 %i.em, i1 false
  %.not184.us.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.cc, %i.gd
  %or.cond197.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond196.not255.not.us.us.us.us.us.us.us.us.us.i.us, i1 %.not184.us.us.us.us.us.us.us.us.us.i.us, i1 false
  %i.hg = icmp slt i32 %i.gd, %i.cd
  %or.cond199.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond197.us.us.us.us.us.us.us.us.us.i.us, i1 %i.hg, i1 false
  br i1 %or.cond199.us.us.us.us.us.us.us.us.us.i.us, label %.preheader.us, label %bb.v

.preheader.us:                                    ; preds = %bb.q, %.preheader.us
  %.0.i200.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hh, %.preheader.us ], [ 32, %bb.q ] ; 7 uses
  %.not.us.us.us.us.us.us.us.us.us.i.us = icmp sgt i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %.3162297.us346.us.us.us.us.us.us.us.us.i.us
  %i.hh = shl i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us, 1
  br i1 %.not.us.us.us.us.us.us.us.us.us.i.us, label %bb.r, label %.preheader.us, !llvm.loop !20

bb.r:                                             ; preds = %.preheader.us
  %9 = add nsw i32 %.3162297.us346.us.us.us.us.us.us.us.us.i.us, 1
  %i.hi = icmp eq ptr %.3206295.us348.us.us.us.us.us.us.us.us.i.us, null
  br i1 %i.hi, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hj = icmp slt i32 %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %.0.i200.us.us.us.us.us.us.us.us.us.i.us
  br i1 %i.hj, label %bb.t, label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

bb.t:                                             ; preds = %bb.s
  %i.hk = sext i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us to i64
  %i.hl = shl nsw i64 %i.hk, 2
  %i.hm = tail call ptr @realloc(ptr noundef nonnull %.3206295.us348.us.us.us.us.us.us.us.us.i.us, i64 noundef %i.hl) #13
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

bb.u:                                             ; preds = %bb.r
  %i.hn = sext i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us to i64
  %i.ho = shl nsw i64 %i.hn, 2
  %i.hp = tail call noalias ptr @malloc(i64 noundef %i.ho) #12
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.u, %bb.t, %bb.s
  %.7.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %bb.t ], [ %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %bb.u ]
  %.6.us.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.3206295.us348.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %i.hm, %bb.t ], [ %i.hp, %bb.u ] ; 2 uses
  %i.hq = zext nneg i32 %i.gx to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !4
  %i.ht = sext i32 %.3162297.us346.us.us.us.us.us.us.us.us.i.us to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.6.us.us.us.us.us.us.us.us.us.i.us, i64 %i.ht
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us, %bb.q
  %.4213.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.7.us.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4207.us.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.6.us.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3206295.us348.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4163.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %9, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3162297.us346.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %i.hv = add i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond765.not.i.us = icmp eq i32 %i.hv, %i.ay
  br i1 %exitcond765.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us, !llvm.loop !16

._crit_edge.split.us.us.us.us.us.us.us.us.i.us:   ; preds = %bb.j, %bb.m, %bb.v, %middle.block
  %.us-phi512.us.us.us.us.i.us = phi i32 [ %.2211356.us.us.us.us.us.us.us.i.us, %middle.block ], [ %.2211356.us.us.us.us.us.us.us.i.us, %bb.m ], [ %.4213.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211356.us.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi513.us.us.us.us.i.us = phi ptr [ %.2205357.us.us.us.us.us.us.us.i.us, %middle.block ], [ %.2205357.us.us.us.us.us.us.us.i.us, %bb.m ], [ %.4207.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205357.us.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi514.us.us.us.us.i.us = phi i32 [ %.2161359.us.us.us.us.us.us.us.i.us, %middle.block ], [ %.2161359.us.us.us.us.us.us.us.i.us, %bb.m ], [ %.4163.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2161359.us.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi515.us.us.us.us.i.us = phi i32 [ %.2360.us.us.us.us.us.us.us.i.us, %middle.block ], [ %.4.us.us.us.us.us547.us.us.us.us.i.us, %bb.m ], [ %.4.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2360.us.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %i.hw = add i32 %.0169358.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond47.not = icmp eq i32 %i.hw, %i.ax
  br i1 %exitcond47.not, label %._crit_edge361.split.us.split.us.us.us.us.us.i.us, label %.preheader.us.us.us.us.us.us.us.i.us, !llvm.loop !17

._crit_edge361.split.us.split.us.us.us.us.us.i.us: ; preds = %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us
  %.us-phi508.us.us.us.us.i.us = phi i32 [ %.us-phi512.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1210516.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi509.us.us.us.us.i.us = phi ptr [ %.us-phi513.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1204517.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi510.us.us.us.us.i.us = phi i32 [ %.us-phi514.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1160519.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi511.us.us.us.us.i.us = phi i32 [ %.us-phi515.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.us-phi.us408.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ] ; 2 uses
  %i.hx = add i32 %.0168518.us.us.us.us.i.us, 1   ; 2 uses
  %exitcond48.not = icmp eq i32 %i.hx, %i.av
  br i1 %exitcond48.not, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, label %.preheader276.us.us.us.us.i.us, !llvm.loop !21

_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us: ; preds = %._crit_edge361.split.us.split.us.us.us.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph648.split.us.split.us.i.us
  %.5214.us.us.i.us = phi i32 [ %.0209643.us.us.i.us, %.lr.ph648.split.us.split.us.i.us ], [ %.0209643.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0209643.us.us.i.us, %bb.e ], [ %.0209643.us.us.i.us, %bb.d ], [ %.0209643.us.us.i.us, %bb.c ], [ %.0209643.us.us.i.us, %bb.b ], [ %.us-phi508.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ]
  %.5208.us.us.i.us = phi ptr [ %.0203644.us.us.i.us, %.lr.ph648.split.us.split.us.i.us ], [ %.0203644.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0203644.us.us.i.us, %bb.e ], [ %.0203644.us.us.i.us, %bb.d ], [ %.0203644.us.us.i.us, %bb.c ], [ %.0203644.us.us.i.us, %bb.b ], [ %.us-phi509.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ] ; 2 uses
  %.5164.us.us.i.us = phi i32 [ %.0159646.us.us.i.us, %.lr.ph648.split.us.split.us.i.us ], [ %.0159646.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0159646.us.us.i.us, %bb.e ], [ %.0159646.us.us.i.us, %bb.d ], [ %.0159646.us.us.i.us, %bb.c ], [ %.0159646.us.us.i.us, %bb.b ], [ %.us-phi510.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ] ; 2 uses
  %.5.us.us.i.us = phi i32 [ %.0647.us.us.i.us, %.lr.ph648.split.us.split.us.i.us ], [ %.0647.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0647.us.us.i.us, %bb.e ], [ %.0647.us.us.i.us, %bb.d ], [ %.0647.us.us.i.us, %bb.c ], [ %.0647.us.us.i.us, %bb.b ], [ %.us-phi511.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond767.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond767.not.i.us, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, label %.lr.ph648.split.us.split.us.i.us, !llvm.loop !22

_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i: ; preds = %.preheader276.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us533.us.us.us.i.us, %.preheader.us.us.us526.us.us.us.i.us, %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us, %.preheader.us.us.us.us.us.us.us.i.us, %vector.body123, %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us, %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us, %vector.body, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us, %bb.n, %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us
  tail call void @abort() #14
  unreachable

._crit_edge.sink.split.i:                         ; preds = %.lr.ph648.split.us.i, %.lr.ph648.split.preheader.i
  %.sink811.i = phi i64 [ %i.ba, %.lr.ph648.split.preheader.i ], [ %wide.trip.count.i, %.lr.ph648.split.us.i ]
  %i.hy = shl nuw nsw i64 %.sink811.i, 2          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.hy, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.hy, i1 false), !tbaa !4
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit: ; preds = %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, %.lr.ph648.split.us.split.us.i.preheader45, %.preheader277.i, %._crit_edge.sink.split.i
  %.0203.lcssa.i = phi ptr [ null, %.preheader277.i ], [ null, %._crit_edge.sink.split.i ], [ null, %.lr.ph648.split.us.split.us.i.preheader45 ], [ %.5208.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %.0159.lcssa.i = phi i32 [ 0, %.preheader277.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph648.split.us.split.us.i.preheader45 ], [ %.5164.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader277.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph648.split.us.split.us.i.preheader45 ], [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.a
  store i32 %.0.lcssa.i, ptr %i.hz, align 4, !tbaa !4
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.a
  store i32 %.0159.lcssa.i, ptr %i.ia, align 4, !tbaa !4
  store ptr %i.ae, ptr %5, align 8, !tbaa !23
  store ptr %i.ai, ptr %6, align 8, !tbaa !23
  store ptr %i.aj, ptr %7, align 8, !tbaa !23
  store ptr %.0203.lcssa.i, ptr %8, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS3Box", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !14, !13}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !13, !14}
!19 = distinct !{!19, !12, !14, !13}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 int", !10, i64 0}
end_hunk_0
